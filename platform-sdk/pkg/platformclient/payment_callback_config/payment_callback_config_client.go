// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package payment_callback_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new payment callback config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for payment callback config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetPaymentCallbackConfig(params *GetPaymentCallbackConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentCallbackConfigOK, *GetPaymentCallbackConfigNotFound, error)
	GetPaymentCallbackConfigShort(params *GetPaymentCallbackConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentCallbackConfigOK, error)
	UpdatePaymentCallbackConfig(params *UpdatePaymentCallbackConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentCallbackConfigOK, error)
	UpdatePaymentCallbackConfigShort(params *UpdatePaymentCallbackConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentCallbackConfigOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetPaymentCallbackConfigShort instead.

GetPaymentCallbackConfig get payment callback configuration


### The endpoint is going to be deprecated

[Not supported yet in AGS Shared Cloud] Get payment callback configuration.
Other detail info:
                          * Returns : Payment callback config
*/
func (a *Client) GetPaymentCallbackConfig(params *GetPaymentCallbackConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentCallbackConfigOK, *GetPaymentCallbackConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentCallbackConfigParams()
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
		ID:                 "getPaymentCallbackConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/config/callback",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentCallbackConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetPaymentCallbackConfigOK:
		return v, nil, nil

	case *GetPaymentCallbackConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentCallbackConfigShort get payment callback configuration


### The endpoint is going to be deprecated

[Not supported yet in AGS Shared Cloud] Get payment callback configuration.
Other detail info:
                          * Returns : Payment callback config
*/
func (a *Client) GetPaymentCallbackConfigShort(params *GetPaymentCallbackConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentCallbackConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentCallbackConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentCallbackConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/config/callback",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentCallbackConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentCallbackConfigOK:
		return v, nil
	case *GetPaymentCallbackConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePaymentCallbackConfigShort instead.

UpdatePaymentCallbackConfig update payment callback configuration


### The endpoint is going to be deprecated

[Not supported yet in AGS Shared Cloud] Update payment callback configuration.
Other detail info:
                          * Returns : Payment callback config
*/
func (a *Client) UpdatePaymentCallbackConfig(params *UpdatePaymentCallbackConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentCallbackConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePaymentCallbackConfigParams()
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
		ID:                 "updatePaymentCallbackConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/config/callback",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePaymentCallbackConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePaymentCallbackConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePaymentCallbackConfigShort update payment callback configuration


### The endpoint is going to be deprecated

[Not supported yet in AGS Shared Cloud] Update payment callback configuration.
Other detail info:
                          * Returns : Payment callback config
*/
func (a *Client) UpdatePaymentCallbackConfigShort(params *UpdatePaymentCallbackConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentCallbackConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePaymentCallbackConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePaymentCallbackConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/config/callback",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePaymentCallbackConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePaymentCallbackConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
