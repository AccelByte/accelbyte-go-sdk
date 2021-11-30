// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repositoryGame

import (
	models "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

type TokenRepositoryGameImpl struct {
}

var clientTokenV3 models.OauthmodelTokenResponseV3

func (tokenRepositoryGame *TokenRepositoryGameImpl) Store(accessToken models.OauthmodelTokenResponseV3) error {
	clientTokenV3 = accessToken
	return nil
}

func (tokenRepositoryGame *TokenRepositoryGameImpl) GetToken() (*models.OauthmodelTokenResponseV3, error) {
	return &clientTokenV3, nil
}

func (tokenRepositoryGame *TokenRepositoryGameImpl) RemoveToken() error {
	return nil
}
