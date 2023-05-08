// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateConfig(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigCreated, *CreateConfigBadRequest, *CreateConfigUnauthorized, *CreateConfigForbidden, *CreateConfigConflict, error)
	CreateConfigShort(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigCreated, error)
	GetConfig1(params *GetConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*GetConfig1OK, *GetConfig1BadRequest, *GetConfig1Unauthorized, *GetConfig1Forbidden, *GetConfig1NotFound, error)
	GetConfig1Short(params *GetConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*GetConfig1OK, error)
	DeleteConfig1(params *DeleteConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfig1NoContent, *DeleteConfig1BadRequest, *DeleteConfig1Unauthorized, *DeleteConfig1Forbidden, *DeleteConfig1NotFound, error)
	DeleteConfig1Short(params *DeleteConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfig1NoContent, error)
	UpdateConfig1(params *UpdateConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfig1Created, *UpdateConfig1BadRequest, *UpdateConfig1Unauthorized, *UpdateConfig1Forbidden, *UpdateConfig1NotFound, error)
	UpdateConfig1Short(params *UpdateConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfig1Created, error)
	GetPublisherConfig(params *GetPublisherConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherConfigOK, *GetPublisherConfigBadRequest, *GetPublisherConfigUnauthorized, *GetPublisherConfigForbidden, *GetPublisherConfigNotFound, error)
	GetPublisherConfigShort(params *GetPublisherConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherConfigOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateConfigShort instead.

CreateConfig create a config
Create a config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:BASIC:CONFIG" , action=1 (CREATE)
  *  Returns : created config
*/
func (a *Client) CreateConfig(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigCreated, *CreateConfigBadRequest, *CreateConfigUnauthorized, *CreateConfigForbidden, *CreateConfigConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createConfig",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateConfigCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateConfigForbidden:
		return nil, nil, nil, v, nil, nil

	case *CreateConfigConflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateConfigShort create a config
Create a config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:BASIC:CONFIG" , action=1 (CREATE)
  *  Returns : created config
*/
func (a *Client) CreateConfigShort(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createConfig",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateConfigCreated:
		return v, nil
	case *CreateConfigBadRequest:
		return nil, v
	case *CreateConfigUnauthorized:
		return nil, v
	case *CreateConfigForbidden:
		return nil, v
	case *CreateConfigConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetConfig1Short instead.

GetConfig1 get a config
Get a config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:BASIC:CONFIG" , action=2 (READ)
  *  Returns : config
*/
func (a *Client) GetConfig1(params *GetConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*GetConfig1OK, *GetConfig1BadRequest, *GetConfig1Unauthorized, *GetConfig1Forbidden, *GetConfig1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetConfig1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getConfig_1",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetConfig1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetConfig1OK:
		return v, nil, nil, nil, nil, nil

	case *GetConfig1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetConfig1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetConfig1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetConfig1NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetConfig1Short get a config
Get a config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:BASIC:CONFIG" , action=2 (READ)
  *  Returns : config
*/
func (a *Client) GetConfig1Short(params *GetConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*GetConfig1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetConfig1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getConfig_1",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetConfig1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetConfig1OK:
		return v, nil
	case *GetConfig1BadRequest:
		return nil, v
	case *GetConfig1Unauthorized:
		return nil, v
	case *GetConfig1Forbidden:
		return nil, v
	case *GetConfig1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteConfig1Short instead.

DeleteConfig1 delete a config
Delete a config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:BASIC:CONFIG" , action=8 (DELETE)
  *  Returns : created config
*/
func (a *Client) DeleteConfig1(params *DeleteConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfig1NoContent, *DeleteConfig1BadRequest, *DeleteConfig1Unauthorized, *DeleteConfig1Forbidden, *DeleteConfig1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteConfig1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteConfig_1",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteConfig1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteConfig1NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteConfig1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteConfig1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteConfig1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteConfig1NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteConfig1Short delete a config
Delete a config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:BASIC:CONFIG" , action=8 (DELETE)
  *  Returns : created config
*/
func (a *Client) DeleteConfig1Short(params *DeleteConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfig1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteConfig1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteConfig_1",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteConfig1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteConfig1NoContent:
		return v, nil
	case *DeleteConfig1BadRequest:
		return nil, v
	case *DeleteConfig1Unauthorized:
		return nil, v
	case *DeleteConfig1Forbidden:
		return nil, v
	case *DeleteConfig1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateConfig1Short instead.

UpdateConfig1 update a config
Update a config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:BASIC:CONFIG" , action=4 (UPDATE)
  *  Returns : created config
*/
func (a *Client) UpdateConfig1(params *UpdateConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfig1Created, *UpdateConfig1BadRequest, *UpdateConfig1Unauthorized, *UpdateConfig1Forbidden, *UpdateConfig1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateConfig1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateConfig_1",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateConfig1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateConfig1Created:
		return v, nil, nil, nil, nil, nil

	case *UpdateConfig1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateConfig1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateConfig1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateConfig1NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateConfig1Short update a config
Update a config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:BASIC:CONFIG" , action=4 (UPDATE)
  *  Returns : created config
*/
func (a *Client) UpdateConfig1Short(params *UpdateConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfig1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateConfig1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateConfig_1",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateConfig1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateConfig1Created:
		return v, nil
	case *UpdateConfig1BadRequest:
		return nil, v
	case *UpdateConfig1Unauthorized:
		return nil, v
	case *UpdateConfig1Forbidden:
		return nil, v
	case *UpdateConfig1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPublisherConfigShort instead.

GetPublisherConfig get a publisher config
Get a publisher config.
It will return a publisher namespace config of the given namespace and key.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:BASIC:CONFIG" , action=2 (READ)
  *  Returns : config
*/
func (a *Client) GetPublisherConfig(params *GetPublisherConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherConfigOK, *GetPublisherConfigBadRequest, *GetPublisherConfigUnauthorized, *GetPublisherConfigForbidden, *GetPublisherConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublisherConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPublisherConfig",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/publisher/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublisherConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPublisherConfigOK:
		return v, nil, nil, nil, nil, nil

	case *GetPublisherConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetPublisherConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetPublisherConfigForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetPublisherConfigNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublisherConfigShort get a publisher config
Get a publisher config.
It will return a publisher namespace config of the given namespace and key.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:BASIC:CONFIG" , action=2 (READ)
  *  Returns : config
*/
func (a *Client) GetPublisherConfigShort(params *GetPublisherConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublisherConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPublisherConfig",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/publisher/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublisherConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublisherConfigOK:
		return v, nil
	case *GetPublisherConfigBadRequest:
		return nil, v
	case *GetPublisherConfigUnauthorized:
		return nil, v
	case *GetPublisherConfigForbidden:
		return nil, v
	case *GetPublisherConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
