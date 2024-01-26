// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_inventory_configurations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin inventory configurations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin inventory configurations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListInventoryConfigurations(params *AdminListInventoryConfigurationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoryConfigurationsOK, *AdminListInventoryConfigurationsBadRequest, *AdminListInventoryConfigurationsInternalServerError, error)
	AdminListInventoryConfigurationsShort(params *AdminListInventoryConfigurationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoryConfigurationsOK, error)
	AdminCreateInventoryConfiguration(params *AdminCreateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryConfigurationCreated, *AdminCreateInventoryConfigurationBadRequest, *AdminCreateInventoryConfigurationConflict, *AdminCreateInventoryConfigurationInternalServerError, error)
	AdminCreateInventoryConfigurationShort(params *AdminCreateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryConfigurationCreated, error)
	AdminGetInventoryConfiguration(params *AdminGetInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryConfigurationOK, *AdminGetInventoryConfigurationBadRequest, *AdminGetInventoryConfigurationNotFound, *AdminGetInventoryConfigurationInternalServerError, error)
	AdminGetInventoryConfigurationShort(params *AdminGetInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryConfigurationOK, error)
	AdminUpdateInventoryConfiguration(params *AdminUpdateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryConfigurationOK, *AdminUpdateInventoryConfigurationBadRequest, *AdminUpdateInventoryConfigurationNotFound, *AdminUpdateInventoryConfigurationConflict, *AdminUpdateInventoryConfigurationInternalServerError, error)
	AdminUpdateInventoryConfigurationShort(params *AdminUpdateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryConfigurationOK, error)
	AdminDeleteInventoryConfiguration(params *AdminDeleteInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInventoryConfigurationNoContent, *AdminDeleteInventoryConfigurationBadRequest, *AdminDeleteInventoryConfigurationNotFound, *AdminDeleteInventoryConfigurationInternalServerError, error)
	AdminDeleteInventoryConfigurationShort(params *AdminDeleteInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInventoryConfigurationNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminListInventoryConfigurationsShort instead.

AdminListInventoryConfigurations to list inventory configurations

Listing all inventory configurations in a namespace.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [READ]
*/
func (a *Client) AdminListInventoryConfigurations(params *AdminListInventoryConfigurationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoryConfigurationsOK, *AdminListInventoryConfigurationsBadRequest, *AdminListInventoryConfigurationsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListInventoryConfigurationsParams()
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
		ID:                 "AdminListInventoryConfigurations",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListInventoryConfigurationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListInventoryConfigurationsOK:
		return v, nil, nil, nil

	case *AdminListInventoryConfigurationsBadRequest:
		return nil, v, nil, nil

	case *AdminListInventoryConfigurationsInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListInventoryConfigurationsShort to list inventory configurations

Listing all inventory configurations in a namespace.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [READ]
*/
func (a *Client) AdminListInventoryConfigurationsShort(params *AdminListInventoryConfigurationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoryConfigurationsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListInventoryConfigurationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListInventoryConfigurations",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListInventoryConfigurationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListInventoryConfigurationsOK:
		return v, nil
	case *AdminListInventoryConfigurationsBadRequest:
		return nil, v
	case *AdminListInventoryConfigurationsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateInventoryConfigurationShort instead.

AdminCreateInventoryConfiguration to create inventory configuration

Creating inventory configuration.
There cannot be one inventory configuration duplicate code per namespace.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [CREATE]
*/
func (a *Client) AdminCreateInventoryConfiguration(params *AdminCreateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryConfigurationCreated, *AdminCreateInventoryConfigurationBadRequest, *AdminCreateInventoryConfigurationConflict, *AdminCreateInventoryConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateInventoryConfigurationParams()
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
		ID:                 "AdminCreateInventoryConfiguration",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateInventoryConfigurationCreated:
		return v, nil, nil, nil, nil

	case *AdminCreateInventoryConfigurationBadRequest:
		return nil, v, nil, nil, nil

	case *AdminCreateInventoryConfigurationConflict:
		return nil, nil, v, nil, nil

	case *AdminCreateInventoryConfigurationInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateInventoryConfigurationShort to create inventory configuration

Creating inventory configuration.
There cannot be one inventory configuration duplicate code per namespace.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [CREATE]
*/
func (a *Client) AdminCreateInventoryConfigurationShort(params *AdminCreateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryConfigurationCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateInventoryConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateInventoryConfiguration",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateInventoryConfigurationCreated:
		return v, nil
	case *AdminCreateInventoryConfigurationBadRequest:
		return nil, v
	case *AdminCreateInventoryConfigurationConflict:
		return nil, v
	case *AdminCreateInventoryConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetInventoryConfigurationShort instead.

AdminGetInventoryConfiguration to get inventory configuration

Getting an inventory configuration info.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [READ]
*/
func (a *Client) AdminGetInventoryConfiguration(params *AdminGetInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryConfigurationOK, *AdminGetInventoryConfigurationBadRequest, *AdminGetInventoryConfigurationNotFound, *AdminGetInventoryConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInventoryConfigurationParams()
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
		ID:                 "AdminGetInventoryConfiguration",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetInventoryConfigurationOK:
		return v, nil, nil, nil, nil

	case *AdminGetInventoryConfigurationBadRequest:
		return nil, v, nil, nil, nil

	case *AdminGetInventoryConfigurationNotFound:
		return nil, nil, v, nil, nil

	case *AdminGetInventoryConfigurationInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInventoryConfigurationShort to get inventory configuration

Getting an inventory configuration info.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [READ]
*/
func (a *Client) AdminGetInventoryConfigurationShort(params *AdminGetInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryConfigurationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInventoryConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetInventoryConfiguration",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInventoryConfigurationOK:
		return v, nil
	case *AdminGetInventoryConfigurationBadRequest:
		return nil, v
	case *AdminGetInventoryConfigurationNotFound:
		return nil, v
	case *AdminGetInventoryConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateInventoryConfigurationShort instead.

AdminUpdateInventoryConfiguration to update inventory configuration

Updating inventory configuration.
There cannot be duplicate code per namespace.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [UPDATE]
*/
func (a *Client) AdminUpdateInventoryConfiguration(params *AdminUpdateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryConfigurationOK, *AdminUpdateInventoryConfigurationBadRequest, *AdminUpdateInventoryConfigurationNotFound, *AdminUpdateInventoryConfigurationConflict, *AdminUpdateInventoryConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInventoryConfigurationParams()
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
		ID:                 "AdminUpdateInventoryConfiguration",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInventoryConfigurationOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateInventoryConfigurationBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateInventoryConfigurationNotFound:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateInventoryConfigurationConflict:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateInventoryConfigurationInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateInventoryConfigurationShort to update inventory configuration

Updating inventory configuration.
There cannot be duplicate code per namespace.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [UPDATE]
*/
func (a *Client) AdminUpdateInventoryConfigurationShort(params *AdminUpdateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryConfigurationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInventoryConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateInventoryConfiguration",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInventoryConfigurationOK:
		return v, nil
	case *AdminUpdateInventoryConfigurationBadRequest:
		return nil, v
	case *AdminUpdateInventoryConfigurationNotFound:
		return nil, v
	case *AdminUpdateInventoryConfigurationConflict:
		return nil, v
	case *AdminUpdateInventoryConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteInventoryConfigurationShort instead.

AdminDeleteInventoryConfiguration to delete inventory configuration

Deleting an inventory configuration.
If an inventory already reference this type (i.e. STATUS is "TIED"), then the type cannot be deleted anymore.

ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [DELETE]
*/
func (a *Client) AdminDeleteInventoryConfiguration(params *AdminDeleteInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInventoryConfigurationNoContent, *AdminDeleteInventoryConfigurationBadRequest, *AdminDeleteInventoryConfigurationNotFound, *AdminDeleteInventoryConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteInventoryConfigurationParams()
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
		ID:                 "AdminDeleteInventoryConfiguration",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteInventoryConfigurationNoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteInventoryConfigurationBadRequest:
		return nil, v, nil, nil, nil

	case *AdminDeleteInventoryConfigurationNotFound:
		return nil, nil, v, nil, nil

	case *AdminDeleteInventoryConfigurationInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteInventoryConfigurationShort to delete inventory configuration

Deleting an inventory configuration.
If an inventory already reference this type (i.e. STATUS is "TIED"), then the type cannot be deleted anymore.

ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [DELETE]
*/
func (a *Client) AdminDeleteInventoryConfigurationShort(params *AdminDeleteInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInventoryConfigurationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteInventoryConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteInventoryConfiguration",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteInventoryConfigurationNoContent:
		return v, nil
	case *AdminDeleteInventoryConfigurationBadRequest:
		return nil, v
	case *AdminDeleteInventoryConfigurationNotFound:
		return nil, v
	case *AdminDeleteInventoryConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
