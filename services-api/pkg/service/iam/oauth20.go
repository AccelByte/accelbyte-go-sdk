// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"encoding/json"
	"errors"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"net/http"
	"net/url"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type OAuth20Service struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (a *OAuth20Service) GetToken() (string, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	return *token.AccessToken, nil
}

func (a *OAuth20Service) GrantTokenCredentials(code, codeVerifier string) error {
	clientId := a.ConfigRepository.GetClientId()
	clientSecret := a.ConfigRepository.GetClientSecret()
	if len(clientId) == 0 {
		return errors.New("client not registered")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    "client_credentials",
	}
	accessToken, badRequest, unauthorized, forbidden, err :=
		a.Client.OAuth20.TokenGrantV3(param, client.BasicAuth(clientId, clientSecret))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if accessToken == nil {
		return errors.New("empty access token")
	}
	err = a.TokenRepository.Store(*accessToken.GetPayload())
	if err != nil {
		return err
	}
	return nil
}

func (a *OAuth20Service) GrantTokenRefreshToken(code, codeVerifier, refreshToken string) error {
	clientId := a.ConfigRepository.GetClientId()
	if len(clientId) == 0 {
		return errors.New("client not registered")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    "refresh_token",
		RefreshToken: &refreshToken,
	}
	accessToken, badRequest, unauthorized, forbidden, err := a.Client.OAuth20.TokenGrantV3(param, client.BasicAuth(clientId, ""))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if accessToken == nil {
		return errors.New("empty access token")
	}
	err = a.TokenRepository.Store(*accessToken.GetPayload())
	if err != nil {
		return err
	}
	return nil
}

func (a *OAuth20Service) GrantTokenAuthorizationCode(code, codeVerifier, redirectUri string) error {
	clientId := a.ConfigRepository.GetClientId()
	if len(clientId) == 0 {
		return errors.New("client not registered")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    "authorization_code",
		ClientID:     &clientId,
		RedirectURI:  &redirectUri,
	}
	accessToken, badRequest, unauthorized, forbidden, err := a.Client.OAuth20.TokenGrantV3(param, nil)
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if accessToken == nil {
		return errors.New("empty access token")
	}
	err = a.TokenRepository.Store(*accessToken.GetPayload())
	if err != nil {
		return err
	}
	return nil
}

func (a *OAuth20Service) Authenticate(requestId, username, password string) (string, error) {
	logrus.Infof("Invoke authenticate: %s %s %s", requestId, username, password)
	clientId := a.ConfigRepository.GetClientId()
	if len(clientId) == 0 {
		return "", errors.New("client not registered")
	}
	httpClient := &http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	param := &o_auth2_0_extension.UserAuthenticationV3Params{
		ClientID:   &clientId,
		Password:   password,
		RequestID:  requestId,
		UserName:   username,
		HTTPClient: httpClient,
	}
	authenticated, err :=
		a.Client.OAuth20Extension.UserAuthenticationV3(param, nil)
	if err != nil {
		return "", err
	}
	parsedUrl, err := url.Parse(authenticated.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedUrl.RawQuery)
	if err != nil {
		return "", err
	}
	errorDescParam := query["error_description"]
	if errorDescParam != nil {
		return "", errors.New(errorDescParam[0])
	}
	code := query["code"][0]
	return code, nil
}

func (a *OAuth20Service) Authorize(scope, challenge, challengeMethod string) (string, error) {
	clientId := a.ConfigRepository.GetClientId()
	if len(clientId) == 0 {
		return "", errors.New("client not registered")
	}

	httpClient := &http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}

	param := &o_auth2_0.AuthorizeV3Params{
		ClientID:            clientId,
		CodeChallenge:       &challenge,
		CodeChallengeMethod: &challengeMethod,
		ResponseType:        "code",
		Scope:               &scope,
		HTTPClient:          httpClient,
	}
	found, err := a.Client.OAuth20.AuthorizeV3(param, nil)
	if err != nil {
		return "", err
	}
	parsedUrl, err := url.Parse(found.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedUrl.RawQuery)
	if err != nil {
		return "", err
	}
	requestId := query["request_id"][0]
	return requestId, nil
}

// Login is used to login with username and password
func (a *OAuth20Service) Login(username, password string) error {
	scope := "commerce account social publishing analytics"
	codeVerifierGenerator, err := utils.CreateCodeVerifier()
	if err != nil {
		return err
	}
	codeVerifier := codeVerifierGenerator.String()
	challenge := codeVerifierGenerator.CodeChallengeS256()
	challengeMethod := "S256"
	requestId, err := a.Authorize(scope, challenge, challengeMethod)
	if err != nil {
		return err
	}
	code, err := a.Authenticate(requestId, username, password)
	if err != nil {
		return err
	}
	err = a.GrantTokenAuthorizationCode(code, codeVerifier, "")
	if err != nil {
		return err
	}
	return nil
}

// Logout is used to logout with client service oauth2 revoke
func (a *OAuth20Service) Logout() error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &o_auth2_0.TokenRevocationV3Params{
		Token: *accessToken.AccessToken,
	}
	clientId := a.ConfigRepository.GetClientId()
	clientSecret := a.ConfigRepository.GetClientSecret()
	_, badRequest, unauthorized, err := a.Client.OAuth20.TokenRevocationV3(param, client.BasicAuth(clientId, clientSecret))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	err = a.TokenRepository.RemoveToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// new services

func (a *OAuth20Service) AuthCodeRequestV3(input *o_auth2_0.AuthCodeRequestV3Params) (*o_auth2_0.AuthCodeRequestV3Found, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.OAuth20.AuthCodeRequestV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok, nil
}

func (a *OAuth20Service) AuthorizeV3(input *o_auth2_0.AuthorizeV3Params) (string, error) {
	clientId := a.ConfigRepository.GetClientId()
	if len(clientId) == 0 {
		return "", errors.New("client not registered")
	}
	httpClient := &http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	params := &o_auth2_0.AuthorizeV3Params{
		ClientID:            input.ClientID,
		CodeChallenge:       input.CodeChallenge,
		CodeChallengeMethod: input.CodeChallengeMethod,
		RedirectURI:         input.RedirectURI,
		ResponseType:        input.ResponseType,
		Scope:               input.Scope,
		State:               input.State,
		TargetAuthPage:      input.TargetAuthPage,
		HTTPClient:          httpClient,
	}
	found, err := a.Client.OAuth20.AuthorizeV3(params, nil)
	if err != nil {
		return "", err
	}
	parsedUrl, err := url.Parse(found.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedUrl.RawQuery)
	if err != nil {
		return "", err
	}
	requestId := query["request_id"][0]
	return requestId, nil
}

func (a *OAuth20Service) GetJWKSV3() (*iamclientmodels.OauthcommonJWKSet, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.OAuth20.GetJWKSV3(nil, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *OAuth20Service) GetRevocationListV3() (*iamclientmodels.OauthapiRevocationList, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, err := a.Client.OAuth20.GetRevocationListV3(nil, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *OAuth20Service) PlatformTokenGrantV3(input *o_auth2_0.PlatformTokenGrantV3Params) (*iamclientmodels.OauthmodelTokenResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err := a.Client.OAuth20.PlatformTokenGrantV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *OAuth20Service) RetrieveUserThirdPartyPlatformTokenV3(input *o_auth2_0.RetrieveUserThirdPartyPlatformTokenV3Params) (*iamclientmodels.OauthmodelTokenThirdPartyResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := a.Client.OAuth20.RetrieveUserThirdPartyPlatformTokenV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *OAuth20Service) RevokeUserV3(input *o_auth2_0.RevokeUserV3Params) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, err := a.Client.OAuth20.RevokeUserV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if err != nil {
		return err
	}
	return nil
}

func (a *OAuth20Service) TokenGrantV3(input *o_auth2_0.TokenGrantV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	clientId := a.ConfigRepository.GetClientId()
	clientSecret := a.ConfigRepository.GetClientSecret()
	if len(clientId) == 0 {
		return nil, errors.New("client not registered")
	}
	ok, badRequest, unauthorized, forbidden, err := a.Client.OAuth20.TokenGrantV3(input, client.BasicAuth(clientId, clientSecret))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if ok == nil {
		return nil, errors.New("empty access token")
	}
	err = a.TokenRepository.Store(*ok.GetPayload())
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *OAuth20Service) TokenIntrospectionV3(input *o_auth2_0.TokenIntrospectionV3Params) (*iamclientmodels.OauthmodelTokenIntrospectResponse, error) {
	myToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err := a.Client.OAuth20.TokenIntrospectionV3(input, client.BearerToken(*myToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *OAuth20Service) TokenRevocationV3(token string) error {
	_, badRequest, unauthorized, err := a.Client.OAuth20.TokenRevocationV3(nil, client.BearerToken(token))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if err != nil {
		return err
	}
	return nil
}
