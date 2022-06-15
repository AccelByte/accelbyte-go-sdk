package sdk_test

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
	"testing"
	"time"

	lobbyConfig "github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/config"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"

	"github.com/stretchr/testify/assert"
)

var (
	accessToken = "foo"
	configRepo  = MyConfigRepo{
		baseUrl:      mockServerBaseUrl,
		clientId:     mockServerClientId,
		clientSecret: mockServerClientSecret,
	}
	contentTypeApplicationJson = "application/json"
	emptyString                = ""
	iamBansService             = &iam.BansService{
		Client:          factory.NewIamClient(&configRepo),
		TokenRepository: &tokenRepo,
	}
	lobbyConfigService = &lobby.ConfigService{
		Client:          factory.NewLobbyClient(&configRepo),
		TokenRepository: &tokenRepo,
	}
	mockServerBaseUrl                    = "http://0.0.0.1:8080"
	mockServerClientId                   = "admin"
	mockServerClientSecret               = "admin"
	mockServerConfigureOverwriteResponse = "/configure-overwrite-response"
	mockServerResetOverwriteResponse     = "/reset-overwrite-response"
	namespace                            = "test"
	tokenRepo                            = MyTokenRepo{
		accessToken: &iamclientmodels.OauthmodelTokenResponseV3{
			AccessToken: &accessToken,
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
	accessToken *iamclientmodels.OauthmodelTokenResponseV3
}

func (t *MyTokenRepo) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	return t.accessToken, nil
}

func (t *MyTokenRepo) Store(accessToken iamclientmodels.OauthmodelTokenResponseV3) error {
	t.accessToken = &accessToken

	return nil
}

func (t *MyTokenRepo) RemoveToken() error {
	t.accessToken = nil

	return nil
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
	params := bans.GetBansTypeParams{
		RetryPolicy: &retryPolicy,
	}
	_, err = iamBansService.GetBansTypeShort(&params)
	assert.NotNil(t, err)

	numberOfRetries := roundTripper.Counter - 1

	// Assert
	assert.Equal(t, maxNumberOfRetries, uint(numberOfRetries))

	// Clean up
	err = resetMockServerOverwriteResponse()
	assert.Nil(t, err)
}

func TestRetryRequest_withBigFile(t *testing.T) {
	// Arrange
	filePath := "test.dat"
	mbSize := 1024
	buf := make([]byte, mbSize*1024*1024)
	err := ioutil.WriteFile("test.dat", buf, 0666)
	if err != nil {
		t.Skip("unable to create big file")
	}
	defer func() {
		_ = os.Remove(filePath)
	}()

	file, err := os.Open(filePath)
	if err != nil {
		t.Skip("unable to open big file")
	}

	maxNumberOfRetries := uint(3)
	err = configureMockServerOverwriteResponse(map[string]interface{}{
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
	params := lobbyConfig.AdminImportConfigV1Params{
		File:        file,
		Namespace:   namespace,
		RetryPolicy: &retryPolicy,
	}
	_, err = lobbyConfigService.AdminImportConfigV1Short(&params)
	assert.NotNil(t, err)

	numberOfRetries := roundTripper.Counter - 1

	// Assert
	assert.Equal(t, maxNumberOfRetries, uint(numberOfRetries))

	// Clean up
	err = resetMockServerOverwriteResponse()
	assert.Nil(t, err)
}
