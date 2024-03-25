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
	AdminGetAllConfigV1(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, *AdminGetAllConfigV1Unauthorized, *AdminGetAllConfigV1Forbidden, *AdminGetAllConfigV1InternalServerError, error)
	AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, error)
	AdminGetConfigV1(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, *AdminGetConfigV1Unauthorized, *AdminGetConfigV1Forbidden, *AdminGetConfigV1InternalServerError, error)
	AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, error)
	AdminPatchConfigV1(params *AdminPatchConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchConfigV1OK, *AdminPatchConfigV1Unauthorized, *AdminPatchConfigV1Forbidden, *AdminPatchConfigV1InternalServerError, error)
	AdminPatchConfigV1Short(params *AdminPatchConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchConfigV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetAllConfigV1Short instead.

AdminGetAllConfigV1 admin get all namespaces config
Get matchmaking config of all namespaces. Will only return namespace configs than have been updated.
*/
func (a *Client) AdminGetAllConfigV1(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, *AdminGetAllConfigV1Unauthorized, *AdminGetAllConfigV1Forbidden, *AdminGetAllConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigV1Params()
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
		ID:                 "adminGetAllConfigV1",
		Method:             "GET",
		PathPattern:        "/match2/v1/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigV1OK:
		return v, nil, nil, nil, nil

	case *AdminGetAllConfigV1Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetAllConfigV1Forbidden:
		return nil, nil, v, nil, nil

	case *AdminGetAllConfigV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllConfigV1Short admin get all namespaces config
Get matchmaking config of all namespaces. Will only return namespace configs than have been updated.
*/
func (a *Client) AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllConfigV1",
		Method:             "GET",
		PathPattern:        "/match2/v1/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigV1OK:
		return v, nil
	case *AdminGetAllConfigV1Unauthorized:
		return nil, v
	case *AdminGetAllConfigV1Forbidden:
		return nil, v
	case *AdminGetAllConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetConfigV1Short instead.

AdminGetConfigV1 admin get namespace config
Get matchmaking config of a namespaces.
*/
func (a *Client) AdminGetConfigV1(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, *AdminGetConfigV1Unauthorized, *AdminGetConfigV1Forbidden, *AdminGetConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigV1Params()
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
		ID:                 "adminGetConfigV1",
		Method:             "GET",
		PathPattern:        "/match2/v1/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigV1OK:
		return v, nil, nil, nil, nil

	case *AdminGetConfigV1Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetConfigV1Forbidden:
		return nil, nil, v, nil, nil

	case *AdminGetConfigV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigV1Short admin get namespace config
Get matchmaking config of a namespaces.
*/
func (a *Client) AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigV1",
		Method:             "GET",
		PathPattern:        "/match2/v1/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigV1OK:
		return v, nil
	case *AdminGetConfigV1Unauthorized:
		return nil, v
	case *AdminGetConfigV1Forbidden:
		return nil, v
	case *AdminGetConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPatchConfigV1Short instead.

AdminPatchConfigV1 admin patch update namespace config
Patch update matchmaking config of a namespaces. Partially update matchmaking config, will only update value that defined on the request.
*/
func (a *Client) AdminPatchConfigV1(params *AdminPatchConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchConfigV1OK, *AdminPatchConfigV1Unauthorized, *AdminPatchConfigV1Forbidden, *AdminPatchConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPatchConfigV1Params()
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
		ID:                 "adminPatchConfigV1",
		Method:             "PATCH",
		PathPattern:        "/match2/v1/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPatchConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPatchConfigV1OK:
		return v, nil, nil, nil, nil

	case *AdminPatchConfigV1Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminPatchConfigV1Forbidden:
		return nil, nil, v, nil, nil

	case *AdminPatchConfigV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPatchConfigV1Short admin patch update namespace config
Patch update matchmaking config of a namespaces. Partially update matchmaking config, will only update value that defined on the request.
*/
func (a *Client) AdminPatchConfigV1Short(params *AdminPatchConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPatchConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPatchConfigV1",
		Method:             "PATCH",
		PathPattern:        "/match2/v1/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPatchConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPatchConfigV1OK:
		return v, nil
	case *AdminPatchConfigV1Unauthorized:
		return nil, v
	case *AdminPatchConfigV1Forbidden:
		return nil, v
	case *AdminPatchConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
