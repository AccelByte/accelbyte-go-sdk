// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package utilities

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new utilities API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for utilities API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetItemReferences(params *GetItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemReferencesOK, *GetItemReferencesBadRequest, error)
	GetItemReferencesShort(params *GetItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemReferencesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetItemReferencesShort instead.

GetItemReferences get season pass ecommerce item references
This API is used to get season pass ecommerce item references.

Other detail info:

  * Returns : item references data
*/
func (a *Client) GetItemReferences(params *GetItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemReferencesOK, *GetItemReferencesBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemReferencesParams()
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
		ID:                 "getItemReferences",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/item/references",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemReferencesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetItemReferencesOK:
		return v, nil, nil

	case *GetItemReferencesBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemReferencesShort get season pass ecommerce item references
This API is used to get season pass ecommerce item references.

Other detail info:

  * Returns : item references data
*/
func (a *Client) GetItemReferencesShort(params *GetItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemReferencesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemReferencesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItemReferences",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/item/references",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemReferencesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemReferencesOK:
		return v, nil
	case *GetItemReferencesBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
