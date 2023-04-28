// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package o_auth

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new o auth API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for o auth API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	Authorization(params *AuthorizationParams, authInfo runtime.ClientAuthInfoWriter) (*AuthorizationFound, error)
	AuthorizationShort(params *AuthorizationParams, authInfo runtime.ClientAuthInfoWriter) (*AuthorizationFound, error)
	GetJWKS(params *GetJWKSParams, authInfo runtime.ClientAuthInfoWriter) (*GetJWKSOK, error)
	GetJWKSShort(params *GetJWKSParams, authInfo runtime.ClientAuthInfoWriter) (*GetJWKSOK, error)
	PlatformTokenRequestHandler(params *PlatformTokenRequestHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenRequestHandlerOK, *PlatformTokenRequestHandlerBadRequest, *PlatformTokenRequestHandlerUnauthorized, error)
	PlatformTokenRequestHandlerShort(params *PlatformTokenRequestHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenRequestHandlerOK, error)
	RevokeUser(params *RevokeUserParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserOK, *RevokeUserUnauthorized, error)
	RevokeUserShort(params *RevokeUserParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserOK, error)
	GetRevocationList(params *GetRevocationListParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationListOK, *GetRevocationListUnauthorized, error)
	GetRevocationListShort(params *GetRevocationListParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationListOK, error)
	RevokeToken(params *RevokeTokenParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeTokenOK, *RevokeTokenBadRequest, *RevokeTokenUnauthorized, error)
	RevokeTokenShort(params *RevokeTokenParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeTokenOK, error)
	RevokeAUser(params *RevokeAUserParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeAUserOK, *RevokeAUserBadRequest, *RevokeAUserUnauthorized, error)
	RevokeAUserShort(params *RevokeAUserParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeAUserOK, error)
	TokenGrant(params *TokenGrantParams, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantOK, *TokenGrantBadRequest, *TokenGrantUnauthorized, error)
	TokenGrantShort(params *TokenGrantParams, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantOK, error)
	VerifyToken(params *VerifyTokenParams, authInfo runtime.ClientAuthInfoWriter) (*VerifyTokenOK, *VerifyTokenBadRequest, error)
	VerifyTokenShort(params *VerifyTokenParams, authInfo runtime.ClientAuthInfoWriter) (*VerifyTokenOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AuthorizationShort instead.

Authorization oauth2 authorize api


## The endpoint is going to be deprecated


The endpoint supports two response types:



1. Response Type == "code":




The endpoint returns an authorization code that will be used by the IAM client to exchange for an access token. It supports two different headers, the basic and the bearer header. Each behaves differently.




                                              *


The basic header




The basic headerâs value is the base64 of the client ID and client secret. It is used by the developer whenever the developer authorizes a user on a same namespace.





                                              *


The bearer header




The bearer headerâs value is an access token. It is used by the developer whenever the developer authorizes a user on a different namespace. The endpoint validates userâs entitlement on the designated namespace for making sure the user is authorized for a designated namespace.







Following are the responses returned by the endpoint:




                                              *  Authorize success : redirects to the given URL with the following information: ?code={authorization code}&state;={state}



                                              *  Authorize failure : redirects to the given URL with the following information:?error=access_denied&error;_description=...





 2. Response Type == "token" (Implicit) is deprecated.




 Endpoint migration guide




                                              *  Substitute endpoint (for: basic header style): /iam/v3/oauth/authorize [GET]


                                              *  Substitute endpoint (for: bearer header style):
    step1: /iam/v3/namespace/{namespace}/token/request [POST] => get code
    step2: /iam/v3/token/exchange [POST] => get token by step1's code



                                              *  Note:
    1. V3 is standard OAuth2 flow and support PKCE
    2. Will not support implicit flow in v3.
*/
func (a *Client) Authorization(params *AuthorizationParams, authInfo runtime.ClientAuthInfoWriter) (*AuthorizationFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthorizationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Authorization",
		Method:             "POST",
		PathPattern:        "/iam/oauth/authorize",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthorizationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthorizationFound:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AuthorizationShort oauth2 authorize api


## The endpoint is going to be deprecated


The endpoint supports two response types:



1. Response Type == "code":




The endpoint returns an authorization code that will be used by the IAM client to exchange for an access token. It supports two different headers, the basic and the bearer header. Each behaves differently.




                                              *


The basic header




The basic headerâs value is the base64 of the client ID and client secret. It is used by the developer whenever the developer authorizes a user on a same namespace.





                                              *


The bearer header




The bearer headerâs value is an access token. It is used by the developer whenever the developer authorizes a user on a different namespace. The endpoint validates userâs entitlement on the designated namespace for making sure the user is authorized for a designated namespace.







Following are the responses returned by the endpoint:




                                              *  Authorize success : redirects to the given URL with the following information: ?code={authorization code}&state;={state}



                                              *  Authorize failure : redirects to the given URL with the following information:?error=access_denied&error;_description=...





 2. Response Type == "token" (Implicit) is deprecated.




 Endpoint migration guide




                                              *  Substitute endpoint (for: basic header style): /iam/v3/oauth/authorize [GET]


                                              *  Substitute endpoint (for: bearer header style):
    step1: /iam/v3/namespace/{namespace}/token/request [POST] => get code
    step2: /iam/v3/token/exchange [POST] => get token by step1's code



                                              *  Note:
    1. V3 is standard OAuth2 flow and support PKCE
    2. Will not support implicit flow in v3.
*/
func (a *Client) AuthorizationShort(params *AuthorizationParams, authInfo runtime.ClientAuthInfoWriter) (*AuthorizationFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthorizationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Authorization",
		Method:             "POST",
		PathPattern:        "/iam/oauth/authorize",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthorizationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthorizationFound:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetJWKSShort instead.

GetJWKS json web key set for verifying jwt


## The endpoint is going to be deprecated




This endpoint serves public keys for verifying JWT access tokens generated by this service.




When a client application wants to verify a JWT token, it needs to get the 'kid' value found in the JWT token header and use it
to look up the corresponding public key from a set returned by this endpoint. The client application can then use that public key to verify the JWT.




A client application might cache the keys so it doesn't need to do request every time it needs to verify a JWT token. If a client application
caches the keys and a key with the same 'kid' cannot be found in the cache, it should then try to refresh the keys by making a request to this
endpoint again.




Please refer to the RFC for more information about JWK (JSON Web Key): https://tools.ietf.org/html/rfc7517


Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/jwks [GET]
*/
func (a *Client) GetJWKS(params *GetJWKSParams, authInfo runtime.ClientAuthInfoWriter) (*GetJWKSOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetJWKSParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetJWKS",
		Method:             "GET",
		PathPattern:        "/iam/oauth/jwks",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{""},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetJWKSReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetJWKSOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetJWKSShort json web key set for verifying jwt


## The endpoint is going to be deprecated




This endpoint serves public keys for verifying JWT access tokens generated by this service.




When a client application wants to verify a JWT token, it needs to get the 'kid' value found in the JWT token header and use it
to look up the corresponding public key from a set returned by this endpoint. The client application can then use that public key to verify the JWT.




A client application might cache the keys so it doesn't need to do request every time it needs to verify a JWT token. If a client application
caches the keys and a key with the same 'kid' cannot be found in the cache, it should then try to refresh the keys by making a request to this
endpoint again.




Please refer to the RFC for more information about JWK (JSON Web Key): https://tools.ietf.org/html/rfc7517


Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/jwks [GET]
*/
func (a *Client) GetJWKSShort(params *GetJWKSParams, authInfo runtime.ClientAuthInfoWriter) (*GetJWKSOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetJWKSParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetJWKS",
		Method:             "GET",
		PathPattern:        "/iam/oauth/jwks",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{""},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetJWKSReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetJWKSOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PlatformTokenRequestHandlerShort instead.

PlatformTokenRequestHandler oauth2 access token generation specific to platform


## The endpoint is going to be deprecated





This endpoint requires all requests to have Authorization header set with Basic access authentication
constructed from client id and client secret. For publisher-game namespace schema : Specify only either platform_token or device_id. Device token grant
should be requested along with device_id parameter against game namespace. Another 3rd party platform token grant should be requested
along with platform_token parameter against publisher namespace.






Supported platforms:




                                              1. steamopenid : Steam's user authentication method using OpenID 2.0. The expected value of the platform token is the URL generated by Steam on web authentication



The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /iam/bans.

.
Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/platforms/{platformId}/token [POST]
*/
func (a *Client) PlatformTokenRequestHandler(params *PlatformTokenRequestHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenRequestHandlerOK, *PlatformTokenRequestHandlerBadRequest, *PlatformTokenRequestHandlerUnauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformTokenRequestHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformTokenRequestHandler",
		Method:             "POST",
		PathPattern:        "/iam/oauth/namespaces/{namespace}/platforms/{platformId}/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformTokenRequestHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PlatformTokenRequestHandlerOK:
		return v, nil, nil, nil

	case *PlatformTokenRequestHandlerBadRequest:
		return nil, v, nil, nil

	case *PlatformTokenRequestHandlerUnauthorized:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformTokenRequestHandlerShort oauth2 access token generation specific to platform


## The endpoint is going to be deprecated





This endpoint requires all requests to have Authorization header set with Basic access authentication
constructed from client id and client secret. For publisher-game namespace schema : Specify only either platform_token or device_id. Device token grant
should be requested along with device_id parameter against game namespace. Another 3rd party platform token grant should be requested
along with platform_token parameter against publisher namespace.






Supported platforms:




                                              1. steamopenid : Steam's user authentication method using OpenID 2.0. The expected value of the platform token is the URL generated by Steam on web authentication



The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /iam/bans.

.
Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/platforms/{platformId}/token [POST]
*/
func (a *Client) PlatformTokenRequestHandlerShort(params *PlatformTokenRequestHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenRequestHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformTokenRequestHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformTokenRequestHandler",
		Method:             "POST",
		PathPattern:        "/iam/oauth/namespaces/{namespace}/platforms/{platformId}/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformTokenRequestHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformTokenRequestHandlerOK:
		return v, nil
	case *PlatformTokenRequestHandlerBadRequest:
		return nil, v
	case *PlatformTokenRequestHandlerUnauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RevokeUserShort instead.

RevokeUser revokes user's tokens'


## The endpoint is going to be deprecated




This endpoint requires all requests to have authorization header set with bearer token.




Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'




The endpoint revokes all access tokens and refresh tokens a user has prior the revocation time. It is a convenient feature for the developer (or admin) who wanted to revokes all user's access tokens and refresh tokens generated before some period of time.


Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke [POST]
*/
func (a *Client) RevokeUser(params *RevokeUserParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserOK, *RevokeUserUnauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RevokeUser",
		Method:             "POST",
		PathPattern:        "/iam/oauth/namespaces/{namespace}/users/{userId}/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RevokeUserOK:
		return v, nil, nil

	case *RevokeUserUnauthorized:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeUserShort revokes user's tokens'


## The endpoint is going to be deprecated




This endpoint requires all requests to have authorization header set with bearer token.




Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'




The endpoint revokes all access tokens and refresh tokens a user has prior the revocation time. It is a convenient feature for the developer (or admin) who wanted to revokes all user's access tokens and refresh tokens generated before some period of time.


Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke [POST]
*/
func (a *Client) RevokeUserShort(params *RevokeUserParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RevokeUser",
		Method:             "POST",
		PathPattern:        "/iam/oauth/namespaces/{namespace}/users/{userId}/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUserOK:
		return v, nil
	case *RevokeUserUnauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetRevocationListShort instead.

GetRevocationList oauth2 revocation list api


## The endpoint is going to be deprecated




This endpoint will return a list of revoked users and revoked tokens. List of revoked tokens in bloom filter format. This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.




The bloom filter uses MurmurHash3 algorithm for hashing the values


Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/revocationlist [GET]
*/
func (a *Client) GetRevocationList(params *GetRevocationListParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationListOK, *GetRevocationListUnauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRevocationListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRevocationList",
		Method:             "GET",
		PathPattern:        "/iam/oauth/revocationlist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{""},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRevocationListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetRevocationListOK:
		return v, nil, nil

	case *GetRevocationListUnauthorized:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRevocationListShort oauth2 revocation list api


## The endpoint is going to be deprecated




This endpoint will return a list of revoked users and revoked tokens. List of revoked tokens in bloom filter format. This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.




The bloom filter uses MurmurHash3 algorithm for hashing the values


Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/revocationlist [GET]
*/
func (a *Client) GetRevocationListShort(params *GetRevocationListParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRevocationListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRevocationList",
		Method:             "GET",
		PathPattern:        "/iam/oauth/revocationlist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{""},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRevocationListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRevocationListOK:
		return v, nil
	case *GetRevocationListUnauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RevokeTokenShort instead.

RevokeToken oauth2 token revocation api


## The endpoint is going to be deprecated




Revokes a token.




This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret or Bearer access authentication with valid access token.


Endpoint migration guide


                                              * Substitute endpoint: /v3/oauth/revoke [POST]
*/
func (a *Client) RevokeToken(params *RevokeTokenParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeTokenOK, *RevokeTokenBadRequest, *RevokeTokenUnauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeTokenParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RevokeToken",
		Method:             "POST",
		PathPattern:        "/iam/oauth/revoke/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeTokenReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RevokeTokenOK:
		return v, nil, nil, nil

	case *RevokeTokenBadRequest:
		return nil, v, nil, nil

	case *RevokeTokenUnauthorized:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeTokenShort oauth2 token revocation api


## The endpoint is going to be deprecated




Revokes a token.




This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret or Bearer access authentication with valid access token.


Endpoint migration guide


                                              * Substitute endpoint: /v3/oauth/revoke [POST]
*/
func (a *Client) RevokeTokenShort(params *RevokeTokenParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeTokenOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeTokenParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RevokeToken",
		Method:             "POST",
		PathPattern:        "/iam/oauth/revoke/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeTokenReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeTokenOK:
		return v, nil
	case *RevokeTokenBadRequest:
		return nil, v
	case *RevokeTokenUnauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RevokeAUserShort instead.

RevokeAUser oauth2 user revocation api


## The endpoint is going to be deprecated




This endpoint revokes a user.




This endpoint requires all requests to have Authorization header set with Bearer access authentication with valid access token.




Required permission 'NAMESPACE:{namespace}:USER:{userID}:ADMIN [UPDATE]'




When other clients know that the userID has been revoked and the token is issued before the revocation, forcing a new token will contain banned permissions.


Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke [POST]
*/
func (a *Client) RevokeAUser(params *RevokeAUserParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeAUserOK, *RevokeAUserBadRequest, *RevokeAUserUnauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeAUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RevokeAUser",
		Method:             "POST",
		PathPattern:        "/iam/oauth/revoke/user",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeAUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RevokeAUserOK:
		return v, nil, nil, nil

	case *RevokeAUserBadRequest:
		return nil, v, nil, nil

	case *RevokeAUserUnauthorized:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeAUserShort oauth2 user revocation api


## The endpoint is going to be deprecated




This endpoint revokes a user.




This endpoint requires all requests to have Authorization header set with Bearer access authentication with valid access token.




Required permission 'NAMESPACE:{namespace}:USER:{userID}:ADMIN [UPDATE]'




When other clients know that the userID has been revoked and the token is issued before the revocation, forcing a new token will contain banned permissions.


Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke [POST]
*/
func (a *Client) RevokeAUserShort(params *RevokeAUserParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeAUserOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeAUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RevokeAUser",
		Method:             "POST",
		PathPattern:        "/iam/oauth/revoke/user",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeAUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeAUserOK:
		return v, nil
	case *RevokeAUserBadRequest:
		return nil, v
	case *RevokeAUserUnauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TokenGrantShort instead.

TokenGrant oauth2 access token generation endpoint


## The endpoint is going to be deprecated


Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/token [POST]


                                              * Note: difference in V3 response:
    1. format differenceï¼Pascal case => Camel case): permissions field from Action => action, Resource => resource






This endpoint requires all requests to have `Authorization` header set with `Basic` access authentication
constructed from client id and client secret.




This endpoint supports different grant types :



                                              1. Grant Type == `client_credentials`:

    This endpoint will check the client credentials provided through Authorization header.


                                              2. Grant Type == `password`:

    The grant type to use for authenticating a user, whether it's by email / username and password combination
or through platform.


                                              3. Grant Type == `refresh_token`:

    Used to get a new access token for a valid refresh token.


                                              4. Grant Type == `authorization_code`:

    It generates the user token by given the authorization
code which generated in "/authorize" API response. It should also pass
in the redirect_uri, which should be the same as generating the
authorization code request.



For platform authentication, use grant type `password`.
The `username` field would be in form of
`platform:<platform type>`, for example
`platform:steam` for Steam. For the `password`
field, set it to the authentication/authorization ticket or token obtainable through the
respective platform SDK after authenticated the user to the platform. Supported platforms:



                                              * steam - use `platform:steam` as the username and use the authentication ticket obtained
from Steam through the Steam SDK as the password.


                                              * ps4 - use `platform:ps4` as the username and use the authorization code
obtained from the PlayStation Network through a player PS4 unit as the password.


                                              * live - use `platform:live` as the username and use token obtained from
Xbox Secure Token Service (XSTS) as the password.


                                              * oculus - use `platform:oculus` as the username and use the `user_id:nonce`
as password obtained from Oculus through the Oculus SDK.




The access token and refresh token are in form of JWT token.
An access token JWT contains data which structure is similar to the
Response Class below, but without OAuth-related data. To verify a token, use the public keys
obtained from the `/jwks` endpoint below.




## Access Token Content




Following is the access tokenâs content:




                                              *


namespace. It is the namespace the token was generated from.





                                              *


display_name. The display name of the sub. It is empty if the token is generated from the client credential





                                              *


roles. The subâs roles. It is empty if the token is generated from the client credential





                                              *


namespace_roles. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace





                                              *


permissions. The sub or audâ permissions





                                              *


bans. The subâs list of bans. It is used by the IAM client for validating the token.





                                              *


jflgs. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:




                                                * 1: Email Address Verified



                                                * 2: Phone Number Verified



                                                * 4: Anonymous






                                              *


aud. The aud is the client ID.





                                              *


iat. The time the token issues at. It is in Epoch time format





                                              *


exp. The time the token expires. It is in Epoch time format





                                              *


sub. The UserID. The sub is omitted if the token is generated from client credential







## Bans




The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.




## Track Login History




This endpoint will track login history to detect suspicious login activity, please provide "device_id" (alphanumeric) in request header parameter otherwise we will set to "unknown".




Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"
*/
func (a *Client) TokenGrant(params *TokenGrantParams, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantOK, *TokenGrantBadRequest, *TokenGrantUnauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenGrantParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "TokenGrant",
		Method:             "POST",
		PathPattern:        "/iam/oauth/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenGrantReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *TokenGrantOK:
		return v, nil, nil, nil

	case *TokenGrantBadRequest:
		return nil, v, nil, nil

	case *TokenGrantUnauthorized:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TokenGrantShort oauth2 access token generation endpoint


## The endpoint is going to be deprecated


Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/token [POST]


                                              * Note: difference in V3 response:
    1. format differenceï¼Pascal case => Camel case): permissions field from Action => action, Resource => resource






This endpoint requires all requests to have `Authorization` header set with `Basic` access authentication
constructed from client id and client secret.




This endpoint supports different grant types :



                                              1. Grant Type == `client_credentials`:

    This endpoint will check the client credentials provided through Authorization header.


                                              2. Grant Type == `password`:

    The grant type to use for authenticating a user, whether it's by email / username and password combination
or through platform.


                                              3. Grant Type == `refresh_token`:

    Used to get a new access token for a valid refresh token.


                                              4. Grant Type == `authorization_code`:

    It generates the user token by given the authorization
code which generated in "/authorize" API response. It should also pass
in the redirect_uri, which should be the same as generating the
authorization code request.



For platform authentication, use grant type `password`.
The `username` field would be in form of
`platform:<platform type>`, for example
`platform:steam` for Steam. For the `password`
field, set it to the authentication/authorization ticket or token obtainable through the
respective platform SDK after authenticated the user to the platform. Supported platforms:



                                              * steam - use `platform:steam` as the username and use the authentication ticket obtained
from Steam through the Steam SDK as the password.


                                              * ps4 - use `platform:ps4` as the username and use the authorization code
obtained from the PlayStation Network through a player PS4 unit as the password.


                                              * live - use `platform:live` as the username and use token obtained from
Xbox Secure Token Service (XSTS) as the password.


                                              * oculus - use `platform:oculus` as the username and use the `user_id:nonce`
as password obtained from Oculus through the Oculus SDK.




The access token and refresh token are in form of JWT token.
An access token JWT contains data which structure is similar to the
Response Class below, but without OAuth-related data. To verify a token, use the public keys
obtained from the `/jwks` endpoint below.




## Access Token Content




Following is the access tokenâs content:




                                              *


namespace. It is the namespace the token was generated from.





                                              *


display_name. The display name of the sub. It is empty if the token is generated from the client credential





                                              *


roles. The subâs roles. It is empty if the token is generated from the client credential





                                              *


namespace_roles. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace





                                              *


permissions. The sub or audâ permissions





                                              *


bans. The subâs list of bans. It is used by the IAM client for validating the token.





                                              *


jflgs. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:




                                                * 1: Email Address Verified



                                                * 2: Phone Number Verified



                                                * 4: Anonymous






                                              *


aud. The aud is the client ID.





                                              *


iat. The time the token issues at. It is in Epoch time format





                                              *


exp. The time the token expires. It is in Epoch time format





                                              *


sub. The UserID. The sub is omitted if the token is generated from client credential







## Bans




The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.




## Track Login History




This endpoint will track login history to detect suspicious login activity, please provide "device_id" (alphanumeric) in request header parameter otherwise we will set to "unknown".




Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"
*/
func (a *Client) TokenGrantShort(params *TokenGrantParams, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenGrantParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "TokenGrant",
		Method:             "POST",
		PathPattern:        "/iam/oauth/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenGrantReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TokenGrantOK:
		return v, nil
	case *TokenGrantBadRequest:
		return nil, v
	case *TokenGrantUnauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use VerifyTokenShort instead.

VerifyToken oauth2 token verification api


## The endpoint is going to be deprecated


This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.
Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/verify [POST]


                                              * Note: difference in V3 response:
    1. format differenceï¼Pascal case => Camel case): permissions field from Action => action, Resource => resource
*/
func (a *Client) VerifyToken(params *VerifyTokenParams, authInfo runtime.ClientAuthInfoWriter) (*VerifyTokenOK, *VerifyTokenBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVerifyTokenParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "VerifyToken",
		Method:             "POST",
		PathPattern:        "/iam/oauth/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &VerifyTokenReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *VerifyTokenOK:
		return v, nil, nil

	case *VerifyTokenBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
VerifyTokenShort oauth2 token verification api


## The endpoint is going to be deprecated


This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.
Endpoint migration guide


                                              * Substitute endpoint: /iam/v3/oauth/verify [POST]


                                              * Note: difference in V3 response:
    1. format differenceï¼Pascal case => Camel case): permissions field from Action => action, Resource => resource
*/
func (a *Client) VerifyTokenShort(params *VerifyTokenParams, authInfo runtime.ClientAuthInfoWriter) (*VerifyTokenOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVerifyTokenParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "VerifyToken",
		Method:             "POST",
		PathPattern:        "/iam/oauth/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &VerifyTokenReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *VerifyTokenOK:
		return v, nil
	case *VerifyTokenBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
