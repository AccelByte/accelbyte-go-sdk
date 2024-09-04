// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetConfigValueV3(params *AdminGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigValueV3OK, *AdminGetConfigValueV3BadRequest, *AdminGetConfigValueV3InternalServerError, error)
	AdminGetConfigValueV3Short(params *AdminGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigValueV3OK, error)
	PublicGetConfigValueV3(params *PublicGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetConfigValueV3OK, *PublicGetConfigValueV3BadRequest, *PublicGetConfigValueV3InternalServerError, error)
	PublicGetConfigValueV3Short(params *PublicGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetConfigValueV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetConfigValueV3Short instead.

AdminGetConfigValueV3 get config value
This endpoint return the value of config key. The namespace should be publisher namespace or studio namespace.

**Supported config key:**
* uniqueDisplayNameEnabled
* usernameDisabled
* mandatoryEmailVerificationEnabled
*/
func (a *Client) AdminGetConfigValueV3(params *AdminGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigValueV3OK, *AdminGetConfigValueV3BadRequest, *AdminGetConfigValueV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigValueV3Params()
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
		ID:                 "AdminGetConfigValueV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/config/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigValueV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigValueV3OK:
		return v, nil, nil, nil

	case *AdminGetConfigValueV3BadRequest:
		return nil, v, nil, nil

	case *AdminGetConfigValueV3InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigValueV3Short get config value
This endpoint return the value of config key. The namespace should be publisher namespace or studio namespace.

**Supported config key:**
* uniqueDisplayNameEnabled
* usernameDisabled
* mandatoryEmailVerificationEnabled
*/
func (a *Client) AdminGetConfigValueV3Short(params *AdminGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigValueV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigValueV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetConfigValueV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/config/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigValueV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigValueV3OK:
		return v, nil
	case *AdminGetConfigValueV3BadRequest:
		return nil, v
	case *AdminGetConfigValueV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetConfigValueV3Short instead.

PublicGetConfigValueV3 get config value
This endpoint return the value of config key. The namespace should be publisher namespace or studio namespace.
Note: this endpoint does not need any authorization.

**Supported config key:**
* uniqueDisplayNameEnabled
* usernameDisabled
* mandatoryEmailVerificationEnabled
*/
func (a *Client) PublicGetConfigValueV3(params *PublicGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetConfigValueV3OK, *PublicGetConfigValueV3BadRequest, *PublicGetConfigValueV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetConfigValueV3Params()
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
		ID:                 "PublicGetConfigValueV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/config/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetConfigValueV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetConfigValueV3OK:
		return v, nil, nil, nil

	case *PublicGetConfigValueV3BadRequest:
		return nil, v, nil, nil

	case *PublicGetConfigValueV3InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetConfigValueV3Short get config value
This endpoint return the value of config key. The namespace should be publisher namespace or studio namespace.
Note: this endpoint does not need any authorization.

**Supported config key:**
* uniqueDisplayNameEnabled
* usernameDisabled
* mandatoryEmailVerificationEnabled
*/
func (a *Client) PublicGetConfigValueV3Short(params *PublicGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetConfigValueV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetConfigValueV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetConfigValueV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/config/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetConfigValueV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetConfigValueV3OK:
		return v, nil
	case *PublicGetConfigValueV3BadRequest:
		return nil, v
	case *PublicGetConfigValueV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
