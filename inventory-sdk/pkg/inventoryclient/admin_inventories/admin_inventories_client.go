// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_inventories

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin inventories API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin inventories API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListInventories(params *AdminListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoriesOK, *AdminListInventoriesBadRequest, *AdminListInventoriesInternalServerError, error)
	AdminListInventoriesShort(params *AdminListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoriesOK, error)
	AdminCreateInventory(params *AdminCreateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryCreated, *AdminCreateInventoryBadRequest, *AdminCreateInventoryInternalServerError, error)
	AdminCreateInventoryShort(params *AdminCreateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryCreated, error)
	AdminGetInventory(params *AdminGetInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryOK, *AdminGetInventoryBadRequest, *AdminGetInventoryNotFound, *AdminGetInventoryInternalServerError, error)
	AdminGetInventoryShort(params *AdminGetInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryOK, error)
	AdminUpdateInventory(params *AdminUpdateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryOK, *AdminUpdateInventoryBadRequest, *AdminUpdateInventoryNotFound, *AdminUpdateInventoryInternalServerError, error)
	AdminUpdateInventoryShort(params *AdminUpdateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryOK, error)
	DeleteInventory(params *DeleteInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteInventoryNoContent, *DeleteInventoryBadRequest, *DeleteInventoryNotFound, *DeleteInventoryInternalServerError, error)
	DeleteInventoryShort(params *DeleteInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteInventoryNoContent, error)
	AdminPurchasable(params *AdminPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPurchasableNoContent, *AdminPurchasableBadRequest, *AdminPurchasableNotFound, *AdminPurchasableConflict, *AdminPurchasableInternalServerError, error)
	AdminPurchasableShort(params *AdminPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPurchasableNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminListInventoriesShort instead.

AdminListInventories to list all inventories

Listing all inventories in a namespace.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [READ]
*/
func (a *Client) AdminListInventories(params *AdminListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoriesOK, *AdminListInventoriesBadRequest, *AdminListInventoriesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListInventoriesParams()
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
		ID:                 "AdminListInventories",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListInventoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListInventoriesOK:
		return v, nil, nil, nil

	case *AdminListInventoriesBadRequest:
		return nil, v, nil, nil

	case *AdminListInventoriesInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListInventoriesShort to list all inventories

Listing all inventories in a namespace.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [READ]
*/
func (a *Client) AdminListInventoriesShort(params *AdminListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListInventoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListInventories",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListInventoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListInventoriesOK:
		return v, nil
	case *AdminListInventoriesBadRequest:
		return nil, v
	case *AdminListInventoriesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateInventoryShort instead.

AdminCreateInventory to create inventory

Creating an inventory.
The inventory configuration must exists otherwise it will fail.
The max slots and max upgrade slots of an inventory will be initialized according to the inventory configuration it used,
but it can be changed later when using AdminUpdateInventory endpoint.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [CREATE]
*/
func (a *Client) AdminCreateInventory(params *AdminCreateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryCreated, *AdminCreateInventoryBadRequest, *AdminCreateInventoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateInventoryParams()
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
		ID:                 "AdminCreateInventory",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateInventoryCreated:
		return v, nil, nil, nil

	case *AdminCreateInventoryBadRequest:
		return nil, v, nil, nil

	case *AdminCreateInventoryInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateInventoryShort to create inventory

Creating an inventory.
The inventory configuration must exists otherwise it will fail.
The max slots and max upgrade slots of an inventory will be initialized according to the inventory configuration it used,
but it can be changed later when using AdminUpdateInventory endpoint.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [CREATE]
*/
func (a *Client) AdminCreateInventoryShort(params *AdminCreateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateInventoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateInventory",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateInventoryCreated:
		return v, nil
	case *AdminCreateInventoryBadRequest:
		return nil, v
	case *AdminCreateInventoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetInventoryShort instead.

AdminGetInventory to get an inventory

Getting an inventory info.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [READ]
*/
func (a *Client) AdminGetInventory(params *AdminGetInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryOK, *AdminGetInventoryBadRequest, *AdminGetInventoryNotFound, *AdminGetInventoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInventoryParams()
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
		ID:                 "AdminGetInventory",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetInventoryOK:
		return v, nil, nil, nil, nil

	case *AdminGetInventoryBadRequest:
		return nil, v, nil, nil, nil

	case *AdminGetInventoryNotFound:
		return nil, nil, v, nil, nil

	case *AdminGetInventoryInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInventoryShort to get an inventory

Getting an inventory info.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [READ]
*/
func (a *Client) AdminGetInventoryShort(params *AdminGetInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInventoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetInventory",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInventoryOK:
		return v, nil
	case *AdminGetInventoryBadRequest:
		return nil, v
	case *AdminGetInventoryNotFound:
		return nil, v
	case *AdminGetInventoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateInventoryShort instead.

AdminUpdateInventory to update inventory

Updating an inventory.
Positive value will increase MaxSlots from existing value
Negative value will decrease MaxSlots from existing value
Limited slots can not be changed to unlimited, vice versa

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]
*/
func (a *Client) AdminUpdateInventory(params *AdminUpdateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryOK, *AdminUpdateInventoryBadRequest, *AdminUpdateInventoryNotFound, *AdminUpdateInventoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInventoryParams()
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
		ID:                 "AdminUpdateInventory",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInventoryOK:
		return v, nil, nil, nil, nil

	case *AdminUpdateInventoryBadRequest:
		return nil, v, nil, nil, nil

	case *AdminUpdateInventoryNotFound:
		return nil, nil, v, nil, nil

	case *AdminUpdateInventoryInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateInventoryShort to update inventory

Updating an inventory.
Positive value will increase MaxSlots from existing value
Negative value will decrease MaxSlots from existing value
Limited slots can not be changed to unlimited, vice versa

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]
*/
func (a *Client) AdminUpdateInventoryShort(params *AdminUpdateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInventoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateInventory",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInventoryOK:
		return v, nil
	case *AdminUpdateInventoryBadRequest:
		return nil, v
	case *AdminUpdateInventoryNotFound:
		return nil, v
	case *AdminUpdateInventoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteInventoryShort instead.

DeleteInventory to delete inventory

Deleting an inventory.
If an inventory still has items, it cannot be deleted.

ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [DELETE]
*/
func (a *Client) DeleteInventory(params *DeleteInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteInventoryNoContent, *DeleteInventoryBadRequest, *DeleteInventoryNotFound, *DeleteInventoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteInventoryParams()
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
		ID:                 "deleteInventory",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteInventoryNoContent:
		return v, nil, nil, nil, nil

	case *DeleteInventoryBadRequest:
		return nil, v, nil, nil, nil

	case *DeleteInventoryNotFound:
		return nil, nil, v, nil, nil

	case *DeleteInventoryInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteInventoryShort to delete inventory

Deleting an inventory.
If an inventory still has items, it cannot be deleted.

ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [DELETE]
*/
func (a *Client) DeleteInventoryShort(params *DeleteInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteInventoryNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteInventoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteInventory",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteInventoryNoContent:
		return v, nil
	case *DeleteInventoryBadRequest:
		return nil, v
	case *DeleteInventoryNotFound:
		return nil, v
	case *DeleteInventoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPurchasableShort instead.

AdminPurchasable to validate user inventory capacity when purchase ecommerce item

Validate purchase ecommerce item.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]
*/
func (a *Client) AdminPurchasable(params *AdminPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPurchasableNoContent, *AdminPurchasableBadRequest, *AdminPurchasableNotFound, *AdminPurchasableConflict, *AdminPurchasableInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPurchasableParams()
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
		ID:                 "AdminPurchasable",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPurchasableReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPurchasableNoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminPurchasableBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminPurchasableNotFound:
		return nil, nil, v, nil, nil, nil

	case *AdminPurchasableConflict:
		return nil, nil, nil, v, nil, nil

	case *AdminPurchasableInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPurchasableShort to validate user inventory capacity when purchase ecommerce item

Validate purchase ecommerce item.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]
*/
func (a *Client) AdminPurchasableShort(params *AdminPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPurchasableNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPurchasableParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminPurchasable",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPurchasableReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPurchasableNoContent:
		return v, nil
	case *AdminPurchasableBadRequest:
		return nil, v
	case *AdminPurchasableNotFound:
		return nil, v
	case *AdminPurchasableConflict:
		return nil, v
	case *AdminPurchasableInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
