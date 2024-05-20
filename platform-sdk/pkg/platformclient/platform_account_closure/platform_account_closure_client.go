// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package platform_account_closure

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new platform account closure API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for platform account closure API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserPlatformAccountClosureHistories(params *GetUserPlatformAccountClosureHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountClosureHistoriesOK, error)
	GetUserPlatformAccountClosureHistoriesShort(params *GetUserPlatformAccountClosureHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountClosureHistoriesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetUserPlatformAccountClosureHistoriesShort instead.

GetUserPlatformAccountClosureHistories get user platform account closure history
Get user platform account closure history.
*/
func (a *Client) GetUserPlatformAccountClosureHistories(params *GetUserPlatformAccountClosureHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountClosureHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserPlatformAccountClosureHistoriesParams()
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
		ID:                 "getUserPlatformAccountClosureHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/platform/closure/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserPlatformAccountClosureHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserPlatformAccountClosureHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserPlatformAccountClosureHistoriesShort get user platform account closure history
Get user platform account closure history.
*/
func (a *Client) GetUserPlatformAccountClosureHistoriesShort(params *GetUserPlatformAccountClosureHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountClosureHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserPlatformAccountClosureHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserPlatformAccountClosureHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/platform/closure/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserPlatformAccountClosureHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserPlatformAccountClosureHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
