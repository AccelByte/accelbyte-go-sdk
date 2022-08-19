// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repositoryGame

import (
	"fmt"
	"time"

	models "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type TokenRepositoryGameImpl struct {
	IssuedTime  *time.Time
	accessToken *models.OauthmodelTokenResponseV3
}

var clientTokenV3 *models.OauthmodelTokenResponseV3

func (tokenRepositoryGame *TokenRepositoryGameImpl) Store(accessToken interface{}) error {
	timeNow := time.Now().UTC()
	tokenRepositoryGame.IssuedTime = &timeNow

	tokenConverted, err := repository.ConvertInterfaceToModel(accessToken, clientTokenV3)
	if err != nil {
		return err
	}
	tokenRepositoryGame.accessToken = tokenConverted

	return nil
}

func (tokenRepositoryGame *TokenRepositoryGameImpl) GetToken() (*models.OauthmodelTokenResponseV3, error) {
	if tokenRepositoryGame.accessToken == nil {
		return nil, fmt.Errorf("empty access Token")
	}

	return clientTokenV3, nil
}

func (tokenRepositoryGame *TokenRepositoryGameImpl) RemoveToken() error {
	tokenRepositoryGame.IssuedTime = nil
	tokenRepositoryGame.accessToken = nil

	return nil
}

func (tokenRepositoryGame *TokenRepositoryGameImpl) TokenIssuedTimeUTC() time.Time {
	return *tokenRepositoryGame.IssuedTime
}
