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
	PublicListTagsHandlerV1(params *PublicListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsHandlerV1OK, *PublicListTagsHandlerV1BadRequest, *PublicListTagsHandlerV1Unauthorized, *PublicListTagsHandlerV1Forbidden, *PublicListTagsHandlerV1InternalServerError, error)
	PublicListTagsHandlerV1Short(params *PublicListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsHandlerV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use PublicListTagsHandlerV1Short instead.

PublicListTagsHandlerV1 list tags
## Description

Retrieve list of available tags by namespace
*/
func (a *Client) PublicListTagsHandlerV1(params *PublicListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsHandlerV1OK, *PublicListTagsHandlerV1BadRequest, *PublicListTagsHandlerV1Unauthorized, *PublicListTagsHandlerV1Forbidden, *PublicListTagsHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListTagsHandlerV1Params()
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
		ID:                 "publicListTagsHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListTagsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListTagsHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *PublicListTagsHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicListTagsHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicListTagsHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicListTagsHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListTagsHandlerV1Short list tags
## Description

Retrieve list of available tags by namespace
*/
func (a *Client) PublicListTagsHandlerV1Short(params *PublicListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListTagsHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListTagsHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListTagsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListTagsHandlerV1OK:
		return v, nil
	case *PublicListTagsHandlerV1BadRequest:
		return nil, v
	case *PublicListTagsHandlerV1Unauthorized:
		return nil, v
	case *PublicListTagsHandlerV1Forbidden:
		return nil, v
	case *PublicListTagsHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
