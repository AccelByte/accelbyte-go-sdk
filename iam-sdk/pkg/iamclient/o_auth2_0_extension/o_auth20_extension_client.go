// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package o_auth2_0_extension

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new o auth2 0 extension API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for o auth2 0 extension API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	UserAuthenticationV3(params *UserAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*UserAuthenticationV3Found, error)
	UserAuthenticationV3Short(params *UserAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*UserAuthenticationV3Found, error)
	AuthenticationWithPlatformLinkV3(params *AuthenticationWithPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticationWithPlatformLinkV3OK, *AuthenticationWithPlatformLinkV3BadRequest, *AuthenticationWithPlatformLinkV3Unauthorized, *AuthenticationWithPlatformLinkV3Conflict, error)
	AuthenticationWithPlatformLinkV3Short(params *AuthenticationWithPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticationWithPlatformLinkV3OK, error)
	GenerateTokenByNewHeadlessAccountV3(params *GenerateTokenByNewHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*GenerateTokenByNewHeadlessAccountV3OK, *GenerateTokenByNewHeadlessAccountV3BadRequest, *GenerateTokenByNewHeadlessAccountV3Unauthorized, *GenerateTokenByNewHeadlessAccountV3NotFound, error)
	GenerateTokenByNewHeadlessAccountV3Short(params *GenerateTokenByNewHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*GenerateTokenByNewHeadlessAccountV3OK, error)
	RequestOneTimeLinkingCodeV3(params *RequestOneTimeLinkingCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestOneTimeLinkingCodeV3OK, error)
	RequestOneTimeLinkingCodeV3Short(params *RequestOneTimeLinkingCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestOneTimeLinkingCodeV3OK, error)
	ValidateOneTimeLinkingCodeV3(params *ValidateOneTimeLinkingCodeV3Params) (*ValidateOneTimeLinkingCodeV3OK, error)
	ValidateOneTimeLinkingCodeV3Short(params *ValidateOneTimeLinkingCodeV3Params) (*ValidateOneTimeLinkingCodeV3OK, error)
	RequestTokenByOneTimeLinkCodeResponseV3(params *RequestTokenByOneTimeLinkCodeResponseV3Params) (*RequestTokenByOneTimeLinkCodeResponseV3OK, error)
	RequestTokenByOneTimeLinkCodeResponseV3Short(params *RequestTokenByOneTimeLinkCodeResponseV3Params) (*RequestTokenByOneTimeLinkCodeResponseV3OK, error)
	GetCountryLocationV3(params *GetCountryLocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCountryLocationV3OK, error)
	GetCountryLocationV3Short(params *GetCountryLocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCountryLocationV3OK, error)
	Logout(params *LogoutParams, authInfo runtime.ClientAuthInfoWriter) (*LogoutNoContent, error)
	LogoutShort(params *LogoutParams, authInfo runtime.ClientAuthInfoWriter) (*LogoutNoContent, error)
	RequestGameTokenCodeResponseV3(params *RequestGameTokenCodeResponseV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestGameTokenCodeResponseV3OK, error)
	RequestGameTokenCodeResponseV3Short(params *RequestGameTokenCodeResponseV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestGameTokenCodeResponseV3OK, error)
	PlatformAuthenticationV3(params *PlatformAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformAuthenticationV3Found, error)
	PlatformAuthenticationV3Short(params *PlatformAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformAuthenticationV3Found, error)
	RequestGameTokenResponseV3(params *RequestGameTokenResponseV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestGameTokenResponseV3OK, error)
	RequestGameTokenResponseV3Short(params *RequestGameTokenResponseV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestGameTokenResponseV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use UserAuthenticationV3Short instead.

UserAuthenticationV3 authentication api
This endpoint is being used to authenticate a user account.
It validates user's email / username and password.
Deactivated or login-banned users are unable to login.
Redirect URI and Client ID must be specified as a pair and only used to redirect to the specified redirect URI in case the requestId is no longer valid.



## Device Cookie Validation



Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.
This endpoint will read device cookie from cookie auth-trust-id. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

Action code: 10801
*/
func (a *Client) UserAuthenticationV3(params *UserAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*UserAuthenticationV3Found, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserAuthenticationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UserAuthenticationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/authenticate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserAuthenticationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserAuthenticationV3Found:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserAuthenticationV3Short authentication api
This endpoint is being used to authenticate a user account.
It validates user's email / username and password.
Deactivated or login-banned users are unable to login.
Redirect URI and Client ID must be specified as a pair and only used to redirect to the specified redirect URI in case the requestId is no longer valid.



## Device Cookie Validation



Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.
This endpoint will read device cookie from cookie auth-trust-id. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

Action code: 10801
*/
func (a *Client) UserAuthenticationV3Short(params *UserAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*UserAuthenticationV3Found, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserAuthenticationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UserAuthenticationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/authenticate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserAuthenticationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserAuthenticationV3Found:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AuthenticationWithPlatformLinkV3Short instead.

AuthenticationWithPlatformLinkV3 authentication with platform link
This endpoint is being used to authenticate a user account and perform platform link.
It validates user's email / username and password.
If user already enable 2FA, then invoke /mfa/verify using mfa_token from this endpoint response.



## Device Cookie Validation



Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.
This endpoint will read device cookie from cookie auth-trust-id. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.
*/
func (a *Client) AuthenticationWithPlatformLinkV3(params *AuthenticationWithPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticationWithPlatformLinkV3OK, *AuthenticationWithPlatformLinkV3BadRequest, *AuthenticationWithPlatformLinkV3Unauthorized, *AuthenticationWithPlatformLinkV3Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthenticationWithPlatformLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AuthenticationWithPlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/authenticateWithLink",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthenticationWithPlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AuthenticationWithPlatformLinkV3OK:
		return v, nil, nil, nil, nil

	case *AuthenticationWithPlatformLinkV3BadRequest:
		return nil, v, nil, nil, nil

	case *AuthenticationWithPlatformLinkV3Unauthorized:
		return nil, nil, v, nil, nil

	case *AuthenticationWithPlatformLinkV3Conflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AuthenticationWithPlatformLinkV3Short authentication with platform link
This endpoint is being used to authenticate a user account and perform platform link.
It validates user's email / username and password.
If user already enable 2FA, then invoke /mfa/verify using mfa_token from this endpoint response.



## Device Cookie Validation



Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.
This endpoint will read device cookie from cookie auth-trust-id. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.
*/
func (a *Client) AuthenticationWithPlatformLinkV3Short(params *AuthenticationWithPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticationWithPlatformLinkV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthenticationWithPlatformLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AuthenticationWithPlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/authenticateWithLink",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthenticationWithPlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthenticationWithPlatformLinkV3OK:
		return v, nil
	case *AuthenticationWithPlatformLinkV3BadRequest:
		return nil, v
	case *AuthenticationWithPlatformLinkV3Unauthorized:
		return nil, v
	case *AuthenticationWithPlatformLinkV3Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GenerateTokenByNewHeadlessAccountV3Short instead.

GenerateTokenByNewHeadlessAccountV3 create headless account and response token


This endpoint is being used to create headless account after 3rd platform authenticated, and response token .
The 'linkingToken' in request body is received from "/platforms/{platformId}/token"
when 3rd platform account is not linked to justice account yet.'
*/
func (a *Client) GenerateTokenByNewHeadlessAccountV3(params *GenerateTokenByNewHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*GenerateTokenByNewHeadlessAccountV3OK, *GenerateTokenByNewHeadlessAccountV3BadRequest, *GenerateTokenByNewHeadlessAccountV3Unauthorized, *GenerateTokenByNewHeadlessAccountV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGenerateTokenByNewHeadlessAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GenerateTokenByNewHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/headless/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GenerateTokenByNewHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GenerateTokenByNewHeadlessAccountV3OK:
		return v, nil, nil, nil, nil

	case *GenerateTokenByNewHeadlessAccountV3BadRequest:
		return nil, v, nil, nil, nil

	case *GenerateTokenByNewHeadlessAccountV3Unauthorized:
		return nil, nil, v, nil, nil

	case *GenerateTokenByNewHeadlessAccountV3NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GenerateTokenByNewHeadlessAccountV3Short create headless account and response token


This endpoint is being used to create headless account after 3rd platform authenticated, and response token .
The 'linkingToken' in request body is received from "/platforms/{platformId}/token"
when 3rd platform account is not linked to justice account yet.'
*/
func (a *Client) GenerateTokenByNewHeadlessAccountV3Short(params *GenerateTokenByNewHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*GenerateTokenByNewHeadlessAccountV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGenerateTokenByNewHeadlessAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GenerateTokenByNewHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/headless/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GenerateTokenByNewHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GenerateTokenByNewHeadlessAccountV3OK:
		return v, nil
	case *GenerateTokenByNewHeadlessAccountV3BadRequest:
		return nil, v
	case *GenerateTokenByNewHeadlessAccountV3Unauthorized:
		return nil, v
	case *GenerateTokenByNewHeadlessAccountV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RequestOneTimeLinkingCodeV3Short instead.

RequestOneTimeLinkingCodeV3 generate one time linking code


This endpoint is being used to request the one time code [8 length] for headless account to link or upgrade to a full account.

It require a valid user token.

Should specify the target platform id and current user should already linked to this platform.

Current user should be a headless account.



## Supported platforms:




                                              * steam


                                              * steamopenid


                                              * facebook


                                              * google


                                              * oculus


                                              * twitch


                                              * discord


                                              * android


                                              * ios


                                              * apple


                                              * device


                                              * justice


                                              * epicgames


                                              * ps4


                                              * ps5


                                              * nintendo


                                              * awscognito


                                              * live


                                              * xblweb


                                              * netflix


                                              * snapchat
*/
func (a *Client) RequestOneTimeLinkingCodeV3(params *RequestOneTimeLinkingCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestOneTimeLinkingCodeV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestOneTimeLinkingCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RequestOneTimeLinkingCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/link/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestOneTimeLinkingCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestOneTimeLinkingCodeV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestOneTimeLinkingCodeV3Short generate one time linking code


This endpoint is being used to request the one time code [8 length] for headless account to link or upgrade to a full account.

It require a valid user token.

Should specify the target platform id and current user should already linked to this platform.

Current user should be a headless account.



## Supported platforms:




                                              * steam


                                              * steamopenid


                                              * facebook


                                              * google


                                              * oculus


                                              * twitch


                                              * discord


                                              * android


                                              * ios


                                              * apple


                                              * device


                                              * justice


                                              * epicgames


                                              * ps4


                                              * ps5


                                              * nintendo


                                              * awscognito


                                              * live


                                              * xblweb


                                              * netflix


                                              * snapchat
*/
func (a *Client) RequestOneTimeLinkingCodeV3Short(params *RequestOneTimeLinkingCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestOneTimeLinkingCodeV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestOneTimeLinkingCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RequestOneTimeLinkingCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/link/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestOneTimeLinkingCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestOneTimeLinkingCodeV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ValidateOneTimeLinkingCodeV3Short instead.

ValidateOneTimeLinkingCodeV3 validate one time linking code


This endpoint is being used to validate one time link code.
*/
func (a *Client) ValidateOneTimeLinkingCodeV3(params *ValidateOneTimeLinkingCodeV3Params) (*ValidateOneTimeLinkingCodeV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidateOneTimeLinkingCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ValidateOneTimeLinkingCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/link/code/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidateOneTimeLinkingCodeV3Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ValidateOneTimeLinkingCodeV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ValidateOneTimeLinkingCodeV3Short validate one time linking code


This endpoint is being used to validate one time link code.
*/
func (a *Client) ValidateOneTimeLinkingCodeV3Short(params *ValidateOneTimeLinkingCodeV3Params) (*ValidateOneTimeLinkingCodeV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidateOneTimeLinkingCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ValidateOneTimeLinkingCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/link/code/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidateOneTimeLinkingCodeV3Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ValidateOneTimeLinkingCodeV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RequestTokenByOneTimeLinkCodeResponseV3Short instead.

RequestTokenByOneTimeLinkCodeResponseV3 generate publisher token by headless account's one time link code


This endpoint is being used to generate user's token by one time link code.

It require publisher ClientID

It required a code which can be generated from /iam/v3/link/code/request.






This endpoint support creating transient token by utilizing isTransient param:

isTransient=true will generate a transient token with a short Time Expiration and without a refresh token

isTransient=false will consume the one-time code and generate the access token with a refresh token.
*/
func (a *Client) RequestTokenByOneTimeLinkCodeResponseV3(params *RequestTokenByOneTimeLinkCodeResponseV3Params) (*RequestTokenByOneTimeLinkCodeResponseV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestTokenByOneTimeLinkCodeResponseV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RequestTokenByOneTimeLinkCodeResponseV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/link/token/exchange",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestTokenByOneTimeLinkCodeResponseV3Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestTokenByOneTimeLinkCodeResponseV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestTokenByOneTimeLinkCodeResponseV3Short generate publisher token by headless account's one time link code


This endpoint is being used to generate user's token by one time link code.

It require publisher ClientID

It required a code which can be generated from /iam/v3/link/code/request.






This endpoint support creating transient token by utilizing isTransient param:

isTransient=true will generate a transient token with a short Time Expiration and without a refresh token

isTransient=false will consume the one-time code and generate the access token with a refresh token.
*/
func (a *Client) RequestTokenByOneTimeLinkCodeResponseV3Short(params *RequestTokenByOneTimeLinkCodeResponseV3Params) (*RequestTokenByOneTimeLinkCodeResponseV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestTokenByOneTimeLinkCodeResponseV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RequestTokenByOneTimeLinkCodeResponseV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/link/token/exchange",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestTokenByOneTimeLinkCodeResponseV3Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestTokenByOneTimeLinkCodeResponseV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCountryLocationV3Short instead.

GetCountryLocationV3 get country location


This endpoint get country location based on the request.
*/
func (a *Client) GetCountryLocationV3(params *GetCountryLocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCountryLocationV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCountryLocationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCountryLocationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/location/country",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{""},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCountryLocationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCountryLocationV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCountryLocationV3Short get country location


This endpoint get country location based on the request.
*/
func (a *Client) GetCountryLocationV3Short(params *GetCountryLocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCountryLocationV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCountryLocationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCountryLocationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/location/country",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{""},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCountryLocationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCountryLocationV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use LogoutShort instead.

Logout logout


This endpoint is used to remove access_token , refresh_token from cookie and revoke token from usage.




Supported methods:




                                              * VerifyToken to verify token from header


                                              * AddTokenToRevocationList to revoke token with TTL
*/
func (a *Client) Logout(params *LogoutParams, authInfo runtime.ClientAuthInfoWriter) (*LogoutNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLogoutParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Logout",
		Method:             "POST",
		PathPattern:        "/iam/v3/logout",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LogoutReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LogoutNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
LogoutShort logout


This endpoint is used to remove access_token , refresh_token from cookie and revoke token from usage.




Supported methods:




                                              * VerifyToken to verify token from header


                                              * AddTokenToRevocationList to revoke token with TTL
*/
func (a *Client) LogoutShort(params *LogoutParams, authInfo runtime.ClientAuthInfoWriter) (*LogoutNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLogoutParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Logout",
		Method:             "POST",
		PathPattern:        "/iam/v3/logout",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LogoutReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LogoutNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RequestGameTokenCodeResponseV3Short instead.

RequestGameTokenCodeResponseV3 request code to get game token


This endpoint is being used to request the code to generate publisher user's game token.

It require a valid user token with publisher namespace.

Path namespace should be a game namespace.

Client ID should match the target namespace.
It response a code and it can be consumed by /iam/v3/token/exchange
*/
func (a *Client) RequestGameTokenCodeResponseV3(params *RequestGameTokenCodeResponseV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestGameTokenCodeResponseV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestGameTokenCodeResponseV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RequestGameTokenCodeResponseV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/namespace/{namespace}/token/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestGameTokenCodeResponseV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestGameTokenCodeResponseV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestGameTokenCodeResponseV3Short request code to get game token


This endpoint is being used to request the code to generate publisher user's game token.

It require a valid user token with publisher namespace.

Path namespace should be a game namespace.

Client ID should match the target namespace.
It response a code and it can be consumed by /iam/v3/token/exchange
*/
func (a *Client) RequestGameTokenCodeResponseV3Short(params *RequestGameTokenCodeResponseV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestGameTokenCodeResponseV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestGameTokenCodeResponseV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RequestGameTokenCodeResponseV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/namespace/{namespace}/token/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestGameTokenCodeResponseV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestGameTokenCodeResponseV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PlatformAuthenticationV3Short instead.

PlatformAuthenticationV3 platform authentication api
This endpoint authenticates user platform. It validates user to its
respective platforms. Deactivated or login-banned users are unable to login.



If already linked with justice account or match SSO condition, will redirect to client's redirect url with code. then invoke '/iam/v3/oauth/token' with grant_type=authorization_code




If already not linked with justice account and not match SSO condition, will redirect to client's account linking page




## Supported platforms:



                                              * steamopenid
Steam login page will redirects to this endpoint after login success
as previously defined on openID request parameter `openid.return_to` when request login to steam
https://openid.net/specs/openid-authentication-2_0.html#anchor27

                                              * ps4web
PS4 login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`
https://ps4.siedev.net/resources/documents/WebAPI/1/Auth_WebAPI-Reference/0002.html#0GetAccessTokenUsingAuthorizationCode

                                              * xblweb
XBL login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`

                                              * epicgames
Epicgames login page will redirects to this endpoint after login success
or an error occurred. If error, it redirects to the login page.

                                              * twitch
Twitch login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`

                                              * facebook
Facebook login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`

                                              * google
Google login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`

                                              * snapchat
Snapchat login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`

                                              * discord
Discord login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`
action code : 10709
*/
func (a *Client) PlatformAuthenticationV3(params *PlatformAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformAuthenticationV3Found, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformAuthenticationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformAuthenticationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/platforms/{platformId}/authenticate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformAuthenticationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformAuthenticationV3Found:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformAuthenticationV3Short platform authentication api
This endpoint authenticates user platform. It validates user to its
respective platforms. Deactivated or login-banned users are unable to login.



If already linked with justice account or match SSO condition, will redirect to client's redirect url with code. then invoke '/iam/v3/oauth/token' with grant_type=authorization_code




If already not linked with justice account and not match SSO condition, will redirect to client's account linking page




## Supported platforms:



                                              * steamopenid
Steam login page will redirects to this endpoint after login success
as previously defined on openID request parameter `openid.return_to` when request login to steam
https://openid.net/specs/openid-authentication-2_0.html#anchor27

                                              * ps4web
PS4 login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`
https://ps4.siedev.net/resources/documents/WebAPI/1/Auth_WebAPI-Reference/0002.html#0GetAccessTokenUsingAuthorizationCode

                                              * xblweb
XBL login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`

                                              * epicgames
Epicgames login page will redirects to this endpoint after login success
or an error occurred. If error, it redirects to the login page.

                                              * twitch
Twitch login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`

                                              * facebook
Facebook login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`

                                              * google
Google login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`

                                              * snapchat
Snapchat login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`

                                              * discord
Discord login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`
action code : 10709
*/
func (a *Client) PlatformAuthenticationV3Short(params *PlatformAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformAuthenticationV3Found, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformAuthenticationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformAuthenticationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/platforms/{platformId}/authenticate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformAuthenticationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformAuthenticationV3Found:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RequestGameTokenResponseV3Short instead.

RequestGameTokenResponseV3 generate game token by code


This endpoint is being used to generate publisher user's game token.

It require basic header with ClientID and Secret, it should match the ClientID when call /iam/v3/namespace/{namespace}/token/request

It required a code which can be generated from /iam/v3/namespace/{namespace}/token/request.
*/
func (a *Client) RequestGameTokenResponseV3(params *RequestGameTokenResponseV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestGameTokenResponseV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestGameTokenResponseV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RequestGameTokenResponseV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/token/exchange",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestGameTokenResponseV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestGameTokenResponseV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestGameTokenResponseV3Short generate game token by code


This endpoint is being used to generate publisher user's game token.

It require basic header with ClientID and Secret, it should match the ClientID when call /iam/v3/namespace/{namespace}/token/request

It required a code which can be generated from /iam/v3/namespace/{namespace}/token/request.
*/
func (a *Client) RequestGameTokenResponseV3Short(params *RequestGameTokenResponseV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestGameTokenResponseV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestGameTokenResponseV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RequestGameTokenResponseV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/token/exchange",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestGameTokenResponseV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestGameTokenResponseV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
