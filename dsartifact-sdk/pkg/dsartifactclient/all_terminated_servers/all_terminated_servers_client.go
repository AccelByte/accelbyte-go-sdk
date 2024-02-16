// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package all_terminated_servers

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new all terminated servers API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for all terminated servers API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListTerminatedServers(params *ListTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersOK, *ListTerminatedServersBadRequest, *ListTerminatedServersUnauthorized, *ListTerminatedServersInternalServerError, error)
	ListTerminatedServersShort(params *ListTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListTerminatedServersShort instead.

ListTerminatedServers retrieve all terminated servers
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:SERVER [READ]

This endpoint used to retrieve terminated servers in all namespace
```
*/
func (a *Client) ListTerminatedServers(params *ListTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersOK, *ListTerminatedServersBadRequest, *ListTerminatedServersUnauthorized, *ListTerminatedServersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListTerminatedServersParams()
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
		ID:                 "listTerminatedServers",
		Method:             "GET",
		PathPattern:        "/dsartifact/servers/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListTerminatedServersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListTerminatedServersOK:
		return v, nil, nil, nil, nil

	case *ListTerminatedServersBadRequest:
		return nil, v, nil, nil, nil

	case *ListTerminatedServersUnauthorized:
		return nil, nil, v, nil, nil

	case *ListTerminatedServersInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListTerminatedServersShort retrieve all terminated servers
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:SERVER [READ]

This endpoint used to retrieve terminated servers in all namespace
```
*/
func (a *Client) ListTerminatedServersShort(params *ListTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListTerminatedServersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listTerminatedServers",
		Method:             "GET",
		PathPattern:        "/dsartifact/servers/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListTerminatedServersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListTerminatedServersOK:
		return v, nil
	case *ListTerminatedServersBadRequest:
		return nil, v
	case *ListTerminatedServersUnauthorized:
		return nil, v
	case *ListTerminatedServersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
