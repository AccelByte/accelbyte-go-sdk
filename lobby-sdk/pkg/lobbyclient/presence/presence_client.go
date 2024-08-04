// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package presence

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new presence API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for presence API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	UsersPresenceHandlerV1(params *UsersPresenceHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV1OK, *UsersPresenceHandlerV1BadRequest, *UsersPresenceHandlerV1Unauthorized, *UsersPresenceHandlerV1InternalServerError, error)
	UsersPresenceHandlerV1Short(params *UsersPresenceHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV1OK, error)
	UsersPresenceHandlerV2(params *UsersPresenceHandlerV2Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV2OK, *UsersPresenceHandlerV2BadRequest, *UsersPresenceHandlerV2Unauthorized, *UsersPresenceHandlerV2InternalServerError, error)
	UsersPresenceHandlerV2Short(params *UsersPresenceHandlerV2Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use UsersPresenceHandlerV1Short instead.

UsersPresenceHandlerV1 query users presence
Query users presence with given namespace and userIds.
*/
func (a *Client) UsersPresenceHandlerV1(params *UsersPresenceHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV1OK, *UsersPresenceHandlerV1BadRequest, *UsersPresenceHandlerV1Unauthorized, *UsersPresenceHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUsersPresenceHandlerV1Params()
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
		ID:                 "UsersPresenceHandlerV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/presence/namespaces/{namespace}/users/presence",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UsersPresenceHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UsersPresenceHandlerV1OK:
		return v, nil, nil, nil, nil

	case *UsersPresenceHandlerV1BadRequest:
		return nil, v, nil, nil, nil

	case *UsersPresenceHandlerV1Unauthorized:
		return nil, nil, v, nil, nil

	case *UsersPresenceHandlerV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UsersPresenceHandlerV1Short query users presence
Query users presence with given namespace and userIds.
*/
func (a *Client) UsersPresenceHandlerV1Short(params *UsersPresenceHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUsersPresenceHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UsersPresenceHandlerV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/presence/namespaces/{namespace}/users/presence",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UsersPresenceHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UsersPresenceHandlerV1OK:
		return v, nil
	case *UsersPresenceHandlerV1BadRequest:
		return nil, v
	case *UsersPresenceHandlerV1Unauthorized:
		return nil, v
	case *UsersPresenceHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UsersPresenceHandlerV2Short instead.

UsersPresenceHandlerV2 query users presence
Query users presence with given namespace and userIds.
*/
func (a *Client) UsersPresenceHandlerV2(params *UsersPresenceHandlerV2Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV2OK, *UsersPresenceHandlerV2BadRequest, *UsersPresenceHandlerV2Unauthorized, *UsersPresenceHandlerV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUsersPresenceHandlerV2Params()
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
		ID:                 "UsersPresenceHandlerV2",
		Method:             "POST",
		PathPattern:        "/lobby/v1/public/presence/namespaces/{namespace}/users/presence",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UsersPresenceHandlerV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UsersPresenceHandlerV2OK:
		return v, nil, nil, nil, nil

	case *UsersPresenceHandlerV2BadRequest:
		return nil, v, nil, nil, nil

	case *UsersPresenceHandlerV2Unauthorized:
		return nil, nil, v, nil, nil

	case *UsersPresenceHandlerV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UsersPresenceHandlerV2Short query users presence
Query users presence with given namespace and userIds.
*/
func (a *Client) UsersPresenceHandlerV2Short(params *UsersPresenceHandlerV2Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUsersPresenceHandlerV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UsersPresenceHandlerV2",
		Method:             "POST",
		PathPattern:        "/lobby/v1/public/presence/namespaces/{namespace}/users/presence",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UsersPresenceHandlerV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UsersPresenceHandlerV2OK:
		return v, nil
	case *UsersPresenceHandlerV2BadRequest:
		return nil, v
	case *UsersPresenceHandlerV2Unauthorized:
		return nil, v
	case *UsersPresenceHandlerV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
