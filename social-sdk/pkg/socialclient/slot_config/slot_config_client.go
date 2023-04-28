// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package slot_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new slot config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for slot config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetNamespaceSlotConfig(params *GetNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceSlotConfigOK, error)
	GetNamespaceSlotConfigShort(params *GetNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceSlotConfigOK, error)
	UpdateNamespaceSlotConfig(params *UpdateNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceSlotConfigOK, error)
	UpdateNamespaceSlotConfigShort(params *UpdateNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceSlotConfigOK, error)
	DeleteNamespaceSlotConfig(params *DeleteNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceSlotConfigNoContent, error)
	DeleteNamespaceSlotConfigShort(params *DeleteNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceSlotConfigNoContent, error)
	GetUserSlotConfig(params *GetUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSlotConfigOK, error)
	GetUserSlotConfigShort(params *GetUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSlotConfigOK, error)
	UpdateUserSlotConfig(params *UpdateUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserSlotConfigOK, error)
	UpdateUserSlotConfigShort(params *UpdateUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserSlotConfigOK, error)
	DeleteUserSlotConfig(params *DeleteUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserSlotConfigNoContent, error)
	DeleteUserSlotConfigShort(params *DeleteUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserSlotConfigNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetNamespaceSlotConfigShort instead.

GetNamespaceSlotConfig returns a namespace slot configuration
Get slot configuration for a given namespace. In case slot configuration is not set, the default will be returned.
Other detail info:

  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:SLOTCONFIG", action=2 (READ)
  *  Returns : namespace slot config info
*/
func (a *Client) GetNamespaceSlotConfig(params *GetNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceSlotConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespaceSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getNamespaceSlotConfig",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespaceSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespaceSlotConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNamespaceSlotConfigShort returns a namespace slot configuration
Get slot configuration for a given namespace. In case slot configuration is not set, the default will be returned.
Other detail info:

  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:SLOTCONFIG", action=2 (READ)
  *  Returns : namespace slot config info
*/
func (a *Client) GetNamespaceSlotConfigShort(params *GetNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceSlotConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespaceSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getNamespaceSlotConfig",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespaceSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespaceSlotConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateNamespaceSlotConfigShort instead.

UpdateNamespaceSlotConfig update a namespace slot configuration
Update a slot namespace configuration.
Other detail info:

  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:SLOTCONFIG", action=4 (UPDATE)
  *  Returns : updated namespace slot config
*/
func (a *Client) UpdateNamespaceSlotConfig(params *UpdateNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceSlotConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNamespaceSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateNamespaceSlotConfig",
		Method:             "PUT",
		PathPattern:        "/social/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNamespaceSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateNamespaceSlotConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateNamespaceSlotConfigShort update a namespace slot configuration
Update a slot namespace configuration.
Other detail info:

  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:SLOTCONFIG", action=4 (UPDATE)
  *  Returns : updated namespace slot config
*/
func (a *Client) UpdateNamespaceSlotConfigShort(params *UpdateNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceSlotConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNamespaceSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateNamespaceSlotConfig",
		Method:             "PUT",
		PathPattern:        "/social/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNamespaceSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateNamespaceSlotConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteNamespaceSlotConfigShort instead.

DeleteNamespaceSlotConfig deletes a namespace slot configuration
Deletes a namespace slot configuration, the configuration will be default after delete.
Other detail info:

  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:SLOTCONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteNamespaceSlotConfig(params *DeleteNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceSlotConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNamespaceSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteNamespaceSlotConfig",
		Method:             "DELETE",
		PathPattern:        "/social/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNamespaceSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNamespaceSlotConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNamespaceSlotConfigShort deletes a namespace slot configuration
Deletes a namespace slot configuration, the configuration will be default after delete.
Other detail info:

  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:SLOTCONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteNamespaceSlotConfigShort(params *DeleteNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceSlotConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNamespaceSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteNamespaceSlotConfig",
		Method:             "DELETE",
		PathPattern:        "/social/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNamespaceSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNamespaceSlotConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserSlotConfigShort instead.

GetUserSlotConfig returns a user slot configuration
GetÂ a user slot configuration in given namespace. In case the user slot configuration is not set, the namespace configuration will be returned.
Other detail info:

  * Required permission: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTCONFIG", action=2 (READ)
  * Returns: slot config info
*/
func (a *Client) GetUserSlotConfig(params *GetUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSlotConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserSlotConfig",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserSlotConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserSlotConfigShort returns a user slot configuration
GetÂ a user slot configuration in given namespace. In case the user slot configuration is not set, the namespace configuration will be returned.
Other detail info:
    * Required permission: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTCONFIG", action=2 (READ)
    * Returns: slot config info
*/
func (a *Client) GetUserSlotConfigShort(params *GetUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSlotConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserSlotConfig",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserSlotConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateUserSlotConfigShort instead.

UpdateUserSlotConfig update a user slot configuration
Update a user slot configuration in given namespace.
Other detail info:
      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTCONFIG", action=4 (UPDATE)
      *  Returns : updated slot config
*/
func (a *Client) UpdateUserSlotConfig(params *UpdateUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserSlotConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateUserSlotConfig",
		Method:             "PUT",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserSlotConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserSlotConfigShort update a user slot configuration
Update a user slot configuration in given namespace.
Other detail info:
        *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTCONFIG", action=4 (UPDATE)
        *  Returns : updated slot config
*/
func (a *Client) UpdateUserSlotConfigShort(params *UpdateUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserSlotConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateUserSlotConfig",
		Method:             "PUT",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserSlotConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserSlotConfigShort instead.

DeleteUserSlotConfig deletes a user slot configuration
Deletes a user slot configuration in given namespace, the namespace slot configuration will be returned after delete.
Other detail info:
          *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTCONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteUserSlotConfig(params *DeleteUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserSlotConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserSlotConfig",
		Method:             "DELETE",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserSlotConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserSlotConfigShort deletes a user slot configuration
Deletes a user slot configuration in given namespace, the namespace slot configuration will be returned after delete.
Other detail info:
            *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTCONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteUserSlotConfigShort(params *DeleteUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserSlotConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserSlotConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserSlotConfig",
		Method:             "DELETE",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserSlotConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
