// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repository

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

var token iamclientmodels.OauthmodelTokenResponseV3

type TokenRepositoryImpl struct {

}

func (tokenRepository *TokenRepositoryImpl) Store(accessToken iamclientmodels.OauthmodelTokenResponseV3) error {
	token = accessToken
	return nil
}

func (tokenRepository *TokenRepositoryImpl) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	return &token, nil
}

func (tokenRepository *TokenRepositoryImpl) RemoveToken() error {
	token = iamclientmodels.OauthmodelTokenResponseV3{}
	return nil
}
