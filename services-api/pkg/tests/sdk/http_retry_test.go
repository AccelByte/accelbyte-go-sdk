// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"bytes"
	"encoding/json"
	"fmt"
	"net/http"
	"os"
	"sync"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	lobbyConfig "github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/stretchr/testify/assert"
)

var (
	accessToken = "foo"
	expiresIn   = int32(3600)
	configRepo  = MyConfigRepo{
		baseUrl:      mockServerBaseUrl,
		clientId:     mockServerClientId,
		clientSecret: mockServerClientSecret,
	}
	contentTypeApplicationJson = "application/json"
	emptyString                = ""
	iamBansService             = &iam.BansService{
		Client:           factory.NewIamClient(&configRepo),
		ConfigRepository: &configRepo,
		TokenRepository:  &tokenRepo,
	}
	// prepare
	oAuth20Service = &iam.OAuth20Service{
		Client:           factory.NewIamClient(&configRepo),
		ConfigRepository: &configRepo,
		TokenRepository:  &tokenRepo,
		//RefreshTokenRepository: &auth.RefreshTokenImpl{ // uncomment to enable the AutoRefresh functionality and change RefreshRate
		//	RefreshRate: 0.5,
		//	AutoRefresh: true,
		//},
	}
	lobbyConfigService = &lobby.ConfigService{
		Client:          factory.NewLobbyClient(&configRepo),
		TokenRepository: &tokenRepo,
	}
	mockServerBaseUrl                    = "http://127.0.0.1:8080"
	mockServerClientId                   = "admin"
	mockServerClientSecret               = "admin"
	mockServerConfigureOverwriteResponse = "/configure-overwrite-response"
	mockServerResetOverwriteResponse     = "/reset-overwrite-response"
	namespace                            = "test"
	tokenRepo                            = MyTokenRepo{
		accessToken: &iamclientmodels.OauthmodelTokenResponseV3{
			AccessToken: &accessToken,
			ExpiresIn:   &expiresIn,
		},
	}
)

// region MockServer

func configureMockServerOverwriteResponse(v map[string]interface{}) error {
	postBody, _ := json.Marshal(v)
	requestBody := bytes.NewBuffer(postBody)
	_, err := http.Post(
		fmt.Sprintf("%s%s", mockServerBaseUrl, mockServerConfigureOverwriteResponse),
		contentTypeApplicationJson,
		requestBody,
	)

	return err
}

func resetMockServerOverwriteResponse() error {
	_, err := http.Post(
		fmt.Sprintf("%s%s", mockServerBaseUrl, mockServerResetOverwriteResponse),
		emptyString,
		nil,
	)

	return err
}

// endregion MockServer

// region MyConfigRepo

type MyConfigRepo struct {
	baseUrl      string
	clientId     string
	clientSecret string
}

func (c *MyConfigRepo) GetClientId() string       { return c.clientId }
func (c *MyConfigRepo) GetClientSecret() string   { return c.clientSecret }
func (c *MyConfigRepo) GetJusticeBaseUrl() string { return c.baseUrl }

// endregion MyConfigRepo

// region MyTokenRepo

type MyTokenRepo struct {
	IssuedTime  *time.Time
	accessToken *iamclientmodels.OauthmodelTokenResponseV3
	mu          sync.Mutex
}

func (t *MyTokenRepo) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	defer t.mu.Unlock()
	t.mu.Lock()
	if t.accessToken == nil {
		return nil, fmt.Errorf("empty access AccessToken")
	}

	return t.accessToken, nil
}

func (t *MyTokenRepo) Store(accessToken interface{}) error {
	defer t.mu.Unlock()
	t.mu.Lock()

	timeNow := time.Now().UTC()
	t.IssuedTime = &timeNow

	convertedToken, err := repository.ConvertInterfaceToModel(accessToken)
	if err != nil {
		return err
	}
	t.accessToken = convertedToken

	return nil
}

func (t *MyTokenRepo) RemoveToken() error {
	defer t.mu.Unlock()
	t.mu.Lock()

	t.IssuedTime = nil
	t.accessToken = nil

	return nil
}

func (t *MyTokenRepo) TokenIssuedTimeUTC() time.Time {
	defer t.mu.Unlock()
	t.mu.Lock()

	return *t.IssuedTime
}

// endregion MyTokenRepo

// region http.RoundTripper

type MyRoundTripper struct {
	Counter      int
	RoundTripper http.RoundTripper
}

func (rt *MyRoundTripper) RoundTrip(req *http.Request) (*http.Response, error) {
	rt.Counter += 1

	return rt.RoundTripper.RoundTrip(req)
}

// endregion http.RoundTripper

func TestRetryRequest_withMaxTries(t *testing.T) {
	// Arrange
	prepareToken(iamBansService)
	maxNumberOfRetries := uint(3)
	err := configureMockServerOverwriteResponse(map[string]interface{}{
		"enabled":   true,
		"overwrite": true,
		"status":    404,
	})
	if err != nil {
		t.Skip("unable to configure mock server")
	}

	time.Sleep(1 * time.Second)

	// Act
	roundTripper := MyRoundTripper{
		Counter:      0,
		RoundTripper: iamBansService.Client.Runtime.Transport,
	}
	retryPolicy := utils.Retry{
		Backoff:  utils.NewConstantBackoff(0),
		MaxTries: maxNumberOfRetries,
		RetryCodes: map[int]bool{
			404: true,
		},
		Transport: &roundTripper,
	}
	paramsRetry := bans.AdminGetBansTypeV3Params{
		RetryPolicy: &retryPolicy,
	}
	_, err = iamBansService.AdminGetBansTypeV3Short(&paramsRetry)
	assert.NotNil(t, err)

	numberOfRetries := roundTripper.Counter - 1

	// Assert
	assert.Equal(t, maxNumberOfRetries, uint(numberOfRetries))

	// Clean up
	err = resetMockServerOverwriteResponse()
	assert.Nil(t, err)
}

func TestRetryRequest_withBigFile(t *testing.T) {
	// Arrange - create a big file
	filePath := "test.dat"
	mbSize := 1024
	buf := make([]byte, mbSize*1024*1024) // 1 gb file
	err := os.WriteFile("test.dat", buf, 0666)
	if err != nil {
		t.Fatal("unable to create big file")
	}

	// Arrange - cleaned up after done
	defer func() {
		_ = os.Remove(filePath)
	}()

	// Arrange - open a file and read by chunks
	file, errRead := utils.ReadByChunks(filePath)
	if errRead != nil {
		t.Fatal("unable to read big file")
	}

	// Arrange - additional
	maxNumberOfRetries := uint(3)
	err = configureMockServerOverwriteResponse(map[string]interface{}{
		"enabled":   true,
		"overwrite": true,
		"status":    404, // same result as demo environment
	})
	if err != nil {
		t.Fatal("unable to configure mock server")
	}

	time.Sleep(1 * time.Second)

	// Act
	roundTripper := MyRoundTripper{
		Counter:      0,
		RoundTripper: lobbyConfigService.Client.Runtime.Transport,
	}
	retryPolicy := utils.Retry{
		Backoff:  utils.NewConstantBackoff(0),
		MaxTries: maxNumberOfRetries,
		RetryCodes: map[int]bool{
			404: true,
		},
		Transport: &roundTripper,
	}
	paramsRetry := lobbyConfig.AdminImportConfigV1Params{
		File:        file,
		Namespace:   namespace,
		RetryPolicy: &retryPolicy,
	}
	ok, errOk := lobbyConfigService.AdminImportConfigV1Short(&paramsRetry)
	if errOk != nil {
		assert.NotNil(t, errOk, "err response is expected. the endpoint only accept JSON file. "+errOk.Error())
	}
	assert.Nil(t, ok, "nil response is expected")

	numberOfRetries := roundTripper.Counter - 1

	// Assert
	assert.Equal(t, maxNumberOfRetries, uint(numberOfRetries))

	// Clean up
	err = resetMockServerOverwriteResponse()
	assert.Nil(t, err)
}

func prepareToken(iam *iam.BansService) {
	t, _ := iam.TokenRepository.GetToken()
	_ = iam.TokenRepository.Store(*t)
}
