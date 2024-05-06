// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package clawback

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new clawback API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for clawback API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryIAPClawbackHistory(params *QueryIAPClawbackHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryIAPClawbackHistoryOK, error)
	QueryIAPClawbackHistoryShort(params *QueryIAPClawbackHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryIAPClawbackHistoryOK, error)
	MockPlayStationStreamEvent(params *MockPlayStationStreamEventParams, authInfo runtime.ClientAuthInfoWriter) (*MockPlayStationStreamEventOK, error)
	MockPlayStationStreamEventShort(params *MockPlayStationStreamEventParams, authInfo runtime.ClientAuthInfoWriter) (*MockPlayStationStreamEventOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryIAPClawbackHistoryShort instead.

QueryIAPClawbackHistory query clawback history
Query clawback history.
Other detail info:

  * Returns : paginated clawback history
*/
func (a *Client) QueryIAPClawbackHistory(params *QueryIAPClawbackHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryIAPClawbackHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryIAPClawbackHistoryParams()
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
		ID:                 "queryIAPClawbackHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/clawback/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryIAPClawbackHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryIAPClawbackHistoryOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryIAPClawbackHistoryShort query clawback history
Query clawback history.
Other detail info:

  * Returns : paginated clawback history
*/
func (a *Client) QueryIAPClawbackHistoryShort(params *QueryIAPClawbackHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryIAPClawbackHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryIAPClawbackHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryIAPClawbackHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/clawback/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryIAPClawbackHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryIAPClawbackHistoryOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use MockPlayStationStreamEventShort instead.

MockPlayStationStreamEvent mock sync playstation clawback event.
Mock Sync PlayStation Clawback event..
*/
func (a *Client) MockPlayStationStreamEvent(params *MockPlayStationStreamEventParams, authInfo runtime.ClientAuthInfoWriter) (*MockPlayStationStreamEventOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMockPlayStationStreamEventParams()
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
		ID:                 "mockPlayStationStreamEvent",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/clawback/playstation/mock",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MockPlayStationStreamEventReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MockPlayStationStreamEventOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MockPlayStationStreamEventShort mock sync playstation clawback event.
Mock Sync PlayStation Clawback event..
*/
func (a *Client) MockPlayStationStreamEventShort(params *MockPlayStationStreamEventParams, authInfo runtime.ClientAuthInfoWriter) (*MockPlayStationStreamEventOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMockPlayStationStreamEventParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "mockPlayStationStreamEvent",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/clawback/playstation/mock",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MockPlayStationStreamEventReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MockPlayStationStreamEventOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
