// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"encoding/json"
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/golang-jwt/jwt"
	"github.com/google/uuid"
)

// GenerateUUID generates uuid without hyphens
func GenerateUUID() string {
	id, err := uuid.NewRandom()
	if err != nil {
		return ""
	}

	return strings.ReplaceAll(id.String(), "-", "")
}

// ConvertTokenToTokenResponseV3 is used to convert token response
func ConvertTokenToTokenResponseV3(accessToken string) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	tokenResponseV3 := &iamclientmodels.OauthmodelTokenResponseV3{}
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
