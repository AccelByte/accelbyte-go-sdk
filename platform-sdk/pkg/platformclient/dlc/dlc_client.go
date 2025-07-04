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
	GetDLCItemConfigHistory(params *GetDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigHistoryOK, *GetDLCItemConfigHistoryNotFound, error)
	GetDLCItemConfigHistoryShort(params *GetDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigHistoryOK, error)
	RestoreDLCItemConfigHistory(params *RestoreDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*RestoreDLCItemConfigHistoryNoContent, *RestoreDLCItemConfigHistoryNotFound, error)
	RestoreDLCItemConfigHistoryShort(params *RestoreDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*RestoreDLCItemConfigHistoryNoContent, error)
	GetDLCItemConfig(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigOK, *GetDLCItemConfigNotFound, error)
	GetDLCItemConfigShort(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigOK, error)
	UpdateDLCItemConfig(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigOK, *UpdateDLCItemConfigBadRequest, *UpdateDLCItemConfigNotFound, *UpdateDLCItemConfigConflict, *UpdateDLCItemConfigUnprocessableEntity, error)
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
	SyncEpicGameDLC(params *SyncEpicGameDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGameDLCNoContent, *SyncEpicGameDLCBadRequest, *SyncEpicGameDLCNotFound, error)
	SyncEpicGameDLCShort(params *SyncEpicGameDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGameDLCNoContent, error)
	SyncOculusDLC(params *SyncOculusDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusDLCNoContent, *SyncOculusDLCBadRequest, *SyncOculusDLCNotFound, error)
	SyncOculusDLCShort(params *SyncOculusDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusDLCNoContent, error)
	PublicSyncPsnDLCInventory(params *PublicSyncPsnDLCInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryNoContent, *PublicSyncPsnDLCInventoryBadRequest, *PublicSyncPsnDLCInventoryNotFound, error)
	PublicSyncPsnDLCInventoryShort(params *PublicSyncPsnDLCInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryNoContent, error)
	PublicSyncPsnDLCInventoryWithMultipleServiceLabels(params *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent, *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest, *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound, error)
	PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort(params *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent, error)
	SyncSteamDLC(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCNoContent, *SyncSteamDLCBadRequest, *SyncSteamDLCNotFound, error)
	SyncSteamDLCShort(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCNoContent, error)
	SyncXboxDLC(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCNoContent, *SyncXboxDLCBadRequest, *SyncXboxDLCNotFound, error)
	SyncXboxDLCShort(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCNoContent, error)
	PublicGetMyDLCContent(params *PublicGetMyDLCContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyDLCContentOK, error)
	PublicGetMyDLCContentShort(params *PublicGetMyDLCContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyDLCContentOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetDLCItemConfigHistoryShort instead.

GetDLCItemConfigHistory get dlc item config history
Get DLC item config history.
*/
func (a *Client) GetDLCItemConfigHistory(params *GetDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigHistoryOK, *GetDLCItemConfigHistoryNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDLCItemConfigHistoryParams()
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
		ID:                 "getDLCItemConfigHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDLCItemConfigHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetDLCItemConfigHistoryOK:
		return v, nil, nil

	case *GetDLCItemConfigHistoryNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetDLCItemConfigHistoryShort get dlc item config history
Get DLC item config history.
*/
func (a *Client) GetDLCItemConfigHistoryShort(params *GetDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDLCItemConfigHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getDLCItemConfigHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDLCItemConfigHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDLCItemConfigHistoryOK:
		return v, nil
	case *GetDLCItemConfigHistoryNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RestoreDLCItemConfigHistoryShort instead.

RestoreDLCItemConfigHistory restore dlc item config history
Restore DLC item config history.
*/
func (a *Client) RestoreDLCItemConfigHistory(params *RestoreDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*RestoreDLCItemConfigHistoryNoContent, *RestoreDLCItemConfigHistoryNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRestoreDLCItemConfigHistoryParams()
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
		ID:                 "restoreDLCItemConfigHistory",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/history/{id}/restore",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RestoreDLCItemConfigHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RestoreDLCItemConfigHistoryNoContent:
		return v, nil, nil

	case *RestoreDLCItemConfigHistoryNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RestoreDLCItemConfigHistoryShort restore dlc item config history
Restore DLC item config history.
*/
func (a *Client) RestoreDLCItemConfigHistoryShort(params *RestoreDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*RestoreDLCItemConfigHistoryNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRestoreDLCItemConfigHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "restoreDLCItemConfigHistory",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/history/{id}/restore",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RestoreDLCItemConfigHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RestoreDLCItemConfigHistoryNoContent:
		return v, nil
	case *RestoreDLCItemConfigHistoryNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetDLCItemConfigShort instead.

GetDLCItemConfig get dlc item config
Get DLC item config.
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
  * Returns : updated DLC item config
*/
func (a *Client) UpdateDLCItemConfig(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigOK, *UpdateDLCItemConfigBadRequest, *UpdateDLCItemConfigNotFound, *UpdateDLCItemConfigConflict, *UpdateDLCItemConfigUnprocessableEntity, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateDLCItemConfigOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateDLCItemConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateDLCItemConfigNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdateDLCItemConfigConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateDLCItemConfigUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateDLCItemConfigShort update dlc item config
Update DLC item config. Other detail info:
  * Returns : updated DLC item config
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
	case *UpdateDLCItemConfigNotFound:
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
  * Returns : updated Platform DLC config



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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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

  * Returns : updated Platform DLC config



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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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

  * Returns : user dlc
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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

  * Returns : user dlc
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
Note: includeAllNamespaces means this endpoint will return user dlcs from all namespace, example scenario isadmin may need to check the user dlcs before unlink a 3rd party account, so the user dlcs should be from all namespaces because unlinking is a platform level action
Other detail info:

  * Returns : user dlc
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
Note: includeAllNamespaces means this endpoint will return user dlcs from all namespace, example scenario isadmin may need to check the user dlcs before unlink a 3rd party account, so the user dlcs should be from all namespaces because unlinking is a platform level action
Other detail info:

  * Returns : user dlc
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
Get dlc reward simple map, only return the sku of durable item reward.
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
Get dlc reward simple map, only return the sku of durable item reward.
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
Sync epic games dlc items
*/
func (a *Client) SyncEpicGameDLC(params *SyncEpicGameDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGameDLCNoContent, *SyncEpicGameDLCBadRequest, *SyncEpicGameDLCNotFound, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncEpicGameDLCNoContent:
		return v, nil, nil, nil

	case *SyncEpicGameDLCBadRequest:
		return nil, v, nil, nil

	case *SyncEpicGameDLCNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncEpicGameDLCShort sync epic games dlc items
Sync epic games dlc items
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
	case *SyncEpicGameDLCNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncOculusDLCShort instead.

SyncOculusDLC sync oculus dlc.
Sync oculus dlc
*/
func (a *Client) SyncOculusDLC(params *SyncOculusDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusDLCNoContent, *SyncOculusDLCBadRequest, *SyncOculusDLCNotFound, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncOculusDLCNoContent:
		return v, nil, nil, nil

	case *SyncOculusDLCBadRequest:
		return nil, v, nil, nil

	case *SyncOculusDLCNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncOculusDLCShort sync oculus dlc.
Sync oculus dlc
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
	case *SyncOculusDLCNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSyncPsnDLCInventoryShort instead.

PublicSyncPsnDLCInventory synchronize with dlc entitlements in psn store.
Synchronize with dlc entitlements in PSN Store.Other detail info:
  * Returns : result of synchronization
*/
func (a *Client) PublicSyncPsnDLCInventory(params *PublicSyncPsnDLCInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryNoContent, *PublicSyncPsnDLCInventoryBadRequest, *PublicSyncPsnDLCInventoryNotFound, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSyncPsnDLCInventoryNoContent:
		return v, nil, nil, nil

	case *PublicSyncPsnDLCInventoryBadRequest:
		return nil, v, nil, nil

	case *PublicSyncPsnDLCInventoryNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSyncPsnDLCInventoryShort synchronize with dlc entitlements in psn store.
Synchronize with dlc entitlements in PSN Store.Other detail info:
  * Returns : result of synchronization
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
	case *PublicSyncPsnDLCInventoryNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort instead.

PublicSyncPsnDLCInventoryWithMultipleServiceLabels synchronize with dlc entitlements in psn store with multiple service labels.
Synchronize with dlc entitlements in PSN Store with multiple service labels.Other detail info:
  * Returns : result of synchronization
*/
func (a *Client) PublicSyncPsnDLCInventoryWithMultipleServiceLabels(params *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent, *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest, *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent:
		return v, nil, nil, nil

	case *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest:
		return nil, v, nil, nil

	case *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort synchronize with dlc entitlements in psn store with multiple service labels.
Synchronize with dlc entitlements in PSN Store with multiple service labels.Other detail info:
  * Returns : result of synchronization
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
	case *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncSteamDLCShort instead.

SyncSteamDLC sync steam dlc.
Sync steam dlc
*/
func (a *Client) SyncSteamDLC(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCNoContent, *SyncSteamDLCBadRequest, *SyncSteamDLCNotFound, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncSteamDLCNoContent:
		return v, nil, nil, nil

	case *SyncSteamDLCBadRequest:
		return nil, v, nil, nil

	case *SyncSteamDLCNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSteamDLCShort sync steam dlc.
Sync steam dlc
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
	case *SyncSteamDLCNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncXboxDLCShort instead.

SyncXboxDLC sync xbox dlc items.
Sync Xbox inventory's dlc items
*/
func (a *Client) SyncXboxDLC(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCNoContent, *SyncXboxDLCBadRequest, *SyncXboxDLCNotFound, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncXboxDLCNoContent:
		return v, nil, nil, nil

	case *SyncXboxDLCBadRequest:
		return nil, v, nil, nil

	case *SyncXboxDLCNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncXboxDLCShort sync xbox dlc items.
Sync Xbox inventory's dlc items
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
	case *SyncXboxDLCNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMyDLCContentShort instead.

PublicGetMyDLCContent get user dlc reward contents
Get user dlc reward contents. If includeAllNamespaces is false, will only return the dlc synced from the current namespace
Other detail info:

  * Returns : user dlc
*/
func (a *Client) PublicGetMyDLCContent(params *PublicGetMyDLCContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyDLCContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyDLCContentParams()
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
		ID:                 "publicGetMyDLCContent",
		Method:             "GET",
		PathPattern:        "/platform/public/users/me/dlc/content",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyDLCContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyDLCContentOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyDLCContentShort get user dlc reward contents
Get user dlc reward contents. If includeAllNamespaces is false, will only return the dlc synced from the current namespace
Other detail info:

  * Returns : user dlc
*/
func (a *Client) PublicGetMyDLCContentShort(params *PublicGetMyDLCContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyDLCContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyDLCContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMyDLCContent",
		Method:             "GET",
		PathPattern:        "/platform/public/users/me/dlc/content",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyDLCContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyDLCContentOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
