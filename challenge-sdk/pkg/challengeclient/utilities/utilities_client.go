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
	AdminGetItemReferences(params *AdminGetItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetItemReferencesOK, *AdminGetItemReferencesBadRequest, *AdminGetItemReferencesUnauthorized, *AdminGetItemReferencesForbidden, *AdminGetItemReferencesInternalServerError, error)
	AdminGetItemReferencesShort(params *AdminGetItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetItemReferencesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetItemReferencesShort instead.

AdminGetItemReferences get challenge ecommerce item references
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetItemReferences(params *AdminGetItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetItemReferencesOK, *AdminGetItemReferencesBadRequest, *AdminGetItemReferencesUnauthorized, *AdminGetItemReferencesForbidden, *AdminGetItemReferencesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetItemReferencesParams()
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
		ID:                 "adminGetItemReferences",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/item/references",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetItemReferencesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetItemReferencesOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetItemReferencesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetItemReferencesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetItemReferencesForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetItemReferencesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetItemReferencesShort get challenge ecommerce item references
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetItemReferencesShort(params *AdminGetItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetItemReferencesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetItemReferencesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetItemReferences",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/item/references",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetItemReferencesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetItemReferencesOK:
		return v, nil
	case *AdminGetItemReferencesBadRequest:
		return nil, v
	case *AdminGetItemReferencesUnauthorized:
		return nil, v
	case *AdminGetItemReferencesForbidden:
		return nil, v
	case *AdminGetItemReferencesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
