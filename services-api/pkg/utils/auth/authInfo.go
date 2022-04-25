// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"encoding/base64"
	"fmt"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/constant"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// AuthInfoWriter called by the existing security from the wrapper
func AuthInfoWriter(token repository.TokenRepository, config repository.ConfigRepository, outerValues [][]string, key string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		for _, innerValue := range outerValues {
			success := true
			for _, value := range innerValue {
				switch value {
				case constant.BearerAuth:
					err := TokenRepo(token).AuthenticateRequest(r, nil)
					if err != nil {
						success = false
						break
					}
				case constant.BasicAuth:
					err := ConfigRepo(config).AuthenticateRequest(r, nil)
					if err != nil {
						success = false
						break
					}
				case constant.CookieAuth:
					err := Cookies(token, key).AuthenticateRequest(r, nil)
					if err != nil {
						success = false
						break
					}
				}
			}
			if success == true {
				return nil
			}
		}

		return fmt.Errorf("failed to find an existing authorization")
	})
}

func ConfigRepo(configRepo repository.ConfigRepository) runtime.ClientAuthInfoWriter {
	clientID := configRepo.GetClientId()
	if clientID == "" {
		return Error(fmt.Errorf("empty clientID"))
	}
	clientSecret := configRepo.GetClientSecret()
	if clientSecret == "" {
		return Error(fmt.Errorf("empty clientSecret"))
	}

	return Basic(clientID, clientSecret)
}

func TokenRepo(tokenRepo repository.TokenRepository) runtime.ClientAuthInfoWriter {
	token, err := tokenRepo.GetToken()
	if err != nil {
		return Error(err)
	}

	return Bearer(*token.AccessToken)
}

func Basic(username, password string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		encoded := base64.StdEncoding.EncodeToString([]byte(username + ":" + password))
		return r.SetHeaderParam(constant.Authorization, "Basic "+encoded)
	})
}

func Bearer(token string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return r.SetHeaderParam(constant.Authorization, "Bearer "+token)
	})
}

func Cookie(key, value string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		encoded := base64.StdEncoding.EncodeToString([]byte(value))
		return r.SetHeaderParam(constant.CookieAuth, key+"="+encoded)
	})
}

func Cookies(tokenRepo repository.TokenRepository, key string) runtime.ClientAuthInfoWriter {
	token, err := tokenRepo.GetToken()
	if err != nil {
		return Error(err)
	}

	return Cookie(key, *token.AccessToken)
}

func Error(err error) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return err
	})
}

// Compose combines multiple ClientAuthInfoWriters into a single one.
// Useful when multiple auth headers are needed.
func Compose(auths ...runtime.ClientAuthInfoWriter) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		for _, auth := range auths {
			if auth == nil {
				continue
			}
			if err := auth.AuthenticateRequest(r, nil); err != nil {
				return err
			}
		}
		return nil
	})
}
