// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"errors"
	"net/http"
	"net/url"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
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

// new services

func (oauthService OauthService) AuthCodeRequestV3(clientID *string, platformID string, redirectURI *string, requestID string) (*o_auth2_0.AuthCodeRequestV3Found, error) {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &o_auth2_0.AuthCodeRequestV3Params{
		ClientID:    clientID,
		PlatformID:  platformID,
		RedirectURI: redirectURI,
		RequestID:   requestID,
	}

	ok, err := oauthService.IamService.OAuth20.AuthCodeRequestV3(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok, nil
}

func (oauthService OauthService) AuthorizeV3(clientID string, codeChallenge *string, codeChallengeMethode *string, redirectURI *string, responseType string, scope *string, state *string, targetAuthPage *string) (string, error) {
	clientId := oauthService.ConfigRepository.GetClientId()
	if len(clientId) == 0 {
		return "", errors.New("client not registered")
	}
	httpClient := &http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	params := &o_auth2_0.AuthorizeV3Params{
		ClientID:            clientID,
		CodeChallenge:       codeChallenge,
		CodeChallengeMethod: codeChallengeMethode,
		RedirectURI:         redirectURI,
		ResponseType:        responseType,
		Scope:               scope,
		State:               state,
		TargetAuthPage:      targetAuthPage,
		HTTPClient:          httpClient,
	}
	found, err := oauthService.IamService.OAuth20.AuthorizeV3(params, nil)
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

func (oauthService OauthService) GetJWKSV3() (*iamclientmodels.OauthcommonJWKSet, error) {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := oauthService.IamService.OAuth20.GetJWKSV3(nil, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (oauthService OauthService) GetRevocationListV3() (*iamclientmodels.OauthapiRevocationList, error) {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, err := oauthService.IamService.OAuth20.GetRevocationListV3(nil, client.BearerToken(*token.AccessToken))
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

func (oauthService OauthService) PlatformTokenGrantV3(clientID *string, deviceID *string, platformID string, platformToken *string) (*iamclientmodels.OauthmodelTokenResponse, error) {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &o_auth2_0.PlatformTokenGrantV3Params{
		ClientID:      clientID,
		DeviceID:      deviceID,
		PlatformID:    platformID,
		PlatformToken: platformToken,
	}
	ok, badRequest, unauthorized, err := oauthService.IamService.OAuth20.PlatformTokenGrantV3(params, client.BearerToken(*token.AccessToken))
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

func (oauthService OauthService) RetrieveUserThirdPartyPlatformTokenV3(namespace string, platformID string, userID string) (*iamclientmodels.OauthmodelTokenThirdPartyResponse, error) {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &o_auth2_0.RetrieveUserThirdPartyPlatformTokenV3Params{
		Namespace:  namespace,
		PlatformID: platformID,
		UserID:     userID,
	}
	ok, unauthorized, forbidden, notFound, err := oauthService.IamService.OAuth20.RetrieveUserThirdPartyPlatformTokenV3(params, client.BearerToken(*token.AccessToken))
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

func (oauthService OauthService) RevokeUserV3(namespace, userID string) error {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &o_auth2_0.RevokeUserV3Params{
		Namespace: namespace,
		UserID:    userID,
	}
	_, badRequest, unauthorized, forbidden, err := oauthService.IamService.OAuth20.RevokeUserV3(params, client.BearerToken(*token.AccessToken))
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

func (oauthService OauthService) TokenGrantV3(clientID *string, code *string, codeVerifier *string, deviceID *string, grantType string, redirectURI *string, refreshToken *string) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &o_auth2_0.TokenGrantV3Params{
		ClientID:     clientID,
		Code:         code,
		CodeVerifier: codeVerifier,
		DeviceID:     deviceID,
		GrantType:    grantType,
		RedirectURI:  redirectURI,
		RefreshToken: refreshToken,
	}
	ok, badRequest, unauthorized, forbidden, err := oauthService.IamService.OAuth20.TokenGrantV3(params, client.BearerToken(*token.AccessToken))
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

func (oauthService OauthService) TokenIntrospectionV3(token string) (*iamclientmodels.OauthmodelTokenIntrospectResponse, error) {
	myToken, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &o_auth2_0.TokenIntrospectionV3Params{
		Token: token,
	}
	ok, badRequest, unauthorized, err := oauthService.IamService.OAuth20.TokenIntrospectionV3(params, client.BearerToken(*myToken.AccessToken))
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

func (oauthService OauthService) TokenRevocationV3(token string) error {
	_, badRequest, unauthorized, err := oauthService.IamService.OAuth20.TokenRevocationV3(nil, client.BearerToken(token))
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
