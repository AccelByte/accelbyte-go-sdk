// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package recent_player

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new recent player API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for recent player API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicGetRecentPlayer(params *PublicGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentPlayerOK, *PublicGetRecentPlayerBadRequest, *PublicGetRecentPlayerUnauthorized, *PublicGetRecentPlayerNotFound, *PublicGetRecentPlayerInternalServerError, error)
	PublicGetRecentPlayerShort(params *PublicGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentPlayerOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use PublicGetRecentPlayerShort instead.

PublicGetRecentPlayer query recent player with given user id. requires namespace:{namespace}:session:player [read]
Query recent player with given user id.
*/
func (a *Client) PublicGetRecentPlayer(params *PublicGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentPlayerOK, *PublicGetRecentPlayerBadRequest, *PublicGetRecentPlayerUnauthorized, *PublicGetRecentPlayerNotFound, *PublicGetRecentPlayerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRecentPlayerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetRecentPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/recent-player/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRecentPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetRecentPlayerOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetRecentPlayerBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetRecentPlayerUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetRecentPlayerNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGetRecentPlayerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetRecentPlayerShort query recent player with given user id. requires namespace:{namespace}:session:player [read]
Query recent player with given user id.
*/
func (a *Client) PublicGetRecentPlayerShort(params *PublicGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentPlayerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRecentPlayerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetRecentPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/recent-player/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRecentPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRecentPlayerOK:
		return v, nil
	case *PublicGetRecentPlayerBadRequest:
		return nil, v
	case *PublicGetRecentPlayerUnauthorized:
		return nil, v
	case *PublicGetRecentPlayerNotFound:
		return nil, v
	case *PublicGetRecentPlayerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
