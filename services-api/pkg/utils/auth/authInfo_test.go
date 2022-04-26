// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth_test

import (
	"fmt"
	"net/http"
	"net/url"
	"os"
	"strings"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/stretchr/testify/assert"
)

var (
	authInfoWriter runtime.ClientAuthInfoWriter
	security       [][]string
	token          iamclientmodels.OauthmodelTokenResponseV3
	dummyService   = &dummyWrapperService{
		ConfigRepository: &ConfigRepositoryImpl{},
		TokenRepository:  &TokenRepositoryImpl{},
	}
)

type dummyWrapperService struct {
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

type TokenRepositoryImpl struct {
}

type ConfigRepositoryImpl struct {
}

const dummyAccessToken = "foo"

func TestAuthInfoWriterBearer(t *testing.T) {
	t.Parallel()
	r, err := newRequest("GET", "/", nil)
	if err != nil {
		assert.FailNow(t, "err should be nil")
	}

	// mockup client input value
	accessToken := dummyAccessToken
	token = iamclientmodels.OauthmodelTokenResponseV3{AccessToken: &accessToken}
	err = dummyService.TokenRepository.Store(token)
	if err != nil {
		assert.FailNow(t, "fail to store the token")
	}
	tokenStored, errGetToken := dummyService.TokenRepository.GetToken()
	if errGetToken != nil {
		assert.FailNow(t, "fail to store the token")
	}

	// call the AuthInfoWriter
	if authInfoWriter == nil {
		security = [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(dummyService.TokenRepository, nil, security, "")
	}

	writer := auth.AuthInfoWriter(dummyService.TokenRepository, nil, security, "")
	err = writer.AuthenticateRequest(r, nil)
	assert.Nil(t, err, "err should be nil")
	assert.Equal(t, "Bearer foo", r.header.Get("Authorization"))
	assert.Equal(t, tokenStored.AccessToken, token.AccessToken)
}

func TestAuthInfoWriterBasic(t *testing.T) {
	t.Parallel()
	r, err := newRequest("GET", "/", nil)
	if err != nil {
		assert.FailNow(t, "err should be nil")
	}

	// mockup client input value
	clientID := dummyService.ConfigRepository.GetClientId()
	if clientID == "" {
		assert.FailNow(t, "empty ClientID")
	}
	clientSecret := dummyService.ConfigRepository.GetClientId()
	if clientSecret == "" {
		assert.FailNow(t, "empty ClientSecret")
	}

	// call the AuthInfoWriter
	if authInfoWriter == nil {
		security = [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(nil, dummyService.ConfigRepository, security, "")
	}

	writer := auth.AuthInfoWriter(nil, dummyService.ConfigRepository, security, "")
	err = writer.AuthenticateRequest(r, nil)
	assert.Nil(t, err, "err should be nil")
	assert.Equal(t, "Basic YWRtaW46YWRtaW4=", r.header.Get("Authorization"))
}

func TestAuthInfoWriterCookie(t *testing.T) {
	t.Parallel()
	r, err := newRequest("GET", "/", nil)
	if err != nil {
		assert.FailNow(t, "err should be nil")
	}

	// mockup client input value
	accessToken := dummyAccessToken
	token = iamclientmodels.OauthmodelTokenResponseV3{AccessToken: &accessToken}
	err = dummyService.TokenRepository.Store(token)
	if err != nil {
		assert.FailNow(t, "fail to store the token")
	}
	tokenStored, _ := dummyService.TokenRepository.GetToken()

	// call the AuthInfoWriter
	if authInfoWriter == nil {
		security = [][]string{
			{"cookie"},
		}
		authInfoWriter = auth.AuthInfoWriter(dummyService.TokenRepository, nil, security, "access_token")
	}
	writer := auth.AuthInfoWriter(dummyService.TokenRepository, nil, security, "access_token")
	err = writer.AuthenticateRequest(r, nil)

	assert.NoError(t, err)
	assert.Equal(t, tokenStored.AccessToken, token.AccessToken)
	assert.Equal(t, "access_token=foo", r.header.Get("cookie"))
}

func TestAuthInfoWriterOptional(t *testing.T) {
	t.Parallel()
	r, err := newRequest("GET", "/", nil)
	if err != nil {
		assert.FailNow(t, "err should be nil")
	}

	// mockup client input value
	accessToken := dummyAccessToken
	token = iamclientmodels.OauthmodelTokenResponseV3{AccessToken: &accessToken}
	err = dummyService.TokenRepository.Store(token)
	if err != nil {
		assert.FailNow(t, "fail to store the token")
	}
	tokenStored, _ := dummyService.TokenRepository.GetToken()

	// call the AuthInfoWriter
	if authInfoWriter == nil {
		security = [][]string{
			{"cookie"},
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(dummyService.TokenRepository, nil, security, "access_token")
	}
	writer := auth.AuthInfoWriter(dummyService.TokenRepository, nil, security, "access_token")
	err = writer.AuthenticateRequest(r, nil)

	assert.NoError(t, err)
	assert.Equal(t, tokenStored.AccessToken, token.AccessToken)
	assert.Equal(t, "access_token=foo", r.header.Get("cookie"))
}

func TestBearer(t *testing.T) {
	t.Parallel()
	r, err := newRequest("GET", "/", nil)
	if err != nil {
		assert.FailNow(t, "err should be nil")
	}

	writer := auth.Bearer(dummyAccessToken)
	err = writer.AuthenticateRequest(r, nil)
	assert.NoError(t, err)
	assert.Equal(t, "Bearer foo", r.header.Get("Authorization"))
}

func TestBasic(t *testing.T) {
	t.Parallel()
	r, err := newRequest("GET", "/", nil)
	if err != nil {
		assert.FailNow(t, "err should be nil")
	}

	writer := auth.Basic("admin", "admin")
	err = writer.AuthenticateRequest(r, nil)
	assert.NoError(t, err)
	assert.Equal(t, "Basic YWRtaW46YWRtaW4=", r.header.Get("Authorization"))
}

func TestCookieValue(t *testing.T) {
	t.Parallel()
	r, err := newRequest("GET", "/", nil)
	if err != nil {
		assert.FailNow(t, "err should be nil")
	}

	writer := auth.CookieValue("access_token", dummyAccessToken)
	err = writer.AuthenticateRequest(r, nil)
	assert.NoError(t, err)
	assert.Equal(t, "access_token=foo", r.header.Get("cookie"))
}

func newRequest(method, pathPattern string, writer runtime.ClientRequestWriter) (*request, error) {
	return &request{
		pathPattern: pathPattern,
		method:      method,
		writer:      writer,
		header:      make(http.Header),
		query:       make(url.Values),
	}, nil
}

type request struct {
	pathPattern string
	method      string
	writer      runtime.ClientRequestWriter
	pathParams  map[string]string
	header      http.Header
	query       url.Values
	formFields  url.Values
	fileFields  map[string][]runtime.NamedReadCloser
	payload     interface{}
	timeout     time.Duration
	getBody     func(r *request) []byte
}

func (r *request) GetMethod() string {
	return r.method
}

func (r *request) GetPath() string {
	path := r.pathPattern
	for k, v := range r.pathParams {
		path = strings.Replace(path, "{"+k+"}", v, -1)
	}

	return path
}

func (r *request) GetBody() []byte {
	return r.getBody(r)
}

func (r *request) SetHeaderParam(name string, values ...string) error {
	if r.header == nil {
		r.header = make(http.Header)
	}
	r.header[http.CanonicalHeaderKey(name)] = values

	return nil
}

func (r *request) GetHeaderParams() http.Header {
	return r.header
}

func (r *request) SetQueryParam(name string, values ...string) error {
	if r.query == nil {
		r.query = make(url.Values)
	}
	r.query[name] = values

	return nil
}

func (r *request) GetQueryParams() url.Values {
	var result = make(url.Values)
	for key, value := range r.query {
		result[key] = append([]string{}, value...)
	}

	return result
}

func (r *request) SetFormParam(name string, values ...string) error {
	if r.formFields == nil {
		r.formFields = make(url.Values)
	}
	r.formFields[name] = values

	return nil
}

func (r *request) SetPathParam(name string, value string) error {
	if r.pathParams == nil {
		r.pathParams = make(map[string]string)
	}

	r.pathParams[name] = value

	return nil
}

func (r *request) SetFileParam(name string, files ...runtime.NamedReadCloser) error {
	for _, file := range files {
		if actualFile, ok := file.(*os.File); ok {
			fi, err := os.Stat(actualFile.Name())
			if err != nil {
				return err
			}
			if fi.IsDir() {
				return fmt.Errorf("%q is a directory, only files are supported", file.Name())
			}
		}
	}

	if r.fileFields == nil {
		r.fileFields = make(map[string][]runtime.NamedReadCloser)
	}
	if r.formFields == nil {
		r.formFields = make(url.Values)
	}

	r.fileFields[name] = files

	return nil
}

func (r *request) GetFileParam() map[string][]runtime.NamedReadCloser {
	return r.fileFields
}

func (r *request) SetBodyParam(payload interface{}) error {
	r.payload = payload

	return nil
}

func (r *request) GetBodyParam() interface{} {
	return r.payload
}

func (r *request) SetTimeout(timeout time.Duration) error {
	r.timeout = timeout

	return nil
}

func (tokenRepository *TokenRepositoryImpl) Store(accessToken iamclientmodels.OauthmodelTokenResponseV3) error {
	token = accessToken

	return nil
}

func (tokenRepository *TokenRepositoryImpl) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	return &token, nil
}

func (tokenRepository *TokenRepositoryImpl) RemoveToken() error {
	return nil
}

func (configRepository *ConfigRepositoryImpl) GetClientId() string {
	return "admin"
}

func (configRepository *ConfigRepositoryImpl) GetClientSecret() string {
	return "admin"
}

func (configRepository *ConfigRepositoryImpl) GetJusticeBaseUrl() string {
	return ""
}
