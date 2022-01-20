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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

func (o *OAuth20Service) GetToken() (string, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	return *token.AccessToken, nil
}

func (o *OAuth20Service) GrantTokenCredentials(code, codeVerifier string) error {
	clientId := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	if len(clientId) == 0 {
		return errors.New("client not registered")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    "client_credentials",
	}
	accessToken, badRequest, unauthorized, forbidden, err :=
		o.Client.OAuth20.TokenGrantV3(param, client.BasicAuth(clientId, clientSecret))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if err != nil {
		return err
	}
	if accessToken == nil {
		return errors.New("empty access token")
	}
	err = o.TokenRepository.Store(*accessToken.GetPayload())
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuth20Service) GrantTokenRefreshToken(code, codeVerifier, refreshToken string) error {
	clientId := o.ConfigRepository.GetClientId()
	if len(clientId) == 0 {
		return errors.New("client not registered")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    "refresh_token",
		RefreshToken: &refreshToken,
	}
	accessToken, badRequest, unauthorized, forbidden, err := o.Client.OAuth20.TokenGrantV3(param, client.BasicAuth(clientId, ""))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if err != nil {
		return err
	}
	if accessToken == nil {
		return errors.New("empty access token")
	}
	err = o.TokenRepository.Store(*accessToken.GetPayload())
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuth20Service) GrantTokenAuthorizationCode(code, codeVerifier, redirectUri string) error {
	clientId := o.ConfigRepository.GetClientId()
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
	accessToken, badRequest, unauthorized, forbidden, err := o.Client.OAuth20.TokenGrantV3(param, nil)
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if err != nil {
		return err
	}
	if accessToken == nil {
		return errors.New("empty access token")
	}
	err = o.TokenRepository.Store(*accessToken.GetPayload())
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuth20Service) Authenticate(requestId, username, password string) (string, error) {
	logrus.Infof("Invoke authenticate: %s %s %s", requestId, username, password)
	clientId := o.ConfigRepository.GetClientId()
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
		o.Client.OAuth20Extension.UserAuthenticationV3(param, nil)
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

func (o *OAuth20Service) Authorize(scope, challenge, challengeMethod string) (string, error) {
	clientId := o.ConfigRepository.GetClientId()
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
	found, err := o.Client.OAuth20.AuthorizeV3(param, nil)
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

// Login is a custom wrapper used to login with username and password
func (o *OAuth20Service) Login(username, password string) error {
	scope := "commerce account social publishing analytics"
	codeVerifierGenerator, err := utils.CreateCodeVerifier()
	if err != nil {
		return err
	}
	codeVerifier := codeVerifierGenerator.String()
	challenge := codeVerifierGenerator.CodeChallengeS256()
	challengeMethod := "S256"
	requestId, err := o.Authorize(scope, challenge, challengeMethod)
	if err != nil {
		return err
	}
	code, err := o.Authenticate(requestId, username, password)
	if err != nil {
		return err
	}
	err = o.GrantTokenAuthorizationCode(code, codeVerifier, "")
	if err != nil {
		return err
	}
	return nil
}

// Logout is a custom wrapper used to logout with client service oauth2 revoke
func (o *OAuth20Service) Logout() error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &o_auth2_0.TokenRevocationV3Params{
		Token: *accessToken.AccessToken,
	}
	clientId := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	_, badRequest, unauthorized, err := o.Client.OAuth20.TokenRevocationV3(param, client.BasicAuth(clientId, clientSecret))
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
	err = o.TokenRepository.RemoveToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}