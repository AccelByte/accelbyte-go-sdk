// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"fmt"
	"os"
	"sync"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type TokenRepositoryImpl struct {
	IssuedTime  *time.Time
	AccessToken *iamclientmodels.OauthmodelTokenResponseV3
	mu          sync.Mutex
}

func DefaultTokenRepositoryImpl() *TokenRepositoryImpl {
	return &TokenRepositoryImpl{
		AccessToken: &iamclientmodels.OauthmodelTokenResponseV3{},
	}
}

func (t *TokenRepositoryImpl) Store(accessToken interface{}) error {
	defer t.mu.Unlock()
	t.mu.Lock()

	timeNow := time.Now().UTC()
	t.IssuedTime = &timeNow

	convertedToken, err := repository.ConvertInterfaceToModel(accessToken)
	if err != nil {
		return err
	}
	t.AccessToken = convertedToken

	return nil
}

func (t *TokenRepositoryImpl) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	defer t.mu.Unlock()
	t.mu.Lock()

	if t.AccessToken == nil {
		return nil, fmt.Errorf("empty access Token")
	}

	return t.AccessToken, nil
}

func (t *TokenRepositoryImpl) RemoveToken() error {
	defer t.mu.Unlock()
	t.mu.Lock()

	t.IssuedTime = nil
	t.AccessToken = nil

	return nil
}

func (t *TokenRepositoryImpl) TokenIssuedTimeUTC() time.Time {
	defer t.mu.Unlock()
	t.mu.Lock()

	return *t.IssuedTime
}

type ConfigRepositoryImpl struct {
	ClientId     string
	ClientSecret string
	BaseUrl      string
}

func DefaultConfigRepositoryImpl() *ConfigRepositoryImpl {
	return &ConfigRepositoryImpl{
		ClientId:     os.Getenv("AB_CLIENT_ID"),
		ClientSecret: os.Getenv("AB_CLIENT_SECRET"),
		BaseUrl:      os.Getenv("AB_BASE_URL"),
	}
}

func (c *ConfigRepositoryImpl) GetClientId() string {
	return c.ClientId
}

func (c *ConfigRepositoryImpl) GetClientSecret() string {
	return c.ClientSecret
}

func (c *ConfigRepositoryImpl) GetJusticeBaseUrl() string {
	return c.BaseUrl
}
