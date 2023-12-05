// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package dlc

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new dlc API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for dlc API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetDLCItemConfig(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigOK, *GetDLCItemConfigNotFound, error)
	GetDLCItemConfigShort(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigOK, error)
	UpdateDLCItemConfig(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigOK, *UpdateDLCItemConfigBadRequest, *UpdateDLCItemConfigConflict, *UpdateDLCItemConfigUnprocessableEntity, error)
	UpdateDLCItemConfigShort(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigOK, error)
	DeleteDLCItemConfig(params *DeleteDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDLCItemConfigNoContent, error)
	DeleteDLCItemConfigShort(params *DeleteDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDLCItemConfigNoContent, error)
	GetPlatformDLCConfig(params *GetPlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformDLCConfigOK, *GetPlatformDLCConfigNotFound, error)
	GetPlatformDLCConfigShort(params *GetPlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformDLCConfigOK, error)
	UpdatePlatformDLCConfig(params *UpdatePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformDLCConfigOK, *UpdatePlatformDLCConfigUnprocessableEntity, error)
	UpdatePlatformDLCConfigShort(params *UpdatePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformDLCConfigOK, error)
	DeletePlatformDLCConfig(params *DeletePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlatformDLCConfigNoContent, error)
	DeletePlatformDLCConfigShort(params *DeletePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlatformDLCConfigNoContent, error)
	GetUserDLCByPlatform(params *GetUserDLCByPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCByPlatformOK, error)
	GetUserDLCByPlatformShort(params *GetUserDLCByPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCByPlatformOK, error)
	GetUserDLC(params *GetUserDLCParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCOK, error)
	GetUserDLCShort(params *GetUserDLCParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCOK, error)
	GeDLCDurableRewardShortMap(params *GeDLCDurableRewardShortMapParams, authInfo runtime.ClientAuthInfoWriter) (*GeDLCDurableRewardShortMapOK, *GeDLCDurableRewardShortMapNotFound, error)
	GeDLCDurableRewardShortMapShort(params *GeDLCDurableRewardShortMapParams, authInfo runtime.ClientAuthInfoWriter) (*GeDLCDurableRewardShortMapOK, error)
	SyncEpicGameDLC(params *SyncEpicGameDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGameDLCNoContent, *SyncEpicGameDLCBadRequest, error)
	SyncEpicGameDLCShort(params *SyncEpicGameDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGameDLCNoContent, error)
	SyncOculusDLC(params *SyncOculusDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusDLCNoContent, *SyncOculusDLCBadRequest, error)
	SyncOculusDLCShort(params *SyncOculusDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusDLCNoContent, error)
	PublicSyncPsnDLCInventory(params *PublicSyncPsnDLCInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryNoContent, *PublicSyncPsnDLCInventoryBadRequest, error)
	PublicSyncPsnDLCInventoryShort(params *PublicSyncPsnDLCInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryNoContent, error)
	PublicSyncPsnDLCInventoryWithMultipleServiceLabels(params *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent, *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest, error)
	PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort(params *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent, error)
	SyncSteamDLC(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCNoContent, *SyncSteamDLCBadRequest, error)
	SyncSteamDLCShort(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCNoContent, error)
	SyncXboxDLC(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCNoContent, *SyncXboxDLCBadRequest, error)
	SyncXboxDLCShort(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetDLCItemConfigShort instead.

GetDLCItemConfig get dlc item config
Get DLC item config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:DLC:CONFIG" , action=2 (READ)
*/
func (a *Client) GetDLCItemConfig(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigOK, *GetDLCItemConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getDLCItemConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetDLCItemConfigOK:
		return v, nil, nil

	case *GetDLCItemConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetDLCItemConfigShort get dlc item config
Get DLC item config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:DLC:CONFIG" , action=2 (READ)
*/
func (a *Client) GetDLCItemConfigShort(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getDLCItemConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDLCItemConfigOK:
		return v, nil
	case *GetDLCItemConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateDLCItemConfigShort instead.

UpdateDLCItemConfig update dlc item config
Update DLC item config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:DLC:CONFIG", action=4 (UPDATE)
  *  Returns : updated DLC item config
*/
func (a *Client) UpdateDLCItemConfig(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigOK, *UpdateDLCItemConfigBadRequest, *UpdateDLCItemConfigConflict, *UpdateDLCItemConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateDLCItemConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateDLCItemConfigOK:
		return v, nil, nil, nil, nil

	case *UpdateDLCItemConfigBadRequest:
		return nil, v, nil, nil, nil

	case *UpdateDLCItemConfigConflict:
		return nil, nil, v, nil, nil

	case *UpdateDLCItemConfigUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateDLCItemConfigShort update dlc item config
Update DLC item config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:DLC:CONFIG", action=4 (UPDATE)
  *  Returns : updated DLC item config
*/
func (a *Client) UpdateDLCItemConfigShort(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateDLCItemConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateDLCItemConfigOK:
		return v, nil
	case *UpdateDLCItemConfigBadRequest:
		return nil, v
	case *UpdateDLCItemConfigConflict:
		return nil, v
	case *UpdateDLCItemConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteDLCItemConfigShort instead.

DeleteDLCItemConfig delete a dlc item config
delete a DLC item config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:DLC:CONFIG" , action=8 (DELETE)
*/
func (a *Client) DeleteDLCItemConfig(params *DeleteDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDLCItemConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteDLCItemConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDLCItemConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteDLCItemConfigShort delete a dlc item config
delete a DLC item config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:DLC:CONFIG" , action=8 (DELETE)
*/
func (a *Client) DeleteDLCItemConfigShort(params *DeleteDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDLCItemConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteDLCItemConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDLCItemConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPlatformDLCConfigShort instead.

GetPlatformDLCConfig get platform dlc config
Get Platform DLC config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:DLC:CONFIG" , action=2 (READ)
*/
func (a *Client) GetPlatformDLCConfig(params *GetPlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformDLCConfigOK, *GetPlatformDLCConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlatformDLCConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetPlatformDLCConfigOK:
		return v, nil, nil

	case *GetPlatformDLCConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlatformDLCConfigShort get platform dlc config
Get Platform DLC config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:DLC:CONFIG" , action=2 (READ)
*/
func (a *Client) GetPlatformDLCConfigShort(params *GetPlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformDLCConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlatformDLCConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlatformDLCConfigOK:
		return v, nil
	case *GetPlatformDLCConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePlatformDLCConfigShort instead.

UpdatePlatformDLCConfig update platform dlc config
Update Platform DLC config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:DLC:CONFIG", action=4 (UPDATE)
  *  Returns : updated Platform DLC config



## Restrictions for platform dlc map


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) UpdatePlatformDLCConfig(params *UpdatePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformDLCConfigOK, *UpdatePlatformDLCConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePlatformDLCConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePlatformDLCConfigOK:
		return v, nil, nil

	case *UpdatePlatformDLCConfigUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePlatformDLCConfigShort update platform dlc config
Update Platform DLC config. Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:DLC:CONFIG", action=4 (UPDATE)
  *  Returns : updated Platform DLC config



## Restrictions for platform dlc map


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) UpdatePlatformDLCConfigShort(params *UpdatePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformDLCConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePlatformDLCConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePlatformDLCConfigOK:
		return v, nil
	case *UpdatePlatformDLCConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeletePlatformDLCConfigShort instead.

DeletePlatformDLCConfig delete a platform dlc config
delete a Platform DLC config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:DLC:CONFIG" , action=8 (DELETE)
*/
func (a *Client) DeletePlatformDLCConfig(params *DeletePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlatformDLCConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePlatformDLCConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePlatformDLCConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePlatformDLCConfigShort delete a platform dlc config
delete a Platform DLC config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:DLC:CONFIG" , action=8 (DELETE)
*/
func (a *Client) DeletePlatformDLCConfigShort(params *DeletePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlatformDLCConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePlatformDLCConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePlatformDLCConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserDLCByPlatformShort instead.

GetUserDLCByPlatform get user dlc by platform
Get user dlc by platform.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2 (READ)
  *  Returns : user dlc
*/
func (a *Client) GetUserDLCByPlatform(params *GetUserDLCByPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCByPlatformOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserDLCByPlatformParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserDLCByPlatform",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/dlc",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserDLCByPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserDLCByPlatformOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserDLCByPlatformShort get user dlc by platform
Get user dlc by platform.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2 (READ)
  *  Returns : user dlc
*/
func (a *Client) GetUserDLCByPlatformShort(params *GetUserDLCByPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCByPlatformOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserDLCByPlatformParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserDLCByPlatform",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/dlc",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserDLCByPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserDLCByPlatformOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserDLCShort instead.

GetUserDLC get user dlc records
Get user dlc records.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2 (READ)
  *  Returns : user dlc
*/
func (a *Client) GetUserDLC(params *GetUserDLCParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserDLC",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/dlc/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserDLCOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserDLCShort get user dlc records
Get user dlc records.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2 (READ)
  *  Returns : user dlc
*/
func (a *Client) GetUserDLCShort(params *GetUserDLCParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserDLC",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/dlc/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserDLCOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GeDLCDurableRewardShortMapShort instead.

GeDLCDurableRewardShortMap get dlc durable reward simple map
Get dlc reward simple map, only return the sku of durable item reward
Other detail info:

  * Required permission : Authorized user
*/
func (a *Client) GeDLCDurableRewardShortMap(params *GeDLCDurableRewardShortMapParams, authInfo runtime.ClientAuthInfoWriter) (*GeDLCDurableRewardShortMapOK, *GeDLCDurableRewardShortMapNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGeDLCDurableRewardShortMapParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "geDLCDurableRewardShortMap",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/dlc/rewards/durable/map",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GeDLCDurableRewardShortMapReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GeDLCDurableRewardShortMapOK:
		return v, nil, nil

	case *GeDLCDurableRewardShortMapNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GeDLCDurableRewardShortMapShort get dlc durable reward simple map
Get dlc reward simple map, only return the sku of durable item reward
Other detail info:

  * Required permission : Authorized user
*/
func (a *Client) GeDLCDurableRewardShortMapShort(params *GeDLCDurableRewardShortMapParams, authInfo runtime.ClientAuthInfoWriter) (*GeDLCDurableRewardShortMapOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGeDLCDurableRewardShortMapParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "geDLCDurableRewardShortMap",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/dlc/rewards/durable/map",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GeDLCDurableRewardShortMapReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GeDLCDurableRewardShortMapOK:
		return v, nil
	case *GeDLCDurableRewardShortMapNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncEpicGameDLCShort instead.

SyncEpicGameDLC sync epic games dlc items
Sync epic games dlc items.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncEpicGameDLC(params *SyncEpicGameDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGameDLCNoContent, *SyncEpicGameDLCBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncEpicGameDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncEpicGameDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/epicgames/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncEpicGameDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SyncEpicGameDLCNoContent:
		return v, nil, nil

	case *SyncEpicGameDLCBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncEpicGameDLCShort sync epic games dlc items
Sync epic games dlc items.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncEpicGameDLCShort(params *SyncEpicGameDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGameDLCNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncEpicGameDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncEpicGameDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/epicgames/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncEpicGameDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncEpicGameDLCNoContent:
		return v, nil
	case *SyncEpicGameDLCBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncOculusDLCShort instead.

SyncOculusDLC sync oculus dlc.
Sync oculus dlc.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncOculusDLC(params *SyncOculusDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusDLCNoContent, *SyncOculusDLCBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncOculusDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncOculusDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/oculus/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncOculusDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SyncOculusDLCNoContent:
		return v, nil, nil

	case *SyncOculusDLCBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncOculusDLCShort sync oculus dlc.
Sync oculus dlc.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncOculusDLCShort(params *SyncOculusDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusDLCNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncOculusDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncOculusDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/oculus/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncOculusDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncOculusDLCNoContent:
		return v, nil
	case *SyncOculusDLCBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSyncPsnDLCInventoryShort instead.

PublicSyncPsnDLCInventory synchronize with dlc entitlements in psn store.
Synchronize with dlc entitlements in PSN Store.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns : result of synchronization
*/
func (a *Client) PublicSyncPsnDLCInventory(params *PublicSyncPsnDLCInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryNoContent, *PublicSyncPsnDLCInventoryBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSyncPsnDLCInventoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSyncPsnDlcInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSyncPsnDLCInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSyncPsnDLCInventoryNoContent:
		return v, nil, nil

	case *PublicSyncPsnDLCInventoryBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSyncPsnDLCInventoryShort synchronize with dlc entitlements in psn store.
Synchronize with dlc entitlements in PSN Store.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns : result of synchronization
*/
func (a *Client) PublicSyncPsnDLCInventoryShort(params *PublicSyncPsnDLCInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSyncPsnDLCInventoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSyncPsnDlcInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSyncPsnDLCInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSyncPsnDLCInventoryNoContent:
		return v, nil
	case *PublicSyncPsnDLCInventoryBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort instead.

PublicSyncPsnDLCInventoryWithMultipleServiceLabels synchronize with dlc entitlements in psn store with multiple service labels.
Synchronize with dlc entitlements in PSN Store with multiple service labels.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns : result of synchronization
*/
func (a *Client) PublicSyncPsnDLCInventoryWithMultipleServiceLabels(params *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent, *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSyncPsnDlcInventoryWithMultipleServiceLabels",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync/multiServiceLabels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent:
		return v, nil, nil

	case *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort synchronize with dlc entitlements in psn store with multiple service labels.
Synchronize with dlc entitlements in PSN Store with multiple service labels.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns : result of synchronization
*/
func (a *Client) PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort(params *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSyncPsnDlcInventoryWithMultipleServiceLabels",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync/multiServiceLabels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent:
		return v, nil
	case *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncSteamDLCShort instead.

SyncSteamDLC sync steam dlc.
Sync steam dlc.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncSteamDLC(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCNoContent, *SyncSteamDLCBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncSteamDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/steam/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SyncSteamDLCNoContent:
		return v, nil, nil

	case *SyncSteamDLCBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSteamDLCShort sync steam dlc.
Sync steam dlc.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncSteamDLCShort(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncSteamDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/steam/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSteamDLCNoContent:
		return v, nil
	case *SyncSteamDLCBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncXboxDLCShort instead.

SyncXboxDLC sync xbox dlc items.
Sync Xbox inventory's dlc items.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncXboxDLC(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCNoContent, *SyncXboxDLCBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncXboxDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncXboxDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/xbl/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncXboxDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SyncXboxDLCNoContent:
		return v, nil, nil

	case *SyncXboxDLCBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncXboxDLCShort sync xbox dlc items.
Sync Xbox inventory's dlc items.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncXboxDLCShort(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncXboxDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncXboxDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/xbl/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncXboxDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncXboxDLCNoContent:
		return v, nil
	case *SyncXboxDLCBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
