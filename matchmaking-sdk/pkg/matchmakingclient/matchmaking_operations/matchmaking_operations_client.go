// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package matchmaking_operations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new matchmaking operations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for matchmaking operations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetHealthcheckInfo(params *GetHealthcheckInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetHealthcheckInfoOK, error)
	GetHealthcheckInfoShort(params *GetHealthcheckInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetHealthcheckInfoOK, error)
	HandlerV3Healthz(params *HandlerV3HealthzParams, authInfo runtime.ClientAuthInfoWriter) (*HandlerV3HealthzOK, error)
	HandlerV3HealthzShort(params *HandlerV3HealthzParams, authInfo runtime.ClientAuthInfoWriter) (*HandlerV3HealthzOK, error)
	PublicGetMessages(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, *PublicGetMessagesInternalServerError, error)
	PublicGetMessagesShort(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, error)
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
Deprecated: 2022-08-10 - Use HandlerV3HealthzShort instead.

HandlerV3Healthz
*/
func (a *Client) HandlerV3Healthz(params *HandlerV3HealthzParams, authInfo runtime.ClientAuthInfoWriter) (*HandlerV3HealthzOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHandlerV3HealthzParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "handlerV3Healthz",
		Method:             "GET",
		PathPattern:        "/matchmaking/healthz",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HandlerV3HealthzReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *HandlerV3HealthzOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
HandlerV3HealthzShort
*/
func (a *Client) HandlerV3HealthzShort(params *HandlerV3HealthzParams, authInfo runtime.ClientAuthInfoWriter) (*HandlerV3HealthzOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHandlerV3HealthzParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "handlerV3Healthz",
		Method:             "GET",
		PathPattern:        "/matchmaking/healthz",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HandlerV3HealthzReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *HandlerV3HealthzOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMessagesShort instead.

PublicGetMessages get service messages
get the list of messages.
*/
func (a *Client) PublicGetMessages(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, *PublicGetMessagesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMessagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMessages",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMessagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetMessagesOK:
		return v, nil, nil

	case *PublicGetMessagesInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMessagesShort get service messages
get the list of messages.
*/
func (a *Client) PublicGetMessagesShort(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMessagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMessages",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMessagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMessagesOK:
		return v, nil
	case *PublicGetMessagesInternalServerError:
		return nil, v

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

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "versionCheckHandler",
		Method:             "GET",
		PathPattern:        "/matchmaking/version",
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
		PathPattern:        "/matchmaking/version",
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
