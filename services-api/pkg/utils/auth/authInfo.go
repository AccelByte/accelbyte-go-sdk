// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"encoding/base64"
	"fmt"
	"strings"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/constant"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

type Session struct {
	Token   repository.TokenRepository
	Config  repository.ConfigRepository
	Refresh repository.RefreshTokenRepository
}

var Once utils.Once

// AuthInfoWriter called by the existing security from the wrapper
func AuthInfoWriter(s Session, outerValues [][]string, key string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		var errors []string
		for _, innerValue := range outerValues {
			success := true
			for _, value := range innerValue {
				switch value {
				case constant.BearerAuth:
					err := TokenRepo(s).AuthenticateRequest(r, nil)
					if err != nil {
						errors = append(errors, err.Error())
						success = false

						break
					}
				case constant.BasicAuth:
					err := ConfigRepo(s).AuthenticateRequest(r, nil)
					if err != nil {
						errors = append(errors, err.Error())
						success = false

						break
					}
				case constant.CookieAuth:
					err := Cookie(s, key).AuthenticateRequest(r, nil)
					if err != nil {
						errors = append(errors, err.Error())
						success = false

						break
					}
				}
			}
			if success {
				return nil
			}
		}
		aggregatedErr := fmt.Errorf(strings.Join(errors, ""))

		return fmt.Errorf("failed to find an existing authorization. %s", aggregatedErr)
	})
}

func ConfigRepo(s Session) runtime.ClientAuthInfoWriter {
	clientID := s.Config.GetClientId()
	if clientID == "" {
		return Error(fmt.Errorf("empty clientID"))
	}
	clientSecret := s.Config.GetClientSecret()
	if clientSecret == "" {
		return Error(fmt.Errorf("empty ClientSecret"))
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
	if getToken.AccessToken == nil {
		return Error(fmt.Errorf("access token is nil. please do login first"))
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
	if getToken.AccessToken == nil {
		return Error(fmt.Errorf("access token is nil"))
	}

	return CookieValue(key, *getToken.AccessToken)
}

func Error(err error) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return err
	})
}

func RefreshTokenScheduler(session Session, loginType string) {
	Once.Do(func() {
		getToken, _ := session.Token.GetToken()

		refreshRate := session.Refresh.GetRefreshRate()

		switch loginType {
		case "user": // user token have a refreshToken
			if getToken.RefreshToken != nil {
				go func() {
					for {
						token, _ := session.Token.GetToken()
						if token == nil {
							return // Logout
						}
						if repository.HasTokenExpired(session.Token, refreshRate) {
							if !repository.HasRefreshTokenExpired(session.Token, refreshRate) {
								session.Refresh.SetRefreshIsRunningInBackground(true)
								UserTokenRefresher(session)
								session.Refresh.SetRefreshIsRunningInBackground(false)
							}
						}
						time.Sleep(1 * time.Second)
					}
				}()
			}

		case "client":
			go func() {
				for {
					token, _ := session.Token.GetToken()
					if token == nil {
						return // Logout
					}
					if repository.HasTokenExpired(session.Token, refreshRate) {
						session.Refresh.SetRefreshIsRunningInBackground(true)
						ClientTokenRefresher(session)
						session.Refresh.SetRefreshIsRunningInBackground(false)
					}
					time.Sleep(1 * time.Second)
				}
			}()
		}
	})

	fmt.Print("Token in token repository has expired, please re-login")
}

type OAuth20RefreshService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	Token            repository.TokenRepository
}

func UserTokenRefresher(s Session) {
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
		return
	}
	err := s.Token.Store(*newToken.Payload)
	if err != nil {
		return
	}
}

func ClientTokenRefresher(s Session) {
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
		return
	}
	err := s.Token.Store(*newToken.Payload)
	if err != nil {
		return
	}
}
