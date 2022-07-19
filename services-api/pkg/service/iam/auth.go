// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"encoding/json"
	"errors"
	"net/http"
	"net/url"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
)

var (
	emptyString = ""
)

func (o *OAuth20Service) GetToken() (string, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}

	return *token.AccessToken, nil
}

func (o *OAuth20Service) GrantTokenCredentials(code, codeVerifier string) error {
	clientID := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	if len(clientID) == 0 {
		return errors.New("client not registered")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    o_auth2_0.TokenGrantV3ClientCredentialsConstant,
	}
	accessToken, badRequest, unauthorized, forbidden, err :=
		o.Client.OAuth20.TokenGrantV3(param, client.BasicAuth(clientID, clientSecret))
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
	clientID := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	if len(clientID) == 0 {
		return errors.New("client not registered")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    o_auth2_0.TokenGrantV3RefreshTokenConstant,
		RefreshToken: &refreshToken,
	}
	accessToken, badRequest, unauthorized, forbidden, err := o.Client.OAuth20.TokenGrantV3(param, client.BasicAuth(clientID, clientSecret))
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

func (o *OAuth20Service) GrantTokenAuthorizationCode(code, codeVerifier, redirectURI string) error {
	clientID := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	if len(clientID) == 0 {
		return errors.New("client not registered")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    o_auth2_0.TokenGrantV3AuthorizationCodeConstant,
		RedirectURI:  &redirectURI,
	}

	accessToken, badRequest, unauthorized, forbidden, err := o.Client.OAuth20.TokenGrantV3(param, client.BasicAuth(clientID, clientSecret))
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

func (o *OAuth20Service) Authenticate(requestID, username, password string) (string, error) {
	logrus.Infof("Invoke authenticate: %s %s %s", requestID, username, password)
	clientID := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	if len(clientID) == 0 {
		return "", errors.New("client not registered")
	}
	httpClient := &http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	param := &o_auth2_0_extension.UserAuthenticationV3Params{
		ClientID:   &clientID,
		Password:   password,
		RequestID:  requestID,
		UserName:   username,
		HTTPClient: httpClient,
	}
	authenticated, err :=
		o.Client.OAuth20Extension.UserAuthenticationV3(param, client.BasicAuth(clientID, clientSecret))
	if err != nil {
		return "", err
	}
	parsedURL, err := url.Parse(authenticated.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedURL.RawQuery)
	if err != nil {
		return "", err
	}
	errorDescParam := query["error_description"]
	if errorDescParam != nil {
		return "", errors.New(errorDescParam[0])
	}
	code := query[o_auth2_0.AuthorizeV3CodeConstant][0]

	return code, nil
}

func (o *OAuth20Service) Authorize(scope, challenge, challengeMethod string) (string, error) {
	clientID := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	if len(clientID) == 0 {
		return "", errors.New("client not registered")
	}

	httpClient := &http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}

	param := &o_auth2_0.AuthorizeV3Params{
		ClientID:            clientID,
		CodeChallenge:       &challenge,
		CodeChallengeMethod: &challengeMethod,
		ResponseType:        o_auth2_0.AuthorizeV3CodeConstant,
		Scope:               &scope,
		HTTPClient:          httpClient,
	}
	found, err := o.Client.OAuth20.AuthorizeV3(param, client.BasicAuth(clientID, clientSecret))
	if err != nil {
		return "", err
	}
	parsedURL, err := url.Parse(found.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedURL.RawQuery)
	if err != nil {
		return "", err
	}
	requestID := query["request_id"][0]

	return requestID, nil
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
	challengeMethod := o_auth2_0.AuthorizeV3S256Constant
	requestID, err := o.Authorize(scope, challenge, challengeMethod)
	if err != nil {
		return err
	}
	code, err := o.Authenticate(requestID, username, password)
	if err != nil {
		return err
	}
	err = o.GrantTokenAuthorizationCode(code, codeVerifier, "")
	if err != nil {
		return err
	}

	if o.RefreshTokenRepository == nil {
		o = &OAuth20Service{
			Client:                 o.Client,
			ConfigRepository:       o.ConfigRepository,
			TokenRepository:        o.TokenRepository,
			RefreshTokenRepository: auth.DefaultRefreshTokenImpl(),
		}
	}
	o = &OAuth20Service{
		Client:                 o.Client,
		ConfigRepository:       o.ConfigRepository,
		TokenRepository:        o.TokenRepository,
		RefreshTokenRepository: o.RefreshTokenRepository,
	}

	if !o.RefreshTokenRepository.DisableAutoRefresh() {
		auth.RefreshTokenScheduler(o.GetAuthSession(), "user")
	}

	return nil
}

// LoginClient is a custom wrapper used to log in with clientId and clientSecret
func (o *OAuth20Service) LoginClient(clientId, clientSecret *string) error {
	if clientId == nil {
		id := o.ConfigRepository.GetClientId()
		clientId = &id
		if clientSecret == nil {
			secret := o.ConfigRepository.GetClientSecret()
			clientSecret = &secret
		}
	} else {
		if clientSecret == nil {
			clientSecret = &emptyString
		}
	}
	if len(*clientId) == 0 {
		return errors.New("client not registered")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		GrantType: o_auth2_0.TokenGrantV3ClientCredentialsConstant,
	}
	accessToken, badRequest, unauthorized, forbidden, err :=
		o.Client.OAuth20.TokenGrantV3(param, client.BasicAuth(*clientId, *clientSecret))
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

	if o.RefreshTokenRepository == nil {
		o = &OAuth20Service{
			Client:                 o.Client,
			ConfigRepository:       o.ConfigRepository,
			TokenRepository:        o.TokenRepository,
			RefreshTokenRepository: auth.DefaultRefreshTokenImpl(),
		}
	}
	o = &OAuth20Service{
		Client:                 o.Client,
		ConfigRepository:       o.ConfigRepository,
		TokenRepository:        o.TokenRepository,
		RefreshTokenRepository: o.RefreshTokenRepository,
	}

	if !o.RefreshTokenRepository.DisableAutoRefresh() {
		auth.RefreshTokenScheduler(o.GetAuthSession(), "client")
	}

	return nil
}

// LoginPlatform is a custom wrapper used to log in with clientId and clientSecret
func (o *OAuth20Service) LoginPlatform(input *o_auth2_0.PlatformTokenGrantV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  o.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	accessToken, err := o.Client.OAuth20.PlatformTokenGrantV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}
	if accessToken == nil {
		return errors.New("empty access token")
	}
	accessTokenPayload := accessToken.GetPayload()

	// convert OauthmodelTokenResponse to OauthmodelTokenResponseV3
	var accessTokenV3 iamclientmodels.OauthmodelTokenResponseV3
	temporaryVariable, _ := json.Marshal(accessTokenPayload)
	err = json.Unmarshal(temporaryVariable, &accessTokenV3)
	if err != nil {
		return err
	}

	err = o.TokenRepository.Store(accessTokenV3)
	if err != nil {
		return err
	}

	if o.RefreshTokenRepository == nil {
		o = &OAuth20Service{
			Client:                 o.Client,
			ConfigRepository:       o.ConfigRepository,
			TokenRepository:        o.TokenRepository,
			RefreshTokenRepository: auth.DefaultRefreshTokenImpl(),
		}
	}
	o = &OAuth20Service{
		Client:                 o.Client,
		ConfigRepository:       o.ConfigRepository,
		TokenRepository:        o.TokenRepository,
		RefreshTokenRepository: o.RefreshTokenRepository,
	}

	if !o.RefreshTokenRepository.DisableAutoRefresh() {
		auth.RefreshTokenScheduler(o.GetAuthSession(), "user")
	}

	return nil
}

// LoginUser is a custom wrapper used to log in with username and password
func (o *OAuth20Service) LoginUser(username, password string) error {
	return o.Login(username, password)
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
	clientID := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	_, badRequest, unauthorized, err := o.Client.OAuth20.TokenRevocationV3(param, client.BasicAuth(clientID, clientSecret))
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
