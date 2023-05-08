// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package session_platform

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new session platform API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for session platform API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RegisterXblSessions(params *RegisterXblSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterXblSessionsOK, *RegisterXblSessionsBadRequest, error)
	RegisterXblSessionsShort(params *RegisterXblSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterXblSessionsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RegisterXblSessionsShort instead.

RegisterXblSessions register/update a session
This API is used to register/update a session on xbox.

Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:USER:{userId}:INTEGRATION, action=4 (UPDATE)
*/
func (a *Client) RegisterXblSessions(params *RegisterXblSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterXblSessionsOK, *RegisterXblSessionsBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRegisterXblSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "registerXblSessions",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/session/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RegisterXblSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RegisterXblSessionsOK:
		return v, nil, nil

	case *RegisterXblSessionsBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RegisterXblSessionsShort register/update a session
This API is used to register/update a session on xbox.

Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:USER:{userId}:INTEGRATION, action=4 (UPDATE)
*/
func (a *Client) RegisterXblSessionsShort(params *RegisterXblSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterXblSessionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRegisterXblSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "registerXblSessions",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/session/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RegisterXblSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RegisterXblSessionsOK:
		return v, nil
	case *RegisterXblSessionsBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
