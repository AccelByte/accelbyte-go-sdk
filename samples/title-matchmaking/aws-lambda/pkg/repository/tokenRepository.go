// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repository

import (
	"encoding/json"

	models "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/golang-jwt/jwt"
)

type TokenRepositoryImpl struct {
}

var clientTokenV3 models.OauthmodelTokenResponseV3

func (tokenRepository *TokenRepositoryImpl) Store(accessToken models.OauthmodelTokenResponseV3) error {
	clientTokenV3 = accessToken
	return nil
}

func (tokenRepository *TokenRepositoryImpl) GetToken() (*models.OauthmodelTokenResponseV3, error) {
	return &clientTokenV3, nil
}

func (tokenRepository *TokenRepositoryImpl) RemoveToken() error {
	return nil
}

// ConvertTokenToTokenResponseV3 is used to convert token response
func ConvertTokenToTokenResponseV3(accessToken string) (*models.OauthmodelTokenResponseV3, error) {
	tokenResponseV3 := &models.OauthmodelTokenResponseV3{}
	parsedToken, err := jwt.Parse(accessToken, func(token *jwt.Token) (interface{}, error) {
		return accessToken, nil
	})
	if parsedToken != nil {
		jsonPayload, errMarshal := json.Marshal(parsedToken.Claims)
		if errMarshal != nil {
			return nil, errMarshal
		}
		err = json.Unmarshal(jsonPayload, tokenResponseV3)
		if err != nil {
			return nil, err
		}
		tokenResponseV3.AccessToken = &accessToken
		return tokenResponseV3, nil
	}
	return nil, err
}
