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
	UpdateAppleP8File(params *UpdateAppleP8FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleP8FileOK, error)
	UpdateAppleP8FileShort(params *UpdateAppleP8FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleP8FileOK, error)
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
	UpdateXblBPCertFile(params *UpdateXblBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblBPCertFileOK, *UpdateXblBPCertFileBadRequest, error)
	UpdateXblBPCertFileShort(params *UpdateXblBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblBPCertFileOK, error)
	QueryAbnormalTransactions(params *QueryAbnormalTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAbnormalTransactionsOK, error)
	QueryAbnormalTransactionsShort(params *QueryAbnormalTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAbnormalTransactionsOK, error)
	AdminGetSteamJobInfo(params *AdminGetSteamJobInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSteamJobInfoOK, error)
	AdminGetSteamJobInfoShort(params *AdminGetSteamJobInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSteamJobInfoOK, error)
	AdminResetSteamJobTime(params *AdminResetSteamJobTimeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetSteamJobTimeOK, error)
	AdminResetSteamJobTimeShort(params *AdminResetSteamJobTimeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetSteamJobTimeOK, error)
	AdminRefundIAPOrder(params *AdminRefundIAPOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRefundIAPOrderOK, *AdminRefundIAPOrderNoContent, *AdminRefundIAPOrderBadRequest, *AdminRefundIAPOrderNotFound, *AdminRefundIAPOrderConflict, error)
	AdminRefundIAPOrderShort(params *AdminRefundIAPOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRefundIAPOrderOK, error)
	QuerySteamReportHistories(params *QuerySteamReportHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySteamReportHistoriesOK, error)
	QuerySteamReportHistoriesShort(params *QuerySteamReportHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySteamReportHistoriesOK, error)
	GetIAPOrderConsumeDetails(params *GetIAPOrderConsumeDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPOrderConsumeDetailsOK, error)
	GetIAPOrderConsumeDetailsShort(params *GetIAPOrderConsumeDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPOrderConsumeDetailsOK, error)
	QueryUserIAPOrders(params *QueryUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPOrdersOK, error)
	QueryUserIAPOrdersShort(params *QueryUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPOrdersOK, error)
	QueryAllUserIAPOrders(params *QueryAllUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAllUserIAPOrdersOK, error)
	QueryAllUserIAPOrdersShort(params *QueryAllUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAllUserIAPOrdersOK, error)
	QueryUserIAPConsumeHistory(params *QueryUserIAPConsumeHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPConsumeHistoryOK, error)
	QueryUserIAPConsumeHistoryShort(params *QueryUserIAPConsumeHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPConsumeHistoryOK, error)
	MockFulfillIAPItem(params *MockFulfillIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*MockFulfillIAPItemNoContent, *MockFulfillIAPItemBadRequest, *MockFulfillIAPItemNotFound, *MockFulfillIAPItemConflict, error)
	MockFulfillIAPItemShort(params *MockFulfillIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*MockFulfillIAPItemNoContent, error)
	AdminGetIAPOrderLineItems(params *AdminGetIAPOrderLineItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetIAPOrderLineItemsOK, error)
	AdminGetIAPOrderLineItemsShort(params *AdminGetIAPOrderLineItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetIAPOrderLineItemsOK, error)
	AdminSyncSteamAbnormalTransaction(params *AdminSyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamAbnormalTransactionOK, *AdminSyncSteamAbnormalTransactionBadRequest, *AdminSyncSteamAbnormalTransactionNotFound, *AdminSyncSteamAbnormalTransactionConflict, error)
	AdminSyncSteamAbnormalTransactionShort(params *AdminSyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamAbnormalTransactionOK, error)
	AdminSyncSteamIAPByTransaction(params *AdminSyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamIAPByTransactionOK, *AdminSyncSteamIAPByTransactionBadRequest, *AdminSyncSteamIAPByTransactionNotFound, *AdminSyncSteamIAPByTransactionConflict, error)
	AdminSyncSteamIAPByTransactionShort(params *AdminSyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamIAPByTransactionOK, error)
	GetAppleConfigVersion(params *GetAppleConfigVersionParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleConfigVersionOK, *GetAppleConfigVersionNotFound, error)
	GetAppleConfigVersionShort(params *GetAppleConfigVersionParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleConfigVersionOK, error)
	GetIAPItemMapping(params *GetIAPItemMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemMappingOK, *GetIAPItemMappingNotFound, error)
	GetIAPItemMappingShort(params *GetIAPItemMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemMappingOK, error)
	SyncTwitchDropsEntitlement(params *SyncTwitchDropsEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlementOK, *SyncTwitchDropsEntitlementBadRequest, error)
	SyncTwitchDropsEntitlementShort(params *SyncTwitchDropsEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlementOK, error)
	PublicFulfillAppleIAPItem(params *PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillAppleIAPItemNoContent, *PublicFulfillAppleIAPItemBadRequest, *PublicFulfillAppleIAPItemNotFound, *PublicFulfillAppleIAPItemConflict, error)
	PublicFulfillAppleIAPItemShort(params *PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillAppleIAPItemNoContent, error)
	SyncEpicGamesInventory(params *SyncEpicGamesInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGamesInventoryOK, *SyncEpicGamesInventoryBadRequest, *SyncEpicGamesInventoryNotFound, error)
	SyncEpicGamesInventoryShort(params *SyncEpicGamesInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGamesInventoryOK, error)
	PublicFulfillGoogleIAPItem(params *PublicFulfillGoogleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillGoogleIAPItemOK, *PublicFulfillGoogleIAPItemBadRequest, *PublicFulfillGoogleIAPItemNotFound, *PublicFulfillGoogleIAPItemConflict, error)
	PublicFulfillGoogleIAPItemShort(params *PublicFulfillGoogleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillGoogleIAPItemOK, error)
	SyncOculusConsumableEntitlements(params *SyncOculusConsumableEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusConsumableEntitlementsOK, *SyncOculusConsumableEntitlementsBadRequest, *SyncOculusConsumableEntitlementsNotFound, error)
	SyncOculusConsumableEntitlementsShort(params *SyncOculusConsumableEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusConsumableEntitlementsOK, error)
	PublicReconcilePlayStationStore(params *PublicReconcilePlayStationStoreParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreOK, *PublicReconcilePlayStationStoreBadRequest, *PublicReconcilePlayStationStoreNotFound, error)
	PublicReconcilePlayStationStoreShort(params *PublicReconcilePlayStationStoreParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreOK, error)
	PublicReconcilePlayStationStoreWithMultipleServiceLabels(params *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK, *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest, *PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound, error)
	PublicReconcilePlayStationStoreWithMultipleServiceLabelsShort(params *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK, error)
	SyncSteamInventory(params *SyncSteamInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamInventoryNoContent, *SyncSteamInventoryBadRequest, *SyncSteamInventoryNotFound, error)
	SyncSteamInventoryShort(params *SyncSteamInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamInventoryNoContent, error)
	SyncSteamAbnormalTransaction(params *SyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamAbnormalTransactionOK, *SyncSteamAbnormalTransactionBadRequest, *SyncSteamAbnormalTransactionNotFound, *SyncSteamAbnormalTransactionConflict, error)
	SyncSteamAbnormalTransactionShort(params *SyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamAbnormalTransactionOK, error)
	SyncSteamIAPByTransaction(params *SyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamIAPByTransactionOK, *SyncSteamIAPByTransactionBadRequest, *SyncSteamIAPByTransactionNotFound, *SyncSteamIAPByTransactionConflict, error)
	SyncSteamIAPByTransactionShort(params *SyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamIAPByTransactionOK, error)
	SyncTwitchDropsEntitlement1(params *SyncTwitchDropsEntitlement1Params, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlement1NoContent, *SyncTwitchDropsEntitlement1BadRequest, error)
	SyncTwitchDropsEntitlement1Short(params *SyncTwitchDropsEntitlement1Params, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlement1NoContent, error)
	SyncXboxInventory(params *SyncXboxInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxInventoryOK, *SyncXboxInventoryBadRequest, *SyncXboxInventoryNotFound, error)
	SyncXboxInventoryShort(params *SyncXboxInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxInventoryOK, error)
	V2PublicFulfillAppleIAPItem(params *V2PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*V2PublicFulfillAppleIAPItemNoContent, *V2PublicFulfillAppleIAPItemBadRequest, *V2PublicFulfillAppleIAPItemNotFound, *V2PublicFulfillAppleIAPItemConflict, error)
	V2PublicFulfillAppleIAPItemShort(params *V2PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*V2PublicFulfillAppleIAPItemNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetAppleIAPConfigShort instead.

GetAppleIAPConfig get apple iap config
Get apple iap config.
Other detail info:
                          * Returns : apple iap config
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
                          * Returns : apple iap config
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
                          * Returns : updated apple iap config
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
                          * Returns : updated apple iap config
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
Deprecated: 2022-08-10 - Use UpdateAppleP8FileShort instead.

UpdateAppleP8File upload apple store p8 file
Upload Apple Store p8 file.
Other detail info:
                          * Returns : updated apple iap config
*/
func (a *Client) UpdateAppleP8File(params *UpdateAppleP8FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleP8FileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppleP8FileParams()
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
		ID:                 "updateAppleP8File",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppleP8FileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppleP8FileOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppleP8FileShort upload apple store p8 file
Upload Apple Store p8 file.
Other detail info:
                          * Returns : updated apple iap config
*/
func (a *Client) UpdateAppleP8FileShort(params *UpdateAppleP8FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleP8FileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppleP8FileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateAppleP8File",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppleP8FileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppleP8FileOK:
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
                          * Returns : epic games iap config
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
                          * Returns : epic games iap config
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
                          * Returns : updated epic games iap config
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
                          * Returns : updated epic games iap config
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
                          * Returns : google iap config
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
                          * Returns : google iap config
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
                          * Returns : updated google iap config
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
                          * Returns : updated google iap config
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
                          * Returns : updated google iap config
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
                          * Returns : updated google iap config
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
                          * Returns : updated iap item config
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
                          * Returns : updated iap item config
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
                          * Returns : steam iap config
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
                          * Returns : steam iap config
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
                          * Returns : updated steam iap config
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
                          * Returns : updated steam iap config
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
                          * Returns : playstation iap config
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
                          * Returns : playstation iap config
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
                          * Returns : updated playstation iap config
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
                          * Returns : updated playstation iap config
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
                          * Returns : Test Results
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
                          * Returns : Test Results
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
                          * Returns : Test Results
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
                          * Returns : Test Results
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
                          * Returns : steam iap config
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
                          * Returns : steam iap config
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
                          * Returns : updated steam iap config
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
                          * Returns : updated steam iap config
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
                          * Returns : twitch iap config
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
                          * Returns : twitch iap config
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
                          * Returns : updated twitch iap config
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
                          * Returns : updated twitch iap config
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
                          * Returns : xbox iap config
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
                          * Returns : xbox iap config
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
                          * Returns : updated xbl iap config
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
                          * Returns : updated xbl iap config
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
                          * Returns : updated xbl iap config
*/
func (a *Client) UpdateXblBPCertFile(params *UpdateXblBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblBPCertFileOK, *UpdateXblBPCertFileBadRequest, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateXblBPCertFileOK:
		return v, nil, nil

	case *UpdateXblBPCertFileBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateXblBPCertFileShort upload xbl business partner cert file
Upload xbl business partner cert file.
Other detail info:
                          * Returns : updated xbl iap config
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
	case *UpdateXblBPCertFileBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryAbnormalTransactionsShort instead.

QueryAbnormalTransactions query steam abnormal transactions

*/
func (a *Client) QueryAbnormalTransactions(params *QueryAbnormalTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAbnormalTransactionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAbnormalTransactionsParams()
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
		ID:                 "queryAbnormalTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/abnormal_transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAbnormalTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryAbnormalTransactionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryAbnormalTransactionsShort query steam abnormal transactions

*/
func (a *Client) QueryAbnormalTransactionsShort(params *QueryAbnormalTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAbnormalTransactionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAbnormalTransactionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryAbnormalTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/abnormal_transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAbnormalTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryAbnormalTransactionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetSteamJobInfoShort instead.

AdminGetSteamJobInfo query steam report job info
Query steam report info
*/
func (a *Client) AdminGetSteamJobInfo(params *AdminGetSteamJobInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSteamJobInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetSteamJobInfoParams()
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
		ID:                 "adminGetSteamJobInfo",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/job",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetSteamJobInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetSteamJobInfoOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetSteamJobInfoShort query steam report job info
Query steam report info
*/
func (a *Client) AdminGetSteamJobInfoShort(params *AdminGetSteamJobInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSteamJobInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetSteamJobInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetSteamJobInfo",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/job",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetSteamJobInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetSteamJobInfoOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminResetSteamJobTimeShort instead.

AdminResetSteamJobTime reset steam report job with a special time

*/
func (a *Client) AdminResetSteamJobTime(params *AdminResetSteamJobTimeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetSteamJobTimeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetSteamJobTimeParams()
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
		ID:                 "adminResetSteamJobTime",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/job/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetSteamJobTimeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetSteamJobTimeOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetSteamJobTimeShort reset steam report job with a special time

*/
func (a *Client) AdminResetSteamJobTimeShort(params *AdminResetSteamJobTimeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetSteamJobTimeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetSteamJobTimeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminResetSteamJobTime",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/job/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetSteamJobTimeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetSteamJobTimeOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminRefundIAPOrderShort instead.

AdminRefundIAPOrder refund iap order
Only support steam transaction mode
*/
func (a *Client) AdminRefundIAPOrder(params *AdminRefundIAPOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRefundIAPOrderOK, *AdminRefundIAPOrderNoContent, *AdminRefundIAPOrderBadRequest, *AdminRefundIAPOrderNotFound, *AdminRefundIAPOrderConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRefundIAPOrderParams()
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
		ID:                 "adminRefundIAPOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/orders/{iapOrderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRefundIAPOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminRefundIAPOrderOK:
		return v, nil, nil, nil, nil, nil

	case *AdminRefundIAPOrderNoContent:
		return nil, v, nil, nil, nil, nil

	case *AdminRefundIAPOrderBadRequest:
		return nil, nil, v, nil, nil, nil

	case *AdminRefundIAPOrderNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminRefundIAPOrderConflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRefundIAPOrderShort refund iap order
Only support steam transaction mode
*/
func (a *Client) AdminRefundIAPOrderShort(params *AdminRefundIAPOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRefundIAPOrderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRefundIAPOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminRefundIAPOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/orders/{iapOrderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRefundIAPOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRefundIAPOrderOK:
		return v, nil
	case *AdminRefundIAPOrderNoContent:
		return nil, nil // value not supported in the Short method
	case *AdminRefundIAPOrderBadRequest:
		return nil, v
	case *AdminRefundIAPOrderNotFound:
		return nil, v
	case *AdminRefundIAPOrderConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QuerySteamReportHistoriesShort instead.

QuerySteamReportHistories get iap steam report process histories, default sort by created at

*/
func (a *Client) QuerySteamReportHistories(params *QuerySteamReportHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySteamReportHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySteamReportHistoriesParams()
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
		ID:                 "querySteamReportHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/report/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySteamReportHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QuerySteamReportHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QuerySteamReportHistoriesShort get iap steam report process histories, default sort by created at

*/
func (a *Client) QuerySteamReportHistoriesShort(params *QuerySteamReportHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySteamReportHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySteamReportHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "querySteamReportHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/report/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySteamReportHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QuerySteamReportHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetIAPOrderConsumeDetailsShort instead.

GetIAPOrderConsumeDetails get iap order consume details by iap order number.
Get IAP Order Consume Details by IAP Order Number.
*/
func (a *Client) GetIAPOrderConsumeDetails(params *GetIAPOrderConsumeDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPOrderConsumeDetailsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIAPOrderConsumeDetailsParams()
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
		ID:                 "getIAPOrderConsumeDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/{iapOrderNo}/consumedetails",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIAPOrderConsumeDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetIAPOrderConsumeDetailsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetIAPOrderConsumeDetailsShort get iap order consume details by iap order number.
Get IAP Order Consume Details by IAP Order Number.
*/
func (a *Client) GetIAPOrderConsumeDetailsShort(params *GetIAPOrderConsumeDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPOrderConsumeDetailsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIAPOrderConsumeDetailsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getIAPOrderConsumeDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/{iapOrderNo}/consumedetails",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIAPOrderConsumeDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetIAPOrderConsumeDetailsOK:
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
                          * Returns : paginated iap orders
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
                          * Returns : paginated iap orders
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
                          * Returns : list of iap orders
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
                          * Returns : list of iap orders
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
                          * Returns : paginated iap consume history
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
                          * Returns : paginated iap consume history
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
 [TEST FACILITY ONLY] Forbidden in live environment. Mock fulfill iap item without validate receipt.Other detail info:
                          * Returns :
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
[TEST FACILITY ONLY] Forbidden in live environment. Mock fulfill iap item without validate receipt.Other detail info:
                          * Returns :
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
Deprecated: 2022-08-10 - Use AdminGetIAPOrderLineItemsShort instead.

AdminGetIAPOrderLineItems query iap order line items
Query IAP order ine items.
Other detail info:
                          * Returns : paginated iap orders
*/
func (a *Client) AdminGetIAPOrderLineItems(params *AdminGetIAPOrderLineItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetIAPOrderLineItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetIAPOrderLineItemsParams()
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
		ID:                 "adminGetIAPOrderLineItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/orders/{iapOrderNo}/line_items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetIAPOrderLineItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetIAPOrderLineItemsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetIAPOrderLineItemsShort query iap order line items
Query IAP order ine items.
Other detail info:
                          * Returns : paginated iap orders
*/
func (a *Client) AdminGetIAPOrderLineItemsShort(params *AdminGetIAPOrderLineItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetIAPOrderLineItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetIAPOrderLineItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetIAPOrderLineItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/orders/{iapOrderNo}/line_items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetIAPOrderLineItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetIAPOrderLineItemsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSyncSteamAbnormalTransactionShort instead.

AdminSyncSteamAbnormalTransaction sync abnormal transaction, sync steam order by transaction. only works when steam sync mode is transaction.

*/
func (a *Client) AdminSyncSteamAbnormalTransaction(params *AdminSyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamAbnormalTransactionOK, *AdminSyncSteamAbnormalTransactionBadRequest, *AdminSyncSteamAbnormalTransactionNotFound, *AdminSyncSteamAbnormalTransactionConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncSteamAbnormalTransactionParams()
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
		ID:                 "adminSyncSteamAbnormalTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncSteamAbnormalTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSyncSteamAbnormalTransactionOK:
		return v, nil, nil, nil, nil

	case *AdminSyncSteamAbnormalTransactionBadRequest:
		return nil, v, nil, nil, nil

	case *AdminSyncSteamAbnormalTransactionNotFound:
		return nil, nil, v, nil, nil

	case *AdminSyncSteamAbnormalTransactionConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSyncSteamAbnormalTransactionShort sync abnormal transaction, sync steam order by transaction. only works when steam sync mode is transaction.

*/
func (a *Client) AdminSyncSteamAbnormalTransactionShort(params *AdminSyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamAbnormalTransactionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncSteamAbnormalTransactionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSyncSteamAbnormalTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncSteamAbnormalTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSyncSteamAbnormalTransactionOK:
		return v, nil
	case *AdminSyncSteamAbnormalTransactionBadRequest:
		return nil, v
	case *AdminSyncSteamAbnormalTransactionNotFound:
		return nil, v
	case *AdminSyncSteamAbnormalTransactionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSyncSteamIAPByTransactionShort instead.

AdminSyncSteamIAPByTransaction manual sync steam transaction. only works when steam sync mode is transaction.

*/
func (a *Client) AdminSyncSteamIAPByTransaction(params *AdminSyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamIAPByTransactionOK, *AdminSyncSteamIAPByTransactionBadRequest, *AdminSyncSteamIAPByTransactionNotFound, *AdminSyncSteamIAPByTransactionConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncSteamIAPByTransactionParams()
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
		ID:                 "adminSyncSteamIAPByTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncSteamIAPByTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSyncSteamIAPByTransactionOK:
		return v, nil, nil, nil, nil

	case *AdminSyncSteamIAPByTransactionBadRequest:
		return nil, v, nil, nil, nil

	case *AdminSyncSteamIAPByTransactionNotFound:
		return nil, nil, v, nil, nil

	case *AdminSyncSteamIAPByTransactionConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSyncSteamIAPByTransactionShort manual sync steam transaction. only works when steam sync mode is transaction.

*/
func (a *Client) AdminSyncSteamIAPByTransactionShort(params *AdminSyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamIAPByTransactionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncSteamIAPByTransactionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSyncSteamIAPByTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncSteamIAPByTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSyncSteamIAPByTransactionOK:
		return v, nil
	case *AdminSyncSteamIAPByTransactionBadRequest:
		return nil, v
	case *AdminSyncSteamIAPByTransactionNotFound:
		return nil, v
	case *AdminSyncSteamIAPByTransactionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAppleConfigVersionShort instead.

GetAppleConfigVersion get apple config version
Get apple config version.
*/
func (a *Client) GetAppleConfigVersion(params *GetAppleConfigVersionParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleConfigVersionOK, *GetAppleConfigVersionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppleConfigVersionParams()
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
		ID:                 "getAppleConfigVersion",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/iap/apple/config/version",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppleConfigVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetAppleConfigVersionOK:
		return v, nil, nil

	case *GetAppleConfigVersionNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppleConfigVersionShort get apple config version
Get apple config version.
*/
func (a *Client) GetAppleConfigVersionShort(params *GetAppleConfigVersionParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleConfigVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppleConfigVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getAppleConfigVersion",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/iap/apple/config/version",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppleConfigVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppleConfigVersionOK:
		return v, nil
	case *GetAppleConfigVersionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetIAPItemMappingShort instead.

GetIAPItemMapping get iap item mapping
Get iap item mapping.
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
Verify apple iap receipt and fulfill item. don't support subscriptionOther detail info:
                          * Returns :
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
Verify apple iap receipt and fulfill item. don't support subscriptionOther detail info:
                          * Returns :
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
Sync epic games inventory's items.Other detail info:
                          * Returns :
*/
func (a *Client) SyncEpicGamesInventory(params *SyncEpicGamesInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGamesInventoryOK, *SyncEpicGamesInventoryBadRequest, *SyncEpicGamesInventoryNotFound, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncEpicGamesInventoryOK:
		return v, nil, nil, nil

	case *SyncEpicGamesInventoryBadRequest:
		return nil, v, nil, nil

	case *SyncEpicGamesInventoryNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncEpicGamesInventoryShort sync epic games inventory.
Sync epic games inventory's items.Other detail info:
                          * Returns :
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
	case *SyncEpicGamesInventoryNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicFulfillGoogleIAPItemShort instead.

PublicFulfillGoogleIAPItem fulfill google iap item.
Verify google iap receipt and fulfill item.Other detail info:
                          * Returns :
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
Verify google iap receipt and fulfill item.Other detail info:
                          * Returns :
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
Sync Oculus entitlements.Other detail info:
                          * Returns :
*/
func (a *Client) SyncOculusConsumableEntitlements(params *SyncOculusConsumableEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusConsumableEntitlementsOK, *SyncOculusConsumableEntitlementsBadRequest, *SyncOculusConsumableEntitlementsNotFound, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncOculusConsumableEntitlementsOK:
		return v, nil, nil, nil

	case *SyncOculusConsumableEntitlementsBadRequest:
		return nil, v, nil, nil

	case *SyncOculusConsumableEntitlementsNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncOculusConsumableEntitlementsShort sync oculus entitlements.
Sync Oculus entitlements.Other detail info:
                          * Returns :
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
	case *SyncOculusConsumableEntitlementsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicReconcilePlayStationStoreShort instead.

PublicReconcilePlayStationStore synchronize with entitlements in psn store.
Synchronize with entitlements in PSN Store.Other detail info:
                          * Returns : result of synchronization
*/
func (a *Client) PublicReconcilePlayStationStore(params *PublicReconcilePlayStationStoreParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreOK, *PublicReconcilePlayStationStoreBadRequest, *PublicReconcilePlayStationStoreNotFound, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicReconcilePlayStationStoreOK:
		return v, nil, nil, nil

	case *PublicReconcilePlayStationStoreBadRequest:
		return nil, v, nil, nil

	case *PublicReconcilePlayStationStoreNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReconcilePlayStationStoreShort synchronize with entitlements in psn store.
Synchronize with entitlements in PSN Store.Other detail info:
                          * Returns : result of synchronization
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
	case *PublicReconcilePlayStationStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicReconcilePlayStationStoreWithMultipleServiceLabelsShort instead.

PublicReconcilePlayStationStoreWithMultipleServiceLabels synchronize with entitlements in psn store with multiple service labels.
Synchronize with entitlements in PSN Store with multiple service labels.Other detail info:
                          * Returns : result of synchronization
*/
func (a *Client) PublicReconcilePlayStationStoreWithMultipleServiceLabels(params *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK, *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest, *PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK:
		return v, nil, nil, nil

	case *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest:
		return nil, v, nil, nil

	case *PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReconcilePlayStationStoreWithMultipleServiceLabelsShort synchronize with entitlements in psn store with multiple service labels.
Synchronize with entitlements in PSN Store with multiple service labels.Other detail info:
                          * Returns : result of synchronization
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
	case *PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncSteamInventoryShort instead.

SyncSteamInventory sync steam inventory.
Sync steam inventory's items.Other detail info:
                          * Returns :
*/
func (a *Client) SyncSteamInventory(params *SyncSteamInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamInventoryNoContent, *SyncSteamInventoryBadRequest, *SyncSteamInventoryNotFound, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncSteamInventoryNoContent:
		return v, nil, nil, nil

	case *SyncSteamInventoryBadRequest:
		return nil, v, nil, nil

	case *SyncSteamInventoryNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSteamInventoryShort sync steam inventory.
Sync steam inventory's items.Other detail info:
                          * Returns :
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
	case *SyncSteamInventoryNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncSteamAbnormalTransactionShort instead.

SyncSteamAbnormalTransaction sync abnormal transaction, sync steam order by transaction. only works when steam sync mode is transaction.

*/
func (a *Client) SyncSteamAbnormalTransaction(params *SyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamAbnormalTransactionOK, *SyncSteamAbnormalTransactionBadRequest, *SyncSteamAbnormalTransactionNotFound, *SyncSteamAbnormalTransactionConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamAbnormalTransactionParams()
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
		ID:                 "syncSteamAbnormalTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamAbnormalTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncSteamAbnormalTransactionOK:
		return v, nil, nil, nil, nil

	case *SyncSteamAbnormalTransactionBadRequest:
		return nil, v, nil, nil, nil

	case *SyncSteamAbnormalTransactionNotFound:
		return nil, nil, v, nil, nil

	case *SyncSteamAbnormalTransactionConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSteamAbnormalTransactionShort sync abnormal transaction, sync steam order by transaction. only works when steam sync mode is transaction.

*/
func (a *Client) SyncSteamAbnormalTransactionShort(params *SyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamAbnormalTransactionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamAbnormalTransactionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncSteamAbnormalTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamAbnormalTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSteamAbnormalTransactionOK:
		return v, nil
	case *SyncSteamAbnormalTransactionBadRequest:
		return nil, v
	case *SyncSteamAbnormalTransactionNotFound:
		return nil, v
	case *SyncSteamAbnormalTransactionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncSteamIAPByTransactionShort instead.

SyncSteamIAPByTransaction sync steam in app purchase by transaction.
Sync steam in app purchase by transaction.Other detail info:
                          * Returns :
*/
func (a *Client) SyncSteamIAPByTransaction(params *SyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamIAPByTransactionOK, *SyncSteamIAPByTransactionBadRequest, *SyncSteamIAPByTransactionNotFound, *SyncSteamIAPByTransactionConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamIAPByTransactionParams()
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
		ID:                 "syncSteamIAPByTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamIAPByTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncSteamIAPByTransactionOK:
		return v, nil, nil, nil, nil

	case *SyncSteamIAPByTransactionBadRequest:
		return nil, v, nil, nil, nil

	case *SyncSteamIAPByTransactionNotFound:
		return nil, nil, v, nil, nil

	case *SyncSteamIAPByTransactionConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSteamIAPByTransactionShort sync steam in app purchase by transaction.
Sync steam in app purchase by transaction.Other detail info:
                          * Returns :
*/
func (a *Client) SyncSteamIAPByTransactionShort(params *SyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamIAPByTransactionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamIAPByTransactionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncSteamIAPByTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamIAPByTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSteamIAPByTransactionOK:
		return v, nil
	case *SyncSteamIAPByTransactionBadRequest:
		return nil, v
	case *SyncSteamIAPByTransactionNotFound:
		return nil, v
	case *SyncSteamIAPByTransactionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncTwitchDropsEntitlement1Short instead.

SyncTwitchDropsEntitlement1 sync twitch drops entitlements.
Sync twitch drops entitlements.Other detail info:
                          * Returns :
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
Sync twitch drops entitlements.Other detail info:
                          * Returns :
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
Sync Xbox inventory's items.Other detail info:
                          * Returns :
*/
func (a *Client) SyncXboxInventory(params *SyncXboxInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxInventoryOK, *SyncXboxInventoryBadRequest, *SyncXboxInventoryNotFound, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncXboxInventoryOK:
		return v, nil, nil, nil

	case *SyncXboxInventoryBadRequest:
		return nil, v, nil, nil

	case *SyncXboxInventoryNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncXboxInventoryShort sync xbox inventory.
Sync Xbox inventory's items.Other detail info:
                          * Returns :
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
	case *SyncXboxInventoryNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use V2PublicFulfillAppleIAPItemShort instead.

V2PublicFulfillAppleIAPItem fulfill apple iap item v2.
Verify apple iap transaction and fulfill item, support subscriptionOther detail info:
                          * Returns :
*/
func (a *Client) V2PublicFulfillAppleIAPItem(params *V2PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*V2PublicFulfillAppleIAPItemNoContent, *V2PublicFulfillAppleIAPItemBadRequest, *V2PublicFulfillAppleIAPItemNotFound, *V2PublicFulfillAppleIAPItemConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewV2PublicFulfillAppleIAPItemParams()
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
		ID:                 "V2PublicFulfillAppleIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/v2/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &V2PublicFulfillAppleIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *V2PublicFulfillAppleIAPItemNoContent:
		return v, nil, nil, nil, nil

	case *V2PublicFulfillAppleIAPItemBadRequest:
		return nil, v, nil, nil, nil

	case *V2PublicFulfillAppleIAPItemNotFound:
		return nil, nil, v, nil, nil

	case *V2PublicFulfillAppleIAPItemConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
V2PublicFulfillAppleIAPItemShort fulfill apple iap item v2.
Verify apple iap transaction and fulfill item, support subscriptionOther detail info:
                          * Returns :
*/
func (a *Client) V2PublicFulfillAppleIAPItemShort(params *V2PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*V2PublicFulfillAppleIAPItemNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewV2PublicFulfillAppleIAPItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "V2PublicFulfillAppleIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/v2/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &V2PublicFulfillAppleIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *V2PublicFulfillAppleIAPItemNoContent:
		return v, nil
	case *V2PublicFulfillAppleIAPItemBadRequest:
		return nil, v
	case *V2PublicFulfillAppleIAPItemNotFound:
		return nil, v
	case *V2PublicFulfillAppleIAPItemConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
