// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth_test

import (
	"fmt"
	"net/http"
	"net/url"
	"strings"
	"testing"
	"time"

	"github.com/go-openapi/runtime"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/mock"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/constant"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
)

type mockTokenRepository struct {
	mock.Mock
}

func (m *mockTokenRepository) Store(accessToken interface{}) error { return nil }
func (m *mockTokenRepository) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	args := m.Called()

	return args.Get(0).(*iamclientmodels.OauthmodelTokenResponseV3), args.Error(1)
}
func (m *mockTokenRepository) RemoveToken() error            { return nil }
func (m *mockTokenRepository) TokenIssuedTimeUTC() time.Time { return time.Time{} }

type mockConfigRepository struct {
	mock.Mock
}

func (m *mockConfigRepository) GetClientId() string {
	return m.Called().Get(0).(string)
}

func (m *mockConfigRepository) GetClientSecret() string {
	return m.Called().Get(0).(string)
}

func (m *mockConfigRepository) GetJusticeBaseUrl() string {
	return m.Called().Get(0).(string)
}

type mockClientRequest struct {
	mock.Mock
}

func (m *mockClientRequest) SetHeaderParam(key string, values ...string) error {
	err := m.Called(key, values[0]).Get(0)
	if err != nil {
		return err.(error)
	}

	return nil
}
func (m *mockClientRequest) GetHeaderParams() http.Header                          { return nil }
func (m *mockClientRequest) SetQueryParam(string, ...string) error                 { return nil }
func (m *mockClientRequest) SetFormParam(string, ...string) error                  { return nil }
func (m *mockClientRequest) SetPathParam(string, string) error                     { return nil }
func (m *mockClientRequest) GetQueryParams() url.Values                            { return nil }
func (m *mockClientRequest) SetFileParam(string, ...runtime.NamedReadCloser) error { return nil }
func (m *mockClientRequest) SetBodyParam(interface{}) error                        { return nil }
func (m *mockClientRequest) SetTimeout(time.Duration) error                        { return nil }
func (m *mockClientRequest) GetMethod() string                                     { return "" }
func (m *mockClientRequest) GetPath() string                                       { return "" }
func (m *mockClientRequest) GetBody() []byte                                       { return nil }
func (m *mockClientRequest) GetBodyParam() interface{}                             { return nil }
func (m *mockClientRequest) GetFileParam() map[string][]runtime.NamedReadCloser    { return nil }

const (
	accessToken = "<some-random-access-token>"
)

func TestBearer(t *testing.T) {
	t.Parallel()
	req := &runtime.TestClientRequest{}
	writer := auth.Bearer(accessToken)
	err := writer.AuthenticateRequest(req, nil)

	expectedAuthHeader := fmt.Sprintf("Bearer %s", accessToken)
	assert.NoError(t, err)
	assert.Equal(t, expectedAuthHeader, req.GetHeaderParams().Get("Authorization"))
}

func TestBasic(t *testing.T) {
	t.Parallel()
	req := &runtime.TestClientRequest{}
	writer := auth.Basic("admin", "admin")
	err := writer.AuthenticateRequest(req, nil)

	assert.NoError(t, err)
	assert.Equal(t, "Basic YWRtaW46YWRtaW4=", req.GetHeaderParams().Get("Authorization"))
}

func TestCookieValue(t *testing.T) {
	t.Parallel()
	req := &runtime.TestClientRequest{}

	writer := auth.CookieValue("access_token", accessToken)
	err := writer.AuthenticateRequest(req, nil)

	expectedCookie := fmt.Sprintf("access_token=%s", accessToken)
	assert.NoError(t, err)
	assert.Equal(t, expectedCookie, req.GetHeaderParams().Get("cookie"))
}

func TestAuthInfoWriterBearer_All(t *testing.T) {
	type Security [][]string
	testData := []struct {
		Security Security
	}{
		{
			Security: Security{},
		},
		{
			Security: Security{
				{},
			},
		},
		{
			Security: Security{
				{"refresh"},
			},
		},
		{
			Security: Security{
				{constant.BasicAuth},
			},
		},
		{
			Security: Security{
				{constant.CookieAuth},
				{constant.BearerAuth},
			},
		},
		{
			Security: Security{
				{constant.BearerAuth, constant.BasicAuth, constant.CookieAuth},
				{constant.BearerAuth},
			},
		},
		{
			Security: Security{
				{constant.CookieAuth, "unknown"},
			},
		},
		{
			Security: Security{
				{"not-secure", constant.BasicAuth},
			},
		},
		{
			Security: Security{
				{"unknown", "not-secure"},
				{constant.CookieAuth},
			},
		},
		{
			Security: Security{
				{"unknown", "not-secure"},
				{"unsecure", constant.BearerAuth},
			},
		},
	}

	accToken := accessToken
	token := &iamclientmodels.OauthmodelTokenResponseV3{AccessToken: &accToken}
	tokenRepo := &mockTokenRepository{}
	tokenRepo.On("GetToken").Return(token, nil)

	configRepo := &mockConfigRepository{}
	configRepo.On("GetClientId").Return("admin")
	configRepo.On("GetClientSecret").Return("admin")
	expectedEncodedBasicAuth := "YWRtaW46YWRtaW4=" // base64(admin:admin)

	for _, test := range testData {
		testStr := strings.Replace(fmt.Sprintf("%+v", test), " ", ",", -1)
		t.Run(fmt.Sprintf("Test case: %s\n", testStr), func(t *testing.T) {
			// Arrange
			session := auth.Session{Token: tokenRepo, Config: configRepo}
			authWriter := auth.AuthInfoWriter(session, test.Security, "access_token")
			//req := &runtime.TestClientRequest{}
			req := &mockClientRequest{}
			req.On("SetHeaderParam", mock.Anything, mock.Anything).Return(nil)

			err := authWriter.AuthenticateRequest(req, nil)

			// Assert
			if test.Security == nil || len(test.Security) == 0 {
				assert.Error(t, err)

				return
			}

			if len(test.Security[0]) == 0 {
				assert.NoError(t, err)

				return
			}

			for _, authType := range test.Security[0] {
				switch authType {
				case constant.BasicAuth:
					expectedAuthHeader := fmt.Sprintf("Basic %s", expectedEncodedBasicAuth)
					req.AssertCalled(t, "SetHeaderParam", constant.Authorization, expectedAuthHeader)
				case constant.CookieAuth:
					expectedCookieHeader := fmt.Sprintf("access_token=%s", accessToken)
					req.AssertCalled(t, "SetHeaderParam", constant.CookieAuth, expectedCookieHeader)
				case constant.BearerAuth:
					expectedAuthHeader := fmt.Sprintf("Bearer %s", accessToken)
					req.AssertCalled(t, "SetHeaderParam", constant.Authorization, expectedAuthHeader)
				}
			}
		})
	}
}
