// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration

import (
	"fmt"
	"os"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
)

/*
	Please set your client_id and client_secret in to the env before run the test
*/

var (
	NamespaceTest = os.Getenv("AB_NAMESPACE")
)

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
	IssuedTime  *time.Time
	AccessToken *iamclientmodels.OauthmodelTokenResponseV3
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
	return os.Getenv("AB_PHANTAUTH_BASE_URL")
}

func (t *TokenRepositoryPhantAuthImpl) Store(accessToken interface{}) error {
	convertedToken, err := repository.ConvertInterfaceToModel(accessToken)
	if err != nil {
		return err
	}
	t.AccessToken = convertedToken

	return nil
}

func (t *TokenRepositoryPhantAuthImpl) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	return t.AccessToken, nil
}

func (t *TokenRepositoryPhantAuthImpl) RemoveToken() error {
	t.AccessToken = &iamclientmodels.OauthmodelTokenResponseV3{}

	return nil
}

func (t *TokenRepositoryPhantAuthImpl) TokenIssuedTimeUTC() time.Time {
	return *t.IssuedTime
}
