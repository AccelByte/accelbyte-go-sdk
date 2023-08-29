// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package public_inventories

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public inventories API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public inventories API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicListInventories(params *PublicListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListInventoriesOK, *PublicListInventoriesBadRequest, *PublicListInventoriesInternalServerError, error)
	PublicListInventoriesShort(params *PublicListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListInventoriesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use PublicListInventoriesShort instead.

PublicListInventories to list all my inventories

Listing all my inventories in a namespace.
The response body will be in the form of standard pagination.
*/
func (a *Client) PublicListInventories(params *PublicListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListInventoriesOK, *PublicListInventoriesBadRequest, *PublicListInventoriesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListInventoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListInventories",
		Method:             "GET",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/users/me/inventories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListInventoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListInventoriesOK:
		return v, nil, nil, nil

	case *PublicListInventoriesBadRequest:
		return nil, v, nil, nil

	case *PublicListInventoriesInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListInventoriesShort to list all my inventories

Listing all my inventories in a namespace.
The response body will be in the form of standard pagination.
*/
func (a *Client) PublicListInventoriesShort(params *PublicListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListInventoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListInventoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListInventories",
		Method:             "GET",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/users/me/inventories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListInventoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListInventoriesOK:
		return v, nil
	case *PublicListInventoriesBadRequest:
		return nil, v
	case *PublicListInventoriesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
