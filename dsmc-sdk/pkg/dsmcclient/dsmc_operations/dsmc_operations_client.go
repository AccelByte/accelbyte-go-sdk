// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package dsmc_operations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new dsmc operations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for dsmc operations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicGetMessages(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, *PublicGetMessagesInternalServerError, error)
	PublicGetMessagesShort(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use PublicGetMessagesShort instead.

PublicGetMessages get service messages
get the list of messages.
*/
func (a *Client) PublicGetMessages(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, *PublicGetMessagesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMessagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMessages",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/v1/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMessagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetMessagesOK:
		return v, nil, nil

	case *PublicGetMessagesInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMessagesShort get service messages
get the list of messages.
*/
func (a *Client) PublicGetMessagesShort(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMessagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMessages",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/v1/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMessagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMessagesOK:
		return v, nil
	case *PublicGetMessagesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
