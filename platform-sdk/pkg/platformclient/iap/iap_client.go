// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package iap

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new iap API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for iap API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAppleIAPConfig(params *GetAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleIAPConfigOK, error)
	GetAppleIAPConfigShort(params *GetAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleIAPConfigOK, error)
	UpdateAppleIAPConfig(params *UpdateAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleIAPConfigOK, error)
	UpdateAppleIAPConfigShort(params *UpdateAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleIAPConfigOK, error)
	DeleteAppleIAPConfig(params *DeleteAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppleIAPConfigNoContent, error)
	DeleteAppleIAPConfigShort(params *DeleteAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppleIAPConfigNoContent, error)
	GetEpicGamesIAPConfig(params *GetEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetEpicGamesIAPConfigOK, error)
	GetEpicGamesIAPConfigShort(params *GetEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetEpicGamesIAPConfigOK, error)
	UpdateEpicGamesIAPConfig(params *UpdateEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEpicGamesIAPConfigOK, error)
	UpdateEpicGamesIAPConfigShort(params *UpdateEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEpicGamesIAPConfigOK, error)
	DeleteEpicGamesIAPConfig(params *DeleteEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteEpicGamesIAPConfigNoContent, error)
	DeleteEpicGamesIAPConfigShort(params *DeleteEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteEpicGamesIAPConfigNoContent, error)
	GetGoogleIAPConfig(params *GetGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetGoogleIAPConfigOK, error)
	GetGoogleIAPConfigShort(params *GetGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetGoogleIAPConfigOK, error)
	UpdateGoogleIAPConfig(params *UpdateGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleIAPConfigOK, error)
	UpdateGoogleIAPConfigShort(params *UpdateGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleIAPConfigOK, error)
	DeleteGoogleIAPConfig(params *DeleteGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGoogleIAPConfigNoContent, error)
	DeleteGoogleIAPConfigShort(params *DeleteGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGoogleIAPConfigNoContent, error)
	UpdateGoogleP12File(params *UpdateGoogleP12FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleP12FileOK, error)
	UpdateGoogleP12FileShort(params *UpdateGoogleP12FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleP12FileOK, error)
	GetIAPItemConfig(params *GetIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemConfigOK, *GetIAPItemConfigNotFound, error)
	GetIAPItemConfigShort(params *GetIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemConfigOK, error)
	UpdateIAPItemConfig(params *UpdateIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateIAPItemConfigOK, *UpdateIAPItemConfigBadRequest, *UpdateIAPItemConfigConflict, *UpdateIAPItemConfigUnprocessableEntity, error)
	UpdateIAPItemConfigShort(params *UpdateIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateIAPItemConfigOK, error)
	DeleteIAPItemConfig(params *DeleteIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteIAPItemConfigNoContent, error)
	DeleteIAPItemConfigShort(params *DeleteIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteIAPItemConfigNoContent, error)
	GetOculusIAPConfig(params *GetOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetOculusIAPConfigOK, error)
	GetOculusIAPConfigShort(params *GetOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetOculusIAPConfigOK, error)
	UpdateOculusIAPConfig(params *UpdateOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateOculusIAPConfigOK, error)
	UpdateOculusIAPConfigShort(params *UpdateOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateOculusIAPConfigOK, error)
	DeleteOculusIAPConfig(params *DeleteOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOculusIAPConfigNoContent, error)
	DeleteOculusIAPConfigShort(params *DeleteOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOculusIAPConfigNoContent, error)
	GetPlayStationIAPConfig(params *GetPlayStationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayStationIAPConfigOK, error)
	GetPlayStationIAPConfigShort(params *GetPlayStationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayStationIAPConfigOK, error)
	UpdatePlaystationIAPConfig(params *UpdatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlaystationIAPConfigOK, *UpdatePlaystationIAPConfigBadRequest, error)
	UpdatePlaystationIAPConfigShort(params *UpdatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlaystationIAPConfigOK, error)
	DeletePlaystationIAPConfig(params *DeletePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlaystationIAPConfigNoContent, error)
	DeletePlaystationIAPConfigShort(params *DeletePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlaystationIAPConfigNoContent, error)
	ValidateExistedPlaystationIAPConfig(params *ValidateExistedPlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateExistedPlaystationIAPConfigOK, error)
	ValidateExistedPlaystationIAPConfigShort(params *ValidateExistedPlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateExistedPlaystationIAPConfigOK, error)
	ValidatePlaystationIAPConfig(params *ValidatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidatePlaystationIAPConfigOK, error)
	ValidatePlaystationIAPConfigShort(params *ValidatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidatePlaystationIAPConfigOK, error)
	GetSteamIAPConfig(params *GetSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSteamIAPConfigOK, error)
	GetSteamIAPConfigShort(params *GetSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSteamIAPConfigOK, error)
	UpdateSteamIAPConfig(params *UpdateSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSteamIAPConfigOK, *UpdateSteamIAPConfigBadRequest, error)
	UpdateSteamIAPConfigShort(params *UpdateSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSteamIAPConfigOK, error)
	DeleteSteamIAPConfig(params *DeleteSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSteamIAPConfigNoContent, error)
	DeleteSteamIAPConfigShort(params *DeleteSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSteamIAPConfigNoContent, error)
	GetTwitchIAPConfig(params *GetTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetTwitchIAPConfigOK, error)
	GetTwitchIAPConfigShort(params *GetTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetTwitchIAPConfigOK, error)
	UpdateTwitchIAPConfig(params *UpdateTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTwitchIAPConfigOK, error)
	UpdateTwitchIAPConfigShort(params *UpdateTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTwitchIAPConfigOK, error)
	DeleteTwitchIAPConfig(params *DeleteTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTwitchIAPConfigNoContent, error)
	DeleteTwitchIAPConfigShort(params *DeleteTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTwitchIAPConfigNoContent, error)
	GetXblIAPConfig(params *GetXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblIAPConfigOK, error)
	GetXblIAPConfigShort(params *GetXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblIAPConfigOK, error)
	UpdateXblIAPConfig(params *UpdateXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblIAPConfigOK, error)
	UpdateXblIAPConfigShort(params *UpdateXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblIAPConfigOK, error)
	DeleteXblAPConfig(params *DeleteXblAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteXblAPConfigNoContent, error)
	DeleteXblAPConfigShort(params *DeleteXblAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteXblAPConfigNoContent, error)
	UpdateXblBPCertFile(params *UpdateXblBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblBPCertFileOK, error)
	UpdateXblBPCertFileShort(params *UpdateXblBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblBPCertFileOK, error)
	QueryUserIAPOrders(params *QueryUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPOrdersOK, error)
	QueryUserIAPOrdersShort(params *QueryUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPOrdersOK, error)
	QueryAllUserIAPOrders(params *QueryAllUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAllUserIAPOrdersOK, error)
	QueryAllUserIAPOrdersShort(params *QueryAllUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAllUserIAPOrdersOK, error)
	QueryUserIAPConsumeHistory(params *QueryUserIAPConsumeHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPConsumeHistoryOK, error)
	QueryUserIAPConsumeHistoryShort(params *QueryUserIAPConsumeHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPConsumeHistoryOK, error)
	MockFulfillIAPItem(params *MockFulfillIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*MockFulfillIAPItemNoContent, *MockFulfillIAPItemBadRequest, *MockFulfillIAPItemNotFound, *MockFulfillIAPItemConflict, error)
	MockFulfillIAPItemShort(params *MockFulfillIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*MockFulfillIAPItemNoContent, error)
	GetIAPItemMapping(params *GetIAPItemMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemMappingOK, *GetIAPItemMappingNotFound, error)
	GetIAPItemMappingShort(params *GetIAPItemMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemMappingOK, error)
	SyncTwitchDropsEntitlement(params *SyncTwitchDropsEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlementOK, *SyncTwitchDropsEntitlementBadRequest, error)
	SyncTwitchDropsEntitlementShort(params *SyncTwitchDropsEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlementOK, error)
	PublicFulfillAppleIAPItem(params *PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillAppleIAPItemNoContent, *PublicFulfillAppleIAPItemBadRequest, *PublicFulfillAppleIAPItemNotFound, *PublicFulfillAppleIAPItemConflict, error)
	PublicFulfillAppleIAPItemShort(params *PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillAppleIAPItemNoContent, error)
	SyncEpicGamesInventory(params *SyncEpicGamesInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGamesInventoryOK, *SyncEpicGamesInventoryBadRequest, error)
	SyncEpicGamesInventoryShort(params *SyncEpicGamesInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGamesInventoryOK, error)
	PublicFulfillGoogleIAPItem(params *PublicFulfillGoogleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillGoogleIAPItemOK, *PublicFulfillGoogleIAPItemBadRequest, *PublicFulfillGoogleIAPItemNotFound, *PublicFulfillGoogleIAPItemConflict, error)
	PublicFulfillGoogleIAPItemShort(params *PublicFulfillGoogleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillGoogleIAPItemOK, error)
	SyncOculusConsumableEntitlements(params *SyncOculusConsumableEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusConsumableEntitlementsOK, *SyncOculusConsumableEntitlementsBadRequest, error)
	SyncOculusConsumableEntitlementsShort(params *SyncOculusConsumableEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusConsumableEntitlementsOK, error)
	PublicReconcilePlayStationStore(params *PublicReconcilePlayStationStoreParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreOK, *PublicReconcilePlayStationStoreBadRequest, error)
	PublicReconcilePlayStationStoreShort(params *PublicReconcilePlayStationStoreParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreOK, error)
	PublicReconcilePlayStationStoreWithMultipleServiceLabels(params *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK, *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest, error)
	PublicReconcilePlayStationStoreWithMultipleServiceLabelsShort(params *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK, error)
	SyncSteamInventory(params *SyncSteamInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamInventoryNoContent, *SyncSteamInventoryBadRequest, error)
	SyncSteamInventoryShort(params *SyncSteamInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamInventoryNoContent, error)
	SyncTwitchDropsEntitlement1(params *SyncTwitchDropsEntitlement1Params, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlement1NoContent, *SyncTwitchDropsEntitlement1BadRequest, error)
	SyncTwitchDropsEntitlement1Short(params *SyncTwitchDropsEntitlement1Params, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlement1NoContent, error)
	SyncXboxInventory(params *SyncXboxInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxInventoryOK, *SyncXboxInventoryBadRequest, error)
	SyncXboxInventoryShort(params *SyncXboxInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxInventoryOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetAppleIAPConfigShort instead.

GetAppleIAPConfig get apple iap config
Get apple iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : apple iap config
*/
func (a *Client) GetAppleIAPConfig(params *GetAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppleIAPConfigParams()
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
		ID:                 "getAppleIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppleIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppleIAPConfigShort get apple iap config
Get apple iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : apple iap config
*/
func (a *Client) GetAppleIAPConfigShort(params *GetAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppleIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getAppleIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppleIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateAppleIAPConfigShort instead.

UpdateAppleIAPConfig update apple iap config
Update apple iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated apple iap config
*/
func (a *Client) UpdateAppleIAPConfig(params *UpdateAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppleIAPConfigParams()
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
		ID:                 "updateAppleIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppleIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppleIAPConfigShort update apple iap config
Update apple iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated apple iap config
*/
func (a *Client) UpdateAppleIAPConfigShort(params *UpdateAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppleIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateAppleIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppleIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteAppleIAPConfigShort instead.

DeleteAppleIAPConfig delete apple iap config
Delete apple iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteAppleIAPConfig(params *DeleteAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppleIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppleIAPConfigParams()
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
		ID:                 "deleteAppleIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAppleIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAppleIAPConfigShort delete apple iap config
Delete apple iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteAppleIAPConfigShort(params *DeleteAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppleIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppleIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteAppleIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAppleIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEpicGamesIAPConfigShort instead.

GetEpicGamesIAPConfig get epicgames iap config
Get epic games iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : epic games iap config
*/
func (a *Client) GetEpicGamesIAPConfig(params *GetEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetEpicGamesIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEpicGamesIAPConfigParams()
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
		ID:                 "getEpicGamesIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/epicgames",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEpicGamesIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEpicGamesIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEpicGamesIAPConfigShort get epicgames iap config
Get epic games iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : epic games iap config
*/
func (a *Client) GetEpicGamesIAPConfigShort(params *GetEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetEpicGamesIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEpicGamesIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getEpicGamesIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/epicgames",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEpicGamesIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEpicGamesIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateEpicGamesIAPConfigShort instead.

UpdateEpicGamesIAPConfig update epic games iap config
Update epic games iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated epic games iap config
*/
func (a *Client) UpdateEpicGamesIAPConfig(params *UpdateEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEpicGamesIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateEpicGamesIAPConfigParams()
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
		ID:                 "updateEpicGamesIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/epicgames",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateEpicGamesIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateEpicGamesIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateEpicGamesIAPConfigShort update epic games iap config
Update epic games iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated epic games iap config
*/
func (a *Client) UpdateEpicGamesIAPConfigShort(params *UpdateEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEpicGamesIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateEpicGamesIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateEpicGamesIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/epicgames",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateEpicGamesIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateEpicGamesIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteEpicGamesIAPConfigShort instead.

DeleteEpicGamesIAPConfig delete epic games iap config
Delete epic games iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteEpicGamesIAPConfig(params *DeleteEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteEpicGamesIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteEpicGamesIAPConfigParams()
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
		ID:                 "deleteEpicGamesIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/epicgames",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteEpicGamesIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteEpicGamesIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteEpicGamesIAPConfigShort delete epic games iap config
Delete epic games iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteEpicGamesIAPConfigShort(params *DeleteEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteEpicGamesIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteEpicGamesIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteEpicGamesIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/epicgames",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteEpicGamesIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteEpicGamesIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGoogleIAPConfigShort instead.

GetGoogleIAPConfig get google iap config
Get google iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : google iap config
*/
func (a *Client) GetGoogleIAPConfig(params *GetGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetGoogleIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGoogleIAPConfigParams()
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
		ID:                 "getGoogleIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGoogleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGoogleIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGoogleIAPConfigShort get google iap config
Get google iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : google iap config
*/
func (a *Client) GetGoogleIAPConfigShort(params *GetGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetGoogleIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGoogleIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGoogleIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGoogleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGoogleIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGoogleIAPConfigShort instead.

UpdateGoogleIAPConfig update google iap config
Update google iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated google iap config
*/
func (a *Client) UpdateGoogleIAPConfig(params *UpdateGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGoogleIAPConfigParams()
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
		ID:                 "updateGoogleIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGoogleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGoogleIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGoogleIAPConfigShort update google iap config
Update google iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated google iap config
*/
func (a *Client) UpdateGoogleIAPConfigShort(params *UpdateGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGoogleIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGoogleIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGoogleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGoogleIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGoogleIAPConfigShort instead.

DeleteGoogleIAPConfig delete google iap config
Delete google iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteGoogleIAPConfig(params *DeleteGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGoogleIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGoogleIAPConfigParams()
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
		ID:                 "deleteGoogleIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGoogleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGoogleIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGoogleIAPConfigShort delete google iap config
Delete google iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteGoogleIAPConfigShort(params *DeleteGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGoogleIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGoogleIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGoogleIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGoogleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGoogleIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGoogleP12FileShort instead.

UpdateGoogleP12File upload google play p12 file
Upload google play p12 file.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated google iap config
*/
func (a *Client) UpdateGoogleP12File(params *UpdateGoogleP12FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleP12FileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGoogleP12FileParams()
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
		ID:                 "updateGoogleP12File",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGoogleP12FileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGoogleP12FileOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGoogleP12FileShort upload google play p12 file
Upload google play p12 file.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated google iap config
*/
func (a *Client) UpdateGoogleP12FileShort(params *UpdateGoogleP12FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleP12FileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGoogleP12FileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGoogleP12File",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGoogleP12FileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGoogleP12FileOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetIAPItemConfigShort instead.

GetIAPItemConfig get iap item config
Get iap item config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:IAP:CONFIG" , action=2 (READ)
*/
func (a *Client) GetIAPItemConfig(params *GetIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemConfigOK, *GetIAPItemConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIAPItemConfigParams()
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
		ID:                 "getIAPItemConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIAPItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetIAPItemConfigOK:
		return v, nil, nil

	case *GetIAPItemConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetIAPItemConfigShort get iap item config
Get iap item config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:IAP:CONFIG" , action=2 (READ)
*/
func (a *Client) GetIAPItemConfigShort(params *GetIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIAPItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getIAPItemConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIAPItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetIAPItemConfigOK:
		return v, nil
	case *GetIAPItemConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateIAPItemConfigShort instead.

UpdateIAPItemConfig update iap item config
Update iap item config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated iap item config
*/
func (a *Client) UpdateIAPItemConfig(params *UpdateIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateIAPItemConfigOK, *UpdateIAPItemConfigBadRequest, *UpdateIAPItemConfigConflict, *UpdateIAPItemConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateIAPItemConfigParams()
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
		ID:                 "updateIAPItemConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateIAPItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateIAPItemConfigOK:
		return v, nil, nil, nil, nil

	case *UpdateIAPItemConfigBadRequest:
		return nil, v, nil, nil, nil

	case *UpdateIAPItemConfigConflict:
		return nil, nil, v, nil, nil

	case *UpdateIAPItemConfigUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateIAPItemConfigShort update iap item config
Update iap item config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated iap item config
*/
func (a *Client) UpdateIAPItemConfigShort(params *UpdateIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateIAPItemConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateIAPItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateIAPItemConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateIAPItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateIAPItemConfigOK:
		return v, nil
	case *UpdateIAPItemConfigBadRequest:
		return nil, v
	case *UpdateIAPItemConfigConflict:
		return nil, v
	case *UpdateIAPItemConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteIAPItemConfigShort instead.

DeleteIAPItemConfig delete a iap item config
delete a iap item config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:IAP:CONFIG" , action=8 (DELETE)
*/
func (a *Client) DeleteIAPItemConfig(params *DeleteIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteIAPItemConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteIAPItemConfigParams()
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
		ID:                 "deleteIAPItemConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteIAPItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteIAPItemConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteIAPItemConfigShort delete a iap item config
delete a iap item config.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:IAP:CONFIG" , action=8 (DELETE)
*/
func (a *Client) DeleteIAPItemConfigShort(params *DeleteIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteIAPItemConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteIAPItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteIAPItemConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteIAPItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteIAPItemConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetOculusIAPConfigShort instead.

GetOculusIAPConfig get oculus iap config
Get oculus iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : steam iap config
*/
func (a *Client) GetOculusIAPConfig(params *GetOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetOculusIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOculusIAPConfigParams()
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
		ID:                 "getOculusIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOculusIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOculusIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOculusIAPConfigShort get oculus iap config
Get oculus iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : steam iap config
*/
func (a *Client) GetOculusIAPConfigShort(params *GetOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetOculusIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOculusIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getOculusIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOculusIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOculusIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateOculusIAPConfigShort instead.

UpdateOculusIAPConfig update oculus iap config
Update oculus iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated steam iap config
*/
func (a *Client) UpdateOculusIAPConfig(params *UpdateOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateOculusIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateOculusIAPConfigParams()
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
		ID:                 "updateOculusIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateOculusIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateOculusIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateOculusIAPConfigShort update oculus iap config
Update oculus iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated steam iap config
*/
func (a *Client) UpdateOculusIAPConfigShort(params *UpdateOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateOculusIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateOculusIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateOculusIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateOculusIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateOculusIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteOculusIAPConfigShort instead.

DeleteOculusIAPConfig delete oculus iap config
Delete oculus iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteOculusIAPConfig(params *DeleteOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOculusIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteOculusIAPConfigParams()
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
		ID:                 "deleteOculusIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteOculusIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteOculusIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteOculusIAPConfigShort delete oculus iap config
Delete oculus iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteOculusIAPConfigShort(params *DeleteOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOculusIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteOculusIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteOculusIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteOculusIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteOculusIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPlayStationIAPConfigShort instead.

GetPlayStationIAPConfig get playstation iap config
Get playstation iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : playstation iap config
*/
func (a *Client) GetPlayStationIAPConfig(params *GetPlayStationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayStationIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayStationIAPConfigParams()
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
		ID:                 "getPlayStationIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayStationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayStationIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayStationIAPConfigShort get playstation iap config
Get playstation iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : playstation iap config
*/
func (a *Client) GetPlayStationIAPConfigShort(params *GetPlayStationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayStationIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayStationIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlayStationIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayStationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayStationIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePlaystationIAPConfigShort instead.

UpdatePlaystationIAPConfig update playstation iap config
Update playstation iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated playstation iap config
*/
func (a *Client) UpdatePlaystationIAPConfig(params *UpdatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlaystationIAPConfigOK, *UpdatePlaystationIAPConfigBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlaystationIAPConfigParams()
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
		ID:                 "updatePlaystationIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePlaystationIAPConfigOK:
		return v, nil, nil

	case *UpdatePlaystationIAPConfigBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePlaystationIAPConfigShort update playstation iap config
Update playstation iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated playstation iap config
*/
func (a *Client) UpdatePlaystationIAPConfigShort(params *UpdatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlaystationIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlaystationIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePlaystationIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePlaystationIAPConfigOK:
		return v, nil
	case *UpdatePlaystationIAPConfigBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeletePlaystationIAPConfigShort instead.

DeletePlaystationIAPConfig delete playstation iap config
Delete playstation iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeletePlaystationIAPConfig(params *DeletePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlaystationIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlaystationIAPConfigParams()
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
		ID:                 "deletePlaystationIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePlaystationIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePlaystationIAPConfigShort delete playstation iap config
Delete playstation iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeletePlaystationIAPConfigShort(params *DeletePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlaystationIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlaystationIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePlaystationIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePlaystationIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ValidateExistedPlaystationIAPConfigShort instead.

ValidateExistedPlaystationIAPConfig validate existed playstation iap config
Validate playstation iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : Test Results
*/
func (a *Client) ValidateExistedPlaystationIAPConfig(params *ValidateExistedPlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateExistedPlaystationIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidateExistedPlaystationIAPConfigParams()
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
		ID:                 "validateExistedPlaystationIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidateExistedPlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ValidateExistedPlaystationIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ValidateExistedPlaystationIAPConfigShort validate existed playstation iap config
Validate playstation iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : Test Results
*/
func (a *Client) ValidateExistedPlaystationIAPConfigShort(params *ValidateExistedPlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateExistedPlaystationIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidateExistedPlaystationIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "validateExistedPlaystationIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidateExistedPlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ValidateExistedPlaystationIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ValidatePlaystationIAPConfigShort instead.

ValidatePlaystationIAPConfig validate playstation iap config
Validate playstation iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : Test Results
*/
func (a *Client) ValidatePlaystationIAPConfig(params *ValidatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidatePlaystationIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidatePlaystationIAPConfigParams()
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
		ID:                 "validatePlaystationIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidatePlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ValidatePlaystationIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ValidatePlaystationIAPConfigShort validate playstation iap config
Validate playstation iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : Test Results
*/
func (a *Client) ValidatePlaystationIAPConfigShort(params *ValidatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidatePlaystationIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidatePlaystationIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "validatePlaystationIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidatePlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ValidatePlaystationIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSteamIAPConfigShort instead.

GetSteamIAPConfig get steam iap config
Get steam iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : steam iap config
*/
func (a *Client) GetSteamIAPConfig(params *GetSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSteamIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSteamIAPConfigParams()
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
		ID:                 "getSteamIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSteamIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSteamIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSteamIAPConfigShort get steam iap config
Get steam iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : steam iap config
*/
func (a *Client) GetSteamIAPConfigShort(params *GetSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSteamIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSteamIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSteamIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSteamIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSteamIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateSteamIAPConfigShort instead.

UpdateSteamIAPConfig update steam iap config
Update steam iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated steam iap config
*/
func (a *Client) UpdateSteamIAPConfig(params *UpdateSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSteamIAPConfigOK, *UpdateSteamIAPConfigBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSteamIAPConfigParams()
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
		ID:                 "updateSteamIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSteamIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateSteamIAPConfigOK:
		return v, nil, nil

	case *UpdateSteamIAPConfigBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSteamIAPConfigShort update steam iap config
Update steam iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated steam iap config
*/
func (a *Client) UpdateSteamIAPConfigShort(params *UpdateSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSteamIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSteamIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateSteamIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSteamIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSteamIAPConfigOK:
		return v, nil
	case *UpdateSteamIAPConfigBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteSteamIAPConfigShort instead.

DeleteSteamIAPConfig delete steam iap config
Delete steam iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteSteamIAPConfig(params *DeleteSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSteamIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSteamIAPConfigParams()
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
		ID:                 "deleteSteamIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSteamIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSteamIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSteamIAPConfigShort delete steam iap config
Delete steam iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteSteamIAPConfigShort(params *DeleteSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSteamIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSteamIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteSteamIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSteamIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSteamIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetTwitchIAPConfigShort instead.

GetTwitchIAPConfig get twitch iap config
Get twitch iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : twitch iap config
*/
func (a *Client) GetTwitchIAPConfig(params *GetTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetTwitchIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTwitchIAPConfigParams()
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
		ID:                 "getTwitchIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/twitch",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTwitchIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTwitchIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTwitchIAPConfigShort get twitch iap config
Get twitch iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : twitch iap config
*/
func (a *Client) GetTwitchIAPConfigShort(params *GetTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetTwitchIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTwitchIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTwitchIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/twitch",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTwitchIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTwitchIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateTwitchIAPConfigShort instead.

UpdateTwitchIAPConfig update twitch iap config
Update twitch iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated twitch iap config
*/
func (a *Client) UpdateTwitchIAPConfig(params *UpdateTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTwitchIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTwitchIAPConfigParams()
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
		ID:                 "updateTwitchIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/twitch",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTwitchIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateTwitchIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateTwitchIAPConfigShort update twitch iap config
Update twitch iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated twitch iap config
*/
func (a *Client) UpdateTwitchIAPConfigShort(params *UpdateTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTwitchIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTwitchIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateTwitchIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/twitch",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTwitchIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateTwitchIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteTwitchIAPConfigShort instead.

DeleteTwitchIAPConfig delete twitch iap config
Delete twitch iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteTwitchIAPConfig(params *DeleteTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTwitchIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTwitchIAPConfigParams()
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
		ID:                 "deleteTwitchIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/twitch",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTwitchIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTwitchIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTwitchIAPConfigShort delete twitch iap config
Delete twitch iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteTwitchIAPConfigShort(params *DeleteTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTwitchIAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTwitchIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTwitchIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/twitch",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTwitchIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTwitchIAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetXblIAPConfigShort instead.

GetXblIAPConfig get xbox iap config
Get xbox iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : xbox iap config
*/
func (a *Client) GetXblIAPConfig(params *GetXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetXblIAPConfigParams()
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
		ID:                 "getXblIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetXblIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetXblIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetXblIAPConfigShort get xbox iap config
Get xbox iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=2 (READ)
  *  Returns : xbox iap config
*/
func (a *Client) GetXblIAPConfigShort(params *GetXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetXblIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getXblIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetXblIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetXblIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateXblIAPConfigShort instead.

UpdateXblIAPConfig update xbl iap config
Update xbl iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated xbl iap config
*/
func (a *Client) UpdateXblIAPConfig(params *UpdateXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXblIAPConfigParams()
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
		ID:                 "updateXblIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXblIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXblIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateXblIAPConfigShort update xbl iap config
Update xbl iap config. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated xbl iap config
*/
func (a *Client) UpdateXblIAPConfigShort(params *UpdateXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblIAPConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXblIAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateXblIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXblIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXblIAPConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteXblAPConfigShort instead.

DeleteXblAPConfig delete xbl iap config
Delete xbl iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteXblAPConfig(params *DeleteXblAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteXblAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteXblAPConfigParams()
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
		ID:                 "deleteXblAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteXblAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteXblAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteXblAPConfigShort delete xbl iap config
Delete xbl iap config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteXblAPConfigShort(params *DeleteXblAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteXblAPConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteXblAPConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteXblAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteXblAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteXblAPConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateXblBPCertFileShort instead.

UpdateXblBPCertFile upload xbl business partner cert file
Upload xbl business partner cert file.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated xbl iap config
*/
func (a *Client) UpdateXblBPCertFile(params *UpdateXblBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblBPCertFileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXblBPCertFileParams()
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
		ID:                 "updateXblBPCertFile",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXblBPCertFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXblBPCertFileOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateXblBPCertFileShort upload xbl business partner cert file
Upload xbl business partner cert file.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:IAP:CONFIG", action=4 (UPDATE)
  *  Returns : updated xbl iap config
*/
func (a *Client) UpdateXblBPCertFileShort(params *UpdateXblBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblBPCertFileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXblBPCertFileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateXblBPCertFile",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXblBPCertFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXblBPCertFileOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryUserIAPOrdersShort instead.

QueryUserIAPOrders query iap orders
Query IAP orders.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2 (READ)
  *  Returns : paginated iap orders
*/
func (a *Client) QueryUserIAPOrders(params *QueryUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserIAPOrdersParams()
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
		ID:                 "queryUserIAPOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserIAPOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserIAPOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserIAPOrdersShort query iap orders
Query IAP orders.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2 (READ)
  *  Returns : paginated iap orders
*/
func (a *Client) QueryUserIAPOrdersShort(params *QueryUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserIAPOrdersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserIAPOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserIAPOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserIAPOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryAllUserIAPOrdersShort instead.

QueryAllUserIAPOrders query all user iap orders
Query all user IAP orders.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2 (READ)
  *  Returns : list of iap orders
*/
func (a *Client) QueryAllUserIAPOrders(params *QueryAllUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAllUserIAPOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAllUserIAPOrdersParams()
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
		ID:                 "queryAllUserIAPOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/all",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAllUserIAPOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryAllUserIAPOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryAllUserIAPOrdersShort query all user iap orders
Query all user IAP orders.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2 (READ)
  *  Returns : list of iap orders
*/
func (a *Client) QueryAllUserIAPOrdersShort(params *QueryAllUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAllUserIAPOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAllUserIAPOrdersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryAllUserIAPOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/all",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAllUserIAPOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryAllUserIAPOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryUserIAPConsumeHistoryShort instead.

QueryUserIAPConsumeHistory query iap consume history
Query IAP consume history.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2 (READ)
  *  Returns : paginated iap consume history
*/
func (a *Client) QueryUserIAPConsumeHistory(params *QueryUserIAPConsumeHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPConsumeHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserIAPConsumeHistoryParams()
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
		ID:                 "queryUserIAPConsumeHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/consume/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserIAPConsumeHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserIAPConsumeHistoryOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserIAPConsumeHistoryShort query iap consume history
Query IAP consume history.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2 (READ)
  *  Returns : paginated iap consume history
*/
func (a *Client) QueryUserIAPConsumeHistoryShort(params *QueryUserIAPConsumeHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPConsumeHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserIAPConsumeHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserIAPConsumeHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/consume/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserIAPConsumeHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserIAPConsumeHistoryOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use MockFulfillIAPItemShort instead.

MockFulfillIAPItem mock fulfill iap item.
 [TEST FACILITY ONLY] Forbidden in live environment. Mock fulfill iap item without validate receipt.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) MockFulfillIAPItem(params *MockFulfillIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*MockFulfillIAPItemNoContent, *MockFulfillIAPItemBadRequest, *MockFulfillIAPItemNotFound, *MockFulfillIAPItemConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMockFulfillIAPItemParams()
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
		ID:                 "mockFulfillIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/mock/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MockFulfillIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *MockFulfillIAPItemNoContent:
		return v, nil, nil, nil, nil

	case *MockFulfillIAPItemBadRequest:
		return nil, v, nil, nil, nil

	case *MockFulfillIAPItemNotFound:
		return nil, nil, v, nil, nil

	case *MockFulfillIAPItemConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MockFulfillIAPItemShort mock fulfill iap item.
[TEST FACILITY ONLY] Forbidden in live environment. Mock fulfill iap item without validate receipt.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) MockFulfillIAPItemShort(params *MockFulfillIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*MockFulfillIAPItemNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMockFulfillIAPItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "mockFulfillIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/mock/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MockFulfillIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MockFulfillIAPItemNoContent:
		return v, nil
	case *MockFulfillIAPItemBadRequest:
		return nil, v
	case *MockFulfillIAPItemNotFound:
		return nil, v
	case *MockFulfillIAPItemConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetIAPItemMappingShort instead.

GetIAPItemMapping get iap item mapping
Get iap item mapping.
Other detail info:
*/
func (a *Client) GetIAPItemMapping(params *GetIAPItemMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemMappingOK, *GetIAPItemMappingNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIAPItemMappingParams()
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
		ID:                 "getIAPItemMapping",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/iap/item/mapping",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIAPItemMappingReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetIAPItemMappingOK:
		return v, nil, nil

	case *GetIAPItemMappingNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetIAPItemMappingShort get iap item mapping
Get iap item mapping.
Other detail info:
*/
func (a *Client) GetIAPItemMappingShort(params *GetIAPItemMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemMappingOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIAPItemMappingParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getIAPItemMapping",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/iap/item/mapping",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIAPItemMappingReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetIAPItemMappingOK:
		return v, nil
	case *GetIAPItemMappingNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncTwitchDropsEntitlementShort instead.

SyncTwitchDropsEntitlement sync my game twitch drops entitlements.
Sync my game twitch drops entitlements.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:IAP, action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncTwitchDropsEntitlement(params *SyncTwitchDropsEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlementOK, *SyncTwitchDropsEntitlementBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncTwitchDropsEntitlementParams()
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
		ID:                 "syncTwitchDropsEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/iap/twitch/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncTwitchDropsEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SyncTwitchDropsEntitlementOK:
		return v, nil, nil

	case *SyncTwitchDropsEntitlementBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncTwitchDropsEntitlementShort sync my game twitch drops entitlements.
Sync my game twitch drops entitlements.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:IAP, action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncTwitchDropsEntitlementShort(params *SyncTwitchDropsEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncTwitchDropsEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncTwitchDropsEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/iap/twitch/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncTwitchDropsEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncTwitchDropsEntitlementOK:
		return v, nil
	case *SyncTwitchDropsEntitlementBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicFulfillAppleIAPItemShort instead.

PublicFulfillAppleIAPItem fulfill apple iap item.
Verify apple iap receipt and fulfill item.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) PublicFulfillAppleIAPItem(params *PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillAppleIAPItemNoContent, *PublicFulfillAppleIAPItemBadRequest, *PublicFulfillAppleIAPItemNotFound, *PublicFulfillAppleIAPItemConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicFulfillAppleIAPItemParams()
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
		ID:                 "publicFulfillAppleIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicFulfillAppleIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicFulfillAppleIAPItemNoContent:
		return v, nil, nil, nil, nil

	case *PublicFulfillAppleIAPItemBadRequest:
		return nil, v, nil, nil, nil

	case *PublicFulfillAppleIAPItemNotFound:
		return nil, nil, v, nil, nil

	case *PublicFulfillAppleIAPItemConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicFulfillAppleIAPItemShort fulfill apple iap item.
Verify apple iap receipt and fulfill item.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) PublicFulfillAppleIAPItemShort(params *PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillAppleIAPItemNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicFulfillAppleIAPItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicFulfillAppleIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicFulfillAppleIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicFulfillAppleIAPItemNoContent:
		return v, nil
	case *PublicFulfillAppleIAPItemBadRequest:
		return nil, v
	case *PublicFulfillAppleIAPItemNotFound:
		return nil, v
	case *PublicFulfillAppleIAPItemConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncEpicGamesInventoryShort instead.

SyncEpicGamesInventory sync epic games inventory.
Sync epic games inventory's items.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncEpicGamesInventory(params *SyncEpicGamesInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGamesInventoryOK, *SyncEpicGamesInventoryBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncEpicGamesInventoryParams()
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
		ID:                 "syncEpicGamesInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/epicgames/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncEpicGamesInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SyncEpicGamesInventoryOK:
		return v, nil, nil

	case *SyncEpicGamesInventoryBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncEpicGamesInventoryShort sync epic games inventory.
Sync epic games inventory's items.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncEpicGamesInventoryShort(params *SyncEpicGamesInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGamesInventoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncEpicGamesInventoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncEpicGamesInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/epicgames/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncEpicGamesInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncEpicGamesInventoryOK:
		return v, nil
	case *SyncEpicGamesInventoryBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicFulfillGoogleIAPItemShort instead.

PublicFulfillGoogleIAPItem fulfill google iap item.
Verify google iap receipt and fulfill item.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) PublicFulfillGoogleIAPItem(params *PublicFulfillGoogleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillGoogleIAPItemOK, *PublicFulfillGoogleIAPItemBadRequest, *PublicFulfillGoogleIAPItemNotFound, *PublicFulfillGoogleIAPItemConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicFulfillGoogleIAPItemParams()
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
		ID:                 "publicFulfillGoogleIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/google/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicFulfillGoogleIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicFulfillGoogleIAPItemOK:
		return v, nil, nil, nil, nil

	case *PublicFulfillGoogleIAPItemBadRequest:
		return nil, v, nil, nil, nil

	case *PublicFulfillGoogleIAPItemNotFound:
		return nil, nil, v, nil, nil

	case *PublicFulfillGoogleIAPItemConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicFulfillGoogleIAPItemShort fulfill google iap item.
Verify google iap receipt and fulfill item.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) PublicFulfillGoogleIAPItemShort(params *PublicFulfillGoogleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillGoogleIAPItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicFulfillGoogleIAPItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicFulfillGoogleIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/google/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicFulfillGoogleIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicFulfillGoogleIAPItemOK:
		return v, nil
	case *PublicFulfillGoogleIAPItemBadRequest:
		return nil, v
	case *PublicFulfillGoogleIAPItemNotFound:
		return nil, v
	case *PublicFulfillGoogleIAPItemConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncOculusConsumableEntitlementsShort instead.

SyncOculusConsumableEntitlements sync oculus entitlements.
Sync Oculus entitlements.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncOculusConsumableEntitlements(params *SyncOculusConsumableEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusConsumableEntitlementsOK, *SyncOculusConsumableEntitlementsBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncOculusConsumableEntitlementsParams()
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
		ID:                 "syncOculusConsumableEntitlements",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncOculusConsumableEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SyncOculusConsumableEntitlementsOK:
		return v, nil, nil

	case *SyncOculusConsumableEntitlementsBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncOculusConsumableEntitlementsShort sync oculus entitlements.
Sync Oculus entitlements.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncOculusConsumableEntitlementsShort(params *SyncOculusConsumableEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusConsumableEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncOculusConsumableEntitlementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncOculusConsumableEntitlements",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncOculusConsumableEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncOculusConsumableEntitlementsOK:
		return v, nil
	case *SyncOculusConsumableEntitlementsBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicReconcilePlayStationStoreShort instead.

PublicReconcilePlayStationStore synchronize with entitlements in psn store.
Synchronize with entitlements in PSN Store.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns : result of synchronization
*/
func (a *Client) PublicReconcilePlayStationStore(params *PublicReconcilePlayStationStoreParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreOK, *PublicReconcilePlayStationStoreBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReconcilePlayStationStoreParams()
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
		ID:                 "publicReconcilePlayStationStore",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReconcilePlayStationStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicReconcilePlayStationStoreOK:
		return v, nil, nil

	case *PublicReconcilePlayStationStoreBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReconcilePlayStationStoreShort synchronize with entitlements in psn store.
Synchronize with entitlements in PSN Store.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns : result of synchronization
*/
func (a *Client) PublicReconcilePlayStationStoreShort(params *PublicReconcilePlayStationStoreParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReconcilePlayStationStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicReconcilePlayStationStore",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReconcilePlayStationStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicReconcilePlayStationStoreOK:
		return v, nil
	case *PublicReconcilePlayStationStoreBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicReconcilePlayStationStoreWithMultipleServiceLabelsShort instead.

PublicReconcilePlayStationStoreWithMultipleServiceLabels synchronize with entitlements in psn store with multiple service labels.
Synchronize with entitlements in PSN Store with multiple service labels.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns : result of synchronization
*/
func (a *Client) PublicReconcilePlayStationStoreWithMultipleServiceLabels(params *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK, *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsParams()
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
		ID:                 "publicReconcilePlayStationStoreWithMultipleServiceLabels",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync/multiServiceLabels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReconcilePlayStationStoreWithMultipleServiceLabelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK:
		return v, nil, nil

	case *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReconcilePlayStationStoreWithMultipleServiceLabelsShort synchronize with entitlements in psn store with multiple service labels.
Synchronize with entitlements in PSN Store with multiple service labels.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns : result of synchronization
*/
func (a *Client) PublicReconcilePlayStationStoreWithMultipleServiceLabelsShort(params *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicReconcilePlayStationStoreWithMultipleServiceLabels",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync/multiServiceLabels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReconcilePlayStationStoreWithMultipleServiceLabelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK:
		return v, nil
	case *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncSteamInventoryShort instead.

SyncSteamInventory sync steam inventory.
Sync steam inventory's items.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncSteamInventory(params *SyncSteamInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamInventoryNoContent, *SyncSteamInventoryBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamInventoryParams()
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
		ID:                 "syncSteamInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/steam/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SyncSteamInventoryNoContent:
		return v, nil, nil

	case *SyncSteamInventoryBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSteamInventoryShort sync steam inventory.
Sync steam inventory's items.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncSteamInventoryShort(params *SyncSteamInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamInventoryNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamInventoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncSteamInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/steam/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSteamInventoryNoContent:
		return v, nil
	case *SyncSteamInventoryBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncTwitchDropsEntitlement1Short instead.

SyncTwitchDropsEntitlement1 sync twitch drops entitlements.
Sync twitch drops entitlements.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncTwitchDropsEntitlement1(params *SyncTwitchDropsEntitlement1Params, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlement1NoContent, *SyncTwitchDropsEntitlement1BadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncTwitchDropsEntitlement1Params()
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
		ID:                 "syncTwitchDropsEntitlement_1",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/twitch/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncTwitchDropsEntitlement1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SyncTwitchDropsEntitlement1NoContent:
		return v, nil, nil

	case *SyncTwitchDropsEntitlement1BadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncTwitchDropsEntitlement1Short sync twitch drops entitlements.
Sync twitch drops entitlements.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncTwitchDropsEntitlement1Short(params *SyncTwitchDropsEntitlement1Params, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlement1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncTwitchDropsEntitlement1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncTwitchDropsEntitlement_1",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/twitch/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncTwitchDropsEntitlement1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncTwitchDropsEntitlement1NoContent:
		return v, nil
	case *SyncTwitchDropsEntitlement1BadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncXboxInventoryShort instead.

SyncXboxInventory sync xbox inventory.
Sync Xbox inventory's items.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncXboxInventory(params *SyncXboxInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxInventoryOK, *SyncXboxInventoryBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncXboxInventoryParams()
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
		ID:                 "syncXboxInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/xbl/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncXboxInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SyncXboxInventoryOK:
		return v, nil, nil

	case *SyncXboxInventoryBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncXboxInventoryShort sync xbox inventory.
Sync Xbox inventory's items.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:IAP", action=4 (UPDATE)
  *  Returns :
*/
func (a *Client) SyncXboxInventoryShort(params *SyncXboxInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxInventoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncXboxInventoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncXboxInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/xbl/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncXboxInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncXboxInventoryOK:
		return v, nil
	case *SyncXboxInventoryBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
