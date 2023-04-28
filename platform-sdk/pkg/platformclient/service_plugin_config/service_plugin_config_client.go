// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package service_plugin_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new service plugin config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for service plugin config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetServicePluginConfig(params *GetServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetServicePluginConfigOK, error)
	GetServicePluginConfigShort(params *GetServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetServicePluginConfigOK, error)
	UpdateServicePluginConfig(params *UpdateServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServicePluginConfigOK, *UpdateServicePluginConfigUnprocessableEntity, error)
	UpdateServicePluginConfigShort(params *UpdateServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServicePluginConfigOK, error)
	DeleteServicePluginConfig(params *DeleteServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServicePluginConfigNoContent, error)
	DeleteServicePluginConfigShort(params *DeleteServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServicePluginConfigNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetServicePluginConfigShort instead.

GetServicePluginConfig get service plugin config
Get service plugin config.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN , action=2 (READ)
*/
func (a *Client) GetServicePluginConfig(params *GetServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetServicePluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServicePluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getServicePluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServicePluginConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetServicePluginConfigShort get service plugin config
Get service plugin config.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN , action=2 (READ)
*/
func (a *Client) GetServicePluginConfigShort(params *GetServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetServicePluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServicePluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getServicePluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServicePluginConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateServicePluginConfigShort instead.

UpdateServicePluginConfig update service plugin config service
Update catalog config. Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UpdateServicePluginConfig(params *UpdateServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServicePluginConfigOK, *UpdateServicePluginConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateServicePluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateServicePluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateServicePluginConfigOK:
		return v, nil, nil

	case *UpdateServicePluginConfigUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateServicePluginConfigShort update service plugin config service
Update catalog config. Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UpdateServicePluginConfigShort(params *UpdateServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServicePluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateServicePluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateServicePluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateServicePluginConfigOK:
		return v, nil
	case *UpdateServicePluginConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteServicePluginConfigShort instead.

DeleteServicePluginConfig delete service plugin config
Delete service plugin config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=8 (DELETE)
*/
func (a *Client) DeleteServicePluginConfig(params *DeleteServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServicePluginConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteServicePluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteServicePluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteServicePluginConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteServicePluginConfigShort delete service plugin config
Delete service plugin config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=8 (DELETE)
*/
func (a *Client) DeleteServicePluginConfigShort(params *DeleteServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServicePluginConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteServicePluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteServicePluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteServicePluginConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
