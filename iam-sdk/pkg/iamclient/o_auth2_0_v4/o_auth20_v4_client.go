// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package o_auth2_0_v4

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new o auth2 0 v4 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for o auth2 0 v4 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AuthenticationWithPlatformLinkV4(params *AuthenticationWithPlatformLinkV4Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticationWithPlatformLinkV4OK, *AuthenticationWithPlatformLinkV4Accepted, *AuthenticationWithPlatformLinkV4BadRequest, *AuthenticationWithPlatformLinkV4Unauthorized, *AuthenticationWithPlatformLinkV4Forbidden, *AuthenticationWithPlatformLinkV4Conflict, error)
	AuthenticationWithPlatformLinkV4Short(params *AuthenticationWithPlatformLinkV4Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticationWithPlatformLinkV4OK, error)
	GenerateTokenByNewHeadlessAccountV4(params *GenerateTokenByNewHeadlessAccountV4Params, authInfo runtime.ClientAuthInfoWriter) (*GenerateTokenByNewHeadlessAccountV4OK, *GenerateTokenByNewHeadlessAccountV4Accepted, *GenerateTokenByNewHeadlessAccountV4BadRequest, *GenerateTokenByNewHeadlessAccountV4Unauthorized, *GenerateTokenByNewHeadlessAccountV4NotFound, error)
	GenerateTokenByNewHeadlessAccountV4Short(params *GenerateTokenByNewHeadlessAccountV4Params, authInfo runtime.ClientAuthInfoWriter) (*GenerateTokenByNewHeadlessAccountV4OK, error)
	Verify2FACodeV4(params *Verify2FACodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeV4OK, *Verify2FACodeV4Accepted, *Verify2FACodeV4Unauthorized, error)
	Verify2FACodeV4Short(params *Verify2FACodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeV4OK, error)
	PlatformTokenGrantV4(params *PlatformTokenGrantV4Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenGrantV4OK, *PlatformTokenGrantV4Accepted, *PlatformTokenGrantV4BadRequest, *PlatformTokenGrantV4Unauthorized, *PlatformTokenGrantV4Forbidden, *PlatformTokenGrantV4ServiceUnavailable, error)
	PlatformTokenGrantV4Short(params *PlatformTokenGrantV4Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenGrantV4OK, error)
	SimultaneousLoginV4(params *SimultaneousLoginV4Params, authInfo runtime.ClientAuthInfoWriter) (*SimultaneousLoginV4OK, *SimultaneousLoginV4Accepted, *SimultaneousLoginV4BadRequest, *SimultaneousLoginV4Unauthorized, *SimultaneousLoginV4Conflict, *SimultaneousLoginV4InternalServerError, error)
	SimultaneousLoginV4Short(params *SimultaneousLoginV4Params, authInfo runtime.ClientAuthInfoWriter) (*SimultaneousLoginV4OK, error)
	TokenGrantV4(params *TokenGrantV4Params, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantV4OK, *TokenGrantV4Accepted, *TokenGrantV4BadRequest, *TokenGrantV4Unauthorized, *TokenGrantV4Forbidden, *TokenGrantV4TooManyRequests, error)
	TokenGrantV4Short(params *TokenGrantV4Params, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantV4OK, error)
	RequestTargetTokenResponseV4(params *RequestTargetTokenResponseV4Params, authInfo runtime.ClientAuthInfoWriter) (*RequestTargetTokenResponseV4OK, *RequestTargetTokenResponseV4Accepted, error)
	RequestTargetTokenResponseV4Short(params *RequestTargetTokenResponseV4Params, authInfo runtime.ClientAuthInfoWriter) (*RequestTargetTokenResponseV4OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AuthenticationWithPlatformLinkV4Short instead.

AuthenticationWithPlatformLinkV4 authentication with platform link
This endpoint is being used to authenticate a user account and perform platform link.
It validates user's email / username and password.
If user already enable 2FA, then invoke _/mfa/verify_ using **mfa_token** from this endpoint response.

## Device Cookie Validation

Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.
*/
func (a *Client) AuthenticationWithPlatformLinkV4(params *AuthenticationWithPlatformLinkV4Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticationWithPlatformLinkV4OK, *AuthenticationWithPlatformLinkV4Accepted, *AuthenticationWithPlatformLinkV4BadRequest, *AuthenticationWithPlatformLinkV4Unauthorized, *AuthenticationWithPlatformLinkV4Forbidden, *AuthenticationWithPlatformLinkV4Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthenticationWithPlatformLinkV4Params()
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
		ID:                 "AuthenticationWithPlatformLinkV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/authenticateWithLink",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthenticationWithPlatformLinkV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AuthenticationWithPlatformLinkV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AuthenticationWithPlatformLinkV4Accepted:
		return nil, v, nil, nil, nil, nil, nil

	case *AuthenticationWithPlatformLinkV4BadRequest:
		return nil, nil, v, nil, nil, nil, nil

	case *AuthenticationWithPlatformLinkV4Unauthorized:
		return nil, nil, nil, v, nil, nil, nil

	case *AuthenticationWithPlatformLinkV4Forbidden:
		return nil, nil, nil, nil, v, nil, nil

	case *AuthenticationWithPlatformLinkV4Conflict:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AuthenticationWithPlatformLinkV4Short authentication with platform link
This endpoint is being used to authenticate a user account and perform platform link.
It validates user's email / username and password.
If user already enable 2FA, then invoke _/mfa/verify_ using **mfa_token** from this endpoint response.

## Device Cookie Validation

Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.
*/
func (a *Client) AuthenticationWithPlatformLinkV4Short(params *AuthenticationWithPlatformLinkV4Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticationWithPlatformLinkV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthenticationWithPlatformLinkV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AuthenticationWithPlatformLinkV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/authenticateWithLink",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthenticationWithPlatformLinkV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthenticationWithPlatformLinkV4OK:
		return v, nil
	case *AuthenticationWithPlatformLinkV4Accepted:
		return nil, v
	case *AuthenticationWithPlatformLinkV4BadRequest:
		return nil, v
	case *AuthenticationWithPlatformLinkV4Unauthorized:
		return nil, v
	case *AuthenticationWithPlatformLinkV4Forbidden:
		return nil, v
	case *AuthenticationWithPlatformLinkV4Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GenerateTokenByNewHeadlessAccountV4Short instead.

GenerateTokenByNewHeadlessAccountV4 create headless account and response token
This endpoint is being used to create headless account after 3rd platform authenticated, and response token .
The 'linkingToken' in request body is received from "/platforms/{platformId}/token"
when 3rd platform account is not linked to justice account yet.
*/
func (a *Client) GenerateTokenByNewHeadlessAccountV4(params *GenerateTokenByNewHeadlessAccountV4Params, authInfo runtime.ClientAuthInfoWriter) (*GenerateTokenByNewHeadlessAccountV4OK, *GenerateTokenByNewHeadlessAccountV4Accepted, *GenerateTokenByNewHeadlessAccountV4BadRequest, *GenerateTokenByNewHeadlessAccountV4Unauthorized, *GenerateTokenByNewHeadlessAccountV4NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGenerateTokenByNewHeadlessAccountV4Params()
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
		ID:                 "GenerateTokenByNewHeadlessAccountV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/headless/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GenerateTokenByNewHeadlessAccountV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GenerateTokenByNewHeadlessAccountV4OK:
		return v, nil, nil, nil, nil, nil

	case *GenerateTokenByNewHeadlessAccountV4Accepted:
		return nil, v, nil, nil, nil, nil

	case *GenerateTokenByNewHeadlessAccountV4BadRequest:
		return nil, nil, v, nil, nil, nil

	case *GenerateTokenByNewHeadlessAccountV4Unauthorized:
		return nil, nil, nil, v, nil, nil

	case *GenerateTokenByNewHeadlessAccountV4NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GenerateTokenByNewHeadlessAccountV4Short create headless account and response token
This endpoint is being used to create headless account after 3rd platform authenticated, and response token .
The 'linkingToken' in request body is received from "/platforms/{platformId}/token"
when 3rd platform account is not linked to justice account yet.
*/
func (a *Client) GenerateTokenByNewHeadlessAccountV4Short(params *GenerateTokenByNewHeadlessAccountV4Params, authInfo runtime.ClientAuthInfoWriter) (*GenerateTokenByNewHeadlessAccountV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGenerateTokenByNewHeadlessAccountV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GenerateTokenByNewHeadlessAccountV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/headless/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GenerateTokenByNewHeadlessAccountV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GenerateTokenByNewHeadlessAccountV4OK:
		return v, nil
	case *GenerateTokenByNewHeadlessAccountV4Accepted:
		return nil, v
	case *GenerateTokenByNewHeadlessAccountV4BadRequest:
		return nil, v
	case *GenerateTokenByNewHeadlessAccountV4Unauthorized:
		return nil, v
	case *GenerateTokenByNewHeadlessAccountV4NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use Verify2FACodeV4Short instead.

Verify2FACodeV4 verify 2fa code
Verify 2FA code
This endpoint is used for verifying 2FA code.
## 2FA remember device
To remember device for 2FA, should provide cookie: device_token or header: Device-Token
*/
func (a *Client) Verify2FACodeV4(params *Verify2FACodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeV4OK, *Verify2FACodeV4Accepted, *Verify2FACodeV4Unauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVerify2FACodeV4Params()
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
		ID:                 "Verify2FACodeV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/mfa/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &Verify2FACodeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *Verify2FACodeV4OK:
		return v, nil, nil, nil

	case *Verify2FACodeV4Accepted:
		return nil, v, nil, nil

	case *Verify2FACodeV4Unauthorized:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Verify2FACodeV4Short verify 2fa code
Verify 2FA code
This endpoint is used for verifying 2FA code.
## 2FA remember device
To remember device for 2FA, should provide cookie: device_token or header: Device-Token
*/
func (a *Client) Verify2FACodeV4Short(params *Verify2FACodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVerify2FACodeV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Verify2FACodeV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/mfa/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &Verify2FACodeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *Verify2FACodeV4OK:
		return v, nil
	case *Verify2FACodeV4Accepted:
		return nil, v
	case *Verify2FACodeV4Unauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PlatformTokenGrantV4Short instead.

PlatformTokenGrantV4 oauth2 access token generation specific to platform
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
func (a *Client) PlatformTokenGrantV4(params *PlatformTokenGrantV4Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenGrantV4OK, *PlatformTokenGrantV4Accepted, *PlatformTokenGrantV4BadRequest, *PlatformTokenGrantV4Unauthorized, *PlatformTokenGrantV4Forbidden, *PlatformTokenGrantV4ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformTokenGrantV4Params()
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
		ID:                 "PlatformTokenGrantV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/platforms/{platformId}/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformTokenGrantV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PlatformTokenGrantV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PlatformTokenGrantV4Accepted:
		return nil, v, nil, nil, nil, nil, nil

	case *PlatformTokenGrantV4BadRequest:
		return nil, nil, v, nil, nil, nil, nil

	case *PlatformTokenGrantV4Unauthorized:
		return nil, nil, nil, v, nil, nil, nil

	case *PlatformTokenGrantV4Forbidden:
		return nil, nil, nil, nil, v, nil, nil

	case *PlatformTokenGrantV4ServiceUnavailable:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformTokenGrantV4Short oauth2 access token generation specific to platform
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
func (a *Client) PlatformTokenGrantV4Short(params *PlatformTokenGrantV4Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenGrantV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformTokenGrantV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformTokenGrantV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/platforms/{platformId}/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformTokenGrantV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformTokenGrantV4OK:
		return v, nil
	case *PlatformTokenGrantV4Accepted:
		return nil, v
	case *PlatformTokenGrantV4BadRequest:
		return nil, v
	case *PlatformTokenGrantV4Unauthorized:
		return nil, v
	case *PlatformTokenGrantV4Forbidden:
		return nil, v
	case *PlatformTokenGrantV4ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SimultaneousLoginV4Short instead.

SimultaneousLoginV4 simultaneous login
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
func (a *Client) SimultaneousLoginV4(params *SimultaneousLoginV4Params, authInfo runtime.ClientAuthInfoWriter) (*SimultaneousLoginV4OK, *SimultaneousLoginV4Accepted, *SimultaneousLoginV4BadRequest, *SimultaneousLoginV4Unauthorized, *SimultaneousLoginV4Conflict, *SimultaneousLoginV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSimultaneousLoginV4Params()
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
		ID:                 "SimultaneousLoginV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/simultaneousLogin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SimultaneousLoginV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SimultaneousLoginV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *SimultaneousLoginV4Accepted:
		return nil, v, nil, nil, nil, nil, nil

	case *SimultaneousLoginV4BadRequest:
		return nil, nil, v, nil, nil, nil, nil

	case *SimultaneousLoginV4Unauthorized:
		return nil, nil, nil, v, nil, nil, nil

	case *SimultaneousLoginV4Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *SimultaneousLoginV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SimultaneousLoginV4Short simultaneous login
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
func (a *Client) SimultaneousLoginV4Short(params *SimultaneousLoginV4Params, authInfo runtime.ClientAuthInfoWriter) (*SimultaneousLoginV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSimultaneousLoginV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SimultaneousLoginV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/simultaneousLogin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SimultaneousLoginV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SimultaneousLoginV4OK:
		return v, nil
	case *SimultaneousLoginV4Accepted:
		return nil, v
	case *SimultaneousLoginV4BadRequest:
		return nil, v
	case *SimultaneousLoginV4Unauthorized:
		return nil, v
	case *SimultaneousLoginV4Conflict:
		return nil, v
	case *SimultaneousLoginV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TokenGrantV4Short instead.

TokenGrantV4 oauth2 access token generation endpoint v4
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
It only allow publisher namespace client.
In generated token:
1. There wil be no roles, namespace_roles & permission.
2. The scope will be fixed as 'extend'.
3. There will have a new field 'extend_namespace', the value is from token request body.
6. Grant Type == `urn:ietf:params:oauth:grant-type:login_queue_ticket`:
It generates a token by validating the login queue ticket against login queue service.

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
func (a *Client) TokenGrantV4(params *TokenGrantV4Params, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantV4OK, *TokenGrantV4Accepted, *TokenGrantV4BadRequest, *TokenGrantV4Unauthorized, *TokenGrantV4Forbidden, *TokenGrantV4TooManyRequests, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenGrantV4Params()
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
		ID:                 "TokenGrantV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenGrantV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *TokenGrantV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *TokenGrantV4Accepted:
		return nil, v, nil, nil, nil, nil, nil

	case *TokenGrantV4BadRequest:
		return nil, nil, v, nil, nil, nil, nil

	case *TokenGrantV4Unauthorized:
		return nil, nil, nil, v, nil, nil, nil

	case *TokenGrantV4Forbidden:
		return nil, nil, nil, nil, v, nil, nil

	case *TokenGrantV4TooManyRequests:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TokenGrantV4Short oauth2 access token generation endpoint v4
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
It only allow publisher namespace client.
In generated token:
1. There wil be no roles, namespace_roles & permission.
2. The scope will be fixed as 'extend'.
3. There will have a new field 'extend_namespace', the value is from token request body.
6. Grant Type == `urn:ietf:params:oauth:grant-type:login_queue_ticket`:
It generates a token by validating the login queue ticket against login queue service.

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
func (a *Client) TokenGrantV4Short(params *TokenGrantV4Params, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenGrantV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "TokenGrantV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenGrantV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TokenGrantV4OK:
		return v, nil
	case *TokenGrantV4Accepted:
		return nil, v
	case *TokenGrantV4BadRequest:
		return nil, v
	case *TokenGrantV4Unauthorized:
		return nil, v
	case *TokenGrantV4Forbidden:
		return nil, v
	case *TokenGrantV4TooManyRequests:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RequestTargetTokenResponseV4Short instead.

RequestTargetTokenResponseV4 generate target token by code
This endpoint is being used to generate target token.
It requires basic header with ClientID and Secret, it should match the ClientID when call `/iam/v3/namespace/{namespace}/token/request`
The code should be generated from `/iam/v3/namespace/{namespace}/token/request`.
*/
func (a *Client) RequestTargetTokenResponseV4(params *RequestTargetTokenResponseV4Params, authInfo runtime.ClientAuthInfoWriter) (*RequestTargetTokenResponseV4OK, *RequestTargetTokenResponseV4Accepted, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestTargetTokenResponseV4Params()
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
		ID:                 "RequestTargetTokenResponseV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/token/exchange",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestTargetTokenResponseV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RequestTargetTokenResponseV4OK:
		return v, nil, nil

	case *RequestTargetTokenResponseV4Accepted:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestTargetTokenResponseV4Short generate target token by code
This endpoint is being used to generate target token.
It requires basic header with ClientID and Secret, it should match the ClientID when call `/iam/v3/namespace/{namespace}/token/request`
The code should be generated from `/iam/v3/namespace/{namespace}/token/request`.
*/
func (a *Client) RequestTargetTokenResponseV4Short(params *RequestTargetTokenResponseV4Params, authInfo runtime.ClientAuthInfoWriter) (*RequestTargetTokenResponseV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestTargetTokenResponseV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RequestTargetTokenResponseV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/oauth/token/exchange",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestTargetTokenResponseV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestTargetTokenResponseV4OK:
		return v, nil
	case *RequestTargetTokenResponseV4Accepted:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
