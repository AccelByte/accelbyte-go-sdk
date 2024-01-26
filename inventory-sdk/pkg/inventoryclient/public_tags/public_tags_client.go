// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package public_tags

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public tags API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public tags API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicListTags(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsOK, *PublicListTagsBadRequest, *PublicListTagsInternalServerError, error)
	PublicListTagsShort(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use PublicListTagsShort instead.

PublicListTags to list tags

This endpoint will list all tags in a namespace.
The response body will be in the form of standard pagination.
*/
func (a *Client) PublicListTags(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsOK, *PublicListTagsBadRequest, *PublicListTagsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListTagsParams()
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
		ID:                 "PublicListTags",
		Method:             "GET",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListTagsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListTagsOK:
		return v, nil, nil, nil

	case *PublicListTagsBadRequest:
		return nil, v, nil, nil

	case *PublicListTagsInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListTagsShort to list tags

This endpoint will list all tags in a namespace.
The response body will be in the form of standard pagination.
*/
func (a *Client) PublicListTagsShort(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListTagsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListTags",
		Method:             "GET",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListTagsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListTagsOK:
		return v, nil
	case *PublicListTagsBadRequest:
		return nil, v
	case *PublicListTagsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
