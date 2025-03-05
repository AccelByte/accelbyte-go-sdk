// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"context"
	"crypto/rsa"
	"encoding/base64"
	"encoding/json"
	"errors"
	"fmt"
	"log"
	"net/http"
	"net/url"
	"strings"
	"sync/atomic"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/go-jose/jwt"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

var (
	emptyString = ""
	locker      uint32
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
	accessToken, err :=
		o.Client.OAuth20.TokenGrantV3Short(param, client.BasicAuth(clientID, clientSecret))
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
	accessToken, err := o.Client.OAuth20.TokenGrantV3Short(param, client.BasicAuth(clientID, clientSecret))
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

	accessToken, err := o.Client.OAuth20.TokenGrantV3Short(param, client.BasicAuth(clientID, clientSecret))
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
		o.Client.OAuth20Extension.UserAuthenticationV3Short(param, client.BasicAuth(clientID, clientSecret))
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
	found, err := o.Client.OAuth20.AuthorizeV3Short(param, client.BasicAuth(clientID, clientSecret))
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
	// the parsed query might return an error(s) message
	// so we check if the parsed query has it
	if e, ok := query["error"]; ok {
		d, ok := query["error_description"]
		if !ok {
			return "", fmt.Errorf("%s", strings.Join(e, " "))
		}

		return "", fmt.Errorf("%s: %s", strings.Join(e, " "), strings.Join(d, " "))
	}
	requestID := query["request_id"][0]

	return requestID, nil
}

// Login is a custom wrapper used to login with username and password
func (o *OAuth20Service) Login(username, password string) error {
	scope := "commerce account social publishing analytics"

	return o.LoginWithScope(username, password, scope)
}

func (o *OAuth20Service) LoginOrRefresh(username, password string) error {
	scope := "commerce account social publishing analytics"

	return o.LoginOrRefreshWithScope(username, password, scope)
}

func (o *OAuth20Service) LoginWithScope(username, password, scope string) error {
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

func (o *OAuth20Service) LoginOrRefreshWithScope(username, password, scope string) error {
	session := o.GetAuthSession()
	getToken, err := session.Token.GetToken()
	refreshRate := session.Refresh.GetRefreshRate()
	if err != nil {
		return err
	}

	if getToken.AccessToken == nil {
		return o.LoginWithScope(username, password, scope)
	} else {
		if repository.HasTokenExpired(session.Token, refreshRate) {
			if atomic.CompareAndSwapUint32(&locker, 0, 1) {
				defer atomic.StoreUint32(&locker, 0)
				if !repository.HasRefreshTokenExpired(session.Token, refreshRate) {
					auth.UserTokenRefresher(session)
				} else {
					return o.LoginWithScope(username, password, scope)
				}
			}
		}
	}

	return nil
}

func (o *OAuth20Service) LoginOrRefreshClient(clientId, clientSecret *string) error {
	session := o.GetAuthSession()
	getToken, err := session.Token.GetToken()
	refreshRate := session.Refresh.GetRefreshRate()
	if err != nil {
		return err
	}

	if getToken.AccessToken == nil {
		return o.LoginClient(clientId, clientSecret)
	} else {
		if atomic.CompareAndSwapUint32(&locker, 0, 1) {
			defer atomic.StoreUint32(&locker, 0)
			if repository.HasTokenExpired(session.Token, refreshRate) {
				return o.LoginClient(clientId, clientSecret)
			}
		}
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
	if len(*clientSecret) == 0 {
		logrus.Warningln("The use of a Public OAuth Client is highly discouraged!")
	}
	param := &o_auth2_0.TokenGrantV3Params{
		GrantType: o_auth2_0.TokenGrantV3ClientCredentialsConstant,
	}
	accessToken, err :=
		o.Client.OAuth20.TokenGrantV3Short(param, client.BasicAuth(*clientId, *clientSecret))
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
	_, err = o.Client.OAuth20.TokenRevocationV3Short(param, client.BasicAuth(clientID, clientSecret))
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

func (o *OAuth20Service) ParseAccessToken(accessToken string, validate bool) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	// Parse the JWT token
	parsedToken, err := jwt.ParseSigned(accessToken)
	if err != nil {
		return nil, fmt.Errorf("failed to parse. %w", err)
	}

	// Verify and decode the token claims
	claims := struct {
		*iamclientmodels.OauthmodelTokenResponseV3
		Sub string `json:"sub"`
	}{}

	pub, err := o.getPublicKey(parsedToken)
	if err != nil {
		return nil, err
	}

	err = parsedToken.Claims(pub, &claims)
	if err != nil {
		return nil, fmt.Errorf("failed to claims. %w", err)
	}

	var tokenResponseV3 = claims.OauthmodelTokenResponseV3
	tokenResponseV3.AccessToken = &accessToken
	tokenResponseV3.UserID = claims.Sub

	// Validate the token if required
	if validate {
		var perm *Permission
		if len(tokenResponseV3.Permissions) > 0 {
			permission := tokenResponseV3.Permissions[0]
			perm = &Permission{
				Resource: *permission.Resource,
				Action:   int(*permission.Action),
			}
		}

		ctx := context.Background()
		errValidate := o.Validate(ctx, accessToken, perm, tokenResponseV3.Namespace, nil)
		if errValidate != nil {
			log.Fatalf("token validation failed: %s", errValidate.Error())
		}
	}

	return tokenResponseV3, nil
}

func (o *OAuth20Service) ParseAccessTokenToClaims(accessToken string, validate bool) (*JWTClaims, error) {
	// Parse the JWT token
	parsedToken, err := jwt.ParseSigned(accessToken)
	if err != nil {
		return nil, fmt.Errorf("failed to parse. %w", err)
	}

	// Verify and decode the token claims
	claims := struct {
		*JWTClaims
	}{}

	pub, err := o.getPublicKey(parsedToken)
	if err != nil {
		return nil, err
	}

	err = parsedToken.Claims(pub, &claims)
	if err != nil {
		return nil, fmt.Errorf("failed to claims. %w", err)
	}

	// Validate the token if required
	if validate {
		var perm *Permission
		if len(claims.Permissions) > 0 {
			permission := claims.Permissions[0]
			perm = &Permission{
				Resource: permission.Resource,
				Action:   permission.Action,
			}
		}

		namespace := claims.Namespace

		if claims.ExtendNamespace != "" {
			namespace = claims.ExtendNamespace
		}

		ctx := context.Background()
		errValidate := o.Validate(ctx, accessToken, perm, &namespace, nil)
		if errValidate != nil {
			log.Fatalf("token validation failed: %s", errValidate.Error())
		}
	}

	return claims.JWTClaims, nil
}

func (o *OAuth20Service) Validate(ctx context.Context, token string, permission *Permission, namespace *string, userId *string) error {
	err := o.tokenValidation.Validate(ctx, token, permission, namespace, userId)
	if err != nil {
		return err
	}

	return nil
}

func (o *OAuth20Service) SetLocalValidation(value bool) {
	if o.tokenValidation == nil {
		o.initTokenValidator(value)
	}

	o.tokenValidation.LocalValidationActive = value
}

func (o *OAuth20Service) initTokenValidator(value bool) {
	o.tokenValidation = &TokenValidator{
		AuthService:     *o,
		RefreshInterval: time.Hour,

		Filter:                nil,
		JwkSet:                nil,
		JwtClaims:             JWTClaims{},
		JwtEncoding:           *base64.URLEncoding.WithPadding(base64.NoPadding),
		PublicKeys:            make(map[string]*rsa.PublicKey),
		LocalValidationActive: value,
		RevokedUsers:          make(map[string]time.Time),
		Roles:                 make(map[string]*iamclientmodels.ModelRolePermissionResponseV3),
		NamespaceContexts:     make(map[string]*NamespaceContext),
	}

	// Initiate
	o.tokenValidation.Initialize()
}

func (o *OAuth20Service) getPublicKey(parsedToken *jwt.JSONWebToken) (*rsa.PublicKey, error) {
	// Check if token validation is already exist
	if o.tokenValidation == nil {
		o.initTokenValidator(false)
	}

	// Get the public key from the JWKS based on the Key ID (kid) from the token's header
	headers := parsedToken.Headers
	if len(headers) == 0 {
		return nil, fmt.Errorf("no headers found in the token. ")
	}
	kid := headers[0].KeyID

	if o.tokenValidation.PublicKeys == nil {
		err := o.tokenValidation.fetchJWKSet()
		if err != nil {
			return nil, fmt.Errorf("failed to fetch jwks key. %w", err)
		}
	}

	publicKey, ok := o.tokenValidation.PublicKeys[kid]
	if !ok {
		return nil, fmt.Errorf("unable to find public key with kid %s", kid)
	}

	return publicKey, nil
}
