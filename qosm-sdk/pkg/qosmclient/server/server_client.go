// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package server

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new server API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for server API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	Heartbeat(params *HeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*HeartbeatNoContent, *HeartbeatBadRequest, *HeartbeatInternalServerError, error)
	HeartbeatShort(params *HeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*HeartbeatNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use HeartbeatShort instead.

Heartbeat send heartbeat
```
Required permission: QOS:SERVER [CREATE][UPDATE]
Required scope: social

This endpoint is intended to be called by QoS service
to register and periodically let QoS Manager know that it is still alive.
```
*/
func (a *Client) Heartbeat(params *HeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*HeartbeatNoContent, *HeartbeatBadRequest, *HeartbeatInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHeartbeatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Heartbeat",
		Method:             "POST",
		PathPattern:        "/qosm/servers/heartbeat",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HeartbeatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *HeartbeatNoContent:
		return v, nil, nil, nil

	case *HeartbeatBadRequest:
		return nil, v, nil, nil

	case *HeartbeatInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
HeartbeatShort send heartbeat
```
Required permission: QOS:SERVER [CREATE][UPDATE]
Required scope: social

This endpoint is intended to be called by QoS service
to register and periodically let QoS Manager know that it is still alive.
```
*/
func (a *Client) HeartbeatShort(params *HeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*HeartbeatNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHeartbeatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Heartbeat",
		Method:             "POST",
		PathPattern:        "/qosm/servers/heartbeat",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HeartbeatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *HeartbeatNoContent:
		return v, nil
	case *HeartbeatBadRequest:
		return nil, v
	case *HeartbeatInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
