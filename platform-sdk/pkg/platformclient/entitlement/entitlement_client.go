// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package entitlement

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new entitlement API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for entitlement API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryEntitlements(params *QueryEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsOK, error)
	QueryEntitlementsShort(params *QueryEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsOK, error)
	QueryEntitlementsByItemIds(params *QueryEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsByItemIdsOK, error)
	QueryEntitlementsByItemIdsShort(params *QueryEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsByItemIdsOK, error)
	EnableEntitlementOriginFeature(params *EnableEntitlementOriginFeatureParams, authInfo runtime.ClientAuthInfoWriter) (*EnableEntitlementOriginFeatureOK, error)
	EnableEntitlementOriginFeatureShort(params *EnableEntitlementOriginFeatureParams, authInfo runtime.ClientAuthInfoWriter) (*EnableEntitlementOriginFeatureOK, error)
	GetEntitlementConfigInfo(params *GetEntitlementConfigInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementConfigInfoOK, error)
	GetEntitlementConfigInfoShort(params *GetEntitlementConfigInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementConfigInfoOK, error)
	GrantEntitlements(params *GrantEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*GrantEntitlementsOK, *GrantEntitlementsUnprocessableEntity, error)
	GrantEntitlementsShort(params *GrantEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*GrantEntitlementsOK, error)
	RevokeEntitlements(params *RevokeEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeEntitlementsOK, *RevokeEntitlementsUnprocessableEntity, error)
	RevokeEntitlementsShort(params *RevokeEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeEntitlementsOK, error)
	GetEntitlement(params *GetEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementOK, *GetEntitlementNotFound, error)
	GetEntitlementShort(params *GetEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementOK, error)
	GetPlatformEntitlementConfig(params *GetPlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformEntitlementConfigOK, error)
	GetPlatformEntitlementConfigShort(params *GetPlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformEntitlementConfigOK, error)
	UpdatePlatformEntitlementConfig(params *UpdatePlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformEntitlementConfigOK, *UpdatePlatformEntitlementConfigNotFound, error)
	UpdatePlatformEntitlementConfigShort(params *UpdatePlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformEntitlementConfigOK, error)
	QueryUserEntitlements(params *QueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsOK, error)
	QueryUserEntitlementsShort(params *QueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsOK, error)
	GrantUserEntitlement(params *GrantUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserEntitlementCreated, *GrantUserEntitlementNotFound, *GrantUserEntitlementUnprocessableEntity, error)
	GrantUserEntitlementShort(params *GrantUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserEntitlementCreated, error)
	GetUserAppEntitlementByAppID(params *GetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementByAppIDOK, *GetUserAppEntitlementByAppIDNotFound, error)
	GetUserAppEntitlementByAppIDShort(params *GetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementByAppIDOK, error)
	QueryUserEntitlementsByAppType(params *QueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsByAppTypeOK, error)
	QueryUserEntitlementsByAppTypeShort(params *QueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsByAppTypeOK, error)
	GetUserEntitlementsByIds(params *GetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementsByIdsOK, error)
	GetUserEntitlementsByIdsShort(params *GetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementsByIdsOK, error)
	GetUserEntitlementByItemID(params *GetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementByItemIDOK, *GetUserEntitlementByItemIDNotFound, error)
	GetUserEntitlementByItemIDShort(params *GetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementByItemIDOK, error)
	GetUserActiveEntitlementsByItemIds(params *GetUserActiveEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserActiveEntitlementsByItemIdsOK, error)
	GetUserActiveEntitlementsByItemIdsShort(params *GetUserActiveEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserActiveEntitlementsByItemIdsOK, error)
	GetUserEntitlementBySku(params *GetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementBySkuOK, *GetUserEntitlementBySkuNotFound, error)
	GetUserEntitlementBySkuShort(params *GetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementBySkuOK, error)
	ExistsAnyUserActiveEntitlement(params *ExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementOK, error)
	ExistsAnyUserActiveEntitlementShort(params *ExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementOK, error)
	ExistsAnyUserActiveEntitlementByItemIds(params *ExistsAnyUserActiveEntitlementByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementByItemIdsOK, error)
	ExistsAnyUserActiveEntitlementByItemIdsShort(params *ExistsAnyUserActiveEntitlementByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementByItemIdsOK, error)
	GetUserAppEntitlementOwnershipByAppID(params *GetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementOwnershipByAppIDOK, error)
	GetUserAppEntitlementOwnershipByAppIDShort(params *GetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementOwnershipByAppIDOK, error)
	GetUserEntitlementOwnershipByItemID(params *GetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIDOK, error)
	GetUserEntitlementOwnershipByItemIDShort(params *GetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIDOK, error)
	GetUserEntitlementOwnershipByItemIds(params *GetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIdsOK, error)
	GetUserEntitlementOwnershipByItemIdsShort(params *GetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIdsOK, error)
	GetUserEntitlementOwnershipBySku(params *GetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipBySkuOK, error)
	GetUserEntitlementOwnershipBySkuShort(params *GetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipBySkuOK, error)
	RevokeAllEntitlements(params *RevokeAllEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeAllEntitlementsOK, error)
	RevokeAllEntitlementsShort(params *RevokeAllEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeAllEntitlementsOK, error)
	RevokeUserEntitlements(params *RevokeUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementsOK, error)
	RevokeUserEntitlementsShort(params *RevokeUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementsOK, error)
	GetUserEntitlement(params *GetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOK, *GetUserEntitlementNotFound, error)
	GetUserEntitlementShort(params *GetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOK, error)
	UpdateUserEntitlement(params *UpdateUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserEntitlementOK, *UpdateUserEntitlementNotFound, *UpdateUserEntitlementConflict, *UpdateUserEntitlementUnprocessableEntity, error)
	UpdateUserEntitlementShort(params *UpdateUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserEntitlementOK, error)
	ConsumeUserEntitlement(params *ConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ConsumeUserEntitlementOK, *ConsumeUserEntitlementBadRequest, *ConsumeUserEntitlementNotFound, *ConsumeUserEntitlementConflict, error)
	ConsumeUserEntitlementShort(params *ConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ConsumeUserEntitlementOK, error)
	DisableUserEntitlement(params *DisableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserEntitlementOK, *DisableUserEntitlementNotFound, *DisableUserEntitlementConflict, error)
	DisableUserEntitlementShort(params *DisableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserEntitlementOK, error)
	EnableUserEntitlement(params *EnableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserEntitlementOK, *EnableUserEntitlementNotFound, *EnableUserEntitlementConflict, error)
	EnableUserEntitlementShort(params *EnableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserEntitlementOK, error)
	GetUserEntitlementHistories(params *GetUserEntitlementHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementHistoriesOK, error)
	GetUserEntitlementHistoriesShort(params *GetUserEntitlementHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementHistoriesOK, error)
	RevokeUserEntitlement(params *RevokeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementOK, *RevokeUserEntitlementNotFound, error)
	RevokeUserEntitlementShort(params *RevokeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementOK, error)
	RevokeUserEntitlementByUseCount(params *RevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementByUseCountOK, *RevokeUserEntitlementByUseCountNotFound, error)
	RevokeUserEntitlementByUseCountShort(params *RevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementByUseCountOK, error)
	PreCheckRevokeUserEntitlementByUseCount(params *PreCheckRevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckRevokeUserEntitlementByUseCountOK, *PreCheckRevokeUserEntitlementByUseCountNotFound, error)
	PreCheckRevokeUserEntitlementByUseCountShort(params *PreCheckRevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckRevokeUserEntitlementByUseCountOK, error)
	RevokeUseCount(params *RevokeUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUseCountOK, *RevokeUseCountNotFound, error)
	RevokeUseCountShort(params *RevokeUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUseCountOK, error)
	SellUserEntitlement(params *SellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SellUserEntitlementOK, *SellUserEntitlementNotFound, *SellUserEntitlementConflict, error)
	SellUserEntitlementShort(params *SellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SellUserEntitlementOK, error)
	PublicExistsAnyMyActiveEntitlement(params *PublicExistsAnyMyActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyMyActiveEntitlementOK, error)
	PublicExistsAnyMyActiveEntitlementShort(params *PublicExistsAnyMyActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyMyActiveEntitlementOK, error)
	PublicGetMyAppEntitlementOwnershipByAppID(params *PublicGetMyAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAppEntitlementOwnershipByAppIDOK, error)
	PublicGetMyAppEntitlementOwnershipByAppIDShort(params *PublicGetMyAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAppEntitlementOwnershipByAppIDOK, error)
	PublicGetMyEntitlementOwnershipByItemID(params *PublicGetMyEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipByItemIDOK, error)
	PublicGetMyEntitlementOwnershipByItemIDShort(params *PublicGetMyEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipByItemIDOK, error)
	PublicGetMyEntitlementOwnershipBySku(params *PublicGetMyEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipBySkuOK, error)
	PublicGetMyEntitlementOwnershipBySkuShort(params *PublicGetMyEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipBySkuOK, error)
	PublicGetEntitlementOwnershipToken(params *PublicGetEntitlementOwnershipTokenParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEntitlementOwnershipTokenOK, error)
	PublicGetEntitlementOwnershipTokenShort(params *PublicGetEntitlementOwnershipTokenParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEntitlementOwnershipTokenOK, error)
	PublicQueryUserEntitlements(params *PublicQueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsOK, error)
	PublicQueryUserEntitlementsShort(params *PublicQueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsOK, error)
	PublicGetUserAppEntitlementByAppID(params *PublicGetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementByAppIDOK, *PublicGetUserAppEntitlementByAppIDNotFound, error)
	PublicGetUserAppEntitlementByAppIDShort(params *PublicGetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementByAppIDOK, error)
	PublicQueryUserEntitlementsByAppType(params *PublicQueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsByAppTypeOK, error)
	PublicQueryUserEntitlementsByAppTypeShort(params *PublicQueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsByAppTypeOK, error)
	PublicGetUserEntitlementsByIds(params *PublicGetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementsByIdsOK, error)
	PublicGetUserEntitlementsByIdsShort(params *PublicGetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementsByIdsOK, error)
	PublicGetUserEntitlementByItemID(params *PublicGetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementByItemIDOK, *PublicGetUserEntitlementByItemIDNotFound, error)
	PublicGetUserEntitlementByItemIDShort(params *PublicGetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementByItemIDOK, error)
	PublicGetUserEntitlementBySku(params *PublicGetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementBySkuOK, *PublicGetUserEntitlementBySkuNotFound, error)
	PublicGetUserEntitlementBySkuShort(params *PublicGetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementBySkuOK, error)
	PublicUserEntitlementHistory(params *PublicUserEntitlementHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUserEntitlementHistoryOK, error)
	PublicUserEntitlementHistoryShort(params *PublicUserEntitlementHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUserEntitlementHistoryOK, error)
	PublicExistsAnyUserActiveEntitlement(params *PublicExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyUserActiveEntitlementOK, error)
	PublicExistsAnyUserActiveEntitlementShort(params *PublicExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyUserActiveEntitlementOK, error)
	PublicGetUserAppEntitlementOwnershipByAppID(params *PublicGetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementOwnershipByAppIDOK, error)
	PublicGetUserAppEntitlementOwnershipByAppIDShort(params *PublicGetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementOwnershipByAppIDOK, error)
	PublicGetUserEntitlementOwnershipByItemID(params *PublicGetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIDOK, error)
	PublicGetUserEntitlementOwnershipByItemIDShort(params *PublicGetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIDOK, error)
	PublicGetUserEntitlementOwnershipByItemIds(params *PublicGetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIdsOK, error)
	PublicGetUserEntitlementOwnershipByItemIdsShort(params *PublicGetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIdsOK, error)
	PublicGetUserEntitlementOwnershipBySku(params *PublicGetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipBySkuOK, error)
	PublicGetUserEntitlementOwnershipBySkuShort(params *PublicGetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipBySkuOK, error)
	PublicGetUserEntitlement(params *PublicGetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOK, *PublicGetUserEntitlementNotFound, error)
	PublicGetUserEntitlementShort(params *PublicGetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOK, error)
	PublicConsumeUserEntitlement(params *PublicConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicConsumeUserEntitlementOK, *PublicConsumeUserEntitlementBadRequest, *PublicConsumeUserEntitlementNotFound, *PublicConsumeUserEntitlementConflict, error)
	PublicConsumeUserEntitlementShort(params *PublicConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicConsumeUserEntitlementOK, error)
	PublicSellUserEntitlement(params *PublicSellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSellUserEntitlementOK, *PublicSellUserEntitlementNotFound, *PublicSellUserEntitlementConflict, error)
	PublicSellUserEntitlementShort(params *PublicSellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSellUserEntitlementOK, error)
	PublicSplitUserEntitlement(params *PublicSplitUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSplitUserEntitlementOK, *PublicSplitUserEntitlementNotFound, *PublicSplitUserEntitlementConflict, error)
	PublicSplitUserEntitlementShort(params *PublicSplitUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSplitUserEntitlementOK, error)
	PublicTransferUserEntitlement(params *PublicTransferUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTransferUserEntitlementOK, *PublicTransferUserEntitlementNotFound, *PublicTransferUserEntitlementConflict, error)
	PublicTransferUserEntitlementShort(params *PublicTransferUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTransferUserEntitlementOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryEntitlementsShort instead.

QueryEntitlements query entitlements
Query entitlements.

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) QueryEntitlements(params *QueryEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryEntitlementsParams()
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
		ID:                 "queryEntitlements",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryEntitlementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryEntitlementsShort query entitlements
Query entitlements.

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) QueryEntitlementsShort(params *QueryEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryEntitlementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryEntitlements",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryEntitlementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryEntitlementsByItemIdsShort instead.

QueryEntitlementsByItemIds query entitlements by item ids
Query entitlements by Item Ids.

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) QueryEntitlementsByItemIds(params *QueryEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsByItemIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryEntitlementsByItemIdsParams()
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
		ID:                 "queryEntitlementsByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryEntitlementsByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryEntitlementsByItemIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryEntitlementsByItemIdsShort query entitlements by item ids
Query entitlements by Item Ids.

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) QueryEntitlementsByItemIdsShort(params *QueryEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsByItemIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryEntitlementsByItemIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryEntitlementsByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryEntitlementsByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryEntitlementsByItemIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use EnableEntitlementOriginFeatureShort instead.

EnableEntitlementOriginFeature enable entitlement origin feature
Enable Entitlement origin feature.
Other detail info:

  * Returns : entitlement info
*/
func (a *Client) EnableEntitlementOriginFeature(params *EnableEntitlementOriginFeatureParams, authInfo runtime.ClientAuthInfoWriter) (*EnableEntitlementOriginFeatureOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableEntitlementOriginFeatureParams()
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
		ID:                 "enableEntitlementOriginFeature",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/config/entitlementOrigin/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableEntitlementOriginFeatureReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableEntitlementOriginFeatureOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableEntitlementOriginFeatureShort enable entitlement origin feature
Enable Entitlement origin feature.
Other detail info:

  * Returns : entitlement info
*/
func (a *Client) EnableEntitlementOriginFeatureShort(params *EnableEntitlementOriginFeatureParams, authInfo runtime.ClientAuthInfoWriter) (*EnableEntitlementOriginFeatureOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableEntitlementOriginFeatureParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "enableEntitlementOriginFeature",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/config/entitlementOrigin/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableEntitlementOriginFeatureReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableEntitlementOriginFeatureOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEntitlementConfigInfoShort instead.

GetEntitlementConfigInfo get entitlement config info
Get entitlement config info.
Other detail info:

  * Returns : entitlement info
*/
func (a *Client) GetEntitlementConfigInfo(params *GetEntitlementConfigInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementConfigInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEntitlementConfigInfoParams()
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
		ID:                 "getEntitlementConfigInfo",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/config/info",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEntitlementConfigInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEntitlementConfigInfoOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEntitlementConfigInfoShort get entitlement config info
Get entitlement config info.
Other detail info:

  * Returns : entitlement info
*/
func (a *Client) GetEntitlementConfigInfoShort(params *GetEntitlementConfigInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementConfigInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEntitlementConfigInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getEntitlementConfigInfo",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/config/info",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEntitlementConfigInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEntitlementConfigInfoOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GrantEntitlementsShort instead.

GrantEntitlements grant entitlements to different users
Grant entitlements to multiple users, skipped granting will be treated as fail.

Notes:

Support Item Types:

  *  APP
  *  INGAMEITEM
  *  CODE
  *  SUBSCRIPTION
  *  MEDIA
  *  OPTIONBOX
  *  LOOTBOX

Other detail info:
  * Returns : bulk grant entitlements result
*/
func (a *Client) GrantEntitlements(params *GrantEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*GrantEntitlementsOK, *GrantEntitlementsUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantEntitlementsParams()
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
		ID:                 "grantEntitlements",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/grant",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GrantEntitlementsOK:
		return v, nil, nil

	case *GrantEntitlementsUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GrantEntitlementsShort grant entitlements to different users
Grant entitlements to multiple users, skipped granting will be treated as fail.

Notes:

Support Item Types:

  *  APP
  *  INGAMEITEM
  *  CODE
  *  SUBSCRIPTION
  *  MEDIA
  *  OPTIONBOX
  *  LOOTBOX

Other detail info:
  * Returns : bulk grant entitlements result
*/
func (a *Client) GrantEntitlementsShort(params *GrantEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*GrantEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantEntitlementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "grantEntitlements",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/grant",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GrantEntitlementsOK:
		return v, nil
	case *GrantEntitlementsUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RevokeEntitlementsShort instead.

RevokeEntitlements revoke entitlements by ids
Revoke entitlements, skipped revocation will be treated as fail.
Other detail info:

  * Returns : bulk revoke entitlements result
*/
func (a *Client) RevokeEntitlements(params *RevokeEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeEntitlementsOK, *RevokeEntitlementsUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeEntitlementsParams()
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
		ID:                 "revokeEntitlements",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RevokeEntitlementsOK:
		return v, nil, nil

	case *RevokeEntitlementsUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeEntitlementsShort revoke entitlements by ids
Revoke entitlements, skipped revocation will be treated as fail.
Other detail info:

  * Returns : bulk revoke entitlements result
*/
func (a *Client) RevokeEntitlementsShort(params *RevokeEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeEntitlementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "revokeEntitlements",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeEntitlementsOK:
		return v, nil
	case *RevokeEntitlementsUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEntitlementShort instead.

GetEntitlement get entitlement
Get entitlement.

Other detail info:

  * Returns : entitlement
*/
func (a *Client) GetEntitlement(params *GetEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementOK, *GetEntitlementNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEntitlementParams()
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
		ID:                 "getEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetEntitlementOK:
		return v, nil, nil

	case *GetEntitlementNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEntitlementShort get entitlement
Get entitlement.

Other detail info:

  * Returns : entitlement
*/
func (a *Client) GetEntitlementShort(params *GetEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEntitlementOK:
		return v, nil
	case *GetEntitlementNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPlatformEntitlementConfigShort instead.

GetPlatformEntitlementConfig get platform entitlement config list
Get platform entitlement config list.
Other detail info:

  * Returns : entitlement info
*/
func (a *Client) GetPlatformEntitlementConfig(params *GetPlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformEntitlementConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlatformEntitlementConfigParams()
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
		ID:                 "getPlatformEntitlementConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/entitlement/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlatformEntitlementConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlatformEntitlementConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlatformEntitlementConfigShort get platform entitlement config list
Get platform entitlement config list.
Other detail info:

  * Returns : entitlement info
*/
func (a *Client) GetPlatformEntitlementConfigShort(params *GetPlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformEntitlementConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlatformEntitlementConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlatformEntitlementConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/entitlement/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlatformEntitlementConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlatformEntitlementConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePlatformEntitlementConfigShort instead.

UpdatePlatformEntitlementConfig update platform entitlement config
Update platform entitlement config.
Other detail info:

  * Returns : platform entitlement config
*/
func (a *Client) UpdatePlatformEntitlementConfig(params *UpdatePlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformEntitlementConfigOK, *UpdatePlatformEntitlementConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlatformEntitlementConfigParams()
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
		ID:                 "updatePlatformEntitlementConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/entitlement/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlatformEntitlementConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePlatformEntitlementConfigOK:
		return v, nil, nil

	case *UpdatePlatformEntitlementConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePlatformEntitlementConfigShort update platform entitlement config
Update platform entitlement config.
Other detail info:

  * Returns : platform entitlement config
*/
func (a *Client) UpdatePlatformEntitlementConfigShort(params *UpdatePlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformEntitlementConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlatformEntitlementConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePlatformEntitlementConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/entitlement/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlatformEntitlementConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePlatformEntitlementConfigOK:
		return v, nil
	case *UpdatePlatformEntitlementConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryUserEntitlementsShort instead.

QueryUserEntitlements query user entitlements
Query entitlements for a specific user.

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) QueryUserEntitlements(params *QueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserEntitlementsParams()
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
		ID:                 "queryUserEntitlements",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserEntitlementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserEntitlementsShort query user entitlements
Query entitlements for a specific user.

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) QueryUserEntitlementsShort(params *QueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserEntitlementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserEntitlements",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserEntitlementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GrantUserEntitlementShort instead.

GrantUserEntitlement grant user entitlement
Grant user entitlement.

Notes:

will skip un-supported item if input un-supported item types, please use /admin/namespaces/{namespace}/users/{userId}/fulfillment endpoint if want to fulfill other item type, like coin item

Support Item Types:

  *  APP
  *  INGAMEITEM
  *  CODE
  *  SUBSCRIPTION
  *  MEDIA
  *  OPTIONBOX
  *  LOOTBOX

Other detail info:
  * Returns : granted entitlement
*/
func (a *Client) GrantUserEntitlement(params *GrantUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserEntitlementCreated, *GrantUserEntitlementNotFound, *GrantUserEntitlementUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserEntitlementParams()
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
		ID:                 "grantUserEntitlement",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GrantUserEntitlementCreated:
		return v, nil, nil, nil

	case *GrantUserEntitlementNotFound:
		return nil, v, nil, nil

	case *GrantUserEntitlementUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GrantUserEntitlementShort grant user entitlement
Grant user entitlement.

Notes:

will skip un-supported item if input un-supported item types, please use /admin/namespaces/{namespace}/users/{userId}/fulfillment endpoint if want to fulfill other item type, like coin item

Support Item Types:

  *  APP
  *  INGAMEITEM
  *  CODE
  *  SUBSCRIPTION
  *  MEDIA
  *  OPTIONBOX
  *  LOOTBOX

Other detail info:
  * Returns : granted entitlement
*/
func (a *Client) GrantUserEntitlementShort(params *GrantUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserEntitlementCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "grantUserEntitlement",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GrantUserEntitlementCreated:
		return v, nil
	case *GrantUserEntitlementNotFound:
		return nil, v
	case *GrantUserEntitlementUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserAppEntitlementByAppIDShort instead.

GetUserAppEntitlementByAppID get user app entitlement by appid
Get user app entitlement by appId.
*/
func (a *Client) GetUserAppEntitlementByAppID(params *GetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementByAppIDOK, *GetUserAppEntitlementByAppIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserAppEntitlementByAppIDParams()
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
		ID:                 "getUserAppEntitlementByAppId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserAppEntitlementByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserAppEntitlementByAppIDOK:
		return v, nil, nil

	case *GetUserAppEntitlementByAppIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserAppEntitlementByAppIDShort get user app entitlement by appid
Get user app entitlement by appId.
*/
func (a *Client) GetUserAppEntitlementByAppIDShort(params *GetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementByAppIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserAppEntitlementByAppIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserAppEntitlementByAppId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserAppEntitlementByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserAppEntitlementByAppIDOK:
		return v, nil
	case *GetUserAppEntitlementByAppIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryUserEntitlementsByAppTypeShort instead.

QueryUserEntitlementsByAppType query app entitlements by apptype
Query app entitlements by appType.

Other detail info:

  * Returns : app entitlement pagination
*/
func (a *Client) QueryUserEntitlementsByAppType(params *QueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsByAppTypeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserEntitlementsByAppTypeParams()
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
		ID:                 "queryUserEntitlementsByAppType",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppType",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserEntitlementsByAppTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserEntitlementsByAppTypeOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserEntitlementsByAppTypeShort query app entitlements by apptype
Query app entitlements by appType.

Other detail info:

  * Returns : app entitlement pagination
*/
func (a *Client) QueryUserEntitlementsByAppTypeShort(params *QueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsByAppTypeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserEntitlementsByAppTypeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserEntitlementsByAppType",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppType",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserEntitlementsByAppTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserEntitlementsByAppTypeOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserEntitlementsByIdsShort instead.

GetUserEntitlementsByIds get user entitlements by ids.
Get user entitlements by ids. This will return all entitlements regardless of its status

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) GetUserEntitlementsByIds(params *GetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementsByIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementsByIdsParams()
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
		ID:                 "getUserEntitlementsByIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementsByIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementsByIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementsByIdsShort get user entitlements by ids.
Get user entitlements by ids. This will return all entitlements regardless of its status

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) GetUserEntitlementsByIdsShort(params *GetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementsByIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementsByIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserEntitlementsByIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementsByIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementsByIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserEntitlementByItemIDShort instead.

GetUserEntitlementByItemID get user entitlement by itemid
Get user entitlement by itemId.
*/
func (a *Client) GetUserEntitlementByItemID(params *GetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementByItemIDOK, *GetUserEntitlementByItemIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementByItemIDParams()
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
		ID:                 "getUserEntitlementByItemId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementByItemIDOK:
		return v, nil, nil

	case *GetUserEntitlementByItemIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementByItemIDShort get user entitlement by itemid
Get user entitlement by itemId.
*/
func (a *Client) GetUserEntitlementByItemIDShort(params *GetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementByItemIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementByItemIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserEntitlementByItemId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementByItemIDOK:
		return v, nil
	case *GetUserEntitlementByItemIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserActiveEntitlementsByItemIdsShort instead.

GetUserActiveEntitlementsByItemIds get user entitlements by itemids
Get user entitlements by itemIds.
*/
func (a *Client) GetUserActiveEntitlementsByItemIds(params *GetUserActiveEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserActiveEntitlementsByItemIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserActiveEntitlementsByItemIdsParams()
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
		ID:                 "getUserActiveEntitlementsByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserActiveEntitlementsByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserActiveEntitlementsByItemIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserActiveEntitlementsByItemIdsShort get user entitlements by itemids
Get user entitlements by itemIds.
*/
func (a *Client) GetUserActiveEntitlementsByItemIdsShort(params *GetUserActiveEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserActiveEntitlementsByItemIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserActiveEntitlementsByItemIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserActiveEntitlementsByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserActiveEntitlementsByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserActiveEntitlementsByItemIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserEntitlementBySkuShort instead.

GetUserEntitlementBySku get user entitlement by sku
Get user entitlement by sku.
*/
func (a *Client) GetUserEntitlementBySku(params *GetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementBySkuOK, *GetUserEntitlementBySkuNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementBySkuParams()
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
		ID:                 "getUserEntitlementBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementBySkuOK:
		return v, nil, nil

	case *GetUserEntitlementBySkuNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementBySkuShort get user entitlement by sku
Get user entitlement by sku.
*/
func (a *Client) GetUserEntitlementBySkuShort(params *GetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserEntitlementBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementBySkuOK:
		return v, nil
	case *GetUserEntitlementBySkuNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExistsAnyUserActiveEntitlementShort instead.

ExistsAnyUserActiveEntitlement exists any user active entitlement
Exists any user active entitlement of specified itemIds, skus and appIds
*/
func (a *Client) ExistsAnyUserActiveEntitlement(params *ExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExistsAnyUserActiveEntitlementParams()
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
		ID:                 "existsAnyUserActiveEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExistsAnyUserActiveEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExistsAnyUserActiveEntitlementOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExistsAnyUserActiveEntitlementShort exists any user active entitlement
Exists any user active entitlement of specified itemIds, skus and appIds
*/
func (a *Client) ExistsAnyUserActiveEntitlementShort(params *ExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExistsAnyUserActiveEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "existsAnyUserActiveEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExistsAnyUserActiveEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExistsAnyUserActiveEntitlementOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExistsAnyUserActiveEntitlementByItemIdsShort instead.

ExistsAnyUserActiveEntitlementByItemIds exists any user active entitlement
Exists any user active entitlement of specified items.
*/
func (a *Client) ExistsAnyUserActiveEntitlementByItemIds(params *ExistsAnyUserActiveEntitlementByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementByItemIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExistsAnyUserActiveEntitlementByItemIdsParams()
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
		ID:                 "existsAnyUserActiveEntitlementByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/anyOf",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExistsAnyUserActiveEntitlementByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExistsAnyUserActiveEntitlementByItemIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExistsAnyUserActiveEntitlementByItemIdsShort exists any user active entitlement
Exists any user active entitlement of specified items.
*/
func (a *Client) ExistsAnyUserActiveEntitlementByItemIdsShort(params *ExistsAnyUserActiveEntitlementByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementByItemIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExistsAnyUserActiveEntitlementByItemIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "existsAnyUserActiveEntitlementByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/anyOf",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExistsAnyUserActiveEntitlementByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExistsAnyUserActiveEntitlementByItemIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserAppEntitlementOwnershipByAppIDShort instead.

GetUserAppEntitlementOwnershipByAppID get user app entitlement ownership by appid
Get user app entitlement ownership by appId.
*/
func (a *Client) GetUserAppEntitlementOwnershipByAppID(params *GetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementOwnershipByAppIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserAppEntitlementOwnershipByAppIDParams()
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
		ID:                 "getUserAppEntitlementOwnershipByAppId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserAppEntitlementOwnershipByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserAppEntitlementOwnershipByAppIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserAppEntitlementOwnershipByAppIDShort get user app entitlement ownership by appid
Get user app entitlement ownership by appId.
*/
func (a *Client) GetUserAppEntitlementOwnershipByAppIDShort(params *GetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementOwnershipByAppIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserAppEntitlementOwnershipByAppIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserAppEntitlementOwnershipByAppId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserAppEntitlementOwnershipByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserAppEntitlementOwnershipByAppIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserEntitlementOwnershipByItemIDShort instead.

GetUserEntitlementOwnershipByItemID get user entitlement ownership by itemid
Get user entitlement ownership by itemId.
*/
func (a *Client) GetUserEntitlementOwnershipByItemID(params *GetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementOwnershipByItemIDParams()
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
		ID:                 "getUserEntitlementOwnershipByItemId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementOwnershipByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOwnershipByItemIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementOwnershipByItemIDShort get user entitlement ownership by itemid
Get user entitlement ownership by itemId.
*/
func (a *Client) GetUserEntitlementOwnershipByItemIDShort(params *GetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementOwnershipByItemIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserEntitlementOwnershipByItemId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementOwnershipByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOwnershipByItemIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserEntitlementOwnershipByItemIdsShort instead.

GetUserEntitlementOwnershipByItemIds get user entitlement ownership by itemids
Get user entitlement ownership by itemIds.
*/
func (a *Client) GetUserEntitlementOwnershipByItemIds(params *GetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementOwnershipByItemIdsParams()
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
		ID:                 "getUserEntitlementOwnershipByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementOwnershipByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOwnershipByItemIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementOwnershipByItemIdsShort get user entitlement ownership by itemids
Get user entitlement ownership by itemIds.
*/
func (a *Client) GetUserEntitlementOwnershipByItemIdsShort(params *GetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementOwnershipByItemIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserEntitlementOwnershipByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementOwnershipByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOwnershipByItemIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserEntitlementOwnershipBySkuShort instead.

GetUserEntitlementOwnershipBySku get user entitlement ownership by sku
Get user entitlement ownership by sku.
*/
func (a *Client) GetUserEntitlementOwnershipBySku(params *GetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementOwnershipBySkuParams()
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
		ID:                 "getUserEntitlementOwnershipBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementOwnershipBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOwnershipBySkuOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementOwnershipBySkuShort get user entitlement ownership by sku
Get user entitlement ownership by sku.
*/
func (a *Client) GetUserEntitlementOwnershipBySkuShort(params *GetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementOwnershipBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserEntitlementOwnershipBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementOwnershipBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOwnershipBySkuOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RevokeAllEntitlementsShort instead.

RevokeAllEntitlements revoke all entitlements of a user (this api is for testing purpose only)
Revoke all entitlements of a user (This API is for testing purpose only)
Other detail info:

  * Returns : revoked entitlements count
*/
func (a *Client) RevokeAllEntitlements(params *RevokeAllEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeAllEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeAllEntitlementsParams()
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
		ID:                 "revokeAllEntitlements",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeAllEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeAllEntitlementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeAllEntitlementsShort revoke all entitlements of a user (this api is for testing purpose only)
Revoke all entitlements of a user (This API is for testing purpose only)
Other detail info:

  * Returns : revoked entitlements count
*/
func (a *Client) RevokeAllEntitlementsShort(params *RevokeAllEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeAllEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeAllEntitlementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "revokeAllEntitlements",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeAllEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeAllEntitlementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RevokeUserEntitlementsShort instead.

RevokeUserEntitlements revoke user's entitlements by ids
Revoke user's entitlements by ids.
Other detail info:

  * Returns : revoke entitlements count
*/
func (a *Client) RevokeUserEntitlements(params *RevokeUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserEntitlementsParams()
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
		ID:                 "revokeUserEntitlements",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/revoke/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUserEntitlementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeUserEntitlementsShort revoke user's entitlements by ids
Revoke user's entitlements by ids.
Other detail info:

  * Returns : revoke entitlements count
*/
func (a *Client) RevokeUserEntitlementsShort(params *RevokeUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserEntitlementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "revokeUserEntitlements",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/revoke/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUserEntitlementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserEntitlementShort instead.

GetUserEntitlement get user entitlement
Get user entitlement.

Other detail info:

  * Returns : entitlement
*/
func (a *Client) GetUserEntitlement(params *GetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOK, *GetUserEntitlementNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementParams()
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
		ID:                 "getUserEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOK:
		return v, nil, nil

	case *GetUserEntitlementNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementShort get user entitlement
Get user entitlement.

Other detail info:

  * Returns : entitlement
*/
func (a *Client) GetUserEntitlementShort(params *GetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOK:
		return v, nil
	case *GetUserEntitlementNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateUserEntitlementShort instead.

UpdateUserEntitlement update user entitlement
Update user entitlement. If update CONSUMABLE entitlement useCount to 0, the status will be CONSUMED.
Other detail info:

  * Returns : updated entitlement
*/
func (a *Client) UpdateUserEntitlement(params *UpdateUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserEntitlementOK, *UpdateUserEntitlementNotFound, *UpdateUserEntitlementConflict, *UpdateUserEntitlementUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserEntitlementParams()
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
		ID:                 "updateUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserEntitlementOK:
		return v, nil, nil, nil, nil

	case *UpdateUserEntitlementNotFound:
		return nil, v, nil, nil, nil

	case *UpdateUserEntitlementConflict:
		return nil, nil, v, nil, nil

	case *UpdateUserEntitlementUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserEntitlementShort update user entitlement
Update user entitlement. If update CONSUMABLE entitlement useCount to 0, the status will be CONSUMED.
Other detail info:

  * Returns : updated entitlement
*/
func (a *Client) UpdateUserEntitlementShort(params *UpdateUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserEntitlementOK:
		return v, nil
	case *UpdateUserEntitlementNotFound:
		return nil, v
	case *UpdateUserEntitlementConflict:
		return nil, v
	case *UpdateUserEntitlementUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ConsumeUserEntitlementShort instead.

ConsumeUserEntitlement consume user entitlement
Consume user entitlement. If the entitlement useCount is 0, the status will be CONSUMED.
Other detail info:

  * Returns : consumed entitlement
*/
func (a *Client) ConsumeUserEntitlement(params *ConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ConsumeUserEntitlementOK, *ConsumeUserEntitlementBadRequest, *ConsumeUserEntitlementNotFound, *ConsumeUserEntitlementConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewConsumeUserEntitlementParams()
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
		ID:                 "consumeUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ConsumeUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ConsumeUserEntitlementOK:
		return v, nil, nil, nil, nil

	case *ConsumeUserEntitlementBadRequest:
		return nil, v, nil, nil, nil

	case *ConsumeUserEntitlementNotFound:
		return nil, nil, v, nil, nil

	case *ConsumeUserEntitlementConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ConsumeUserEntitlementShort consume user entitlement
Consume user entitlement. If the entitlement useCount is 0, the status will be CONSUMED.
Other detail info:

  * Returns : consumed entitlement
*/
func (a *Client) ConsumeUserEntitlementShort(params *ConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ConsumeUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewConsumeUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "consumeUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ConsumeUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ConsumeUserEntitlementOK:
		return v, nil
	case *ConsumeUserEntitlementBadRequest:
		return nil, v
	case *ConsumeUserEntitlementNotFound:
		return nil, v
	case *ConsumeUserEntitlementConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DisableUserEntitlementShort instead.

DisableUserEntitlement disable user entitlement
Disable user entitlement if entitlement, only active entitlement can be disable, disabled entitlement can't consume.
 Like revoke, it will lose the entitlement ownership, except disabled entitlement can enable.
Other detail info:

  * Returns : disable entitlement
*/
func (a *Client) DisableUserEntitlement(params *DisableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserEntitlementOK, *DisableUserEntitlementNotFound, *DisableUserEntitlementConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserEntitlementParams()
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
		ID:                 "disableUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DisableUserEntitlementOK:
		return v, nil, nil, nil

	case *DisableUserEntitlementNotFound:
		return nil, v, nil, nil

	case *DisableUserEntitlementConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableUserEntitlementShort disable user entitlement
Disable user entitlement if entitlement, only active entitlement can be disable, disabled entitlement can't consume.
 Like revoke, it will lose the entitlement ownership, except disabled entitlement can enable.
Other detail info:

  * Returns : disable entitlement
*/
func (a *Client) DisableUserEntitlementShort(params *DisableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "disableUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableUserEntitlementOK:
		return v, nil
	case *DisableUserEntitlementNotFound:
		return nil, v
	case *DisableUserEntitlementConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use EnableUserEntitlementShort instead.

EnableUserEntitlement enable user entitlement
Enable user entitlement.
Other detail info:

  * Returns : enable entitlement
*/
func (a *Client) EnableUserEntitlement(params *EnableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserEntitlementOK, *EnableUserEntitlementNotFound, *EnableUserEntitlementConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserEntitlementParams()
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
		ID:                 "enableUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *EnableUserEntitlementOK:
		return v, nil, nil, nil

	case *EnableUserEntitlementNotFound:
		return nil, v, nil, nil

	case *EnableUserEntitlementConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableUserEntitlementShort enable user entitlement
Enable user entitlement.
Other detail info:

  * Returns : enable entitlement
*/
func (a *Client) EnableUserEntitlementShort(params *EnableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "enableUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableUserEntitlementOK:
		return v, nil
	case *EnableUserEntitlementNotFound:
		return nil, v
	case *EnableUserEntitlementConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserEntitlementHistoriesShort instead.

GetUserEntitlementHistories get user entitlement history
Get user entitlement histories.

Other detail info:

  * Returns : list of entitlement history
*/
func (a *Client) GetUserEntitlementHistories(params *GetUserEntitlementHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementHistoriesParams()
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
		ID:                 "getUserEntitlementHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementHistoriesShort get user entitlement history
Get user entitlement histories.

Other detail info:

  * Returns : list of entitlement history
*/
func (a *Client) GetUserEntitlementHistoriesShort(params *GetUserEntitlementHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserEntitlementHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RevokeUserEntitlementShort instead.

RevokeUserEntitlement revoke user entitlement
Revoke user entitlement.
Other detail info:

  * Returns : revoke entitlement
*/
func (a *Client) RevokeUserEntitlement(params *RevokeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementOK, *RevokeUserEntitlementNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserEntitlementParams()
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
		ID:                 "revokeUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RevokeUserEntitlementOK:
		return v, nil, nil

	case *RevokeUserEntitlementNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeUserEntitlementShort revoke user entitlement
Revoke user entitlement.
Other detail info:

  * Returns : revoke entitlement
*/
func (a *Client) RevokeUserEntitlementShort(params *RevokeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "revokeUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUserEntitlementOK:
		return v, nil
	case *RevokeUserEntitlementNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RevokeUserEntitlementByUseCountShort instead.

RevokeUserEntitlementByUseCount revoke specified count of user entitlement.
Revoke specified count of user entitlement.
Other detail info:

  * Returns : The revoked entitlement
*/
func (a *Client) RevokeUserEntitlementByUseCount(params *RevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementByUseCountOK, *RevokeUserEntitlementByUseCountNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserEntitlementByUseCountParams()
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
		ID:                 "revokeUserEntitlementByUseCount",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserEntitlementByUseCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RevokeUserEntitlementByUseCountOK:
		return v, nil, nil

	case *RevokeUserEntitlementByUseCountNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeUserEntitlementByUseCountShort revoke specified count of user entitlement.
Revoke specified count of user entitlement.
Other detail info:

  * Returns : The revoked entitlement
*/
func (a *Client) RevokeUserEntitlementByUseCountShort(params *RevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementByUseCountOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserEntitlementByUseCountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "revokeUserEntitlementByUseCount",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserEntitlementByUseCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUserEntitlementByUseCountOK:
		return v, nil
	case *RevokeUserEntitlementByUseCountNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PreCheckRevokeUserEntitlementByUseCountShort instead.

PreCheckRevokeUserEntitlementByUseCount check if specified count of user entitlement can be revoked
Checks if specified use count of user entitlement can be revoked without actually revoking it.
Other detail info:

  * Returns : true if revokable, false otherwise
*/
func (a *Client) PreCheckRevokeUserEntitlementByUseCount(params *PreCheckRevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckRevokeUserEntitlementByUseCountOK, *PreCheckRevokeUserEntitlementByUseCountNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPreCheckRevokeUserEntitlementByUseCountParams()
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
		ID:                 "preCheckRevokeUserEntitlementByUseCount",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount/preCheck",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PreCheckRevokeUserEntitlementByUseCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PreCheckRevokeUserEntitlementByUseCountOK:
		return v, nil, nil

	case *PreCheckRevokeUserEntitlementByUseCountNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PreCheckRevokeUserEntitlementByUseCountShort check if specified count of user entitlement can be revoked
Checks if specified use count of user entitlement can be revoked without actually revoking it.
Other detail info:

  * Returns : true if revokable, false otherwise
*/
func (a *Client) PreCheckRevokeUserEntitlementByUseCountShort(params *PreCheckRevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckRevokeUserEntitlementByUseCountOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPreCheckRevokeUserEntitlementByUseCountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "preCheckRevokeUserEntitlementByUseCount",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount/preCheck",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PreCheckRevokeUserEntitlementByUseCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PreCheckRevokeUserEntitlementByUseCountOK:
		return v, nil
	case *PreCheckRevokeUserEntitlementByUseCountNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RevokeUseCountShort instead.

RevokeUseCount revoke specified use count of user entitlement
Revoke specified use count of user entitlement. please use /{entitlementId}/revoke/byUseCount endpoint instead of this endpoint
Other detail info:

  * Returns : revoke entitlement
*/
func (a *Client) RevokeUseCount(params *RevokeUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUseCountOK, *RevokeUseCountNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUseCountParams()
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
		ID:                 "revokeUseCount",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revokeByUseCount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUseCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RevokeUseCountOK:
		return v, nil, nil

	case *RevokeUseCountNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeUseCountShort revoke specified use count of user entitlement
Revoke specified use count of user entitlement. please use /{entitlementId}/revoke/byUseCount endpoint instead of this endpoint
Other detail info:

  * Returns : revoke entitlement
*/
func (a *Client) RevokeUseCountShort(params *RevokeUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUseCountOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUseCountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "revokeUseCount",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revokeByUseCount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUseCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUseCountOK:
		return v, nil
	case *RevokeUseCountNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SellUserEntitlementShort instead.

SellUserEntitlement sell user entitlement
Sell user entitlement. If the entitlement is consumable, useCount is 0, the status will be CONSUMED. If the entitlement is durable, the status will be SOLD. Other detail info:
  * Returns : entitlement
*/
func (a *Client) SellUserEntitlement(params *SellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SellUserEntitlementOK, *SellUserEntitlementNotFound, *SellUserEntitlementConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSellUserEntitlementParams()
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
		ID:                 "sellUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SellUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SellUserEntitlementOK:
		return v, nil, nil, nil

	case *SellUserEntitlementNotFound:
		return nil, v, nil, nil

	case *SellUserEntitlementConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SellUserEntitlementShort sell user entitlement
Sell user entitlement. If the entitlement is consumable, useCount is 0, the status will be CONSUMED. If the entitlement is durable, the status will be SOLD. Other detail info:
  * Returns : entitlement
*/
func (a *Client) SellUserEntitlementShort(params *SellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SellUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSellUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "sellUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SellUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SellUserEntitlementOK:
		return v, nil
	case *SellUserEntitlementNotFound:
		return nil, v
	case *SellUserEntitlementConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicExistsAnyMyActiveEntitlementShort instead.

PublicExistsAnyMyActiveEntitlement exists any my active entitlement
Exists any my active entitlement of specified itemIds, skus and appIds
*/
func (a *Client) PublicExistsAnyMyActiveEntitlement(params *PublicExistsAnyMyActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyMyActiveEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicExistsAnyMyActiveEntitlementParams()
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
		ID:                 "publicExistsAnyMyActiveEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicExistsAnyMyActiveEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicExistsAnyMyActiveEntitlementOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicExistsAnyMyActiveEntitlementShort exists any my active entitlement
Exists any my active entitlement of specified itemIds, skus and appIds
*/
func (a *Client) PublicExistsAnyMyActiveEntitlementShort(params *PublicExistsAnyMyActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyMyActiveEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicExistsAnyMyActiveEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicExistsAnyMyActiveEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicExistsAnyMyActiveEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicExistsAnyMyActiveEntitlementOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMyAppEntitlementOwnershipByAppIDShort instead.

PublicGetMyAppEntitlementOwnershipByAppID get my app entitlement ownership by appid
Get my app entitlement ownership by appId.

Other detail info:

  * Path's namespace :
    * can be filled with publisher namespace in order to get publisher namespace app entitlement ownership
*/
func (a *Client) PublicGetMyAppEntitlementOwnershipByAppID(params *PublicGetMyAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAppEntitlementOwnershipByAppIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyAppEntitlementOwnershipByAppIDParams()
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
		ID:                 "publicGetMyAppEntitlementOwnershipByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyAppEntitlementOwnershipByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyAppEntitlementOwnershipByAppIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyAppEntitlementOwnershipByAppIDShort get my app entitlement ownership by appid
Get my app entitlement ownership by appId.

Other detail info:

  * Path's namespace :
    * can be filled with publisher namespace in order to get publisher namespace app entitlement ownership
*/
func (a *Client) PublicGetMyAppEntitlementOwnershipByAppIDShort(params *PublicGetMyAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAppEntitlementOwnershipByAppIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyAppEntitlementOwnershipByAppIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMyAppEntitlementOwnershipByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyAppEntitlementOwnershipByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyAppEntitlementOwnershipByAppIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMyEntitlementOwnershipByItemIDShort instead.

PublicGetMyEntitlementOwnershipByItemID get my entitlement ownership by itemid
Get my entitlement ownership by itemId.

Other detail info:

  * Path's namespace :
    * can be filled with publisher namespace in order to get publisher namespace entitlement ownership by sku
    * can be filled with game namespace in order to get game namespace entitlement ownership by sku
*/
func (a *Client) PublicGetMyEntitlementOwnershipByItemID(params *PublicGetMyEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipByItemIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyEntitlementOwnershipByItemIDParams()
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
		ID:                 "publicGetMyEntitlementOwnershipByItemId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyEntitlementOwnershipByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyEntitlementOwnershipByItemIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyEntitlementOwnershipByItemIDShort get my entitlement ownership by itemid
Get my entitlement ownership by itemId.

Other detail info:

  * Path's namespace :
    * can be filled with publisher namespace in order to get publisher namespace entitlement ownership by sku
    * can be filled with game namespace in order to get game namespace entitlement ownership by sku
*/
func (a *Client) PublicGetMyEntitlementOwnershipByItemIDShort(params *PublicGetMyEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipByItemIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyEntitlementOwnershipByItemIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMyEntitlementOwnershipByItemId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyEntitlementOwnershipByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyEntitlementOwnershipByItemIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMyEntitlementOwnershipBySkuShort instead.

PublicGetMyEntitlementOwnershipBySku get my entitlement ownership by sku
Get my entitlement ownership by sku.

Other detail info:

  * Path's namespace :
    * can be filled with publisher namespace in order to get publisher namespace entitlement ownership by sku
    * can be filled with game namespace in order to get game namespace entitlement ownership by sku
*/
func (a *Client) PublicGetMyEntitlementOwnershipBySku(params *PublicGetMyEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyEntitlementOwnershipBySkuParams()
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
		ID:                 "publicGetMyEntitlementOwnershipBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyEntitlementOwnershipBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyEntitlementOwnershipBySkuOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyEntitlementOwnershipBySkuShort get my entitlement ownership by sku
Get my entitlement ownership by sku.

Other detail info:

  * Path's namespace :
    * can be filled with publisher namespace in order to get publisher namespace entitlement ownership by sku
    * can be filled with game namespace in order to get game namespace entitlement ownership by sku
*/
func (a *Client) PublicGetMyEntitlementOwnershipBySkuShort(params *PublicGetMyEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyEntitlementOwnershipBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMyEntitlementOwnershipBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyEntitlementOwnershipBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyEntitlementOwnershipBySkuOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetEntitlementOwnershipTokenShort instead.

PublicGetEntitlementOwnershipToken gets an entitlement ownership token
Gets an entitlement ownership token of specified itemIds, skus and appIds

The decoded ownership token header like below:


    {

      "kid": "9fd4cd5f991cebe3323605cd12d3b8bfdfc73fa4",

      "typ": "JWT",

      "alg": "RS256"

    }



That you can get the jwks by api /platform/jwks, if the configured private key is same as IAM,

you can also get jwks from IAM endpoint.

The decoded ownership token payload like below:


    {

     "namespace": "accelbyte",

     "entitlements": [

      {

        "itemId": "4c1296291f604c199f7bb7f0ee02e5f8",

        "appType": null,

        "appId": null,

        "namespace": "accelbyte",

        "itemNamespace": "accelbyte",

        "sku": "prime-plus"

      },

      {

        "itemId": "e8f4974cf45c4e1f8d4f0c6990c518bd",

        "appType": "GAME",

        "appId": "omeganebula",

        "namespace": "accelbyte",

        "itemNamespace": "accelbyte",

        "sku": "APPG005ON"

      }

     ],

    "sub": "66459eb6a4e44e6fb0040bd20c1079a5",

    "exp": 1619624360,

    "iat": 1619624060

    }



if there's no active entitlement for the specific params, the entitlements section will be omitted.
*/
func (a *Client) PublicGetEntitlementOwnershipToken(params *PublicGetEntitlementOwnershipTokenParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEntitlementOwnershipTokenOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetEntitlementOwnershipTokenParams()
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
		ID:                 "publicGetEntitlementOwnershipToken",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownershipToken",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetEntitlementOwnershipTokenReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetEntitlementOwnershipTokenOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetEntitlementOwnershipTokenShort gets an entitlement ownership token
Gets an entitlement ownership token of specified itemIds, skus and appIds

The decoded ownership token header like below:


    {

      "kid": "9fd4cd5f991cebe3323605cd12d3b8bfdfc73fa4",

      "typ": "JWT",

      "alg": "RS256"

    }



That you can get the jwks by api /platform/jwks, if the configured private key is same as IAM,

you can also get jwks from IAM endpoint.

The decoded ownership token payload like below:


    {

     "namespace": "accelbyte",

     "entitlements": [

      {

        "itemId": "4c1296291f604c199f7bb7f0ee02e5f8",

        "appType": null,

        "appId": null,

        "namespace": "accelbyte",

        "itemNamespace": "accelbyte",

        "sku": "prime-plus"

      },

      {

        "itemId": "e8f4974cf45c4e1f8d4f0c6990c518bd",

        "appType": "GAME",

        "appId": "omeganebula",

        "namespace": "accelbyte",

        "itemNamespace": "accelbyte",

        "sku": "APPG005ON"

      }

     ],

    "sub": "66459eb6a4e44e6fb0040bd20c1079a5",

    "exp": 1619624360,

    "iat": 1619624060

    }



if there's no active entitlement for the specific params, the entitlements section will be omitted.
*/
func (a *Client) PublicGetEntitlementOwnershipTokenShort(params *PublicGetEntitlementOwnershipTokenParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEntitlementOwnershipTokenOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetEntitlementOwnershipTokenParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetEntitlementOwnershipToken",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownershipToken",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetEntitlementOwnershipTokenReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetEntitlementOwnershipTokenOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicQueryUserEntitlementsShort instead.

PublicQueryUserEntitlements query user entitlements
Query user entitlements for a specific user.

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) PublicQueryUserEntitlements(params *PublicQueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserEntitlementsParams()
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
		ID:                 "publicQueryUserEntitlements",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserEntitlementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserEntitlementsShort query user entitlements
Query user entitlements for a specific user.

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) PublicQueryUserEntitlementsShort(params *PublicQueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserEntitlementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryUserEntitlements",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserEntitlementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserAppEntitlementByAppIDShort instead.

PublicGetUserAppEntitlementByAppID get user app entitlement by appid
Get user app entitlement by appId.
*/
func (a *Client) PublicGetUserAppEntitlementByAppID(params *PublicGetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementByAppIDOK, *PublicGetUserAppEntitlementByAppIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserAppEntitlementByAppIDParams()
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
		ID:                 "publicGetUserAppEntitlementByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserAppEntitlementByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserAppEntitlementByAppIDOK:
		return v, nil, nil

	case *PublicGetUserAppEntitlementByAppIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserAppEntitlementByAppIDShort get user app entitlement by appid
Get user app entitlement by appId.
*/
func (a *Client) PublicGetUserAppEntitlementByAppIDShort(params *PublicGetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementByAppIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserAppEntitlementByAppIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserAppEntitlementByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserAppEntitlementByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserAppEntitlementByAppIDOK:
		return v, nil
	case *PublicGetUserAppEntitlementByAppIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicQueryUserEntitlementsByAppTypeShort instead.

PublicQueryUserEntitlementsByAppType query app entitlements by apptype
Query app entitlements by appType.

Other detail info:

  * Returns : app entitlement pagination
*/
func (a *Client) PublicQueryUserEntitlementsByAppType(params *PublicQueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsByAppTypeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserEntitlementsByAppTypeParams()
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
		ID:                 "publicQueryUserEntitlementsByAppType",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppType",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserEntitlementsByAppTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserEntitlementsByAppTypeOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserEntitlementsByAppTypeShort query app entitlements by apptype
Query app entitlements by appType.

Other detail info:

  * Returns : app entitlement pagination
*/
func (a *Client) PublicQueryUserEntitlementsByAppTypeShort(params *PublicQueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsByAppTypeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserEntitlementsByAppTypeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryUserEntitlementsByAppType",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppType",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserEntitlementsByAppTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserEntitlementsByAppTypeOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserEntitlementsByIdsShort instead.

PublicGetUserEntitlementsByIds get user entitlements by ids.
Get user entitlements by ids..

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) PublicGetUserEntitlementsByIds(params *PublicGetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementsByIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementsByIdsParams()
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
		ID:                 "publicGetUserEntitlementsByIds",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementsByIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementsByIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementsByIdsShort get user entitlements by ids.
Get user entitlements by ids..

Other detail info:

  * Returns : entitlement list
*/
func (a *Client) PublicGetUserEntitlementsByIdsShort(params *PublicGetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementsByIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementsByIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserEntitlementsByIds",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementsByIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementsByIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserEntitlementByItemIDShort instead.

PublicGetUserEntitlementByItemID get user entitlement by itemid
Get user entitlement by itemId.
*/
func (a *Client) PublicGetUserEntitlementByItemID(params *PublicGetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementByItemIDOK, *PublicGetUserEntitlementByItemIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementByItemIDParams()
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
		ID:                 "publicGetUserEntitlementByItemId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementByItemIDOK:
		return v, nil, nil

	case *PublicGetUserEntitlementByItemIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementByItemIDShort get user entitlement by itemid
Get user entitlement by itemId.
*/
func (a *Client) PublicGetUserEntitlementByItemIDShort(params *PublicGetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementByItemIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementByItemIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserEntitlementByItemId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementByItemIDOK:
		return v, nil
	case *PublicGetUserEntitlementByItemIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserEntitlementBySkuShort instead.

PublicGetUserEntitlementBySku get user entitlement by sku
Get user entitlement by sku.
*/
func (a *Client) PublicGetUserEntitlementBySku(params *PublicGetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementBySkuOK, *PublicGetUserEntitlementBySkuNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementBySkuParams()
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
		ID:                 "publicGetUserEntitlementBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementBySkuOK:
		return v, nil, nil

	case *PublicGetUserEntitlementBySkuNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementBySkuShort get user entitlement by sku
Get user entitlement by sku.
*/
func (a *Client) PublicGetUserEntitlementBySkuShort(params *PublicGetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserEntitlementBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementBySkuOK:
		return v, nil
	case *PublicGetUserEntitlementBySkuNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUserEntitlementHistoryShort instead.

PublicUserEntitlementHistory get user entitlements histories.
Get user entitlement history

Other detail info:

  * Returns : user entitlement history list
*/
func (a *Client) PublicUserEntitlementHistory(params *PublicUserEntitlementHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUserEntitlementHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUserEntitlementHistoryParams()
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
		ID:                 "publicUserEntitlementHistory",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUserEntitlementHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUserEntitlementHistoryOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUserEntitlementHistoryShort get user entitlements histories.
Get user entitlement history

Other detail info:

  * Returns : user entitlement history list
*/
func (a *Client) PublicUserEntitlementHistoryShort(params *PublicUserEntitlementHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUserEntitlementHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUserEntitlementHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUserEntitlementHistory",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUserEntitlementHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUserEntitlementHistoryOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicExistsAnyUserActiveEntitlementShort instead.

PublicExistsAnyUserActiveEntitlement exists any user active entitlement
Exists any user active entitlement of specified itemIds, skus and appIds
*/
func (a *Client) PublicExistsAnyUserActiveEntitlement(params *PublicExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyUserActiveEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicExistsAnyUserActiveEntitlementParams()
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
		ID:                 "publicExistsAnyUserActiveEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicExistsAnyUserActiveEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicExistsAnyUserActiveEntitlementOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicExistsAnyUserActiveEntitlementShort exists any user active entitlement
Exists any user active entitlement of specified itemIds, skus and appIds
*/
func (a *Client) PublicExistsAnyUserActiveEntitlementShort(params *PublicExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyUserActiveEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicExistsAnyUserActiveEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicExistsAnyUserActiveEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicExistsAnyUserActiveEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicExistsAnyUserActiveEntitlementOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserAppEntitlementOwnershipByAppIDShort instead.

PublicGetUserAppEntitlementOwnershipByAppID get user app entitlement ownership by appid
Get user app entitlement ownership by appId.
*/
func (a *Client) PublicGetUserAppEntitlementOwnershipByAppID(params *PublicGetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementOwnershipByAppIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserAppEntitlementOwnershipByAppIDParams()
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
		ID:                 "publicGetUserAppEntitlementOwnershipByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserAppEntitlementOwnershipByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserAppEntitlementOwnershipByAppIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserAppEntitlementOwnershipByAppIDShort get user app entitlement ownership by appid
Get user app entitlement ownership by appId.
*/
func (a *Client) PublicGetUserAppEntitlementOwnershipByAppIDShort(params *PublicGetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementOwnershipByAppIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserAppEntitlementOwnershipByAppIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserAppEntitlementOwnershipByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserAppEntitlementOwnershipByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserAppEntitlementOwnershipByAppIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserEntitlementOwnershipByItemIDShort instead.

PublicGetUserEntitlementOwnershipByItemID get user entitlement ownership by itemid
Get user entitlement ownership by itemId.
*/
func (a *Client) PublicGetUserEntitlementOwnershipByItemID(params *PublicGetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementOwnershipByItemIDParams()
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
		ID:                 "publicGetUserEntitlementOwnershipByItemId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementOwnershipByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOwnershipByItemIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementOwnershipByItemIDShort get user entitlement ownership by itemid
Get user entitlement ownership by itemId.
*/
func (a *Client) PublicGetUserEntitlementOwnershipByItemIDShort(params *PublicGetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementOwnershipByItemIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserEntitlementOwnershipByItemId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementOwnershipByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOwnershipByItemIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserEntitlementOwnershipByItemIdsShort instead.

PublicGetUserEntitlementOwnershipByItemIds get user entitlement ownership by itemids
Get user entitlement ownership by itemIds.
*/
func (a *Client) PublicGetUserEntitlementOwnershipByItemIds(params *PublicGetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementOwnershipByItemIdsParams()
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
		ID:                 "publicGetUserEntitlementOwnershipByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementOwnershipByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOwnershipByItemIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementOwnershipByItemIdsShort get user entitlement ownership by itemids
Get user entitlement ownership by itemIds.
*/
func (a *Client) PublicGetUserEntitlementOwnershipByItemIdsShort(params *PublicGetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementOwnershipByItemIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserEntitlementOwnershipByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementOwnershipByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOwnershipByItemIdsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserEntitlementOwnershipBySkuShort instead.

PublicGetUserEntitlementOwnershipBySku get user entitlement ownership by sku
Get user entitlement ownership by sku.
*/
func (a *Client) PublicGetUserEntitlementOwnershipBySku(params *PublicGetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementOwnershipBySkuParams()
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
		ID:                 "publicGetUserEntitlementOwnershipBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementOwnershipBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOwnershipBySkuOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementOwnershipBySkuShort get user entitlement ownership by sku
Get user entitlement ownership by sku.
*/
func (a *Client) PublicGetUserEntitlementOwnershipBySkuShort(params *PublicGetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementOwnershipBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserEntitlementOwnershipBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementOwnershipBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOwnershipBySkuOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserEntitlementShort instead.

PublicGetUserEntitlement get user entitlement
Get user entitlement.

Other detail info:

  * Returns : entitlement
*/
func (a *Client) PublicGetUserEntitlement(params *PublicGetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOK, *PublicGetUserEntitlementNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementParams()
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
		ID:                 "publicGetUserEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOK:
		return v, nil, nil

	case *PublicGetUserEntitlementNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementShort get user entitlement
Get user entitlement.

Other detail info:

  * Returns : entitlement
*/
func (a *Client) PublicGetUserEntitlementShort(params *PublicGetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOK:
		return v, nil
	case *PublicGetUserEntitlementNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicConsumeUserEntitlementShort instead.

PublicConsumeUserEntitlement consume user entitlement
Consume user entitlement. If the entitlement useCount is 0, the status will be CONSUMED. Client should pass item id in options if entitlement clazz is OPTIONBOX
Other detail info:

  * Returns : consumed entitlement
*/
func (a *Client) PublicConsumeUserEntitlement(params *PublicConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicConsumeUserEntitlementOK, *PublicConsumeUserEntitlementBadRequest, *PublicConsumeUserEntitlementNotFound, *PublicConsumeUserEntitlementConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicConsumeUserEntitlementParams()
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
		ID:                 "publicConsumeUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicConsumeUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicConsumeUserEntitlementOK:
		return v, nil, nil, nil, nil

	case *PublicConsumeUserEntitlementBadRequest:
		return nil, v, nil, nil, nil

	case *PublicConsumeUserEntitlementNotFound:
		return nil, nil, v, nil, nil

	case *PublicConsumeUserEntitlementConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicConsumeUserEntitlementShort consume user entitlement
Consume user entitlement. If the entitlement useCount is 0, the status will be CONSUMED. Client should pass item id in options if entitlement clazz is OPTIONBOX
Other detail info:

  * Returns : consumed entitlement
*/
func (a *Client) PublicConsumeUserEntitlementShort(params *PublicConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicConsumeUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicConsumeUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicConsumeUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicConsumeUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicConsumeUserEntitlementOK:
		return v, nil
	case *PublicConsumeUserEntitlementBadRequest:
		return nil, v
	case *PublicConsumeUserEntitlementNotFound:
		return nil, v
	case *PublicConsumeUserEntitlementConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSellUserEntitlementShort instead.

PublicSellUserEntitlement sell user entitlement
Sell user entitlement. If the entitlement is consumable, useCount is 0, the status will be CONSUMED. If the entitlement is durable, the status will be SOLD. Other detail info:
  * Returns : entitlement
*/
func (a *Client) PublicSellUserEntitlement(params *PublicSellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSellUserEntitlementOK, *PublicSellUserEntitlementNotFound, *PublicSellUserEntitlementConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSellUserEntitlementParams()
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
		ID:                 "publicSellUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSellUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSellUserEntitlementOK:
		return v, nil, nil, nil

	case *PublicSellUserEntitlementNotFound:
		return nil, v, nil, nil

	case *PublicSellUserEntitlementConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSellUserEntitlementShort sell user entitlement
Sell user entitlement. If the entitlement is consumable, useCount is 0, the status will be CONSUMED. If the entitlement is durable, the status will be SOLD. Other detail info:
  * Returns : entitlement
*/
func (a *Client) PublicSellUserEntitlementShort(params *PublicSellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSellUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSellUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSellUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSellUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSellUserEntitlementOK:
		return v, nil
	case *PublicSellUserEntitlementNotFound:
		return nil, v
	case *PublicSellUserEntitlementConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSplitUserEntitlementShort instead.

PublicSplitUserEntitlement split user entitlement
Split a specified use count of entitlement and create a new entitlement with splitting use count.Other detail info:
  * Returns : entitlement
*/
func (a *Client) PublicSplitUserEntitlement(params *PublicSplitUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSplitUserEntitlementOK, *PublicSplitUserEntitlementNotFound, *PublicSplitUserEntitlementConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSplitUserEntitlementParams()
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
		ID:                 "publicSplitUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/split",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSplitUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSplitUserEntitlementOK:
		return v, nil, nil, nil

	case *PublicSplitUserEntitlementNotFound:
		return nil, v, nil, nil

	case *PublicSplitUserEntitlementConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSplitUserEntitlementShort split user entitlement
Split a specified use count of entitlement and create a new entitlement with splitting use count.Other detail info:
  * Returns : entitlement
*/
func (a *Client) PublicSplitUserEntitlementShort(params *PublicSplitUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSplitUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSplitUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSplitUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/split",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSplitUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSplitUserEntitlementOK:
		return v, nil
	case *PublicSplitUserEntitlementNotFound:
		return nil, v
	case *PublicSplitUserEntitlementConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicTransferUserEntitlementShort instead.

PublicTransferUserEntitlement transfer user entitlement
Transfer a specified use count from entitlement A to B..Other detail info:
  * Returns : entitlement
*/
func (a *Client) PublicTransferUserEntitlement(params *PublicTransferUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTransferUserEntitlementOK, *PublicTransferUserEntitlementNotFound, *PublicTransferUserEntitlementConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicTransferUserEntitlementParams()
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
		ID:                 "publicTransferUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/transfer",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicTransferUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicTransferUserEntitlementOK:
		return v, nil, nil, nil

	case *PublicTransferUserEntitlementNotFound:
		return nil, v, nil, nil

	case *PublicTransferUserEntitlementConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicTransferUserEntitlementShort transfer user entitlement
Transfer a specified use count from entitlement A to B..Other detail info:
  * Returns : entitlement
*/
func (a *Client) PublicTransferUserEntitlementShort(params *PublicTransferUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTransferUserEntitlementOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicTransferUserEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicTransferUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/transfer",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicTransferUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicTransferUserEntitlementOK:
		return v, nil
	case *PublicTransferUserEntitlementNotFound:
		return nil, v
	case *PublicTransferUserEntitlementConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
