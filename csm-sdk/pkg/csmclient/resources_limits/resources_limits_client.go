// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package resources_limits

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new resources limits API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for resources limits API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetResourcesLimits(params *GetResourcesLimitsParams, authInfo runtime.ClientAuthInfoWriter) (*GetResourcesLimitsOK, *GetResourcesLimitsUnauthorized, *GetResourcesLimitsPaymentRequired, *GetResourcesLimitsForbidden, *GetResourcesLimitsInternalServerError, error)
	GetResourcesLimitsShort(params *GetResourcesLimitsParams, authInfo runtime.ClientAuthInfoWriter) (*GetResourcesLimitsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetResourcesLimitsShort instead.

GetResourcesLimits get extend apps configurable limits e.g. any kind of limits for front end validation use
This endpoint return the Extend Apps Configurable Limits for front end to use for initial validation before app creation
e.g.
Replica Limit will be used to check max replica that can be created for the said environment by default
CPU Limit will be used to validate max allowed CPU for the extend app that hasn't been created
Memory Limit will be used to validate max allowed Memory for the extend app that hasn't been created
MaxAppNotificationSubscription will be used to validate the maximum number of subscriber for an app status notification
*/
func (a *Client) GetResourcesLimits(params *GetResourcesLimitsParams, authInfo runtime.ClientAuthInfoWriter) (*GetResourcesLimitsOK, *GetResourcesLimitsUnauthorized, *GetResourcesLimitsPaymentRequired, *GetResourcesLimitsForbidden, *GetResourcesLimitsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetResourcesLimitsParams()
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
		ID:                 "GetResourcesLimits",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/resources/limits",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetResourcesLimitsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetResourcesLimitsOK:
		return v, nil, nil, nil, nil, nil

	case *GetResourcesLimitsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetResourcesLimitsPaymentRequired:
		return nil, nil, v, nil, nil, nil

	case *GetResourcesLimitsForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetResourcesLimitsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetResourcesLimitsShort get extend apps configurable limits e.g. any kind of limits for front end validation use
This endpoint return the Extend Apps Configurable Limits for front end to use for initial validation before app creation
e.g.
Replica Limit will be used to check max replica that can be created for the said environment by default
CPU Limit will be used to validate max allowed CPU for the extend app that hasn't been created
Memory Limit will be used to validate max allowed Memory for the extend app that hasn't been created
MaxAppNotificationSubscription will be used to validate the maximum number of subscriber for an app status notification
*/
func (a *Client) GetResourcesLimitsShort(params *GetResourcesLimitsParams, authInfo runtime.ClientAuthInfoWriter) (*GetResourcesLimitsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetResourcesLimitsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetResourcesLimits",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/resources/limits",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetResourcesLimitsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetResourcesLimitsOK:
		return v, nil
	case *GetResourcesLimitsUnauthorized:
		return nil, v
	case *GetResourcesLimitsPaymentRequired:
		return nil, v
	case *GetResourcesLimitsForbidden:
		return nil, v
	case *GetResourcesLimitsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
