// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration

import (
	"fmt"
	"os"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
)

/*
	Please set your client_id and client_secret in to the env before run the test
*/

var (
	NamespaceTest = os.Getenv("AB_NAMESPACE")
	token         iamclientmodels.OauthmodelTokenResponseV3
)

type TokenRepositoryImpl struct {
	IssuedTime *time.Time
}

type ConfigRepositoryImpl struct {
}

func (configRepository *ConfigRepositoryImpl) GetClientId() string {
	return os.Getenv("AB_CLIENT_ID")
}

func (configRepository *ConfigRepositoryImpl) GetClientSecret() string {
	return os.Getenv("AB_CLIENT_SECRET")
}

func (configRepository *ConfigRepositoryImpl) GetJusticeBaseUrl() string {
	return os.Getenv("AB_BASE_URL")
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

func (tokenRepository *TokenRepositoryImpl) TokenIssuedTimeUTC() time.Time {
	return *tokenRepository.IssuedTime
}

type ConnectionManagerImpl struct {
}

var wsConn *connectionutils.WSConnection

func (connManager *ConnectionManagerImpl) Save(conn *connectionutils.WSConnection) {
	wsConn = conn
}

func (connManager *ConnectionManagerImpl) Get() *connectionutils.WSConnection {
	return wsConn
}

func (connManager *ConnectionManagerImpl) Close() error {
	if wsConn == nil {
		return fmt.Errorf("no websocket connection can be closed")
	}

	return wsConn.Conn.Close()
}

// ------------------------------------- section for phantauth token repo -----------------------------------

type TokenRepositoryPhantAuthImpl struct {
	IssuedTime *time.Time
}

type ConfigRepositoryPhantAuthImpl struct {
}

func (c *ConfigRepositoryPhantAuthImpl) GetClientId() string {
	return "test.client"
}

func (c *ConfigRepositoryPhantAuthImpl) GetClientSecret() string {
	return "UTBcWwt5"
}

func (c *ConfigRepositoryPhantAuthImpl) GetJusticeBaseUrl() string {
	return "https://www.phantauth.net"
}

func (t *TokenRepositoryPhantAuthImpl) Store(accessToken iamclientmodels.OauthmodelTokenResponseV3) error {
	token = accessToken

	return nil
}

func (t *TokenRepositoryPhantAuthImpl) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	return &token, nil
}

func (t *TokenRepositoryPhantAuthImpl) RemoveToken() error {
	token = iamclientmodels.OauthmodelTokenResponseV3{}

	return nil
}

func (t *TokenRepositoryPhantAuthImpl) TokenIssuedTimeUTC() time.Time {
	return *t.IssuedTime
}
