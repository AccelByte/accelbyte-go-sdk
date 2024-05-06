// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package third_party_credential

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new third party credential API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for third party credential API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveAllThirdPartyLoginPlatformCredentialV3(params *RetrieveAllThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllThirdPartyLoginPlatformCredentialV3OK, *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	RetrieveAllThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllThirdPartyLoginPlatformCredentialV3OK, error)
	RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK, error)
	RetrieveThirdPartyLoginPlatformCredentialV3(params *RetrieveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveThirdPartyLoginPlatformCredentialV3OK, *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	RetrieveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveThirdPartyLoginPlatformCredentialV3OK, error)
	AddThirdPartyLoginPlatformCredentialV3(params *AddThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*AddThirdPartyLoginPlatformCredentialV3Created, *AddThirdPartyLoginPlatformCredentialV3BadRequest, *AddThirdPartyLoginPlatformCredentialV3Unauthorized, *AddThirdPartyLoginPlatformCredentialV3Forbidden, *AddThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	AddThirdPartyLoginPlatformCredentialV3Short(params *AddThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*AddThirdPartyLoginPlatformCredentialV3Created, error)
	DeleteThirdPartyLoginPlatformCredentialV3(params *DeleteThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformCredentialV3NoContent, *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized, *DeleteThirdPartyLoginPlatformCredentialV3Forbidden, *DeleteThirdPartyLoginPlatformCredentialV3NotFound, *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	DeleteThirdPartyLoginPlatformCredentialV3Short(params *DeleteThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformCredentialV3NoContent, error)
	UpdateThirdPartyLoginPlatformCredentialV3(params *UpdateThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformCredentialV3OK, *UpdateThirdPartyLoginPlatformCredentialV3BadRequest, *UpdateThirdPartyLoginPlatformCredentialV3Unauthorized, *UpdateThirdPartyLoginPlatformCredentialV3Forbidden, *UpdateThirdPartyLoginPlatformCredentialV3NotFound, *UpdateThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	UpdateThirdPartyLoginPlatformCredentialV3Short(params *UpdateThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformCredentialV3OK, error)
	UpdateThirdPartyLoginPlatformDomainV3(params *UpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformDomainV3OK, *UpdateThirdPartyLoginPlatformDomainV3BadRequest, *UpdateThirdPartyLoginPlatformDomainV3Unauthorized, *UpdateThirdPartyLoginPlatformDomainV3Forbidden, *UpdateThirdPartyLoginPlatformDomainV3NotFound, *UpdateThirdPartyLoginPlatformDomainV3InternalServerError, error)
	UpdateThirdPartyLoginPlatformDomainV3Short(params *UpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformDomainV3OK, error)
	DeleteThirdPartyLoginPlatformDomainV3(params *DeleteThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformDomainV3NoContent, *DeleteThirdPartyLoginPlatformDomainV3BadRequest, *DeleteThirdPartyLoginPlatformDomainV3Unauthorized, *DeleteThirdPartyLoginPlatformDomainV3Forbidden, *DeleteThirdPartyLoginPlatformDomainV3NotFound, *DeleteThirdPartyLoginPlatformDomainV3InternalServerError, error)
	DeleteThirdPartyLoginPlatformDomainV3Short(params *DeleteThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformDomainV3NoContent, error)
	AdminCheckThirdPartyLoginPlatformAvailabilityV3(params *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCheckThirdPartyLoginPlatformAvailabilityV3OK, *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest, *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized, *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden, error)
	AdminCheckThirdPartyLoginPlatformAvailabilityV3Short(params *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCheckThirdPartyLoginPlatformAvailabilityV3OK, error)
	RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError, error)
	RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK, error)
	RetrieveActiveOIDCClientsPublicV3(params *RetrieveActiveOIDCClientsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveActiveOIDCClientsPublicV3OK, *RetrieveActiveOIDCClientsPublicV3NotFound, *RetrieveActiveOIDCClientsPublicV3InternalServerError, error)
	RetrieveActiveOIDCClientsPublicV3Short(params *RetrieveActiveOIDCClientsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveActiveOIDCClientsPublicV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllThirdPartyLoginPlatformCredentialV3Short instead.

RetrieveAllThirdPartyLoginPlatformCredentialV3 get all third party platform credential
This is the API to Get All Active 3rd Platform Credential.
*/
func (a *Client) RetrieveAllThirdPartyLoginPlatformCredentialV3(params *RetrieveAllThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllThirdPartyLoginPlatformCredentialV3OK, *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "RetrieveAllThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/all/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3OK:
		return v, nil, nil, nil, nil, nil

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllThirdPartyLoginPlatformCredentialV3Short get all third party platform credential
This is the API to Get All Active 3rd Platform Credential.
*/
func (a *Client) RetrieveAllThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllThirdPartyLoginPlatformCredentialV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveAllThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/all/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3OK:
		return v, nil
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, v
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short instead.

RetrieveAllActiveThirdPartyLoginPlatformCredentialV3 get all active third party platform active credential
This is the API to Get All Active 3rd Platform Credential.
*/
func (a *Client) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "RetrieveAllActiveThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK:
		return v, nil, nil, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short get all active third party platform active credential
This is the API to Get All Active 3rd Platform Credential.
*/
func (a *Client) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveAllActiveThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK:
		return v, nil
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveThirdPartyLoginPlatformCredentialV3Short instead.

RetrieveThirdPartyLoginPlatformCredentialV3 retrieve third party platform credential
This is the API to Get 3rd Platform Credential.
*/
func (a *Client) RetrieveThirdPartyLoginPlatformCredentialV3(params *RetrieveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveThirdPartyLoginPlatformCredentialV3OK, *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "RetrieveThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveThirdPartyLoginPlatformCredentialV3OK:
		return v, nil, nil, nil, nil, nil

	case *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *RetrieveThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveThirdPartyLoginPlatformCredentialV3Short retrieve third party platform credential
This is the API to Get 3rd Platform Credential.
*/
func (a *Client) RetrieveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveThirdPartyLoginPlatformCredentialV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveThirdPartyLoginPlatformCredentialV3OK:
		return v, nil
	case *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *RetrieveThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, v
	case *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AddThirdPartyLoginPlatformCredentialV3Short instead.

AddThirdPartyLoginPlatformCredentialV3 add third party platform credential
This is the API to Add 3rd Platform Credential.
- The secret for **apple** is base64 encoded private key.
- No secret for **awscognito**, we only need to configure AWS Cognito Region and User Pool
- The secret for **discord** is client secret of the twitch client id.
- The secret for **epicgames** is client secret of the epicgames client id.
- The secret for **facebook** is client secret of the facebook client id.
- The secret for **google** is client secret of the google OAuth client.
- No secret for **nintendo**, we only need to configure app id of the game
- No secret for **netflix**, we configure the Root, Public, Private Key certificate pem file and target environment; value: [sandbox, production]
- The secret for **oculus** is app secret of the oculus app.
- The secret for **ps4, ps5, and ps4web** is client secret of the psn web server.
- The secret for **steam** is the Steam Web API Key.
- The secret for **steamopenid** is the Steam Web API Key.
- The secret for **twitch** is client secret of the twitch client.
- The secret for **live** is the Relying Party Private Key in base64 encode PEM format.
- The secret for **xblwebapi** is client secret of the xbl client.

If generic oauth flow is set to true:
- Current supported value for TokenAuthenticationType are **code, idToken and bearerToken**
- `TokenClaimsMapping` is used to extract user info from idToken claims or user info endpoint response accessed using bearerToken.
Its a JSON format with key should be `name`, `email` and `avatarUrl`
since IAM will look up for these key when extracting user info. **default claims keys : userIdentity/sub, name, email and avatarUrl/picture**
*/
func (a *Client) AddThirdPartyLoginPlatformCredentialV3(params *AddThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*AddThirdPartyLoginPlatformCredentialV3Created, *AddThirdPartyLoginPlatformCredentialV3BadRequest, *AddThirdPartyLoginPlatformCredentialV3Unauthorized, *AddThirdPartyLoginPlatformCredentialV3Forbidden, *AddThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "AddThirdPartyLoginPlatformCredentialV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddThirdPartyLoginPlatformCredentialV3Created:
		return v, nil, nil, nil, nil, nil

	case *AddThirdPartyLoginPlatformCredentialV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AddThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AddThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AddThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddThirdPartyLoginPlatformCredentialV3Short add third party platform credential
This is the API to Add 3rd Platform Credential.
- The secret for **apple** is base64 encoded private key.
- No secret for **awscognito**, we only need to configure AWS Cognito Region and User Pool
- The secret for **discord** is client secret of the twitch client id.
- The secret for **epicgames** is client secret of the epicgames client id.
- The secret for **facebook** is client secret of the facebook client id.
- The secret for **google** is client secret of the google OAuth client.
- No secret for **nintendo**, we only need to configure app id of the game
- No secret for **netflix**, we configure the Root, Public, Private Key certificate pem file and target environment; value: [sandbox, production]
- The secret for **oculus** is app secret of the oculus app.
- The secret for **ps4, ps5, and ps4web** is client secret of the psn web server.
- The secret for **steam** is the Steam Web API Key.
- The secret for **steamopenid** is the Steam Web API Key.
- The secret for **twitch** is client secret of the twitch client.
- The secret for **live** is the Relying Party Private Key in base64 encode PEM format.
- The secret for **xblwebapi** is client secret of the xbl client.

If generic oauth flow is set to true:
- Current supported value for TokenAuthenticationType are **code, idToken and bearerToken**
- `TokenClaimsMapping` is used to extract user info from idToken claims or user info endpoint response accessed using bearerToken.
Its a JSON format with key should be `name`, `email` and `avatarUrl`
since IAM will look up for these key when extracting user info. **default claims keys : userIdentity/sub, name, email and avatarUrl/picture**
*/
func (a *Client) AddThirdPartyLoginPlatformCredentialV3Short(params *AddThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*AddThirdPartyLoginPlatformCredentialV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddThirdPartyLoginPlatformCredentialV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddThirdPartyLoginPlatformCredentialV3Created:
		return v, nil
	case *AddThirdPartyLoginPlatformCredentialV3BadRequest:
		return nil, v
	case *AddThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *AddThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *AddThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteThirdPartyLoginPlatformCredentialV3Short instead.

DeleteThirdPartyLoginPlatformCredentialV3 delete third party platform credential
This is the API to Delete 3rd Platform Credential.
*/
func (a *Client) DeleteThirdPartyLoginPlatformCredentialV3(params *DeleteThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformCredentialV3NoContent, *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized, *DeleteThirdPartyLoginPlatformCredentialV3Forbidden, *DeleteThirdPartyLoginPlatformCredentialV3NotFound, *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "DeleteThirdPartyLoginPlatformCredentialV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteThirdPartyLoginPlatformCredentialV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteThirdPartyLoginPlatformCredentialV3Short delete third party platform credential
This is the API to Delete 3rd Platform Credential.
*/
func (a *Client) DeleteThirdPartyLoginPlatformCredentialV3Short(params *DeleteThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformCredentialV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteThirdPartyLoginPlatformCredentialV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteThirdPartyLoginPlatformCredentialV3NoContent:
		return v, nil
	case *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *DeleteThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *DeleteThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, v
	case *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateThirdPartyLoginPlatformCredentialV3Short instead.

UpdateThirdPartyLoginPlatformCredentialV3 update third party platform credential
This is the API to Add 3rd Platform Credential.
- The secret for **apple** is base64 encoded private key.
- No secret for **awscognito**, we only need to configure AWS Cognito Region and User Pool
- The secret for **discord** is client secret of the twitch client id.
- The secret for **epicgames** is client secret of the epicgames client id.
- The secret for **facebook** is client secret of the facebook client id.
- The secret for **google** is client secret of the google OAuth client.
- No secret for **nintendo**, we only need to configure app id of the game
- No secret for **netflix**, we configure the Root, Public, Private Key certificate pem file and target environment; value: [sandbox, production]
- The secret for **oculus** is app secret of the oculus app.
- The secret for **ps4, ps5, and ps4web** is client secret of the psn web server.
- The secret for **steam** is the Steam Web API Key.
- The secret for **steamopenid** is the Steam Web API Key.
- The secret for **twitch** is client secret of the twitch client.
- The secret for **live** is the Relying Party Private Key in base64 encode PEM format.
- The secret for **xblwebapi** is client secret of the xbl client.

If generic oauth flow is set to true:
- Current supported value for TokenAuthenticationType is **code, idToken and bearerToken**
- `TokenClaimsMapping` is used to extract user info from idToken claims or user info endpoint response accessed using bearerToken.
Its a JSON format with key should be `name`, `email` and `avatarUrl`
since IAM will look up for these key when extracting user info.**default claims keys : userIdentity/sub, name, email and avatarUrl/picture**
*/
func (a *Client) UpdateThirdPartyLoginPlatformCredentialV3(params *UpdateThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformCredentialV3OK, *UpdateThirdPartyLoginPlatformCredentialV3BadRequest, *UpdateThirdPartyLoginPlatformCredentialV3Unauthorized, *UpdateThirdPartyLoginPlatformCredentialV3Forbidden, *UpdateThirdPartyLoginPlatformCredentialV3NotFound, *UpdateThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "UpdateThirdPartyLoginPlatformCredentialV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateThirdPartyLoginPlatformCredentialV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformCredentialV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateThirdPartyLoginPlatformCredentialV3Short update third party platform credential
This is the API to Add 3rd Platform Credential.
- The secret for **apple** is base64 encoded private key.
- No secret for **awscognito**, we only need to configure AWS Cognito Region and User Pool
- The secret for **discord** is client secret of the twitch client id.
- The secret for **epicgames** is client secret of the epicgames client id.
- The secret for **facebook** is client secret of the facebook client id.
- The secret for **google** is client secret of the google OAuth client.
- No secret for **nintendo**, we only need to configure app id of the game
- No secret for **netflix**, we configure the Root, Public, Private Key certificate pem file and target environment; value: [sandbox, production]
- The secret for **oculus** is app secret of the oculus app.
- The secret for **ps4, ps5, and ps4web** is client secret of the psn web server.
- The secret for **steam** is the Steam Web API Key.
- The secret for **steamopenid** is the Steam Web API Key.
- The secret for **twitch** is client secret of the twitch client.
- The secret for **live** is the Relying Party Private Key in base64 encode PEM format.
- The secret for **xblwebapi** is client secret of the xbl client.

If generic oauth flow is set to true:
- Current supported value for TokenAuthenticationType is **code, idToken and bearerToken**
- `TokenClaimsMapping` is used to extract user info from idToken claims or user info endpoint response accessed using bearerToken.
Its a JSON format with key should be `name`, `email` and `avatarUrl`
since IAM will look up for these key when extracting user info.**default claims keys : userIdentity/sub, name, email and avatarUrl/picture**
*/
func (a *Client) UpdateThirdPartyLoginPlatformCredentialV3Short(params *UpdateThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformCredentialV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateThirdPartyLoginPlatformCredentialV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateThirdPartyLoginPlatformCredentialV3OK:
		return v, nil
	case *UpdateThirdPartyLoginPlatformCredentialV3BadRequest:
		return nil, v
	case *UpdateThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *UpdateThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *UpdateThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, v
	case *UpdateThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateThirdPartyLoginPlatformDomainV3Short instead.

UpdateThirdPartyLoginPlatformDomainV3 set third party platform credential's domain
This is the API to set 3rd Platform domain.
*/
func (a *Client) UpdateThirdPartyLoginPlatformDomainV3(params *UpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformDomainV3OK, *UpdateThirdPartyLoginPlatformDomainV3BadRequest, *UpdateThirdPartyLoginPlatformDomainV3Unauthorized, *UpdateThirdPartyLoginPlatformDomainV3Forbidden, *UpdateThirdPartyLoginPlatformDomainV3NotFound, *UpdateThirdPartyLoginPlatformDomainV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateThirdPartyLoginPlatformDomainV3Params()
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
		ID:                 "UpdateThirdPartyLoginPlatformDomainV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateThirdPartyLoginPlatformDomainV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformDomainV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformDomainV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformDomainV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformDomainV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateThirdPartyLoginPlatformDomainV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateThirdPartyLoginPlatformDomainV3Short set third party platform credential's domain
This is the API to set 3rd Platform domain.
*/
func (a *Client) UpdateThirdPartyLoginPlatformDomainV3Short(params *UpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformDomainV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateThirdPartyLoginPlatformDomainV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateThirdPartyLoginPlatformDomainV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateThirdPartyLoginPlatformDomainV3OK:
		return v, nil
	case *UpdateThirdPartyLoginPlatformDomainV3BadRequest:
		return nil, v
	case *UpdateThirdPartyLoginPlatformDomainV3Unauthorized:
		return nil, v
	case *UpdateThirdPartyLoginPlatformDomainV3Forbidden:
		return nil, v
	case *UpdateThirdPartyLoginPlatformDomainV3NotFound:
		return nil, v
	case *UpdateThirdPartyLoginPlatformDomainV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteThirdPartyLoginPlatformDomainV3Short instead.

DeleteThirdPartyLoginPlatformDomainV3 unregister third party platform credential's domain
This is the API to unregister 3rd Platform domain.
*/
func (a *Client) DeleteThirdPartyLoginPlatformDomainV3(params *DeleteThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformDomainV3NoContent, *DeleteThirdPartyLoginPlatformDomainV3BadRequest, *DeleteThirdPartyLoginPlatformDomainV3Unauthorized, *DeleteThirdPartyLoginPlatformDomainV3Forbidden, *DeleteThirdPartyLoginPlatformDomainV3NotFound, *DeleteThirdPartyLoginPlatformDomainV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteThirdPartyLoginPlatformDomainV3Params()
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
		ID:                 "DeleteThirdPartyLoginPlatformDomainV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteThirdPartyLoginPlatformDomainV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformDomainV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformDomainV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformDomainV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformDomainV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteThirdPartyLoginPlatformDomainV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteThirdPartyLoginPlatformDomainV3Short unregister third party platform credential's domain
This is the API to unregister 3rd Platform domain.
*/
func (a *Client) DeleteThirdPartyLoginPlatformDomainV3Short(params *DeleteThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformDomainV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteThirdPartyLoginPlatformDomainV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteThirdPartyLoginPlatformDomainV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteThirdPartyLoginPlatformDomainV3NoContent:
		return v, nil
	case *DeleteThirdPartyLoginPlatformDomainV3BadRequest:
		return nil, v
	case *DeleteThirdPartyLoginPlatformDomainV3Unauthorized:
		return nil, v
	case *DeleteThirdPartyLoginPlatformDomainV3Forbidden:
		return nil, v
	case *DeleteThirdPartyLoginPlatformDomainV3NotFound:
		return nil, v
	case *DeleteThirdPartyLoginPlatformDomainV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCheckThirdPartyLoginPlatformAvailabilityV3Short instead.

AdminCheckThirdPartyLoginPlatformAvailabilityV3 check 3rd party platform availability
This is the API to check specific 3rd party platform availability.
Passing platform group name or it's member will return same platform availability data
Supported third party platform and platform group:
- PSN group(psn)
- ps4web
- ps4
- ps5
*/
func (a *Client) AdminCheckThirdPartyLoginPlatformAvailabilityV3(params *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCheckThirdPartyLoginPlatformAvailabilityV3OK, *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest, *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized, *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Params()
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
		ID:                 "AdminCheckThirdPartyLoginPlatformAvailabilityV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/platforms/{platformId}/availability",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCheckThirdPartyLoginPlatformAvailabilityV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3OK:
		return v, nil, nil, nil, nil

	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest:
		return nil, v, nil, nil, nil

	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized:
		return nil, nil, v, nil, nil

	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCheckThirdPartyLoginPlatformAvailabilityV3Short check 3rd party platform availability
This is the API to check specific 3rd party platform availability.
Passing platform group name or it's member will return same platform availability data
Supported third party platform and platform group:
- PSN group(psn)
- ps4web
- ps4
- ps5
*/
func (a *Client) AdminCheckThirdPartyLoginPlatformAvailabilityV3Short(params *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCheckThirdPartyLoginPlatformAvailabilityV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCheckThirdPartyLoginPlatformAvailabilityV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/platforms/{platformId}/availability",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCheckThirdPartyLoginPlatformAvailabilityV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3OK:
		return v, nil
	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest:
		return nil, v
	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized:
		return nil, v
	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short instead.

RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 get all active third party platform active credential for public usage
This is the Public API to Get All Active 3rd Platform Credential.
*/
func (a *Client) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params()
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
		ID:                 "RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/clients/active",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK:
		return v, nil, nil, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short get all active third party platform active credential for public usage
This is the Public API to Get All Active 3rd Platform Credential.
*/
func (a *Client) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/clients/active",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK:
		return v, nil
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveActiveOIDCClientsPublicV3Short instead.

RetrieveActiveOIDCClientsPublicV3 get active oidc platform credential by client id
This is the Public API to Get All Active OIDC Platform Credential By Client ID
*/
func (a *Client) RetrieveActiveOIDCClientsPublicV3(params *RetrieveActiveOIDCClientsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveActiveOIDCClientsPublicV3OK, *RetrieveActiveOIDCClientsPublicV3NotFound, *RetrieveActiveOIDCClientsPublicV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveActiveOIDCClientsPublicV3Params()
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
		ID:                 "RetrieveActiveOIDCClientsPublicV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/clients/oidc",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveActiveOIDCClientsPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveActiveOIDCClientsPublicV3OK:
		return v, nil, nil, nil

	case *RetrieveActiveOIDCClientsPublicV3NotFound:
		return nil, v, nil, nil

	case *RetrieveActiveOIDCClientsPublicV3InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveActiveOIDCClientsPublicV3Short get active oidc platform credential by client id
This is the Public API to Get All Active OIDC Platform Credential By Client ID
*/
func (a *Client) RetrieveActiveOIDCClientsPublicV3Short(params *RetrieveActiveOIDCClientsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveActiveOIDCClientsPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveActiveOIDCClientsPublicV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveActiveOIDCClientsPublicV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/clients/oidc",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveActiveOIDCClientsPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveActiveOIDCClientsPublicV3OK:
		return v, nil
	case *RetrieveActiveOIDCClientsPublicV3NotFound:
		return nil, v
	case *RetrieveActiveOIDCClientsPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
