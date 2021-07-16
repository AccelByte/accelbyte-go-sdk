// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package service

import (
	"errors"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
	"net/http"
	"net/url"
)

type OauthService struct {
	IamService       *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (oauthService *OauthService) GetToken() (string, error) {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	return *token.AccessToken, nil
}

func (oauthService *OauthService) GrantTokenCredentials(code, codeVerifier string) error {
	clientId := oauthService.ConfigRepository.GetClientId()
	clientSecret := oauthService.ConfigRepository.GetClientSecret()
	if len(clientId) == 0 {
		return errors.New("client not registered")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    "client_credentials",
	}
	accessToken, badRequest, unauthorized, forbidden, err :=
		oauthService.IamService.OAuth20.TokenGrantV3(param, client.BasicAuth(clientId, clientSecret))
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
	err = oauthService.TokenRepository.Store(*accessToken.GetPayload())
	if err != nil {
		return err
	}
	return nil
}

func (oauthService *OauthService) GrantTokenRefreshToken(code, codeVerifier, refreshToken string) error {
	clientId := oauthService.ConfigRepository.GetClientId()
	if len(clientId) == 0 {
		return errors.New("client not registered")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    "refresh_token",
		RefreshToken: &refreshToken,
	}

	accessToken, badRequest, unauthorized, forbidden, err := oauthService.IamService.OAuth20.TokenGrantV3(param, client.BasicAuth(clientId, ""))
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
	err = oauthService.TokenRepository.Store(*accessToken.GetPayload())
	if err != nil {
		return err
	}
	return nil
}

func (oauthService *OauthService) GrantTokenAuthorizationCode(code, codeVerifier, redirectUri string) error {
	clientId := oauthService.ConfigRepository.GetClientId()
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
	accessToken, badRequest, unauthorized, forbidden, err := oauthService.IamService.OAuth20.TokenGrantV3(param, nil)
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
	err = oauthService.TokenRepository.Store(*accessToken.GetPayload())
	if err != nil {
		return err
	}
	return nil
}

func (oauthService *OauthService) Authenticate(requestId, username, password string) (string, error) {
	logrus.Infof("Invoke authenticate: %s %s %s", requestId, username, password)
	clientId := oauthService.ConfigRepository.GetClientId()
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
		oauthService.IamService.OAuth20Extension.UserAuthenticationV3(param, nil)
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

func (oauthService *OauthService) Authorize(scope, challenge, challengeMethod string) (string, error) {
	clientId := oauthService.ConfigRepository.GetClientId()
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
	found, err := oauthService.IamService.OAuth20.AuthorizeV3(param, nil)
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
