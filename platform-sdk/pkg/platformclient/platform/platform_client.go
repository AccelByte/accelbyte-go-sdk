// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package platform

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new platform API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for platform API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetPsnEntitlementOwnership(params *GetPsnEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetPsnEntitlementOwnershipOK, error)
	GetPsnEntitlementOwnershipShort(params *GetPsnEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetPsnEntitlementOwnershipOK, error)
	GetXboxEntitlementOwnership(params *GetXboxEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetXboxEntitlementOwnershipOK, error)
	GetXboxEntitlementOwnershipShort(params *GetXboxEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetXboxEntitlementOwnershipOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetPsnEntitlementOwnershipShort instead.

GetPsnEntitlementOwnership get user psn entitlement ownership by entitlement label
Get user psn entitlement ownership by entitlement label.
*/
func (a *Client) GetPsnEntitlementOwnership(params *GetPsnEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetPsnEntitlementOwnershipOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPsnEntitlementOwnershipParams()
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
		ID:                 "getPsnEntitlementOwnership",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/psn/entitlements/{entitlementLabel}/ownership",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPsnEntitlementOwnershipReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPsnEntitlementOwnershipOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPsnEntitlementOwnershipShort get user psn entitlement ownership by entitlement label
Get user psn entitlement ownership by entitlement label.
*/
func (a *Client) GetPsnEntitlementOwnershipShort(params *GetPsnEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetPsnEntitlementOwnershipOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPsnEntitlementOwnershipParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPsnEntitlementOwnership",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/psn/entitlements/{entitlementLabel}/ownership",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPsnEntitlementOwnershipReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPsnEntitlementOwnershipOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetXboxEntitlementOwnershipShort instead.

GetXboxEntitlementOwnership get xbox entitlement ownership by product sku.
Get Xbox entitlement ownership by product sku.
*/
func (a *Client) GetXboxEntitlementOwnership(params *GetXboxEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetXboxEntitlementOwnershipOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetXboxEntitlementOwnershipParams()
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
		ID:                 "getXboxEntitlementOwnership",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/xbl/entitlements/{productSku}/ownership",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetXboxEntitlementOwnershipReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetXboxEntitlementOwnershipOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetXboxEntitlementOwnershipShort get xbox entitlement ownership by product sku.
Get Xbox entitlement ownership by product sku.
*/
func (a *Client) GetXboxEntitlementOwnershipShort(params *GetXboxEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetXboxEntitlementOwnershipOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetXboxEntitlementOwnershipParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getXboxEntitlementOwnership",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/xbl/entitlements/{productSku}/ownership",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetXboxEntitlementOwnershipReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetXboxEntitlementOwnershipOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
