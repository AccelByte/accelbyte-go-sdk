// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package environment_variable

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new environment variable API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for environment variable API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListEnvironmentVariables(params *AdminListEnvironmentVariablesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListEnvironmentVariablesOK, *AdminListEnvironmentVariablesUnauthorized, *AdminListEnvironmentVariablesForbidden, error)
	AdminListEnvironmentVariablesShort(params *AdminListEnvironmentVariablesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListEnvironmentVariablesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminListEnvironmentVariablesShort instead.

AdminListEnvironmentVariables list of environment variables.
List of environment variables.
*/
func (a *Client) AdminListEnvironmentVariables(params *AdminListEnvironmentVariablesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListEnvironmentVariablesOK, *AdminListEnvironmentVariablesUnauthorized, *AdminListEnvironmentVariablesForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListEnvironmentVariablesParams()
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
		ID:                 "adminListEnvironmentVariables",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/environment-variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListEnvironmentVariablesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListEnvironmentVariablesOK:
		return v, nil, nil, nil

	case *AdminListEnvironmentVariablesUnauthorized:
		return nil, v, nil, nil

	case *AdminListEnvironmentVariablesForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListEnvironmentVariablesShort list of environment variables.
List of environment variables.
*/
func (a *Client) AdminListEnvironmentVariablesShort(params *AdminListEnvironmentVariablesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListEnvironmentVariablesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListEnvironmentVariablesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminListEnvironmentVariables",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/environment-variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListEnvironmentVariablesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListEnvironmentVariablesOK:
		return v, nil
	case *AdminListEnvironmentVariablesUnauthorized:
		return nil, v
	case *AdminListEnvironmentVariablesForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
