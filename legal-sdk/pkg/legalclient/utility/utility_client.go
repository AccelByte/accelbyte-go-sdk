// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package utility

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new utility API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for utility API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CheckReadiness(params *CheckReadinessParams, authInfo runtime.ClientAuthInfoWriter) (*CheckReadinessOK, error)
	CheckReadinessShort(params *CheckReadinessParams, authInfo runtime.ClientAuthInfoWriter) (*CheckReadinessOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CheckReadinessShort instead.

CheckReadiness check legal data readiness
Readiness status defined as at least one legal basePolicy is present and having active basePolicy.
*/
func (a *Client) CheckReadiness(params *CheckReadinessParams, authInfo runtime.ClientAuthInfoWriter) (*CheckReadinessOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckReadinessParams()
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
		ID:                 "checkReadiness",
		Method:             "GET",
		PathPattern:        "/agreement/public/readiness",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckReadinessReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckReadinessOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckReadinessShort check legal data readiness
Readiness status defined as at least one legal basePolicy is present and having active basePolicy.
*/
func (a *Client) CheckReadinessShort(params *CheckReadinessParams, authInfo runtime.ClientAuthInfoWriter) (*CheckReadinessOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckReadinessParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "checkReadiness",
		Method:             "GET",
		PathPattern:        "/agreement/public/readiness",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckReadinessReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckReadinessOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
