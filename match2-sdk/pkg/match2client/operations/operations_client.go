// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package operations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new operations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for operations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetHealthcheckInfo(params *GetHealthcheckInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetHealthcheckInfoOK, error)
	GetHealthcheckInfoShort(params *GetHealthcheckInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetHealthcheckInfoOK, error)
	GetHealthcheckInfoV1(params *GetHealthcheckInfoV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetHealthcheckInfoV1OK, error)
	GetHealthcheckInfoV1Short(params *GetHealthcheckInfoV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetHealthcheckInfoV1OK, error)
	VersionCheckHandler(params *VersionCheckHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*VersionCheckHandlerOK, error)
	VersionCheckHandlerShort(params *VersionCheckHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*VersionCheckHandlerOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetHealthcheckInfoShort instead.

GetHealthcheckInfo
*/
func (a *Client) GetHealthcheckInfo(params *GetHealthcheckInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetHealthcheckInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetHealthcheckInfoParams()
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
		ID:                 "GetHealthcheckInfo",
		Method:             "GET",
		PathPattern:        "/healthz",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetHealthcheckInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetHealthcheckInfoOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetHealthcheckInfoShort
*/
func (a *Client) GetHealthcheckInfoShort(params *GetHealthcheckInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetHealthcheckInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetHealthcheckInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetHealthcheckInfo",
		Method:             "GET",
		PathPattern:        "/healthz",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetHealthcheckInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetHealthcheckInfoOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetHealthcheckInfoV1Short instead.

GetHealthcheckInfoV1
*/
func (a *Client) GetHealthcheckInfoV1(params *GetHealthcheckInfoV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetHealthcheckInfoV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetHealthcheckInfoV1Params()
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
		ID:                 "GetHealthcheckInfoV1",
		Method:             "GET",
		PathPattern:        "/match2/healthz",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetHealthcheckInfoV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetHealthcheckInfoV1OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetHealthcheckInfoV1Short
*/
func (a *Client) GetHealthcheckInfoV1Short(params *GetHealthcheckInfoV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetHealthcheckInfoV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetHealthcheckInfoV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetHealthcheckInfoV1",
		Method:             "GET",
		PathPattern:        "/match2/healthz",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetHealthcheckInfoV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetHealthcheckInfoV1OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use VersionCheckHandlerShort instead.

VersionCheckHandler
*/
func (a *Client) VersionCheckHandler(params *VersionCheckHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*VersionCheckHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVersionCheckHandlerParams()
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
		ID:                 "versionCheckHandler",
		Method:             "GET",
		PathPattern:        "/match2/version",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &VersionCheckHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *VersionCheckHandlerOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
VersionCheckHandlerShort
*/
func (a *Client) VersionCheckHandlerShort(params *VersionCheckHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*VersionCheckHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVersionCheckHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "versionCheckHandler",
		Method:             "GET",
		PathPattern:        "/match2/version",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &VersionCheckHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *VersionCheckHandlerOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
