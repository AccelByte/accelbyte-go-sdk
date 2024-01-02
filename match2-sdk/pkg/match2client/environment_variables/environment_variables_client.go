// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package environment_variables

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new environment variables API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for environment variables API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	EnvironmentVariableList(params *EnvironmentVariableListParams, authInfo runtime.ClientAuthInfoWriter) (*EnvironmentVariableListOK, *EnvironmentVariableListUnauthorized, *EnvironmentVariableListForbidden, error)
	EnvironmentVariableListShort(params *EnvironmentVariableListParams, authInfo runtime.ClientAuthInfoWriter) (*EnvironmentVariableListOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use EnvironmentVariableListShort instead.

EnvironmentVariableList list environment variables
List environment variables.
*/
func (a *Client) EnvironmentVariableList(params *EnvironmentVariableListParams, authInfo runtime.ClientAuthInfoWriter) (*EnvironmentVariableListOK, *EnvironmentVariableListUnauthorized, *EnvironmentVariableListForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnvironmentVariableListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "EnvironmentVariableList",
		Method:             "GET",
		PathPattern:        "/match2/v1/environment-variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnvironmentVariableListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *EnvironmentVariableListOK:
		return v, nil, nil, nil

	case *EnvironmentVariableListUnauthorized:
		return nil, v, nil, nil

	case *EnvironmentVariableListForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnvironmentVariableListShort list environment variables
List environment variables.
*/
func (a *Client) EnvironmentVariableListShort(params *EnvironmentVariableListParams, authInfo runtime.ClientAuthInfoWriter) (*EnvironmentVariableListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnvironmentVariableListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "EnvironmentVariableList",
		Method:             "GET",
		PathPattern:        "/match2/v1/environment-variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnvironmentVariableListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnvironmentVariableListOK:
		return v, nil
	case *EnvironmentVariableListUnauthorized:
		return nil, v
	case *EnvironmentVariableListForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
