// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_configurations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin configurations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin configurations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	Get(params *GetParams, authInfo runtime.ClientAuthInfoWriter) (*GetOK, *GetInternalServerError, error)
	GetShort(params *GetParams, authInfo runtime.ClientAuthInfoWriter) (*GetOK, error)
	Upsert(params *UpsertParams, authInfo runtime.ClientAuthInfoWriter) (*UpsertOK, *UpsertBadRequest, *UpsertInternalServerError, error)
	UpsertShort(params *UpsertParams, authInfo runtime.ClientAuthInfoWriter) (*UpsertOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetShort instead.

Get get configuration
Required permission: ADMIN:NAMESPACE:{namespace}:REPORTINGCONFIG [READ]
TimeInterval is in nanoseconds.
When there's no configuration set, the response is the default value (configurable through envar).
*/
func (a *Client) Get(params *GetParams, authInfo runtime.ClientAuthInfoWriter) (*GetOK, *GetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Get",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetOK:
		return v, nil, nil

	case *GetInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetShort get configuration
Required permission: ADMIN:NAMESPACE:{namespace}:REPORTINGCONFIG [READ]
TimeInterval is in nanoseconds.
When there's no configuration set, the response is the default value (configurable through envar).
*/
func (a *Client) GetShort(params *GetParams, authInfo runtime.ClientAuthInfoWriter) (*GetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Get",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOK:
		return v, nil
	case *GetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpsertShort instead.

Upsert create/update configuration
Required permission: ADMIN:NAMESPACE:{namespace}:REPORTINGCONFIG [CREATE]
The behaviour of this endpoint is upsert based on the namespace.
So, you can use this for both creating & updating the configuration.
TimeInterval is in nanoseconds.
*/
func (a *Client) Upsert(params *UpsertParams, authInfo runtime.ClientAuthInfoWriter) (*UpsertOK, *UpsertBadRequest, *UpsertInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpsertParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Upsert",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpsertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpsertOK:
		return v, nil, nil, nil

	case *UpsertBadRequest:
		return nil, v, nil, nil

	case *UpsertInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpsertShort create/update configuration
Required permission: ADMIN:NAMESPACE:{namespace}:REPORTINGCONFIG [CREATE]
The behaviour of this endpoint is upsert based on the namespace.
So, you can use this for both creating & updating the configuration.
TimeInterval is in nanoseconds.
*/
func (a *Client) UpsertShort(params *UpsertParams, authInfo runtime.ClientAuthInfoWriter) (*UpsertOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpsertParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Upsert",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpsertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpsertOK:
		return v, nil
	case *UpsertBadRequest:
		return nil, v
	case *UpsertInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
