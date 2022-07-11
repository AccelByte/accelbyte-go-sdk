// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"encoding/base64"
	"fmt"
	"sync"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/constant"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

type Session struct {
	Token   repository.TokenRepository
	Config  repository.ConfigRepository
	Refresh repository.RefreshTokenRepository
}

var Once sync.Once

// AuthInfoWriter called by the existing security from the wrapper
func AuthInfoWriter(s Session, outerValues [][]string, key string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		for _, innerValue := range outerValues {
			success := true
			for _, value := range innerValue {
				switch value {
				case constant.BearerAuth:
					err := TokenRepo(s).AuthenticateRequest(r, nil)
					if err != nil {
						success = false

						break
					}
				case constant.BasicAuth:
					err := ConfigRepo(s).AuthenticateRequest(r, nil)
					if err != nil {
						success = false

						break
					}
				case constant.CookieAuth:
					err := Cookie(s, key).AuthenticateRequest(r, nil)
					if err != nil {
						success = false

						break
					}
				}
			}
			if success {
				return nil
			}
		}

		return fmt.Errorf("failed to find an existing authorization")
	})
}

func ConfigRepo(s Session) runtime.ClientAuthInfoWriter {
	//tokenIssuedTime = s.Token.TokenIssuedTimeUTC()

	clientID := s.Config.GetClientId()
	if clientID == "" {
		return Error(fmt.Errorf("empty clientID"))
	}
	clientSecret := s.Config.GetClientSecret()
	if clientSecret == "" {
		return Error(fmt.Errorf("empty clientSecret"))
	}

	done := make(chan bool)
	if s.Config != nil && !s.Refresh.DisableAutoRefresh() {
		isExpired := repository.HasTokenExpired(s.Token, s.Refresh.GetRefreshRate())
		if isExpired {
			// avoid race condition,
			// do re-login only once for a new refreshed access token in a single thread
			go func() {
				Once.Do(func() {
					errRefresh := ClientTokenRefresher(s)
					if errRefresh != nil {
						return
					}
					done <- true
				})
			}()

		}
	}

	return Basic(clientID, clientSecret)
}

func Basic(username, password string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		encoded := base64.StdEncoding.EncodeToString([]byte(username + ":" + password))

		return r.SetHeaderParam(constant.Authorization, "Basic "+encoded)
	})
}

func TokenRepo(s Session) runtime.ClientAuthInfoWriter {
	getToken, err := s.Token.GetToken()
	if err != nil {
		return Error(err)
	}

	done := make(chan bool)
	if s.Config != nil && !s.Refresh.DisableAutoRefresh() {
		isExpired := repository.HasTokenExpired(s.Token, s.Refresh.GetRefreshRate())
		if getToken.RefreshToken != nil && isExpired {
			// avoid race condition,
			// do re-login only once for a new refreshed access token in a single thread
			go func() {
				Once.Do(func() {
					errRefresh := UserTokenRefresher(s)
					if errRefresh != nil {
						return
					}
					done <- true
				})
			}()

		}
	}

	return Bearer(*getToken.AccessToken)
}

func Bearer(token string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return r.SetHeaderParam(constant.Authorization, "Bearer "+token)
	})
}

type OAuth20RefreshService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func UserTokenRefresher(s Session) error {
	token, _ := s.Token.GetToken()
	p := &o_auth2_0.TokenGrantV3Params{
		GrantType:    o_auth2_0.TokenGrantV3RefreshTokenConstant,
		RefreshToken: token.RefreshToken,
	}
	service := OAuth20RefreshService{
		Client:           factory.NewIamClient(s.Config),
		ConfigRepository: s.Config,
		TokenRepository:  s.Token,
	}
	newToken, errLogin := service.Client.OAuth20.TokenGrantV3Short(p, Basic(s.Config.GetClientId(), s.Config.GetClientSecret()))
	if errLogin != nil {
		return errLogin
	}
	err := s.Token.Store(*newToken.Payload)
	if err != nil {
		return err
	}

	return nil
}

func ClientTokenRefresher(s Session) error {
	p := &o_auth2_0.TokenGrantV3Params{
		GrantType: o_auth2_0.TokenGrantV3ClientCredentialsConstant,
	}
	service := OAuth20RefreshService{
		Client:           factory.NewIamClient(s.Config),
		ConfigRepository: s.Config,
		TokenRepository:  s.Token,
	}
	newToken, errLogin := service.Client.OAuth20.TokenGrantV3Short(p, Basic(s.Config.GetClientId(), s.Config.GetClientSecret()))
	if errLogin != nil {
		return errLogin
	}
	err := s.Token.Store(*newToken.Payload)
	if err != nil {
		return err
	}

	return nil
}

func CookieValue(key, value string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return r.SetHeaderParam(constant.CookieAuth, key+"="+value)
	})
}

func Cookie(s Session, key string) runtime.ClientAuthInfoWriter {
	getToken, err := s.Token.GetToken()
	if err != nil {
		return Error(err)
	}

	done := make(chan bool)
	if s.Config != nil && !s.Refresh.DisableAutoRefresh() {
		isExpired := repository.HasTokenExpired(s.Token, s.Refresh.GetRefreshRate())
		if getToken.RefreshToken != nil && isExpired {
			// avoid race condition,
			// do re-login only once for a new refreshed access token in a single thread
			go func() {
				Once.Do(func() {
					errRefresh := UserTokenRefresher(s)
					if errRefresh != nil {
						return
					}
					done <- true
				})
			}()

		}
	}

	return CookieValue(key, *getToken.AccessToken)
}

func Error(err error) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return err
	})
}
