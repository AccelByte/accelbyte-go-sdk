// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package o_auth2_0

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new o auth2 0 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for o auth2 0 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminRetrieveUserThirdPartyPlatformTokenV3(params *AdminRetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrieveUserThirdPartyPlatformTokenV3OK, *AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized, *AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden, *AdminRetrieveUserThirdPartyPlatformTokenV3NotFound, error)
	AdminRetrieveUserThirdPartyPlatformTokenV3Short(params *AdminRetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrieveUserThirdPartyPlatformTokenV3OK, error)
	RevokeUserV3(params *RevokeUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserV3NoContent, *RevokeUserV3BadRequest, *RevokeUserV3Unauthorized, *RevokeUserV3Forbidden, error)
	RevokeUserV3Short(params *RevokeUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserV3NoContent, error)
	AuthorizeV3(params *AuthorizeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthorizeV3Found, error)
	AuthorizeV3Short(params *AuthorizeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthorizeV3Found, error)
	TokenIntrospectionV3(params *TokenIntrospectionV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenIntrospectionV3OK, *TokenIntrospectionV3BadRequest, *TokenIntrospectionV3Unauthorized, error)
	TokenIntrospectionV3Short(params *TokenIntrospectionV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenIntrospectionV3OK, error)
	GetJWKSV3(params *GetJWKSV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetJWKSV3OK, error)
	GetJWKSV3Short(params *GetJWKSV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetJWKSV3OK, error)
	SendMFAAuthenticationCode(params *SendMFAAuthenticationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendMFAAuthenticationCodeNoContent, *SendMFAAuthenticationCodeBadRequest, *SendMFAAuthenticationCodeForbidden, *SendMFAAuthenticationCodeNotFound, *SendMFAAuthenticationCodeTooManyRequests, *SendMFAAuthenticationCodeInternalServerError, error)
	SendMFAAuthenticationCodeShort(params *SendMFAAuthenticationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendMFAAuthenticationCodeNoContent, error)
	Change2FAMethod(params *Change2FAMethodParams, authInfo runtime.ClientAuthInfoWriter) (*Change2FAMethodNoContent, *Change2FAMethodBadRequest, *Change2FAMethodTooManyRequests, *Change2FAMethodInternalServerError, error)
	Change2FAMethodShort(params *Change2FAMethodParams, authInfo runtime.ClientAuthInfoWriter) (*Change2FAMethodNoContent, error)
	Verify2FACode(params *Verify2FACodeParams, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeOK, *Verify2FACodeUnauthorized, error)
	Verify2FACodeShort(params *Verify2FACodeParams, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeOK, error)
	RetrieveUserThirdPartyPlatformTokenV3(params *RetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveUserThirdPartyPlatformTokenV3OK, *RetrieveUserThirdPartyPlatformTokenV3Unauthorized, *RetrieveUserThirdPartyPlatformTokenV3Forbidden, *RetrieveUserThirdPartyPlatformTokenV3NotFound, error)
	RetrieveUserThirdPartyPlatformTokenV3Short(params *RetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveUserThirdPartyPlatformTokenV3OK, error)
	AuthCodeRequestV3(params *AuthCodeRequestV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthCodeRequestV3Found, error)
	AuthCodeRequestV3Short(params *AuthCodeRequestV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthCodeRequestV3Found, error)
	PlatformTokenGrantV3(params *PlatformTokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenGrantV3OK, *PlatformTokenGrantV3BadRequest, *PlatformTokenGrantV3Unauthorized, *PlatformTokenGrantV3Forbidden, *PlatformTokenGrantV3ServiceUnavailable, error)
	PlatformTokenGrantV3Short(params *PlatformTokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenGrantV3OK, error)
	GetRevocationListV3(params *GetRevocationListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationListV3OK, *GetRevocationListV3Unauthorized, error)
	GetRevocationListV3Short(params *GetRevocationListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationListV3OK, error)
	TokenRevocationV3(params *TokenRevocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenRevocationV3OK, *TokenRevocationV3BadRequest, *TokenRevocationV3Unauthorized, error)
	TokenRevocationV3Short(params *TokenRevocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenRevocationV3OK, error)
	SimultaneousLoginV3(params *SimultaneousLoginV3Params, authInfo runtime.ClientAuthInfoWriter) (*SimultaneousLoginV3OK, *SimultaneousLoginV3BadRequest, *SimultaneousLoginV3Unauthorized, *SimultaneousLoginV3Conflict, *SimultaneousLoginV3InternalServerError, error)
	SimultaneousLoginV3Short(params *SimultaneousLoginV3Params, authInfo runtime.ClientAuthInfoWriter) (*SimultaneousLoginV3OK, error)
	TokenGrantV3(params *TokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantV3OK, *TokenGrantV3BadRequest, *TokenGrantV3Unauthorized, *TokenGrantV3Forbidden, *TokenGrantV3TooManyRequests, error)
	TokenGrantV3Short(params *TokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantV3OK, error)
	VerifyTokenV3(params *VerifyTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*VerifyTokenV3OK, *VerifyTokenV3BadRequest, error)
	VerifyTokenV3Short(params *VerifyTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*VerifyTokenV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminRetrieveUserThirdPartyPlatformTokenV3Short instead.

AdminRetrieveUserThirdPartyPlatformTokenV3 admin retrieve user third party platform token
Admin Retrieve User Third Party Platform Token
This endpoint used for retrieving third party platform token for user that login using third party,
if user have not link requested platform in game namespace, will try to retrieving third party platform token from publisher namespace.
Passing platform group name or it's member will return same access token that can be used across the platform members.

Notes:
The third party platform and platform group covered for this is:
- (psn) ps4web
- (psn) ps4
- (psn) ps5
- epicgames
- twitch
- awscognito
- amazon
- eaorigin
- snapchat
- twitch
- live
*/
func (a *Client) AdminRetrieveUserThirdPartyPlatformTokenV3(params *AdminRetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrieveUserThirdPartyPlatformTokenV3OK, *AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized, *AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden, *AdminRetrieveUserThirdPartyPlatformTokenV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRetrieveUserThirdPartyPlatformTokenV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRetrieveUserThirdPartyPlatformTokenV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRetrieveUserThirdPartyPlatformTokenV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminRetrieveUserThirdPartyPlatformTokenV3OK:
		return v, nil, nil, nil, nil

	case *AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden:
		return nil, nil, v, nil, nil

	case *AdminRetrieveUserThirdPartyPlatformTokenV3NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRetrieveUserThirdPartyPlatformTokenV3Short admin retrieve user third party platform token
Admin Retrieve User Third Party Platform Token
This endpoint used for retrieving third party platform token for user that login using third party,
if user have not link requested platform in game namespace, will try to retrieving third party platform token from publisher namespace.
Passing platform group name or it's member will return same access token that can be used across the platform members.

Notes:
The third party platform and platform group covered for this is:
- (psn) ps4web
- (psn) ps4
- (psn) ps5
- epicgames
- twitch
- awscognito
- amazon
- eaorigin
- snapchat
- twitch
- live
*/
func (a *Client) AdminRetrieveUserThirdPartyPlatformTokenV3Short(params *AdminRetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrieveUserThirdPartyPlatformTokenV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRetrieveUserThirdPartyPlatformTokenV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRetrieveUserThirdPartyPlatformTokenV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRetrieveUserThirdPartyPlatformTokenV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRetrieveUserThirdPartyPlatformTokenV3OK:
		return v, nil
	case *AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized:
		return nil, v
	case *AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden:
		return nil, v
	case *AdminRetrieveUserThirdPartyPlatformTokenV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RevokeUserV3Short instead.

RevokeUserV3 revokes user's tokens'
This endpoint revokes all access tokens and refresh tokens a user has prior the revocation time.
This endpoint requires authorized requests header with valid access token.
It is a convenient feature for the developer (or admin) who wanted to revokes all user's access tokens and refresh tokens generated before some period of time.
action code : 10707
*/
func (a *Client) RevokeUserV3(params *RevokeUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserV3NoContent, *RevokeUserV3BadRequest, *RevokeUserV3Unauthorized, *RevokeUserV3Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RevokeUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RevokeUserV3NoContent:
		return v, nil, nil, nil, nil

	case *RevokeUserV3BadRequest:
		return nil, v, nil, nil, nil

	case *RevokeUserV3Unauthorized:
		return nil, nil, v, nil, nil

	case *RevokeUserV3Forbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeUserV3Short revokes user's tokens'
This endpoint revokes all access tokens and refresh tokens a user has prior the revocation time.
This endpoint requires authorized requests header with valid access token.
It is a convenient feature for the developer (or admin) who wanted to revokes all user's access tokens and refresh tokens generated before some period of time.
action code : 10707
*/
func (a *Client) RevokeUserV3Short(params *RevokeUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RevokeUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUserV3NoContent:
		return v, nil
	case *RevokeUserV3BadRequest:
		return nil, v
	case *RevokeUserV3Unauthorized:
		return nil, v
	case *RevokeUserV3Forbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AuthorizeV3Short instead.

AuthorizeV3 oauth2 authorize api
Initializes OAuth2.0 authorization code flow
The endpoint stores authorization request and redirects to login page with the authorization request id.
The user can then do the authentication on the login page.
The user will be redirected back to the requesting client with authorization code if successfully authenticated.

Only authorization code flow supported by this endpoint, implicit flow is not supported.
- **Authorize success**:
redirects to login page with the following information: ?request_id={authorization_request_id}
- **Authorize failure**:
redirects to the given redirect uri with the following information:
?error={error_code}&error;_description={error description}

Following are the error code based on the specification:
- invalid_request: The request is missing a required parameter,
includes an invalid parameter value, includes a parameter more than once, or is otherwise malformed.
- server_error:
The authorization server encountered an unexpected condition that prevented it from fulfilling the request.
- unauthorized_client: The client is not authorized to request a token using this method.
- access_denied: The resource owner or authorization server denied the request.
- invalid_scope: The requested scope is invalid, unknown, or malformed.
- unsupported_response_type: The authorization server does not support obtaining a token using this method.
- temporarily_unavailable: The authorization server is currently unable to handle the request
due to a temporary overloading or maintenance of the server.
Please refer to the RFC for more information about authorization code flow: https://tools.ietf.org/html/rfc6749#section-4.1
action code: 10701
*/
func (a *Client) AuthorizeV3(params *AuthorizeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthorizeV3Found, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthorizeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AuthorizeV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/authorize",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthorizeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthorizeV3Found:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AuthorizeV3Short oauth2 authorize api
Initializes OAuth2.0 authorization code flow
The endpoint stores authorization request and redirects to login page with the authorization request id.
The user can then do the authentication on the login page.
The user will be redirected back to the requesting client with authorization code if successfully authenticated.

Only authorization code flow supported by this endpoint, implicit flow is not supported.
- **Authorize success**:
redirects to login page with the following information: ?request_id={authorization_request_id}
- **Authorize failure**:
redirects to the given redirect uri with the following information:
?error={error_code}&error;_description={error description}

Following are the error code based on the specification:
- invalid_request: The request is missing a required parameter,
includes an invalid parameter value, includes a parameter more than once, or is otherwise malformed.
- server_error:
The authorization server encountered an unexpected condition that prevented it from fulfilling the request.
- unauthorized_client: The client is not authorized to request a token using this method.
- access_denied: The resource owner or authorization server denied the request.
- invalid_scope: The requested scope is invalid, unknown, or malformed.
- unsupported_response_type: The authorization server does not support obtaining a token using this method.
- temporarily_unavailable: The authorization server is currently unable to handle the request
due to a temporary overloading or maintenance of the server.
Please refer to the RFC for more information about authorization code flow: https://tools.ietf.org/html/rfc6749#section-4.1
action code: 10701
*/
func (a *Client) AuthorizeV3Short(params *AuthorizeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthorizeV3Found, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthorizeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AuthorizeV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/authorize",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthorizeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthorizeV3Found:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TokenIntrospectionV3Short instead.

TokenIntrospectionV3 oauth2 token introspection api
This endpoint returns information about an access token intended to be used by resource servers or other internal servers.
This endpoint requires authorized requests header with valid basic or bearer token.
action code : 10705
*/
func (a *Client) TokenIntrospectionV3(params *TokenIntrospectionV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenIntrospectionV3OK, *TokenIntrospectionV3BadRequest, *TokenIntrospectionV3Unauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenIntrospectionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "TokenIntrospectionV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/introspect",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenIntrospectionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *TokenIntrospectionV3OK:
		return v, nil, nil, nil

	case *TokenIntrospectionV3BadRequest:
		return nil, v, nil, nil

	case *TokenIntrospectionV3Unauthorized:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TokenIntrospectionV3Short oauth2 token introspection api
This endpoint returns information about an access token intended to be used by resource servers or other internal servers.
This endpoint requires authorized requests header with valid basic or bearer token.
action code : 10705
*/
func (a *Client) TokenIntrospectionV3Short(params *TokenIntrospectionV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenIntrospectionV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenIntrospectionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "TokenIntrospectionV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/introspect",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenIntrospectionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TokenIntrospectionV3OK:
		return v, nil
	case *TokenIntrospectionV3BadRequest:
		return nil, v
	case *TokenIntrospectionV3Unauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetJWKSV3Short instead.

GetJWKSV3 json web key set for verifying jwt
This endpoint serves public keys for verifying JWT access tokens generated by this service.
When a client application wants to verify a JWT token, it needs to get the 'kid' value found in the JWT token header and use it
to look up the corresponding public key from a set returned by this endpoint. The client application can then use that public key to verify the JWT.
A client application might cache the keys so it doesn't need to do request every time it needs to verify a JWT token. If a client application
caches the keys and a key with the same 'kid' cannot be found in the cache, it should then try to refresh the keys by making a request to this
endpoint again.
Please refer to the RFC for more information about JWK (JSON Web Key): https://tools.ietf.org/html/rfc7517
action code : 10709
*/
func (a *Client) GetJWKSV3(params *GetJWKSV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetJWKSV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetJWKSV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetJWKSV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/jwks",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{""},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetJWKSV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetJWKSV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetJWKSV3Short json web key set for verifying jwt
This endpoint serves public keys for verifying JWT access tokens generated by this service.
When a client application wants to verify a JWT token, it needs to get the 'kid' value found in the JWT token header and use it
to look up the corresponding public key from a set returned by this endpoint. The client application can then use that public key to verify the JWT.
A client application might cache the keys so it doesn't need to do request every time it needs to verify a JWT token. If a client application
caches the keys and a key with the same 'kid' cannot be found in the cache, it should then try to refresh the keys by making a request to this
endpoint again.
Please refer to the RFC for more information about JWK (JSON Web Key): https://tools.ietf.org/html/rfc7517
action code : 10709
*/
func (a *Client) GetJWKSV3Short(params *GetJWKSV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetJWKSV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetJWKSV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetJWKSV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/jwks",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{""},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetJWKSV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetJWKSV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SendMFAAuthenticationCodeShort instead.

SendMFAAuthenticationCode send 2fa code
Send 2FA code
This endpoint is used for sending 2FA code.
*/
func (a *Client) SendMFAAuthenticationCode(params *SendMFAAuthenticationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendMFAAuthenticationCodeNoContent, *SendMFAAuthenticationCodeBadRequest, *SendMFAAuthenticationCodeForbidden, *SendMFAAuthenticationCodeNotFound, *SendMFAAuthenticationCodeTooManyRequests, *SendMFAAuthenticationCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendMFAAuthenticationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SendMFAAuthenticationCode",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/mfa/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendMFAAuthenticationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SendMFAAuthenticationCodeNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *SendMFAAuthenticationCodeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *SendMFAAuthenticationCodeForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *SendMFAAuthenticationCodeNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *SendMFAAuthenticationCodeTooManyRequests:
		return nil, nil, nil, nil, v, nil, nil

	case *SendMFAAuthenticationCodeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendMFAAuthenticationCodeShort send 2fa code
Send 2FA code
This endpoint is used for sending 2FA code.
*/
func (a *Client) SendMFAAuthenticationCodeShort(params *SendMFAAuthenticationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendMFAAuthenticationCodeNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendMFAAuthenticationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SendMFAAuthenticationCode",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/mfa/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendMFAAuthenticationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendMFAAuthenticationCodeNoContent:
		return v, nil
	case *SendMFAAuthenticationCodeBadRequest:
		return nil, v
	case *SendMFAAuthenticationCodeForbidden:
		return nil, v
	case *SendMFAAuthenticationCodeNotFound:
		return nil, v
	case *SendMFAAuthenticationCodeTooManyRequests:
		return nil, v
	case *SendMFAAuthenticationCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use Change2FAMethodShort instead.

Change2FAMethod change 2fa method
Change 2FA method
This endpoint is used for change 2FA method. Only enabled methods are accepted.
Supported methods:
- authenticator
- backupCode
- email
*/
func (a *Client) Change2FAMethod(params *Change2FAMethodParams, authInfo runtime.ClientAuthInfoWriter) (*Change2FAMethodNoContent, *Change2FAMethodBadRequest, *Change2FAMethodTooManyRequests, *Change2FAMethodInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChange2FAMethodParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Change2FAMethod",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/mfa/factor/change",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &Change2FAMethodReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *Change2FAMethodNoContent:
		return v, nil, nil, nil, nil

	case *Change2FAMethodBadRequest:
		return nil, v, nil, nil, nil

	case *Change2FAMethodTooManyRequests:
		return nil, nil, v, nil, nil

	case *Change2FAMethodInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Change2FAMethodShort change 2fa method
Change 2FA method
This endpoint is used for change 2FA method. Only enabled methods are accepted.
Supported methods:
- authenticator
- backupCode
- email
*/
func (a *Client) Change2FAMethodShort(params *Change2FAMethodParams, authInfo runtime.ClientAuthInfoWriter) (*Change2FAMethodNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChange2FAMethodParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Change2FAMethod",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/mfa/factor/change",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &Change2FAMethodReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *Change2FAMethodNoContent:
		return v, nil
	case *Change2FAMethodBadRequest:
		return nil, v
	case *Change2FAMethodTooManyRequests:
		return nil, v
	case *Change2FAMethodInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use Verify2FACodeShort instead.

Verify2FACode verify 2fa code
Verify 2FA code
This endpoint is used for verifying 2FA code.
## 2FA remember device
To remember device for 2FA, should provide cookie: device_token or header: Device-Token
*/
func (a *Client) Verify2FACode(params *Verify2FACodeParams, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeOK, *Verify2FACodeUnauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVerify2FACodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Verify2FACode",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/mfa/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &Verify2FACodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *Verify2FACodeOK:
		return v, nil, nil

	case *Verify2FACodeUnauthorized:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Verify2FACodeShort verify 2fa code
Verify 2FA code
This endpoint is used for verifying 2FA code.
## 2FA remember device
To remember device for 2FA, should provide cookie: device_token or header: Device-Token
*/
func (a *Client) Verify2FACodeShort(params *Verify2FACodeParams, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVerify2FACodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Verify2FACode",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/mfa/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &Verify2FACodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *Verify2FACodeOK:
		return v, nil
	case *Verify2FACodeUnauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveUserThirdPartyPlatformTokenV3Short instead.

RetrieveUserThirdPartyPlatformTokenV3 retrieve user third party platform token
Retrieve User Third Party Platform Token
This endpoint used for retrieving third party platform token for user that login using third party,
if user have not link requested platform in game namespace, will try to retrieving third party platform token from publisher namespace.
Passing platform group name or it's member will return same access token that can be used across the platform members.

The third party platform and platform group covered for this is:
- (psn) ps4web
- (psn) ps4
- (psn) ps5
- epicgames
- twitch
- awscognito
-
- eaorigin
- snapchat
- twitch
- live
*/
func (a *Client) RetrieveUserThirdPartyPlatformTokenV3(params *RetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveUserThirdPartyPlatformTokenV3OK, *RetrieveUserThirdPartyPlatformTokenV3Unauthorized, *RetrieveUserThirdPartyPlatformTokenV3Forbidden, *RetrieveUserThirdPartyPlatformTokenV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveUserThirdPartyPlatformTokenV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveUserThirdPartyPlatformTokenV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveUserThirdPartyPlatformTokenV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveUserThirdPartyPlatformTokenV3OK:
		return v, nil, nil, nil, nil

	case *RetrieveUserThirdPartyPlatformTokenV3Unauthorized:
		return nil, v, nil, nil, nil

	case *RetrieveUserThirdPartyPlatformTokenV3Forbidden:
		return nil, nil, v, nil, nil

	case *RetrieveUserThirdPartyPlatformTokenV3NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveUserThirdPartyPlatformTokenV3Short retrieve user third party platform token
Retrieve User Third Party Platform Token
This endpoint used for retrieving third party platform token for user that login using third party,
if user have not link requested platform in game namespace, will try to retrieving third party platform token from publisher namespace.
Passing platform group name or it's member will return same access token that can be used across the platform members.

The third party platform and platform group covered for this is:
- (psn) ps4web
- (psn) ps4
- (psn) ps5
- epicgames
- twitch
- awscognito
-
- eaorigin
- snapchat
- twitch
- live
*/
func (a *Client) RetrieveUserThirdPartyPlatformTokenV3Short(params *RetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveUserThirdPartyPlatformTokenV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveUserThirdPartyPlatformTokenV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveUserThirdPartyPlatformTokenV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveUserThirdPartyPlatformTokenV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveUserThirdPartyPlatformTokenV3OK:
		return v, nil
	case *RetrieveUserThirdPartyPlatformTokenV3Unauthorized:
		return nil, v
	case *RetrieveUserThirdPartyPlatformTokenV3Forbidden:
		return nil, v
	case *RetrieveUserThirdPartyPlatformTokenV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AuthCodeRequestV3Short instead.

AuthCodeRequestV3 generate url to request auth code from third party platform.
Generate url to request auth code from third party platform
## Supported platforms:
- **steamopenid**This endpoint redirects to steam login page, then redirect back to platform
authenticate endpoint after successfully authenticating user steam.
- **xblweb**This endpoint redirects to xbox login page, then redirect back to platform
authenticate endpoint after successfully authenticating xbox user.
- **ps4web**This endpoint redirects to psn login page, then redirect back to platform
authenticate endpoint after successfully authenticating psn user.
- **epicgames**This endpoint redirects to Epicgames OAuth login page. then redirect to platform
authenticate endpoint after successfully authenticating an Epicgames credential
- **twitch**This endpoint redirects to twitch login page, then redirect back to platform
authenticate endpoint after successfully authenticating twitch user.
- **azure**This endpoint redirects to azure login page, then redirect back to platform
authenticate(saml) endpoint after successfully authenticating azure user.
- **facebook**This endpoint redirects to facebook login page, then redirect back to platform
authenticate endpoint after successfully authenticating facebook user.
- **google**This endpoint redirects to google login page, then redirect back to platform
authenticate endpoint after successfully authenticating google user.
- **snapchat**This endpoint redirects to snapchat login page, then redirect back to platform
authenticate endpoint after successfully authenticating snapchat user.
- **discord**This endpoint redirects to discord login page, then redirect back to platform
authenticate endpoint after successfully authenticating discord user.
- **amazon**This endpoint redirects to amazon login page, then redirect back to platform
authenticate endpoint after successfully authenticating amazon user.
- **oculusweb**This endpoint redirects to oculus login page, then redirect back to Login Website page after successfully authenticating oculus user.

action code : 10702'
*/
func (a *Client) AuthCodeRequestV3(params *AuthCodeRequestV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthCodeRequestV3Found, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthCodeRequestV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AuthCodeRequestV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/platforms/{platformId}/authorize",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthCodeRequestV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthCodeRequestV3Found:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AuthCodeRequestV3Short generate url to request auth code from third party platform.
Generate url to request auth code from third party platform
## Supported platforms:
- **steamopenid**This endpoint redirects to steam login page, then redirect back to platform
authenticate endpoint after successfully authenticating user steam.
- **xblweb**This endpoint redirects to xbox login page, then redirect back to platform
authenticate endpoint after successfully authenticating xbox user.
- **ps4web**This endpoint redirects to psn login page, then redirect back to platform
authenticate endpoint after successfully authenticating psn user.
- **epicgames**This endpoint redirects to Epicgames OAuth login page. then redirect to platform
authenticate endpoint after successfully authenticating an Epicgames credential
- **twitch**This endpoint redirects to twitch login page, then redirect back to platform
authenticate endpoint after successfully authenticating twitch user.
- **azure**This endpoint redirects to azure login page, then redirect back to platform
authenticate(saml) endpoint after successfully authenticating azure user.
- **facebook**This endpoint redirects to facebook login page, then redirect back to platform
authenticate endpoint after successfully authenticating facebook user.
- **google**This endpoint redirects to google login page, then redirect back to platform
authenticate endpoint after successfully authenticating google user.
- **snapchat**This endpoint redirects to snapchat login page, then redirect back to platform
authenticate endpoint after successfully authenticating snapchat user.
- **discord**This endpoint redirects to discord login page, then redirect back to platform
authenticate endpoint after successfully authenticating discord user.
- **amazon**This endpoint redirects to amazon login page, then redirect back to platform
authenticate endpoint after successfully authenticating amazon user.
- **oculusweb**This endpoint redirects to oculus login page, then redirect back to Login Website page after successfully authenticating oculus user.

action code : 10702'
*/
func (a *Client) AuthCodeRequestV3Short(params *AuthCodeRequestV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthCodeRequestV3Found, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthCodeRequestV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AuthCodeRequestV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/platforms/{platformId}/authorize",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthCodeRequestV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthCodeRequestV3Found:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PlatformTokenGrantV3Short instead.

PlatformTokenGrantV3 oauth2 access token generation specific to platform
Platform token grant specifically used for performing token grant using platform, e.g. Steam, Justice, etc. The endpoint automatically create an account if the account associated with the platform is not exists yet.
This endpoint requires all requests to have Authorization header set with Basic access authentication
constructed from client id and client secret. For publisher-game namespace schema : Specify only either platform_token or device_id. Device token grant
should be requested along with device_id parameter against game namespace. Another 3rd party platform token grant should be requested
along with platform_token parameter against publisher namespace.
## 2FA remember device
To remember device for 2FA, should provide cookie: device_token or header: Device-Token
## Supported platforms:
- **steam**: The platform_tokenâs value is the binary ticket returned by Steam.
If this ticket was generated by Steam GetAuthTicketForWebApi with version >= 1.57, then platform token should use this style: `{identity}:{ticket}`, the `{identity}` was the parameter to call GetAuthTicketForWebApi when the ticket was created. Note: Do not contain `:` in this `{identity}`.
- **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
- **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
- **google**: The platform_tokenâs value is the authorization code returned by Google OAuth
- **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
- **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
- **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
- **android**: The device_id is the Androidâs device ID
- **ios**: The device_id is the iOSâs device ID.
- **apple**: The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)
- **device**: Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
- **justice**: The platform_tokenâs value is the designated userâs access token.
- **epicgames**: The platform_tokenâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
- **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **nintendo**: The platform_tokenâs value is the id_token returned by Nintendo OAuth.
- **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
- **live**: The platform_tokenâs value is xbox XSTS token
- **xblweb**: The platform_tokenâs value is code returned by xbox after login
- **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
- **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
- **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.

## Account Group
Several platforms are grouped under account groups. The accounts on these platforms have the same platform user id.
Login using one of these platform will returns the same IAM user.
Following is the current registered account grouping:
- (psn) ps4web
- (psn) ps4
- (psn) ps5

## Access Token Content
Following is the access tokenâs content:
- **namespace**. It is the namespace the token was generated from.
- **display_name**. The display name of the sub. It is empty if the token is generated from the client credential
- **roles**. The subâs roles. It is empty if the token is generated from the client credential
- **namespace_roles**. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace
- **permissions**. The sub or audâ permissions
- **bans**. The subâs list of bans. It is used by the IAM client for validating the token.
- **jflgs**. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:
- 1: Email Address Verified
- 2: Phone Number Verified
- 4: Anonymous
- 8: Suspicious Login
- **aud**. The aud is the client ID.
- **iat**. The time the token issues at. It is in Epoch time format
- **exp**. The time the token expires. It is in Epoch time format
- **sub**. The UserID. The sub is omitted if the token is generated from client credential

## Bans
The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.

action code : 10704
*/
func (a *Client) PlatformTokenGrantV3(params *PlatformTokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenGrantV3OK, *PlatformTokenGrantV3BadRequest, *PlatformTokenGrantV3Unauthorized, *PlatformTokenGrantV3Forbidden, *PlatformTokenGrantV3ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformTokenGrantV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformTokenGrantV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/platforms/{platformId}/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformTokenGrantV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PlatformTokenGrantV3OK:
		return v, nil, nil, nil, nil, nil

	case *PlatformTokenGrantV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PlatformTokenGrantV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PlatformTokenGrantV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PlatformTokenGrantV3ServiceUnavailable:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformTokenGrantV3Short oauth2 access token generation specific to platform
Platform token grant specifically used for performing token grant using platform, e.g. Steam, Justice, etc. The endpoint automatically create an account if the account associated with the platform is not exists yet.
This endpoint requires all requests to have Authorization header set with Basic access authentication
constructed from client id and client secret. For publisher-game namespace schema : Specify only either platform_token or device_id. Device token grant
should be requested along with device_id parameter against game namespace. Another 3rd party platform token grant should be requested
along with platform_token parameter against publisher namespace.
## 2FA remember device
To remember device for 2FA, should provide cookie: device_token or header: Device-Token
## Supported platforms:
- **steam**: The platform_tokenâs value is the binary ticket returned by Steam.
If this ticket was generated by Steam GetAuthTicketForWebApi with version >= 1.57, then platform token should use this style: `{identity}:{ticket}`, the `{identity}` was the parameter to call GetAuthTicketForWebApi when the ticket was created. Note: Do not contain `:` in this `{identity}`.
- **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
- **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
- **google**: The platform_tokenâs value is the authorization code returned by Google OAuth
- **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
- **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
- **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
- **android**: The device_id is the Androidâs device ID
- **ios**: The device_id is the iOSâs device ID.
- **apple**: The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)
- **device**: Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
- **justice**: The platform_tokenâs value is the designated userâs access token.
- **epicgames**: The platform_tokenâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
- **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **nintendo**: The platform_tokenâs value is the id_token returned by Nintendo OAuth.
- **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
- **live**: The platform_tokenâs value is xbox XSTS token
- **xblweb**: The platform_tokenâs value is code returned by xbox after login
- **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
- **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
- **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.

## Account Group
Several platforms are grouped under account groups. The accounts on these platforms have the same platform user id.
Login using one of these platform will returns the same IAM user.
Following is the current registered account grouping:
- (psn) ps4web
- (psn) ps4
- (psn) ps5

## Access Token Content
Following is the access tokenâs content:
- **namespace**. It is the namespace the token was generated from.
- **display_name**. The display name of the sub. It is empty if the token is generated from the client credential
- **roles**. The subâs roles. It is empty if the token is generated from the client credential
- **namespace_roles**. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace
- **permissions**. The sub or audâ permissions
- **bans**. The subâs list of bans. It is used by the IAM client for validating the token.
- **jflgs**. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:
- 1: Email Address Verified
- 2: Phone Number Verified
- 4: Anonymous
- 8: Suspicious Login
- **aud**. The aud is the client ID.
- **iat**. The time the token issues at. It is in Epoch time format
- **exp**. The time the token expires. It is in Epoch time format
- **sub**. The UserID. The sub is omitted if the token is generated from client credential

## Bans
The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.

action code : 10704
*/
func (a *Client) PlatformTokenGrantV3Short(params *PlatformTokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenGrantV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformTokenGrantV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformTokenGrantV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/platforms/{platformId}/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformTokenGrantV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformTokenGrantV3OK:
		return v, nil
	case *PlatformTokenGrantV3BadRequest:
		return nil, v
	case *PlatformTokenGrantV3Unauthorized:
		return nil, v
	case *PlatformTokenGrantV3Forbidden:
		return nil, v
	case *PlatformTokenGrantV3ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetRevocationListV3Short instead.

GetRevocationListV3 oauth2 revocation list api
This endpoint will return a list of revoked users and revoked tokens. List of revoked tokens in bloom filter format.
This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.
The bloom filter uses MurmurHash3 algorithm for hashing the values
action code : 10708
*/
func (a *Client) GetRevocationListV3(params *GetRevocationListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationListV3OK, *GetRevocationListV3Unauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRevocationListV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRevocationListV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/revocationlist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{""},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRevocationListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetRevocationListV3OK:
		return v, nil, nil

	case *GetRevocationListV3Unauthorized:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRevocationListV3Short oauth2 revocation list api
This endpoint will return a list of revoked users and revoked tokens. List of revoked tokens in bloom filter format.
This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.
The bloom filter uses MurmurHash3 algorithm for hashing the values
action code : 10708
*/
func (a *Client) GetRevocationListV3Short(params *GetRevocationListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationListV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRevocationListV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRevocationListV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/revocationlist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{""},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRevocationListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRevocationListV3OK:
		return v, nil
	case *GetRevocationListV3Unauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TokenRevocationV3Short instead.

TokenRevocationV3 oauth2 token revocation api
This endpoint revokes a token.
This endpoint requires authorized requests header with Basic Authentication from client that establish the token.
action code: 10706
*/
func (a *Client) TokenRevocationV3(params *TokenRevocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenRevocationV3OK, *TokenRevocationV3BadRequest, *TokenRevocationV3Unauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenRevocationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "TokenRevocationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenRevocationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *TokenRevocationV3OK:
		return v, nil, nil, nil

	case *TokenRevocationV3BadRequest:
		return nil, v, nil, nil

	case *TokenRevocationV3Unauthorized:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TokenRevocationV3Short oauth2 token revocation api
This endpoint revokes a token.
This endpoint requires authorized requests header with Basic Authentication from client that establish the token.
action code: 10706
*/
func (a *Client) TokenRevocationV3Short(params *TokenRevocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenRevocationV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenRevocationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "TokenRevocationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenRevocationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TokenRevocationV3OK:
		return v, nil
	case *TokenRevocationV3BadRequest:
		return nil, v
	case *TokenRevocationV3Unauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SimultaneousLoginV3Short instead.

SimultaneousLoginV3 simultaneous login
# This endpoint is in ALPHA, avoid using this endpoint fow now, reach out to AB support for inquiries

Simultaneous login flow.

The primary goals of this project are to entitle players to authenticate on a native PC platform(Steam/Epic) and the PlayStation platform,
link their accounts, and provide support for platform sync with a valid 3rd platform access token.

## Given a valid native ticket and empty simultaneous ticket, these cases will be failed
- Native ticket's account is not linked AGS account yet
- Native ticket's account is linked AGS account, but ASG account is not linked simultaneous platform yet
- Native ticket's account is linked AGS account, AGS account is linked simultaneous platform but there is no available simultaneous token.(only if this platform is expected to store the platform token)

## Given a valid native ticket and empty simultaneous ticket, this case will be success
- Native ticket's account already linked AGS account, this AGS account already linked simultaneous platform. There is valid simultaneous token.(this is required only when this simultaneous is expected to cache platform token)

## Given a valid native ticket token and valid simultaneous ticket, these cases will be failed
#### Native ticket's account is already linked with AGS account
- Native linked AGS account is linked this simultaneous platform but is different with simultaneous ticket's account
- Native linked AGS account is not linked with simultaneous but has a linking history with simultaneous platform and it is different with simultaneous ticket's account
#### Native ticket's account is not linked with AGS account and Simultaneous ticket's account is already linked wth AGS account
- Simultaneous linked AGS account is linked this native platform but is different with native ticket's account
- Simultaneous linked AGS account is not linked with native but has a linking history with native platform and it is different with native ticket's account

## Given a valid native ticket and valid simultaneous ticket, these cases will be success
- Native ticket's account & Simultaneous ticket's account are both not linked to AGS account yet
- Native ticket's account & Simultaneous ticket's account are already linked to same AGS account
*/
func (a *Client) SimultaneousLoginV3(params *SimultaneousLoginV3Params, authInfo runtime.ClientAuthInfoWriter) (*SimultaneousLoginV3OK, *SimultaneousLoginV3BadRequest, *SimultaneousLoginV3Unauthorized, *SimultaneousLoginV3Conflict, *SimultaneousLoginV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSimultaneousLoginV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SimultaneousLoginV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/simultaneousLogin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SimultaneousLoginV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SimultaneousLoginV3OK:
		return v, nil, nil, nil, nil, nil

	case *SimultaneousLoginV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *SimultaneousLoginV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *SimultaneousLoginV3Conflict:
		return nil, nil, nil, v, nil, nil

	case *SimultaneousLoginV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SimultaneousLoginV3Short simultaneous login
# This endpoint is in ALPHA, avoid using this endpoint fow now, reach out to AB support for inquiries

Simultaneous login flow.

The primary goals of this project are to entitle players to authenticate on a native PC platform(Steam/Epic) and the PlayStation platform,
link their accounts, and provide support for platform sync with a valid 3rd platform access token.

## Given a valid native ticket and empty simultaneous ticket, these cases will be failed
- Native ticket's account is not linked AGS account yet
- Native ticket's account is linked AGS account, but ASG account is not linked simultaneous platform yet
- Native ticket's account is linked AGS account, AGS account is linked simultaneous platform but there is no available simultaneous token.(only if this platform is expected to store the platform token)

## Given a valid native ticket and empty simultaneous ticket, this case will be success
- Native ticket's account already linked AGS account, this AGS account already linked simultaneous platform. There is valid simultaneous token.(this is required only when this simultaneous is expected to cache platform token)

## Given a valid native ticket token and valid simultaneous ticket, these cases will be failed
#### Native ticket's account is already linked with AGS account
- Native linked AGS account is linked this simultaneous platform but is different with simultaneous ticket's account
- Native linked AGS account is not linked with simultaneous but has a linking history with simultaneous platform and it is different with simultaneous ticket's account
#### Native ticket's account is not linked with AGS account and Simultaneous ticket's account is already linked wth AGS account
- Simultaneous linked AGS account is linked this native platform but is different with native ticket's account
- Simultaneous linked AGS account is not linked with native but has a linking history with native platform and it is different with native ticket's account

## Given a valid native ticket and valid simultaneous ticket, these cases will be success
- Native ticket's account & Simultaneous ticket's account are both not linked to AGS account yet
- Native ticket's account & Simultaneous ticket's account are already linked to same AGS account
*/
func (a *Client) SimultaneousLoginV3Short(params *SimultaneousLoginV3Params, authInfo runtime.ClientAuthInfoWriter) (*SimultaneousLoginV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSimultaneousLoginV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SimultaneousLoginV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/simultaneousLogin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SimultaneousLoginV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SimultaneousLoginV3OK:
		return v, nil
	case *SimultaneousLoginV3BadRequest:
		return nil, v
	case *SimultaneousLoginV3Unauthorized:
		return nil, v
	case *SimultaneousLoginV3Conflict:
		return nil, v
	case *SimultaneousLoginV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TokenGrantV3Short instead.

TokenGrantV3 oauth2 access token generation endpoint
This endpoint supports grant type:
1. Grant Type == `authorization_code`:
It generates the user token by given the authorization
code which generated in "/iam/v3/authenticate" API response. It should also pass
in the redirect_uri, which should be the same as generating the
authorization code request.
2. Grant Type == `password`:
The grant type to use for authenticating a user, whether it's by email / username and password combination
or through platform.
3. Grant Type == `refresh_token`:
Used to get a new access token for a valid refresh token.
4. Grant Type == `client_credentials`:
It generates a token by checking the client credentials provided through Authorization header.
5. Grant Type == `urn:ietf:params:oauth:grant-type:extend_client_credentials`:
It generates a token by checking the client credentials provided through Authorization header.
It only allows publisher/studio namespace client.
In generated token:
1. There wil be no roles, namespace_roles & permission.
2. The scope will be fixed as 'extend'.
3. There will have a new field 'extend_namespace', the value is from token request body.

## Access Token Content
Following is the access tokenâs content:
- **namespace**. It is the namespace the token was generated from.
- **display_name**. The display name of the sub. It is empty if the token is generated from the client credential
- **roles**. The subâs roles. It is empty if the token is generated from the client credential
- **namespace_roles**. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace
- **permissions**. The sub or audâ permissions
- **bans**. The subâs list of bans. It is used by the IAM client for validating the token.
- **jflgs**. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:
- 1: Email Address Verified
- 2: Phone Number Verified
- 4: Anonymous
- 8: Suspicious Login
- **aud**. The aud is the targeted resource server.
- **iat**. The time the token issues at. It is in Epoch time format
- **exp**. The time the token expires. It is in Epoch time format
- **client_id**. The UserID. The sub is omitted if the token is generated from client credential
- **scope**. The scope of the access request, expressed as a list of space-delimited, case-sensitive strings

## Bans
The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.
## Device Cookie Validation
_**For grant type "password" only**_
Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.
This endpoint will read device cookie from request header **Auth-Trust-Id**. If device cookie not found, it will generate a new one and set it into response body **auth_trust_id** when successfully login.
## Track Login History
This endpoint will track login history to detect suspicious login activity, please provide **Device-Id** (alphanumeric) in request header parameter otherwise it will set to "unknown".
Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"
## 2FA remember device
To remember device for 2FA, should provide cookie: device_token or header: Device-Token
## Response note
If it is a user token request and user hasn't accepted required legal policy, the field `is_comply` will be false in response and responsed token will have no permission.
action code: 10703
*/
func (a *Client) TokenGrantV3(params *TokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantV3OK, *TokenGrantV3BadRequest, *TokenGrantV3Unauthorized, *TokenGrantV3Forbidden, *TokenGrantV3TooManyRequests, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenGrantV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "TokenGrantV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenGrantV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *TokenGrantV3OK:
		return v, nil, nil, nil, nil, nil

	case *TokenGrantV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *TokenGrantV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *TokenGrantV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *TokenGrantV3TooManyRequests:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TokenGrantV3Short oauth2 access token generation endpoint
This endpoint supports grant type:
1. Grant Type == `authorization_code`:
It generates the user token by given the authorization
code which generated in "/iam/v3/authenticate" API response. It should also pass
in the redirect_uri, which should be the same as generating the
authorization code request.
2. Grant Type == `password`:
The grant type to use for authenticating a user, whether it's by email / username and password combination
or through platform.
3. Grant Type == `refresh_token`:
Used to get a new access token for a valid refresh token.
4. Grant Type == `client_credentials`:
It generates a token by checking the client credentials provided through Authorization header.
5. Grant Type == `urn:ietf:params:oauth:grant-type:extend_client_credentials`:
It generates a token by checking the client credentials provided through Authorization header.
It only allows publisher/studio namespace client.
In generated token:
1. There wil be no roles, namespace_roles & permission.
2. The scope will be fixed as 'extend'.
3. There will have a new field 'extend_namespace', the value is from token request body.

## Access Token Content
Following is the access tokenâs content:
- **namespace**. It is the namespace the token was generated from.
- **display_name**. The display name of the sub. It is empty if the token is generated from the client credential
- **roles**. The subâs roles. It is empty if the token is generated from the client credential
- **namespace_roles**. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace
- **permissions**. The sub or audâ permissions
- **bans**. The subâs list of bans. It is used by the IAM client for validating the token.
- **jflgs**. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:
- 1: Email Address Verified
- 2: Phone Number Verified
- 4: Anonymous
- 8: Suspicious Login
- **aud**. The aud is the targeted resource server.
- **iat**. The time the token issues at. It is in Epoch time format
- **exp**. The time the token expires. It is in Epoch time format
- **client_id**. The UserID. The sub is omitted if the token is generated from client credential
- **scope**. The scope of the access request, expressed as a list of space-delimited, case-sensitive strings

## Bans
The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.
## Device Cookie Validation
_**For grant type "password" only**_
Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.
This endpoint will read device cookie from request header **Auth-Trust-Id**. If device cookie not found, it will generate a new one and set it into response body **auth_trust_id** when successfully login.
## Track Login History
This endpoint will track login history to detect suspicious login activity, please provide **Device-Id** (alphanumeric) in request header parameter otherwise it will set to "unknown".
Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"
## 2FA remember device
To remember device for 2FA, should provide cookie: device_token or header: Device-Token
## Response note
If it is a user token request and user hasn't accepted required legal policy, the field `is_comply` will be false in response and responsed token will have no permission.
action code: 10703
*/
func (a *Client) TokenGrantV3Short(params *TokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenGrantV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "TokenGrantV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenGrantV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TokenGrantV3OK:
		return v, nil
	case *TokenGrantV3BadRequest:
		return nil, v
	case *TokenGrantV3Unauthorized:
		return nil, v
	case *TokenGrantV3Forbidden:
		return nil, v
	case *TokenGrantV3TooManyRequests:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use VerifyTokenV3Short instead.

VerifyTokenV3 oauth2 token verification api
This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.
*/
func (a *Client) VerifyTokenV3(params *VerifyTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*VerifyTokenV3OK, *VerifyTokenV3BadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVerifyTokenV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "VerifyTokenV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &VerifyTokenV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *VerifyTokenV3OK:
		return v, nil, nil

	case *VerifyTokenV3BadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
VerifyTokenV3Short oauth2 token verification api
This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.
*/
func (a *Client) VerifyTokenV3Short(params *VerifyTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*VerifyTokenV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVerifyTokenV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "VerifyTokenV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &VerifyTokenV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *VerifyTokenV3OK:
		return v, nil
	case *VerifyTokenV3BadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
