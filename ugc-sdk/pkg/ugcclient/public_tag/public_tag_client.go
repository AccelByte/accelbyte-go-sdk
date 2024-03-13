// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package public_tag

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public tag API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public tag API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetTag(params *GetTagParams, authInfo runtime.ClientAuthInfoWriter) (*GetTagOK, *GetTagBadRequest, *GetTagUnauthorized, *GetTagInternalServerError, error)
	GetTagShort(params *GetTagParams, authInfo runtime.ClientAuthInfoWriter) (*GetTagOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetTagShort instead.

GetTag get tags
Get available tags paginated
*/
func (a *Client) GetTag(params *GetTagParams, authInfo runtime.ClientAuthInfoWriter) (*GetTagOK, *GetTagBadRequest, *GetTagUnauthorized, *GetTagInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTagParams()
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
		ID:                 "GetTag",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetTagOK:
		return v, nil, nil, nil, nil

	case *GetTagBadRequest:
		return nil, v, nil, nil, nil

	case *GetTagUnauthorized:
		return nil, nil, v, nil, nil

	case *GetTagInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTagShort get tags
Get available tags paginated
*/
func (a *Client) GetTagShort(params *GetTagParams, authInfo runtime.ClientAuthInfoWriter) (*GetTagOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTagParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetTag",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTagOK:
		return v, nil
	case *GetTagBadRequest:
		return nil, v
	case *GetTagUnauthorized:
		return nil, v
	case *GetTagInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
