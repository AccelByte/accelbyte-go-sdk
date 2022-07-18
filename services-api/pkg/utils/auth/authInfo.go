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
	clientID := s.Config.GetClientId()
	if clientID == "" {
		return Error(fmt.Errorf("empty clientID"))
	}
	clientSecret := s.Config.GetClientSecret()
	if clientSecret == "" {
		return Error(fmt.Errorf("empty clientSecret"))
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

	return Bearer(*getToken.AccessToken)
}

func Bearer(token string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return r.SetHeaderParam(constant.Authorization, "Bearer "+token)
	})
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

	return CookieValue(key, *getToken.AccessToken)
}

func Error(err error) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return err
	})
}

func RefreshTokenScheduller(service Session, loginType string) {
	getToken, err := service.Token.GetToken()
	if err != nil {
		return
	}

	refreshRate := service.Refresh.GetRefreshRate()
	done := make(chan bool)

	if !repository.HasRefreshTokenExpired(service.Token, refreshRate) {
		switch loginType {
		case "user": // user token have a refreshToken
			if getToken.RefreshToken != nil && !service.Refresh.DisableAutoRefresh() {
				var timer = time.NewTimer(repository.GetSecondsTillExpiryRefresh(service.Token, refreshRate) * time.Second)
				<-timer.C
				go func() {
					service.Refresh.RefreshIsRunningInBackground(true)
					Once.Do(func() {
						errRefresh := UserTokenRefresher(service)
						if errRefresh != nil {
							return
						}
						done <- true
					})
					service.Refresh.RefreshIsRunningInBackground(false)
				}()
			}

		case "client":
			if getToken.RefreshToken != nil && !service.Refresh.DisableAutoRefresh() {
				var timer = time.NewTimer(repository.GetSecondsTillExpiryRefresh(service.Token, refreshRate) * time.Second)
				<-timer.C
				go func() {
					service.Refresh.RefreshIsRunningInBackground(true)
					Once.Do(func() {
						errRefresh := ClientTokenRefresher(service)
						if errRefresh != nil {
							return
						}
						done <- true
					})
					service.Refresh.RefreshIsRunningInBackground(false)
				}()
			}
		}
	}

	fmt.Print("Token in token repository has expired, please re-login")
}

type OAuth20RefreshService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	Token            repository.TokenRepository
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
		Token:            s.Token,
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
		Token:            s.Token,
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
