// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"encoding/base64"
	"fmt"
	"sync"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
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
	clientID := s.Config.GetClientId()
	if clientID == "" {
		return Error(fmt.Errorf("empty clientID"))
	}
	clientSecret := s.Config.GetClientSecret()
	if clientSecret == "" {
		return Error(fmt.Errorf("empty clientSecret"))
	}

	if s.Config != nil && !s.Refresh.DisableAutoRefresh() {
		getToken, _ := s.Token.GetToken()
		if getToken.ExpiresIn != nil {
			isExpired := s.Refresh.HasRefreshTokenExpired(*getToken)
			if getToken.RefreshToken != nil && isExpired {
				// avoid race condition
				var mu sync.Mutex

				mu.Lock()

				// re-login with access Token
				_, errUpdatedToken := Refresher(s)
				if errUpdatedToken != nil {
					return Error(errUpdatedToken)
				}

				mu.Unlock()

				return Basic(clientID, clientSecret)
			}
		}
	}

	return Basic(clientID, clientSecret)
}

func Basic(username, password string) runtime.ClientAuthInfoWriter {
	TokenIssuedTime = time.Now()

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

	if s.Config != nil && !s.Refresh.DisableAutoRefresh() {
		if getToken.ExpiresIn != nil {
			isExpired := s.Refresh.HasRefreshTokenExpired(*getToken)
			if getToken.RefreshToken != nil && isExpired {
				// avoid race condition
				var mu sync.Mutex

				mu.Lock()

				// re-login with access Token
				updatedToken, errUpdatedToken := Refresher(s)
				if errUpdatedToken != nil {
					return Error(errUpdatedToken)
				}

				mu.Unlock()

				return Bearer(*updatedToken.AccessToken)
			}
		}
	}

	return Bearer(*getToken.AccessToken)
}

func Bearer(token string) runtime.ClientAuthInfoWriter {
	TokenIssuedTime = time.Now()

	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return r.SetHeaderParam(constant.Authorization, "Bearer "+token)
	})
}

type OAuth20RefreshService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func Refresher(s Session) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	p := &o_auth2_0.TokenGrantV3Params{
		GrantType: o_auth2_0.TokenGrantV3AuthorizationCodeConstant,
	}
	service := OAuth20RefreshService{
		Client:           factory.NewIamClient(s.Config),
		ConfigRepository: s.Config,
		TokenRepository:  s.Token,
	}
	newToken, errLogin := service.Client.OAuth20.TokenGrantV3Short(p, Basic(s.Config.GetClientId(), s.Config.GetClientSecret()))
	if errLogin != nil {
		return nil, errLogin
	}
	err := s.Token.Store(*newToken.Payload)
	if err != nil {
		return nil, err
	}

	return newToken.Payload, nil
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

	if s.Config != nil && s.Refresh != nil {
		errStoreToken := s.Refresh.StoreRefreshToken(*getToken)
		if errStoreToken != nil {
			return nil
		}
		isExpired := s.Refresh.HasRefreshTokenExpired(*getToken)
		if s.Refresh != nil && isExpired {
			// avoid race condition
			var mu sync.Mutex

			mu.Lock()

			// re-login with access Token
			updatedToken, errUpdatedToken := Refresher(s)
			if errUpdatedToken != nil {
				return Error(errUpdatedToken)
			}

			mu.Unlock()

			return CookieValue(key, *updatedToken.AccessToken)
		}
	}

	return CookieValue(key, *getToken.AccessToken)
}

func Error(err error) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return err
	})
}
