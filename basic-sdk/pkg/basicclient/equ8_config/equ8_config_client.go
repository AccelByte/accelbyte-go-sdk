// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package equ8_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new equ8 config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for equ8 config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetConfig(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigOK, *GetConfigNotFound, *GetConfigInternalServerError, error)
	GetConfigShort(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigOK, error)
	DeleteConfig(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigNoContent, error)
	DeleteConfigShort(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigNoContent, error)
	UpdateConfig(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigOK, *UpdateConfigBadRequest, *UpdateConfigInternalServerError, error)
	UpdateConfigShort(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetConfigShort instead.

GetConfig get equ8 config
Get equ8 config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=2 (READ)
*/
func (a *Client) GetConfig(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigOK, *GetConfigNotFound, *GetConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetConfigParams()
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
		ID:                 "getConfig",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/equ8/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetConfigOK:
		return v, nil, nil, nil

	case *GetConfigNotFound:
		return nil, v, nil, nil

	case *GetConfigInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetConfigShort get equ8 config
Get equ8 config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=2 (READ)
*/
func (a *Client) GetConfigShort(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getConfig",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/equ8/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetConfigOK:
		return v, nil
	case *GetConfigNotFound:
		return nil, v
	case *GetConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteConfigShort instead.

DeleteConfig delete equ8 config
Delete equ8 config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=8 (DELETE)
*/
func (a *Client) DeleteConfig(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteConfigParams()
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
		ID:                 "deleteConfig",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/equ8/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteConfigShort delete equ8 config
Delete equ8 config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=8 (DELETE)
*/
func (a *Client) DeleteConfigShort(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteConfig",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/equ8/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateConfigShort instead.

UpdateConfig create or update equ8 config
Update equ8 config, create if not exists.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=4 (UPDATE)
*/
func (a *Client) UpdateConfig(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigOK, *UpdateConfigBadRequest, *UpdateConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateConfigParams()
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
		ID:                 "updateConfig",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/equ8/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateConfigOK:
		return v, nil, nil, nil

	case *UpdateConfigBadRequest:
		return nil, v, nil, nil

	case *UpdateConfigInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateConfigShort create or update equ8 config
Update equ8 config, create if not exists.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=4 (UPDATE)
*/
func (a *Client) UpdateConfigShort(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateConfig",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/equ8/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateConfigOK:
		return v, nil
	case *UpdateConfigBadRequest:
		return nil, v
	case *UpdateConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
