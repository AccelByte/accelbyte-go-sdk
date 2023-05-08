// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package user_statistic_cycle

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user statistic cycle API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user statistic cycle API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserStatCycleItems(params *GetUserStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItemsOK, *GetUserStatCycleItemsNotFound, error)
	GetUserStatCycleItemsShort(params *GetUserStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItemsOK, error)
	GetUserStatCycleItems1(params *GetUserStatCycleItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItems1OK, *GetUserStatCycleItems1NotFound, error)
	GetUserStatCycleItems1Short(params *GetUserStatCycleItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItems1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetUserStatCycleItemsShort instead.

GetUserStatCycleItems list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
                          *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
                          *  Returns : stat cycle items
*/
func (a *Client) GetUserStatCycleItems(params *GetUserStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItemsOK, *GetUserStatCycleItemsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatCycleItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserStatCycleItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatCycleItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserStatCycleItemsOK:
		return v, nil, nil

	case *GetUserStatCycleItemsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserStatCycleItemsShort list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
                          *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
                          *  Returns : stat cycle items
*/
func (a *Client) GetUserStatCycleItemsShort(params *GetUserStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatCycleItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserStatCycleItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatCycleItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserStatCycleItemsOK:
		return v, nil
	case *GetUserStatCycleItemsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserStatCycleItems1Short instead.

GetUserStatCycleItems1 list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
                          *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
                          *  Returns : stat cycle items
*/
func (a *Client) GetUserStatCycleItems1(params *GetUserStatCycleItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItems1OK, *GetUserStatCycleItems1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatCycleItems1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserStatCycleItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatCycleItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserStatCycleItems1OK:
		return v, nil, nil

	case *GetUserStatCycleItems1NotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserStatCycleItems1Short list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
                          *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
                          *  Returns : stat cycle items
*/
func (a *Client) GetUserStatCycleItems1Short(params *GetUserStatCycleItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItems1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatCycleItems1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserStatCycleItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatCycleItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserStatCycleItems1OK:
		return v, nil
	case *GetUserStatCycleItems1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
