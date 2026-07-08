// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package app_status_progress_v4

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new app status progress v4 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for app status progress v4 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAppStatusProgressV4(params *GetAppStatusProgressV4Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppStatusProgressV4OK, *GetAppStatusProgressV4Unauthorized, *GetAppStatusProgressV4Forbidden, *GetAppStatusProgressV4NotFound, *GetAppStatusProgressV4InternalServerError, error)
	GetAppStatusProgressV4Short(params *GetAppStatusProgressV4Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppStatusProgressV4OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetAppStatusProgressV4Short instead.

GetAppStatusProgressV4 get in-progress long-running operation steps for the extend app (stepper)
Returns step rows for the current or last tracked operation.
*/
func (a *Client) GetAppStatusProgressV4(params *GetAppStatusProgressV4Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppStatusProgressV4OK, *GetAppStatusProgressV4Unauthorized, *GetAppStatusProgressV4Forbidden, *GetAppStatusProgressV4NotFound, *GetAppStatusProgressV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppStatusProgressV4Params()
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
		ID:                 "GetAppStatusProgressV4",
		Method:             "GET",
		PathPattern:        "/csm/v4/admin/namespaces/{namespace}/apps/{app}/status-progress",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppStatusProgressV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAppStatusProgressV4OK:
		return v, nil, nil, nil, nil, nil

	case *GetAppStatusProgressV4Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetAppStatusProgressV4Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetAppStatusProgressV4NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetAppStatusProgressV4InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppStatusProgressV4Short get in-progress long-running operation steps for the extend app (stepper)
Returns step rows for the current or last tracked operation.
*/
func (a *Client) GetAppStatusProgressV4Short(params *GetAppStatusProgressV4Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppStatusProgressV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppStatusProgressV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAppStatusProgressV4",
		Method:             "GET",
		PathPattern:        "/csm/v4/admin/namespaces/{namespace}/apps/{app}/status-progress",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppStatusProgressV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppStatusProgressV4OK:
		return v, nil
	case *GetAppStatusProgressV4Unauthorized:
		return nil, v
	case *GetAppStatusProgressV4Forbidden:
		return nil, v
	case *GetAppStatusProgressV4NotFound:
		return nil, v
	case *GetAppStatusProgressV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
