// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package user_statistic

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user statistic API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user statistic API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	BulkFetchStatItems(params *BulkFetchStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItemsOK, *BulkFetchStatItemsUnauthorized, *BulkFetchStatItemsForbidden, *BulkFetchStatItemsUnprocessableEntity, *BulkFetchStatItemsInternalServerError, error)
	BulkFetchStatItemsShort(params *BulkFetchStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItemsOK, error)
	BulkIncUserStatItem(params *BulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemOK, *BulkIncUserStatItemBadRequest, *BulkIncUserStatItemUnauthorized, *BulkIncUserStatItemForbidden, *BulkIncUserStatItemUnprocessableEntity, *BulkIncUserStatItemInternalServerError, error)
	BulkIncUserStatItemShort(params *BulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemOK, error)
	BulkIncUserStatItemValue(params *BulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValueOK, *BulkIncUserStatItemValueBadRequest, *BulkIncUserStatItemValueUnauthorized, *BulkIncUserStatItemValueForbidden, *BulkIncUserStatItemValueUnprocessableEntity, *BulkIncUserStatItemValueInternalServerError, error)
	BulkIncUserStatItemValueShort(params *BulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValueOK, error)
	BulkFetchOrDefaultStatItems(params *BulkFetchOrDefaultStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItemsOK, *BulkFetchOrDefaultStatItemsUnauthorized, *BulkFetchOrDefaultStatItemsForbidden, *BulkFetchOrDefaultStatItemsNotFound, *BulkFetchOrDefaultStatItemsUnprocessableEntity, *BulkFetchOrDefaultStatItemsInternalServerError, error)
	BulkFetchOrDefaultStatItemsShort(params *BulkFetchOrDefaultStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItemsOK, error)
	BulkResetUserStatItem(params *BulkResetUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemOK, *BulkResetUserStatItemBadRequest, *BulkResetUserStatItemUnauthorized, *BulkResetUserStatItemForbidden, *BulkResetUserStatItemUnprocessableEntity, *BulkResetUserStatItemInternalServerError, error)
	BulkResetUserStatItemShort(params *BulkResetUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemOK, error)
	GetStatItems(params *GetStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatItemsOK, *GetStatItemsUnauthorized, *GetStatItemsForbidden, *GetStatItemsInternalServerError, error)
	GetStatItemsShort(params *GetStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatItemsOK, error)
	GetUserStatItems(params *GetUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatItemsOK, *GetUserStatItemsUnauthorized, *GetUserStatItemsForbidden, *GetUserStatItemsUnprocessableEntity, *GetUserStatItemsInternalServerError, error)
	GetUserStatItemsShort(params *GetUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatItemsOK, error)
	BulkCreateUserStatItems(params *BulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateUserStatItemsOK, *BulkCreateUserStatItemsBadRequest, *BulkCreateUserStatItemsUnauthorized, *BulkCreateUserStatItemsForbidden, *BulkCreateUserStatItemsUnprocessableEntity, *BulkCreateUserStatItemsInternalServerError, error)
	BulkCreateUserStatItemsShort(params *BulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateUserStatItemsOK, error)
	BulkIncUserStatItem1(params *BulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItem1OK, *BulkIncUserStatItem1BadRequest, *BulkIncUserStatItem1Unauthorized, *BulkIncUserStatItem1Forbidden, *BulkIncUserStatItem1UnprocessableEntity, *BulkIncUserStatItem1InternalServerError, error)
	BulkIncUserStatItem1Short(params *BulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItem1OK, error)
	BulkIncUserStatItemValue1(params *BulkIncUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue1OK, *BulkIncUserStatItemValue1BadRequest, *BulkIncUserStatItemValue1Unauthorized, *BulkIncUserStatItemValue1Forbidden, *BulkIncUserStatItemValue1UnprocessableEntity, *BulkIncUserStatItemValue1InternalServerError, error)
	BulkIncUserStatItemValue1Short(params *BulkIncUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue1OK, error)
	BulkResetUserStatItem1(params *BulkResetUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem1OK, *BulkResetUserStatItem1BadRequest, *BulkResetUserStatItem1Unauthorized, *BulkResetUserStatItem1Forbidden, *BulkResetUserStatItem1UnprocessableEntity, *BulkResetUserStatItem1InternalServerError, error)
	BulkResetUserStatItem1Short(params *BulkResetUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem1OK, error)
	CreateUserStatItem(params *CreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserStatItemCreated, *CreateUserStatItemUnauthorized, *CreateUserStatItemForbidden, *CreateUserStatItemNotFound, *CreateUserStatItemConflict, *CreateUserStatItemUnprocessableEntity, *CreateUserStatItemInternalServerError, error)
	CreateUserStatItemShort(params *CreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserStatItemCreated, error)
	DeleteUserStatItems(params *DeleteUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItemsNoContent, *DeleteUserStatItemsUnauthorized, *DeleteUserStatItemsForbidden, *DeleteUserStatItemsNotFound, *DeleteUserStatItemsUnprocessableEntity, *DeleteUserStatItemsInternalServerError, error)
	DeleteUserStatItemsShort(params *DeleteUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItemsNoContent, error)
	IncUserStatItemValue(params *IncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*IncUserStatItemValueOK, *IncUserStatItemValueBadRequest, *IncUserStatItemValueUnauthorized, *IncUserStatItemValueForbidden, *IncUserStatItemValueNotFound, *IncUserStatItemValueConflict, *IncUserStatItemValueUnprocessableEntity, *IncUserStatItemValueInternalServerError, error)
	IncUserStatItemValueShort(params *IncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*IncUserStatItemValueOK, error)
	ResetUserStatItemValue(params *ResetUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValueOK, *ResetUserStatItemValueBadRequest, *ResetUserStatItemValueUnauthorized, *ResetUserStatItemValueForbidden, *ResetUserStatItemValueNotFound, *ResetUserStatItemValueUnprocessableEntity, *ResetUserStatItemValueInternalServerError, error)
	ResetUserStatItemValueShort(params *ResetUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValueOK, error)
	BulkFetchStatItems1(params *BulkFetchStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItems1OK, *BulkFetchStatItems1Unauthorized, *BulkFetchStatItems1Forbidden, *BulkFetchStatItems1UnprocessableEntity, *BulkFetchStatItems1InternalServerError, error)
	BulkFetchStatItems1Short(params *BulkFetchStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItems1OK, error)
	PublicBulkIncUserStatItem(params *PublicBulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemOK, *PublicBulkIncUserStatItemBadRequest, *PublicBulkIncUserStatItemUnauthorized, *PublicBulkIncUserStatItemForbidden, *PublicBulkIncUserStatItemUnprocessableEntity, *PublicBulkIncUserStatItemInternalServerError, error)
	PublicBulkIncUserStatItemShort(params *PublicBulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemOK, error)
	PublicBulkIncUserStatItemValue(params *PublicBulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemValueOK, *PublicBulkIncUserStatItemValueBadRequest, *PublicBulkIncUserStatItemValueUnauthorized, *PublicBulkIncUserStatItemValueForbidden, *PublicBulkIncUserStatItemValueUnprocessableEntity, *PublicBulkIncUserStatItemValueInternalServerError, error)
	PublicBulkIncUserStatItemValueShort(params *PublicBulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemValueOK, error)
	BulkResetUserStatItem2(params *BulkResetUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem2OK, *BulkResetUserStatItem2BadRequest, *BulkResetUserStatItem2Unauthorized, *BulkResetUserStatItem2Forbidden, *BulkResetUserStatItem2UnprocessableEntity, *BulkResetUserStatItem2InternalServerError, error)
	BulkResetUserStatItem2Short(params *BulkResetUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem2OK, error)
	PublicListMyStatItems(params *PublicListMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatItemsOK, *PublicListMyStatItemsUnauthorized, *PublicListMyStatItemsForbidden, *PublicListMyStatItemsUnprocessableEntity, *PublicListMyStatItemsInternalServerError, error)
	PublicListMyStatItemsShort(params *PublicListMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatItemsOK, error)
	PublicListAllMyStatItems(params *PublicListAllMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAllMyStatItemsOK, *PublicListAllMyStatItemsBadRequest, *PublicListAllMyStatItemsForbidden, *PublicListAllMyStatItemsNotFound, *PublicListAllMyStatItemsUnprocessableEntity, error)
	PublicListAllMyStatItemsShort(params *PublicListAllMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAllMyStatItemsOK, error)
	PublicQueryUserStatItems(params *PublicQueryUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItemsOK, *PublicQueryUserStatItemsUnauthorized, *PublicQueryUserStatItemsForbidden, *PublicQueryUserStatItemsUnprocessableEntity, *PublicQueryUserStatItemsInternalServerError, error)
	PublicQueryUserStatItemsShort(params *PublicQueryUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItemsOK, error)
	PublicBulkCreateUserStatItems(params *PublicBulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkCreateUserStatItemsOK, *PublicBulkCreateUserStatItemsBadRequest, *PublicBulkCreateUserStatItemsUnauthorized, *PublicBulkCreateUserStatItemsForbidden, *PublicBulkCreateUserStatItemsUnprocessableEntity, *PublicBulkCreateUserStatItemsInternalServerError, error)
	PublicBulkCreateUserStatItemsShort(params *PublicBulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkCreateUserStatItemsOK, error)
	PublicQueryUserStatItems1(params *PublicQueryUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems1OK, *PublicQueryUserStatItems1BadRequest, *PublicQueryUserStatItems1Unauthorized, *PublicQueryUserStatItems1Forbidden, *PublicQueryUserStatItems1NotFound, *PublicQueryUserStatItems1UnprocessableEntity, *PublicQueryUserStatItems1InternalServerError, error)
	PublicQueryUserStatItems1Short(params *PublicQueryUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems1OK, error)
	PublicBulkIncUserStatItem1(params *PublicBulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItem1OK, *PublicBulkIncUserStatItem1BadRequest, *PublicBulkIncUserStatItem1Unauthorized, *PublicBulkIncUserStatItem1Forbidden, *PublicBulkIncUserStatItem1UnprocessableEntity, *PublicBulkIncUserStatItem1InternalServerError, error)
	PublicBulkIncUserStatItem1Short(params *PublicBulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItem1OK, error)
	BulkIncUserStatItemValue2(params *BulkIncUserStatItemValue2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue2OK, *BulkIncUserStatItemValue2BadRequest, *BulkIncUserStatItemValue2Unauthorized, *BulkIncUserStatItemValue2Forbidden, *BulkIncUserStatItemValue2UnprocessableEntity, *BulkIncUserStatItemValue2InternalServerError, error)
	BulkIncUserStatItemValue2Short(params *BulkIncUserStatItemValue2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue2OK, error)
	BulkResetUserStatItem3(params *BulkResetUserStatItem3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem3OK, *BulkResetUserStatItem3BadRequest, *BulkResetUserStatItem3Unauthorized, *BulkResetUserStatItem3Forbidden, *BulkResetUserStatItem3UnprocessableEntity, *BulkResetUserStatItem3InternalServerError, error)
	BulkResetUserStatItem3Short(params *BulkResetUserStatItem3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem3OK, error)
	PublicCreateUserStatItem(params *PublicCreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserStatItemCreated, *PublicCreateUserStatItemUnauthorized, *PublicCreateUserStatItemForbidden, *PublicCreateUserStatItemNotFound, *PublicCreateUserStatItemConflict, *PublicCreateUserStatItemUnprocessableEntity, *PublicCreateUserStatItemInternalServerError, error)
	PublicCreateUserStatItemShort(params *PublicCreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserStatItemCreated, error)
	DeleteUserStatItems1(params *DeleteUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems1NoContent, *DeleteUserStatItems1Unauthorized, *DeleteUserStatItems1Forbidden, *DeleteUserStatItems1NotFound, *DeleteUserStatItems1UnprocessableEntity, *DeleteUserStatItems1InternalServerError, error)
	DeleteUserStatItems1Short(params *DeleteUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems1NoContent, error)
	PublicIncUserStatItem(params *PublicIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemOK, *PublicIncUserStatItemBadRequest, *PublicIncUserStatItemUnauthorized, *PublicIncUserStatItemForbidden, *PublicIncUserStatItemNotFound, *PublicIncUserStatItemConflict, *PublicIncUserStatItemUnprocessableEntity, *PublicIncUserStatItemInternalServerError, error)
	PublicIncUserStatItemShort(params *PublicIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemOK, error)
	PublicIncUserStatItemValue(params *PublicIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemValueOK, *PublicIncUserStatItemValueBadRequest, *PublicIncUserStatItemValueUnauthorized, *PublicIncUserStatItemValueForbidden, *PublicIncUserStatItemValueNotFound, *PublicIncUserStatItemValueConflict, *PublicIncUserStatItemValueUnprocessableEntity, *PublicIncUserStatItemValueInternalServerError, error)
	PublicIncUserStatItemValueShort(params *PublicIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemValueOK, error)
	ResetUserStatItemValue1(params *ResetUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValue1OK, *ResetUserStatItemValue1BadRequest, *ResetUserStatItemValue1Unauthorized, *ResetUserStatItemValue1Forbidden, *ResetUserStatItemValue1NotFound, *ResetUserStatItemValue1UnprocessableEntity, *ResetUserStatItemValue1InternalServerError, error)
	ResetUserStatItemValue1Short(params *ResetUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValue1OK, error)
	BulkUpdateUserStatItemV2(params *BulkUpdateUserStatItemV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemV2OK, *BulkUpdateUserStatItemV2BadRequest, *BulkUpdateUserStatItemV2Unauthorized, *BulkUpdateUserStatItemV2Forbidden, *BulkUpdateUserStatItemV2UnprocessableEntity, *BulkUpdateUserStatItemV2InternalServerError, error)
	BulkUpdateUserStatItemV2Short(params *BulkUpdateUserStatItemV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemV2OK, error)
	BulkFetchOrDefaultStatItems1(params *BulkFetchOrDefaultStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItems1OK, *BulkFetchOrDefaultStatItems1Unauthorized, *BulkFetchOrDefaultStatItems1Forbidden, *BulkFetchOrDefaultStatItems1NotFound, *BulkFetchOrDefaultStatItems1UnprocessableEntity, *BulkFetchOrDefaultStatItems1InternalServerError, error)
	BulkFetchOrDefaultStatItems1Short(params *BulkFetchOrDefaultStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItems1OK, error)
	AdminListUsersStatItems(params *AdminListUsersStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersStatItemsOK, *AdminListUsersStatItemsBadRequest, *AdminListUsersStatItemsUnauthorized, *AdminListUsersStatItemsForbidden, *AdminListUsersStatItemsNotFound, *AdminListUsersStatItemsUnprocessableEntity, *AdminListUsersStatItemsInternalServerError, error)
	AdminListUsersStatItemsShort(params *AdminListUsersStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersStatItemsOK, error)
	BulkUpdateUserStatItem(params *BulkUpdateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemOK, *BulkUpdateUserStatItemBadRequest, *BulkUpdateUserStatItemUnauthorized, *BulkUpdateUserStatItemForbidden, *BulkUpdateUserStatItemUnprocessableEntity, *BulkUpdateUserStatItemInternalServerError, error)
	BulkUpdateUserStatItemShort(params *BulkUpdateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemOK, error)
	BulkGetOrDefaultByUserID(params *BulkGetOrDefaultByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOrDefaultByUserIDOK, *BulkGetOrDefaultByUserIDUnauthorized, *BulkGetOrDefaultByUserIDForbidden, *BulkGetOrDefaultByUserIDUnprocessableEntity, *BulkGetOrDefaultByUserIDInternalServerError, error)
	BulkGetOrDefaultByUserIDShort(params *BulkGetOrDefaultByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOrDefaultByUserIDOK, error)
	BulkResetUserStatItemValues(params *BulkResetUserStatItemValuesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemValuesOK, *BulkResetUserStatItemValuesBadRequest, *BulkResetUserStatItemValuesUnauthorized, *BulkResetUserStatItemValuesForbidden, *BulkResetUserStatItemValuesUnprocessableEntity, *BulkResetUserStatItemValuesInternalServerError, error)
	BulkResetUserStatItemValuesShort(params *BulkResetUserStatItemValuesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemValuesOK, error)
	DeleteUserStatItems2(params *DeleteUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems2NoContent, *DeleteUserStatItems2Unauthorized, *DeleteUserStatItems2Forbidden, *DeleteUserStatItems2NotFound, *DeleteUserStatItems2UnprocessableEntity, *DeleteUserStatItems2InternalServerError, error)
	DeleteUserStatItems2Short(params *DeleteUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems2NoContent, error)
	UpdateUserStatItemValue(params *UpdateUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValueOK, *UpdateUserStatItemValueBadRequest, *UpdateUserStatItemValueUnauthorized, *UpdateUserStatItemValueForbidden, *UpdateUserStatItemValueNotFound, *UpdateUserStatItemValueConflict, *UpdateUserStatItemValueUnprocessableEntity, *UpdateUserStatItemValueInternalServerError, error)
	UpdateUserStatItemValueShort(params *UpdateUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValueOK, error)
	BulkUpdateUserStatItem1(params *BulkUpdateUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem1OK, *BulkUpdateUserStatItem1BadRequest, *BulkUpdateUserStatItem1Unauthorized, *BulkUpdateUserStatItem1Forbidden, *BulkUpdateUserStatItem1UnprocessableEntity, *BulkUpdateUserStatItem1InternalServerError, error)
	BulkUpdateUserStatItem1Short(params *BulkUpdateUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem1OK, error)
	PublicQueryUserStatItems2(params *PublicQueryUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems2OK, *PublicQueryUserStatItems2BadRequest, *PublicQueryUserStatItems2Unauthorized, *PublicQueryUserStatItems2Forbidden, *PublicQueryUserStatItems2NotFound, *PublicQueryUserStatItems2UnprocessableEntity, *PublicQueryUserStatItems2InternalServerError, error)
	PublicQueryUserStatItems2Short(params *PublicQueryUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems2OK, error)
	BulkUpdateUserStatItem2(params *BulkUpdateUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem2OK, *BulkUpdateUserStatItem2BadRequest, *BulkUpdateUserStatItem2Unauthorized, *BulkUpdateUserStatItem2Forbidden, *BulkUpdateUserStatItem2UnprocessableEntity, *BulkUpdateUserStatItem2InternalServerError, error)
	BulkUpdateUserStatItem2Short(params *BulkUpdateUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem2OK, error)
	UpdateUserStatItemValue1(params *UpdateUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValue1OK, *UpdateUserStatItemValue1BadRequest, *UpdateUserStatItemValue1Unauthorized, *UpdateUserStatItemValue1Forbidden, *UpdateUserStatItemValue1NotFound, *UpdateUserStatItemValue1Conflict, *UpdateUserStatItemValue1UnprocessableEntity, *UpdateUserStatItemValue1InternalServerError, error)
	UpdateUserStatItemValue1Short(params *UpdateUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValue1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use BulkFetchStatItemsShort instead.

BulkFetchStatItems bulk fetch statitems value
Bulk fetch multiple user's statitem value for a given namespace and statCode.
Other detail info:
+ *Returns*: list of user's statItem
*/
func (a *Client) BulkFetchStatItems(params *BulkFetchStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItemsOK, *BulkFetchStatItemsUnauthorized, *BulkFetchStatItemsForbidden, *BulkFetchStatItemsUnprocessableEntity, *BulkFetchStatItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchStatItemsParams()
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
		ID:                 "bulkFetchStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkFetchStatItemsOK:
		return v, nil, nil, nil, nil, nil

	case *BulkFetchStatItemsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *BulkFetchStatItemsForbidden:
		return nil, nil, v, nil, nil, nil

	case *BulkFetchStatItemsUnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *BulkFetchStatItemsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkFetchStatItemsShort bulk fetch statitems value
Bulk fetch multiple user's statitem value for a given namespace and statCode.
Other detail info:
+ *Returns*: list of user's statItem
*/
func (a *Client) BulkFetchStatItemsShort(params *BulkFetchStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkFetchStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkFetchStatItemsOK:
		return v, nil
	case *BulkFetchStatItemsUnauthorized:
		return nil, v
	case *BulkFetchStatItemsForbidden:
		return nil, v
	case *BulkFetchStatItemsUnprocessableEntity:
		return nil, v
	case *BulkFetchStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkIncUserStatItemShort instead.

BulkIncUserStatItem bulk update multiple user's statitems value
Bulk update multiple user's statitems value.
Other detail info:
              *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItem(params *BulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemOK, *BulkIncUserStatItemBadRequest, *BulkIncUserStatItemUnauthorized, *BulkIncUserStatItemForbidden, *BulkIncUserStatItemUnprocessableEntity, *BulkIncUserStatItemInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemParams()
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
		ID:                 "bulkIncUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemOK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkIncUserStatItemBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkIncUserStatItemUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkIncUserStatItemForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkIncUserStatItemUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkIncUserStatItemInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemShort bulk update multiple user's statitems value
Bulk update multiple user's statitems value.
Other detail info:
              *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemShort(params *BulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkIncUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemOK:
		return v, nil
	case *BulkIncUserStatItemBadRequest:
		return nil, v
	case *BulkIncUserStatItemUnauthorized:
		return nil, v
	case *BulkIncUserStatItemForbidden:
		return nil, v
	case *BulkIncUserStatItemUnprocessableEntity:
		return nil, v
	case *BulkIncUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkIncUserStatItemValueShort instead.

BulkIncUserStatItemValue bulk update multiple user's statitems value
Bulk update multiple user's statitems value.
*/
func (a *Client) BulkIncUserStatItemValue(params *BulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValueOK, *BulkIncUserStatItemValueBadRequest, *BulkIncUserStatItemValueUnauthorized, *BulkIncUserStatItemValueForbidden, *BulkIncUserStatItemValueUnprocessableEntity, *BulkIncUserStatItemValueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemValueParams()
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
		ID:                 "bulkIncUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValueOK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkIncUserStatItemValueBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkIncUserStatItemValueUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkIncUserStatItemValueForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkIncUserStatItemValueUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkIncUserStatItemValueInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValueShort bulk update multiple user's statitems value
Bulk update multiple user's statitems value.
*/
func (a *Client) BulkIncUserStatItemValueShort(params *BulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemValueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkIncUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValueOK:
		return v, nil
	case *BulkIncUserStatItemValueBadRequest:
		return nil, v
	case *BulkIncUserStatItemValueUnauthorized:
		return nil, v
	case *BulkIncUserStatItemValueForbidden:
		return nil, v
	case *BulkIncUserStatItemValueUnprocessableEntity:
		return nil, v
	case *BulkIncUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkFetchOrDefaultStatItemsShort instead.

BulkFetchOrDefaultStatItems bulk fetch user stat item values
Bulk fetch multiple user's stat item values for a given namespace and statCode.
NOTE: If stat item does not exist, will return default value. Other detail info:
+ *Returns*: list of user's stat item values
*/
func (a *Client) BulkFetchOrDefaultStatItems(params *BulkFetchOrDefaultStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItemsOK, *BulkFetchOrDefaultStatItemsUnauthorized, *BulkFetchOrDefaultStatItemsForbidden, *BulkFetchOrDefaultStatItemsNotFound, *BulkFetchOrDefaultStatItemsUnprocessableEntity, *BulkFetchOrDefaultStatItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchOrDefaultStatItemsParams()
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
		ID:                 "bulkFetchOrDefaultStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchOrDefaultStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkFetchOrDefaultStatItemsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkFetchOrDefaultStatItemsUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkFetchOrDefaultStatItemsForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkFetchOrDefaultStatItemsNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkFetchOrDefaultStatItemsUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkFetchOrDefaultStatItemsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkFetchOrDefaultStatItemsShort bulk fetch user stat item values
Bulk fetch multiple user's stat item values for a given namespace and statCode.
NOTE: If stat item does not exist, will return default value. Other detail info:
+ *Returns*: list of user's stat item values
*/
func (a *Client) BulkFetchOrDefaultStatItemsShort(params *BulkFetchOrDefaultStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchOrDefaultStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkFetchOrDefaultStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchOrDefaultStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkFetchOrDefaultStatItemsOK:
		return v, nil
	case *BulkFetchOrDefaultStatItemsUnauthorized:
		return nil, v
	case *BulkFetchOrDefaultStatItemsForbidden:
		return nil, v
	case *BulkFetchOrDefaultStatItemsNotFound:
		return nil, v
	case *BulkFetchOrDefaultStatItemsUnprocessableEntity:
		return nil, v
	case *BulkFetchOrDefaultStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkResetUserStatItemShort instead.

BulkResetUserStatItem bulk reset multiple user's statitems value
Bulk reset multiple user's statitems value.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem(params *BulkResetUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemOK, *BulkResetUserStatItemBadRequest, *BulkResetUserStatItemUnauthorized, *BulkResetUserStatItemForbidden, *BulkResetUserStatItemUnprocessableEntity, *BulkResetUserStatItemInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItemParams()
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
		ID:                 "bulkResetUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItemOK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkResetUserStatItemBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkResetUserStatItemUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkResetUserStatItemForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkResetUserStatItemUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkResetUserStatItemInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItemShort bulk reset multiple user's statitems value
Bulk reset multiple user's statitems value.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItemShort(params *BulkResetUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkResetUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItemOK:
		return v, nil
	case *BulkResetUserStatItemBadRequest:
		return nil, v
	case *BulkResetUserStatItemUnauthorized:
		return nil, v
	case *BulkResetUserStatItemForbidden:
		return nil, v
	case *BulkResetUserStatItemUnprocessableEntity:
		return nil, v
	case *BulkResetUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetStatItemsShort instead.

GetStatItems get users' stat item values by stat code
Get users' stat item values for a given namespace and statCode.
Other info:
+ *Returns*: list of users' stat item values
*/
func (a *Client) GetStatItems(params *GetStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatItemsOK, *GetStatItemsUnauthorized, *GetStatItemsForbidden, *GetStatItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatItemsParams()
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
		ID:                 "getStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetStatItemsOK:
		return v, nil, nil, nil, nil

	case *GetStatItemsUnauthorized:
		return nil, v, nil, nil, nil

	case *GetStatItemsForbidden:
		return nil, nil, v, nil, nil

	case *GetStatItemsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatItemsShort get users' stat item values by stat code
Get users' stat item values for a given namespace and statCode.
Other info:
+ *Returns*: list of users' stat item values
*/
func (a *Client) GetStatItemsShort(params *GetStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatItemsOK:
		return v, nil
	case *GetStatItemsUnauthorized:
		return nil, v
	case *GetStatItemsForbidden:
		return nil, v
	case *GetStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserStatItemsShort instead.

GetUserStatItems list user's statitems
List user's statItems.
Other detail info:
              *  Returns : stat items
*/
func (a *Client) GetUserStatItems(params *GetUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatItemsOK, *GetUserStatItemsUnauthorized, *GetUserStatItemsForbidden, *GetUserStatItemsUnprocessableEntity, *GetUserStatItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatItemsParams()
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
		ID:                 "getUserStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserStatItemsOK:
		return v, nil, nil, nil, nil, nil

	case *GetUserStatItemsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetUserStatItemsForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetUserStatItemsUnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *GetUserStatItemsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserStatItemsShort list user's statitems
List user's statItems.
Other detail info:
              *  Returns : stat items
*/
func (a *Client) GetUserStatItemsShort(params *GetUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserStatItemsOK:
		return v, nil
	case *GetUserStatItemsUnauthorized:
		return nil, v
	case *GetUserStatItemsForbidden:
		return nil, v
	case *GetUserStatItemsUnprocessableEntity:
		return nil, v
	case *GetUserStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkCreateUserStatItemsShort instead.

BulkCreateUserStatItems bulk create user's statitems
Bulk create user's statItems.
Other detail info:
              *  Returns : bulk created result
*/
func (a *Client) BulkCreateUserStatItems(params *BulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateUserStatItemsOK, *BulkCreateUserStatItemsBadRequest, *BulkCreateUserStatItemsUnauthorized, *BulkCreateUserStatItemsForbidden, *BulkCreateUserStatItemsUnprocessableEntity, *BulkCreateUserStatItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkCreateUserStatItemsParams()
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
		ID:                 "bulkCreateUserStatItems",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkCreateUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkCreateUserStatItemsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkCreateUserStatItemsBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkCreateUserStatItemsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkCreateUserStatItemsForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkCreateUserStatItemsUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkCreateUserStatItemsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkCreateUserStatItemsShort bulk create user's statitems
Bulk create user's statItems.
Other detail info:
                *  Returns : bulk created result
*/
func (a *Client) BulkCreateUserStatItemsShort(params *BulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateUserStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkCreateUserStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkCreateUserStatItems",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkCreateUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkCreateUserStatItemsOK:
		return v, nil
	case *BulkCreateUserStatItemsBadRequest:
		return nil, v
	case *BulkCreateUserStatItemsUnauthorized:
		return nil, v
	case *BulkCreateUserStatItemsForbidden:
		return nil, v
	case *BulkCreateUserStatItemsUnprocessableEntity:
		return nil, v
	case *BulkCreateUserStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkIncUserStatItem1Short instead.

BulkIncUserStatItem1 bulk update user's statitems value
Bulk update user's statitems value.
Other detail info:
                  *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItem1(params *BulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItem1OK, *BulkIncUserStatItem1BadRequest, *BulkIncUserStatItem1Unauthorized, *BulkIncUserStatItem1Forbidden, *BulkIncUserStatItem1UnprocessableEntity, *BulkIncUserStatItem1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItem1Params()
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
		ID:                 "bulkIncUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItem1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkIncUserStatItem1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkIncUserStatItem1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkIncUserStatItem1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkIncUserStatItem1UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkIncUserStatItem1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItem1Short bulk update user's statitems value
Bulk update user's statitems value.
Other detail info:
                  *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItem1Short(params *BulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItem1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItem1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkIncUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItem1OK:
		return v, nil
	case *BulkIncUserStatItem1BadRequest:
		return nil, v
	case *BulkIncUserStatItem1Unauthorized:
		return nil, v
	case *BulkIncUserStatItem1Forbidden:
		return nil, v
	case *BulkIncUserStatItem1UnprocessableEntity:
		return nil, v
	case *BulkIncUserStatItem1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkIncUserStatItemValue1Short instead.

BulkIncUserStatItemValue1 bulk update user's statitems value
Bulk update user's statitems value.
Other detail info:
                  *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemValue1(params *BulkIncUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue1OK, *BulkIncUserStatItemValue1BadRequest, *BulkIncUserStatItemValue1Unauthorized, *BulkIncUserStatItemValue1Forbidden, *BulkIncUserStatItemValue1UnprocessableEntity, *BulkIncUserStatItemValue1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemValue1Params()
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
		ID:                 "bulkIncUserStatItemValue_1",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemValue1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValue1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkIncUserStatItemValue1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkIncUserStatItemValue1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkIncUserStatItemValue1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkIncUserStatItemValue1UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkIncUserStatItemValue1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValue1Short bulk update user's statitems value
Bulk update user's statitems value.
Other detail info:
                  *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemValue1Short(params *BulkIncUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemValue1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkIncUserStatItemValue_1",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemValue1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValue1OK:
		return v, nil
	case *BulkIncUserStatItemValue1BadRequest:
		return nil, v
	case *BulkIncUserStatItemValue1Unauthorized:
		return nil, v
	case *BulkIncUserStatItemValue1Forbidden:
		return nil, v
	case *BulkIncUserStatItemValue1UnprocessableEntity:
		return nil, v
	case *BulkIncUserStatItemValue1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkResetUserStatItem1Short instead.

BulkResetUserStatItem1 bulk reset user's statitems value
Bulk reset user's statitems value for given namespace and user.
Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem1(params *BulkResetUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem1OK, *BulkResetUserStatItem1BadRequest, *BulkResetUserStatItem1Unauthorized, *BulkResetUserStatItem1Forbidden, *BulkResetUserStatItem1UnprocessableEntity, *BulkResetUserStatItem1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItem1Params()
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
		ID:                 "bulkResetUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkResetUserStatItem1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkResetUserStatItem1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkResetUserStatItem1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkResetUserStatItem1UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkResetUserStatItem1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItem1Short bulk reset user's statitems value
Bulk reset user's statitems value for given namespace and user.
Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem1Short(params *BulkResetUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItem1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkResetUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem1OK:
		return v, nil
	case *BulkResetUserStatItem1BadRequest:
		return nil, v
	case *BulkResetUserStatItem1Unauthorized:
		return nil, v
	case *BulkResetUserStatItem1Forbidden:
		return nil, v
	case *BulkResetUserStatItem1UnprocessableEntity:
		return nil, v
	case *BulkResetUserStatItem1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateUserStatItemShort instead.

CreateUserStatItem create user's statitem
Create statItem for a user.
Other detail info:
                  *  Returns : created user's statItem
*/
func (a *Client) CreateUserStatItem(params *CreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserStatItemCreated, *CreateUserStatItemUnauthorized, *CreateUserStatItemForbidden, *CreateUserStatItemNotFound, *CreateUserStatItemConflict, *CreateUserStatItemUnprocessableEntity, *CreateUserStatItemInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserStatItemParams()
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
		ID:                 "createUserStatItem",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateUserStatItemCreated:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *CreateUserStatItemUnauthorized:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *CreateUserStatItemForbidden:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *CreateUserStatItemNotFound:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *CreateUserStatItemConflict:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *CreateUserStatItemUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *CreateUserStatItemInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateUserStatItemShort create user's statitem
Create statItem for a user.
Other detail info:
                  *  Returns : created user's statItem
*/
func (a *Client) CreateUserStatItemShort(params *CreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserStatItemCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserStatItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createUserStatItem",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateUserStatItemCreated:
		return v, nil
	case *CreateUserStatItemUnauthorized:
		return nil, v
	case *CreateUserStatItemForbidden:
		return nil, v
	case *CreateUserStatItemNotFound:
		return nil, v
	case *CreateUserStatItemConflict:
		return nil, v
	case *CreateUserStatItemUnprocessableEntity:
		return nil, v
	case *CreateUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserStatItemsShort instead.

DeleteUserStatItems delete user's statitems
This endpoint is for testing purpose. Use this endpoint for cleaning up after testing.
Delete user's statItems given stat code.
Other detail info:
                  *  Returns : no content
*/
func (a *Client) DeleteUserStatItems(params *DeleteUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItemsNoContent, *DeleteUserStatItemsUnauthorized, *DeleteUserStatItemsForbidden, *DeleteUserStatItemsNotFound, *DeleteUserStatItemsUnprocessableEntity, *DeleteUserStatItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserStatItemsParams()
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
		ID:                 "deleteUserStatItems",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItemsNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteUserStatItemsUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteUserStatItemsForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteUserStatItemsNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteUserStatItemsUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteUserStatItemsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStatItemsShort delete user's statitems
This endpoint is for testing purpose. Use this endpoint for cleaning up after testing.
Delete user's statItems given stat code.
Other detail info:
                    *  Returns : no content
*/
func (a *Client) DeleteUserStatItemsShort(params *DeleteUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItemsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserStatItems",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItemsNoContent:
		return v, nil
	case *DeleteUserStatItemsUnauthorized:
		return nil, v
	case *DeleteUserStatItemsForbidden:
		return nil, v
	case *DeleteUserStatItemsNotFound:
		return nil, v
	case *DeleteUserStatItemsUnprocessableEntity:
		return nil, v
	case *DeleteUserStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use IncUserStatItemValueShort instead.

IncUserStatItemValue update user's statitem value
Update user's statitem value.
Other detail info:
                      *  Returns : updated user's statItem
*/
func (a *Client) IncUserStatItemValue(params *IncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*IncUserStatItemValueOK, *IncUserStatItemValueBadRequest, *IncUserStatItemValueUnauthorized, *IncUserStatItemValueForbidden, *IncUserStatItemValueNotFound, *IncUserStatItemValueConflict, *IncUserStatItemValueUnprocessableEntity, *IncUserStatItemValueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIncUserStatItemValueParams()
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
		ID:                 "incUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *IncUserStatItemValueOK:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *IncUserStatItemValueBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *IncUserStatItemValueUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *IncUserStatItemValueForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *IncUserStatItemValueNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *IncUserStatItemValueConflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *IncUserStatItemValueUnprocessableEntity:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *IncUserStatItemValueInternalServerError:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IncUserStatItemValueShort update user's statitem value
Update user's statitem value.
Other detail info:
                      *  Returns : updated user's statItem
*/
func (a *Client) IncUserStatItemValueShort(params *IncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*IncUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIncUserStatItemValueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "incUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IncUserStatItemValueOK:
		return v, nil
	case *IncUserStatItemValueBadRequest:
		return nil, v
	case *IncUserStatItemValueUnauthorized:
		return nil, v
	case *IncUserStatItemValueForbidden:
		return nil, v
	case *IncUserStatItemValueNotFound:
		return nil, v
	case *IncUserStatItemValueConflict:
		return nil, v
	case *IncUserStatItemValueUnprocessableEntity:
		return nil, v
	case *IncUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ResetUserStatItemValueShort instead.

ResetUserStatItemValue reset user's statitem value
Reset user's statitem value for a given namespace and user.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) ResetUserStatItemValue(params *ResetUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValueOK, *ResetUserStatItemValueBadRequest, *ResetUserStatItemValueUnauthorized, *ResetUserStatItemValueForbidden, *ResetUserStatItemValueNotFound, *ResetUserStatItemValueUnprocessableEntity, *ResetUserStatItemValueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetUserStatItemValueParams()
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
		ID:                 "resetUserStatItemValue",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ResetUserStatItemValueOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *ResetUserStatItemValueBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *ResetUserStatItemValueUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *ResetUserStatItemValueForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *ResetUserStatItemValueNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *ResetUserStatItemValueUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *ResetUserStatItemValueInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetUserStatItemValueShort reset user's statitem value
Reset user's statitem value for a given namespace and user.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) ResetUserStatItemValueShort(params *ResetUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetUserStatItemValueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "resetUserStatItemValue",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetUserStatItemValueOK:
		return v, nil
	case *ResetUserStatItemValueBadRequest:
		return nil, v
	case *ResetUserStatItemValueUnauthorized:
		return nil, v
	case *ResetUserStatItemValueForbidden:
		return nil, v
	case *ResetUserStatItemValueNotFound:
		return nil, v
	case *ResetUserStatItemValueUnprocessableEntity:
		return nil, v
	case *ResetUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkFetchStatItems1Short instead.

BulkFetchStatItems1 public bulk fetch statitems value
Public bulk fetch multiple user's statitem value for a given namespace and statCode.
Other detail info:
+ *Returns*: list of user's statItem
*/
func (a *Client) BulkFetchStatItems1(params *BulkFetchStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItems1OK, *BulkFetchStatItems1Unauthorized, *BulkFetchStatItems1Forbidden, *BulkFetchStatItems1UnprocessableEntity, *BulkFetchStatItems1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchStatItems1Params()
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
		ID:                 "bulkFetchStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkFetchStatItems1OK:
		return v, nil, nil, nil, nil, nil

	case *BulkFetchStatItems1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *BulkFetchStatItems1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *BulkFetchStatItems1UnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *BulkFetchStatItems1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkFetchStatItems1Short public bulk fetch statitems value
Public bulk fetch multiple user's statitem value for a given namespace and statCode.
Other detail info:
+ *Returns*: list of user's statItem
*/
func (a *Client) BulkFetchStatItems1Short(params *BulkFetchStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItems1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchStatItems1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkFetchStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkFetchStatItems1OK:
		return v, nil
	case *BulkFetchStatItems1Unauthorized:
		return nil, v
	case *BulkFetchStatItems1Forbidden:
		return nil, v
	case *BulkFetchStatItems1UnprocessableEntity:
		return nil, v
	case *BulkFetchStatItems1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicBulkIncUserStatItemShort instead.

PublicBulkIncUserStatItem public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value.
Other detail info:
                      *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItem(params *PublicBulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemOK, *PublicBulkIncUserStatItemBadRequest, *PublicBulkIncUserStatItemUnauthorized, *PublicBulkIncUserStatItemForbidden, *PublicBulkIncUserStatItemUnprocessableEntity, *PublicBulkIncUserStatItemInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkIncUserStatItemParams()
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
		ID:                 "publicBulkIncUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkIncUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItemOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicBulkIncUserStatItemBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicBulkIncUserStatItemUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicBulkIncUserStatItemForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicBulkIncUserStatItemUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicBulkIncUserStatItemInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItemShort public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value.
Other detail info:
                      *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItemShort(params *PublicBulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkIncUserStatItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicBulkIncUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkIncUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItemOK:
		return v, nil
	case *PublicBulkIncUserStatItemBadRequest:
		return nil, v
	case *PublicBulkIncUserStatItemUnauthorized:
		return nil, v
	case *PublicBulkIncUserStatItemForbidden:
		return nil, v
	case *PublicBulkIncUserStatItemUnprocessableEntity:
		return nil, v
	case *PublicBulkIncUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicBulkIncUserStatItemValueShort instead.

PublicBulkIncUserStatItemValue public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value.
Other detail info:
                      *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItemValue(params *PublicBulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemValueOK, *PublicBulkIncUserStatItemValueBadRequest, *PublicBulkIncUserStatItemValueUnauthorized, *PublicBulkIncUserStatItemValueForbidden, *PublicBulkIncUserStatItemValueUnprocessableEntity, *PublicBulkIncUserStatItemValueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkIncUserStatItemValueParams()
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
		ID:                 "publicBulkIncUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkIncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItemValueOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicBulkIncUserStatItemValueBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicBulkIncUserStatItemValueUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicBulkIncUserStatItemValueForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicBulkIncUserStatItemValueUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicBulkIncUserStatItemValueInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItemValueShort public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value.
Other detail info:
                      *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItemValueShort(params *PublicBulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkIncUserStatItemValueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicBulkIncUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkIncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItemValueOK:
		return v, nil
	case *PublicBulkIncUserStatItemValueBadRequest:
		return nil, v
	case *PublicBulkIncUserStatItemValueUnauthorized:
		return nil, v
	case *PublicBulkIncUserStatItemValueForbidden:
		return nil, v
	case *PublicBulkIncUserStatItemValueUnprocessableEntity:
		return nil, v
	case *PublicBulkIncUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkResetUserStatItem2Short instead.

BulkResetUserStatItem2 public bulk reset multiple user's statitems value
Bulk reset multiple user's statitems value.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem2(params *BulkResetUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem2OK, *BulkResetUserStatItem2BadRequest, *BulkResetUserStatItem2Unauthorized, *BulkResetUserStatItem2Forbidden, *BulkResetUserStatItem2UnprocessableEntity, *BulkResetUserStatItem2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItem2Params()
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
		ID:                 "bulkResetUserStatItem_2",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItem2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkResetUserStatItem2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkResetUserStatItem2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkResetUserStatItem2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkResetUserStatItem2UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkResetUserStatItem2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItem2Short public bulk reset multiple user's statitems value
Bulk reset multiple user's statitems value.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem2Short(params *BulkResetUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItem2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkResetUserStatItem_2",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItem2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem2OK:
		return v, nil
	case *BulkResetUserStatItem2BadRequest:
		return nil, v
	case *BulkResetUserStatItem2Unauthorized:
		return nil, v
	case *BulkResetUserStatItem2Forbidden:
		return nil, v
	case *BulkResetUserStatItem2UnprocessableEntity:
		return nil, v
	case *BulkResetUserStatItem2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListMyStatItemsShort instead.

PublicListMyStatItems public list user's statitems
Public list all statItems by pagination.
Other detail info:
                      *  Returns : stat items
*/
func (a *Client) PublicListMyStatItems(params *PublicListMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatItemsOK, *PublicListMyStatItemsUnauthorized, *PublicListMyStatItemsForbidden, *PublicListMyStatItemsUnprocessableEntity, *PublicListMyStatItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListMyStatItemsParams()
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
		ID:                 "publicListMyStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/me/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListMyStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListMyStatItemsOK:
		return v, nil, nil, nil, nil, nil

	case *PublicListMyStatItemsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicListMyStatItemsForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicListMyStatItemsUnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *PublicListMyStatItemsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListMyStatItemsShort public list user's statitems
Public list all statItems by pagination.
Other detail info:
                      *  Returns : stat items
*/
func (a *Client) PublicListMyStatItemsShort(params *PublicListMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListMyStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListMyStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/me/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListMyStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListMyStatItemsOK:
		return v, nil
	case *PublicListMyStatItemsUnauthorized:
		return nil, v
	case *PublicListMyStatItemsForbidden:
		return nil, v
	case *PublicListMyStatItemsUnprocessableEntity:
		return nil, v
	case *PublicListMyStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListAllMyStatItemsShort instead.

PublicListAllMyStatItems public list user's statitems
Public list all statItems of user.
NOTE:
                    * If stat code does not exist, will ignore this stat code.
                    * If stat item does not exist, will return default value
Other detail info:
                    *  Returns : stat items
*/
func (a *Client) PublicListAllMyStatItems(params *PublicListAllMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAllMyStatItemsOK, *PublicListAllMyStatItemsBadRequest, *PublicListAllMyStatItemsForbidden, *PublicListAllMyStatItemsNotFound, *PublicListAllMyStatItemsUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListAllMyStatItemsParams()
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
		ID:                 "publicListAllMyStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/me/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListAllMyStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListAllMyStatItemsOK:
		return v, nil, nil, nil, nil, nil

	case *PublicListAllMyStatItemsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicListAllMyStatItemsForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicListAllMyStatItemsNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicListAllMyStatItemsUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListAllMyStatItemsShort public list user's statitems
Public list all statItems of user.
NOTE:
                  * If stat code does not exist, will ignore this stat code.
                  * If stat item does not exist, will return default value
Other detail info:
                  *  Returns : stat items
*/
func (a *Client) PublicListAllMyStatItemsShort(params *PublicListAllMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAllMyStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListAllMyStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListAllMyStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/me/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListAllMyStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListAllMyStatItemsOK:
		return v, nil
	case *PublicListAllMyStatItemsBadRequest:
		return nil, v
	case *PublicListAllMyStatItemsForbidden:
		return nil, v
	case *PublicListAllMyStatItemsNotFound:
		return nil, v
	case *PublicListAllMyStatItemsUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicQueryUserStatItemsShort instead.

PublicQueryUserStatItems public list user's statitems
Public list all statItems by pagination.
Other detail info:
                  *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems(params *PublicQueryUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItemsOK, *PublicQueryUserStatItemsUnauthorized, *PublicQueryUserStatItemsForbidden, *PublicQueryUserStatItemsUnprocessableEntity, *PublicQueryUserStatItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserStatItemsParams()
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
		ID:                 "publicQueryUserStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserStatItemsOK:
		return v, nil, nil, nil, nil, nil

	case *PublicQueryUserStatItemsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicQueryUserStatItemsForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicQueryUserStatItemsUnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *PublicQueryUserStatItemsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItemsShort public list user's statitems
Public list all statItems by pagination.
Other detail info:
                  *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItemsShort(params *PublicQueryUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryUserStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserStatItemsOK:
		return v, nil
	case *PublicQueryUserStatItemsUnauthorized:
		return nil, v
	case *PublicQueryUserStatItemsForbidden:
		return nil, v
	case *PublicQueryUserStatItemsUnprocessableEntity:
		return nil, v
	case *PublicQueryUserStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicBulkCreateUserStatItemsShort instead.

PublicBulkCreateUserStatItems bulk create user's statitems
Bulk create statItems.
Other detail info:
                  *  Returns : bulk created result
*/
func (a *Client) PublicBulkCreateUserStatItems(params *PublicBulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkCreateUserStatItemsOK, *PublicBulkCreateUserStatItemsBadRequest, *PublicBulkCreateUserStatItemsUnauthorized, *PublicBulkCreateUserStatItemsForbidden, *PublicBulkCreateUserStatItemsUnprocessableEntity, *PublicBulkCreateUserStatItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkCreateUserStatItemsParams()
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
		ID:                 "publicBulkCreateUserStatItems",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkCreateUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBulkCreateUserStatItemsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicBulkCreateUserStatItemsBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicBulkCreateUserStatItemsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicBulkCreateUserStatItemsForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicBulkCreateUserStatItemsUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicBulkCreateUserStatItemsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkCreateUserStatItemsShort bulk create user's statitems
Bulk create statItems.
Other detail info:
                  *  Returns : bulk created result
*/
func (a *Client) PublicBulkCreateUserStatItemsShort(params *PublicBulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkCreateUserStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkCreateUserStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicBulkCreateUserStatItems",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkCreateUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkCreateUserStatItemsOK:
		return v, nil
	case *PublicBulkCreateUserStatItemsBadRequest:
		return nil, v
	case *PublicBulkCreateUserStatItemsUnauthorized:
		return nil, v
	case *PublicBulkCreateUserStatItemsForbidden:
		return nil, v
	case *PublicBulkCreateUserStatItemsUnprocessableEntity:
		return nil, v
	case *PublicBulkCreateUserStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicQueryUserStatItems1Short instead.

PublicQueryUserStatItems1 public list user's statitems
Public list all statItems of user.
NOTE:
                * If stat code does not exist, will ignore this stat code.
                * If stat item does not exist, will return default value
Other detail info:
                *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems1(params *PublicQueryUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems1OK, *PublicQueryUserStatItems1BadRequest, *PublicQueryUserStatItems1Unauthorized, *PublicQueryUserStatItems1Forbidden, *PublicQueryUserStatItems1NotFound, *PublicQueryUserStatItems1UnprocessableEntity, *PublicQueryUserStatItems1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserStatItems1Params()
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
		ID:                 "publicQueryUserStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserStatItems1OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicQueryUserStatItems1BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicQueryUserStatItems1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicQueryUserStatItems1Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicQueryUserStatItems1NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicQueryUserStatItems1UnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicQueryUserStatItems1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItems1Short public list user's statitems
Public list all statItems of user.
NOTE:
              * If stat code does not exist, will ignore this stat code.
              * If stat item does not exist, will return default value
Other detail info:
              *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems1Short(params *PublicQueryUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserStatItems1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryUserStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserStatItems1OK:
		return v, nil
	case *PublicQueryUserStatItems1BadRequest:
		return nil, v
	case *PublicQueryUserStatItems1Unauthorized:
		return nil, v
	case *PublicQueryUserStatItems1Forbidden:
		return nil, v
	case *PublicQueryUserStatItems1NotFound:
		return nil, v
	case *PublicQueryUserStatItems1UnprocessableEntity:
		return nil, v
	case *PublicQueryUserStatItems1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicBulkIncUserStatItem1Short instead.

PublicBulkIncUserStatItem1 public bulk update user's statitems value
Public bulk update user's statitems value.
Other detail info:
              *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItem1(params *PublicBulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItem1OK, *PublicBulkIncUserStatItem1BadRequest, *PublicBulkIncUserStatItem1Unauthorized, *PublicBulkIncUserStatItem1Forbidden, *PublicBulkIncUserStatItem1UnprocessableEntity, *PublicBulkIncUserStatItem1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkIncUserStatItem1Params()
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
		ID:                 "publicBulkIncUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkIncUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItem1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicBulkIncUserStatItem1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicBulkIncUserStatItem1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicBulkIncUserStatItem1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicBulkIncUserStatItem1UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicBulkIncUserStatItem1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItem1Short public bulk update user's statitems value
Public bulk update user's statitems value.
Other detail info:
              *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItem1Short(params *PublicBulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItem1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkIncUserStatItem1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicBulkIncUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkIncUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItem1OK:
		return v, nil
	case *PublicBulkIncUserStatItem1BadRequest:
		return nil, v
	case *PublicBulkIncUserStatItem1Unauthorized:
		return nil, v
	case *PublicBulkIncUserStatItem1Forbidden:
		return nil, v
	case *PublicBulkIncUserStatItem1UnprocessableEntity:
		return nil, v
	case *PublicBulkIncUserStatItem1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkIncUserStatItemValue2Short instead.

BulkIncUserStatItemValue2 public bulk update user's statitems value
Public bulk update user's statitems value.
Other detail info:
              *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemValue2(params *BulkIncUserStatItemValue2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue2OK, *BulkIncUserStatItemValue2BadRequest, *BulkIncUserStatItemValue2Unauthorized, *BulkIncUserStatItemValue2Forbidden, *BulkIncUserStatItemValue2UnprocessableEntity, *BulkIncUserStatItemValue2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemValue2Params()
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
		ID:                 "bulkIncUserStatItemValue_2",
		Method:             "PATCH",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemValue2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValue2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkIncUserStatItemValue2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkIncUserStatItemValue2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkIncUserStatItemValue2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkIncUserStatItemValue2UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkIncUserStatItemValue2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValue2Short public bulk update user's statitems value
Public bulk update user's statitems value.
Other detail info:
                *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemValue2Short(params *BulkIncUserStatItemValue2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemValue2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkIncUserStatItemValue_2",
		Method:             "PATCH",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemValue2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValue2OK:
		return v, nil
	case *BulkIncUserStatItemValue2BadRequest:
		return nil, v
	case *BulkIncUserStatItemValue2Unauthorized:
		return nil, v
	case *BulkIncUserStatItemValue2Forbidden:
		return nil, v
	case *BulkIncUserStatItemValue2UnprocessableEntity:
		return nil, v
	case *BulkIncUserStatItemValue2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkResetUserStatItem3Short instead.

BulkResetUserStatItem3 public bulk reset user's statitems value
Public bulk reset user's statitems value for given namespace and user.
Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem3(params *BulkResetUserStatItem3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem3OK, *BulkResetUserStatItem3BadRequest, *BulkResetUserStatItem3Unauthorized, *BulkResetUserStatItem3Forbidden, *BulkResetUserStatItem3UnprocessableEntity, *BulkResetUserStatItem3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItem3Params()
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
		ID:                 "bulkResetUserStatItem_3",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItem3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkResetUserStatItem3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkResetUserStatItem3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkResetUserStatItem3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkResetUserStatItem3UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkResetUserStatItem3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItem3Short public bulk reset user's statitems value
Public bulk reset user's statitems value for given namespace and user.
Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem3Short(params *BulkResetUserStatItem3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItem3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkResetUserStatItem_3",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItem3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem3OK:
		return v, nil
	case *BulkResetUserStatItem3BadRequest:
		return nil, v
	case *BulkResetUserStatItem3Unauthorized:
		return nil, v
	case *BulkResetUserStatItem3Forbidden:
		return nil, v
	case *BulkResetUserStatItem3UnprocessableEntity:
		return nil, v
	case *BulkResetUserStatItem3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCreateUserStatItemShort instead.

PublicCreateUserStatItem create user's statitem
Create user's statItem.
Other detail info:
                  *  Returns : created user's statItem
*/
func (a *Client) PublicCreateUserStatItem(params *PublicCreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserStatItemCreated, *PublicCreateUserStatItemUnauthorized, *PublicCreateUserStatItemForbidden, *PublicCreateUserStatItemNotFound, *PublicCreateUserStatItemConflict, *PublicCreateUserStatItemUnprocessableEntity, *PublicCreateUserStatItemInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserStatItemParams()
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
		ID:                 "publicCreateUserStatItem",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserStatItemCreated:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicCreateUserStatItemUnauthorized:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicCreateUserStatItemForbidden:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicCreateUserStatItemNotFound:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicCreateUserStatItemConflict:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicCreateUserStatItemUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicCreateUserStatItemInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserStatItemShort create user's statitem
Create user's statItem.
Other detail info:
                  *  Returns : created user's statItem
*/
func (a *Client) PublicCreateUserStatItemShort(params *PublicCreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserStatItemCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserStatItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCreateUserStatItem",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserStatItemCreated:
		return v, nil
	case *PublicCreateUserStatItemUnauthorized:
		return nil, v
	case *PublicCreateUserStatItemForbidden:
		return nil, v
	case *PublicCreateUserStatItemNotFound:
		return nil, v
	case *PublicCreateUserStatItemConflict:
		return nil, v
	case *PublicCreateUserStatItemUnprocessableEntity:
		return nil, v
	case *PublicCreateUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserStatItems1Short instead.

DeleteUserStatItems1 delete user's statitems
Delete user's statItems given stat code.
Other detail info:
                  *  Returns : no content
*/
func (a *Client) DeleteUserStatItems1(params *DeleteUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems1NoContent, *DeleteUserStatItems1Unauthorized, *DeleteUserStatItems1Forbidden, *DeleteUserStatItems1NotFound, *DeleteUserStatItems1UnprocessableEntity, *DeleteUserStatItems1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserStatItems1Params()
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
		ID:                 "deleteUserStatItems_1",
		Method:             "DELETE",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItems1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteUserStatItems1Unauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteUserStatItems1Forbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteUserStatItems1NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteUserStatItems1UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteUserStatItems1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStatItems1Short delete user's statitems
Delete user's statItems given stat code.
Other detail info:
                    *  Returns : no content
*/
func (a *Client) DeleteUserStatItems1Short(params *DeleteUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserStatItems1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserStatItems_1",
		Method:             "DELETE",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItems1NoContent:
		return v, nil
	case *DeleteUserStatItems1Unauthorized:
		return nil, v
	case *DeleteUserStatItems1Forbidden:
		return nil, v
	case *DeleteUserStatItems1NotFound:
		return nil, v
	case *DeleteUserStatItems1UnprocessableEntity:
		return nil, v
	case *DeleteUserStatItems1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicIncUserStatItemShort instead.

PublicIncUserStatItem public update user's statitem value
Public update user's statitem value.
Other detail info:
                      *  Returns : updated user's statItem
*/
func (a *Client) PublicIncUserStatItem(params *PublicIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemOK, *PublicIncUserStatItemBadRequest, *PublicIncUserStatItemUnauthorized, *PublicIncUserStatItemForbidden, *PublicIncUserStatItemNotFound, *PublicIncUserStatItemConflict, *PublicIncUserStatItemUnprocessableEntity, *PublicIncUserStatItemInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicIncUserStatItemParams()
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
		ID:                 "publicIncUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicIncUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicIncUserStatItemOK:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *PublicIncUserStatItemBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *PublicIncUserStatItemUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *PublicIncUserStatItemForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *PublicIncUserStatItemNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *PublicIncUserStatItemConflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *PublicIncUserStatItemUnprocessableEntity:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *PublicIncUserStatItemInternalServerError:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicIncUserStatItemShort public update user's statitem value
Public update user's statitem value.
Other detail info:
                      *  Returns : updated user's statItem
*/
func (a *Client) PublicIncUserStatItemShort(params *PublicIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicIncUserStatItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicIncUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicIncUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicIncUserStatItemOK:
		return v, nil
	case *PublicIncUserStatItemBadRequest:
		return nil, v
	case *PublicIncUserStatItemUnauthorized:
		return nil, v
	case *PublicIncUserStatItemForbidden:
		return nil, v
	case *PublicIncUserStatItemNotFound:
		return nil, v
	case *PublicIncUserStatItemConflict:
		return nil, v
	case *PublicIncUserStatItemUnprocessableEntity:
		return nil, v
	case *PublicIncUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicIncUserStatItemValueShort instead.

PublicIncUserStatItemValue public update user's statitem value
Public update user's statitem value.
Other detail info:
                      *  Returns : updated user's statItem
*/
func (a *Client) PublicIncUserStatItemValue(params *PublicIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemValueOK, *PublicIncUserStatItemValueBadRequest, *PublicIncUserStatItemValueUnauthorized, *PublicIncUserStatItemValueForbidden, *PublicIncUserStatItemValueNotFound, *PublicIncUserStatItemValueConflict, *PublicIncUserStatItemValueUnprocessableEntity, *PublicIncUserStatItemValueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicIncUserStatItemValueParams()
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
		ID:                 "publicIncUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicIncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicIncUserStatItemValueOK:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *PublicIncUserStatItemValueBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *PublicIncUserStatItemValueUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *PublicIncUserStatItemValueForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *PublicIncUserStatItemValueNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *PublicIncUserStatItemValueConflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *PublicIncUserStatItemValueUnprocessableEntity:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *PublicIncUserStatItemValueInternalServerError:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicIncUserStatItemValueShort public update user's statitem value
Public update user's statitem value.
Other detail info:
                      *  Returns : updated user's statItem
*/
func (a *Client) PublicIncUserStatItemValueShort(params *PublicIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicIncUserStatItemValueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicIncUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicIncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicIncUserStatItemValueOK:
		return v, nil
	case *PublicIncUserStatItemValueBadRequest:
		return nil, v
	case *PublicIncUserStatItemValueUnauthorized:
		return nil, v
	case *PublicIncUserStatItemValueForbidden:
		return nil, v
	case *PublicIncUserStatItemValueNotFound:
		return nil, v
	case *PublicIncUserStatItemValueConflict:
		return nil, v
	case *PublicIncUserStatItemValueUnprocessableEntity:
		return nil, v
	case *PublicIncUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ResetUserStatItemValue1Short instead.

ResetUserStatItemValue1 public reset user's statitem value
Reset user's statitem value for a given namespace and user.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) ResetUserStatItemValue1(params *ResetUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValue1OK, *ResetUserStatItemValue1BadRequest, *ResetUserStatItemValue1Unauthorized, *ResetUserStatItemValue1Forbidden, *ResetUserStatItemValue1NotFound, *ResetUserStatItemValue1UnprocessableEntity, *ResetUserStatItemValue1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetUserStatItemValue1Params()
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
		ID:                 "resetUserStatItemValue_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetUserStatItemValue1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ResetUserStatItemValue1OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *ResetUserStatItemValue1BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *ResetUserStatItemValue1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *ResetUserStatItemValue1Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *ResetUserStatItemValue1NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *ResetUserStatItemValue1UnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *ResetUserStatItemValue1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetUserStatItemValue1Short public reset user's statitem value
Reset user's statitem value for a given namespace and user.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) ResetUserStatItemValue1Short(params *ResetUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValue1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetUserStatItemValue1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "resetUserStatItemValue_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetUserStatItemValue1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetUserStatItemValue1OK:
		return v, nil
	case *ResetUserStatItemValue1BadRequest:
		return nil, v
	case *ResetUserStatItemValue1Unauthorized:
		return nil, v
	case *ResetUserStatItemValue1Forbidden:
		return nil, v
	case *ResetUserStatItemValue1NotFound:
		return nil, v
	case *ResetUserStatItemValue1UnprocessableEntity:
		return nil, v
	case *ResetUserStatItemValue1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkUpdateUserStatItemV2Short instead.

BulkUpdateUserStatItemV2 bulk update multiple user's statitems value
Bulk update multiple user's statitems value with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItemV2(params *BulkUpdateUserStatItemV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemV2OK, *BulkUpdateUserStatItemV2BadRequest, *BulkUpdateUserStatItemV2Unauthorized, *BulkUpdateUserStatItemV2Forbidden, *BulkUpdateUserStatItemV2UnprocessableEntity, *BulkUpdateUserStatItemV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItemV2Params()
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
		ID:                 "bulkUpdateUserStatItemV2",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItemV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItemV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkUpdateUserStatItemV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkUpdateUserStatItemV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkUpdateUserStatItemV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkUpdateUserStatItemV2UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkUpdateUserStatItemV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkUpdateUserStatItemV2Short bulk update multiple user's statitems value
Bulk update multiple user's statitems value with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItemV2Short(params *BulkUpdateUserStatItemV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItemV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkUpdateUserStatItemV2",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItemV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItemV2OK:
		return v, nil
	case *BulkUpdateUserStatItemV2BadRequest:
		return nil, v
	case *BulkUpdateUserStatItemV2Unauthorized:
		return nil, v
	case *BulkUpdateUserStatItemV2Forbidden:
		return nil, v
	case *BulkUpdateUserStatItemV2UnprocessableEntity:
		return nil, v
	case *BulkUpdateUserStatItemV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkFetchOrDefaultStatItems1Short instead.

BulkFetchOrDefaultStatItems1 bulk fetch user stat item values
Bulk fetch multiple user's stat item values for a given namespace and statCode.
NOTE: If stat item does not exist, will return default value. Other detail info:
+ *Returns*: list of user's stat item values
*/
func (a *Client) BulkFetchOrDefaultStatItems1(params *BulkFetchOrDefaultStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItems1OK, *BulkFetchOrDefaultStatItems1Unauthorized, *BulkFetchOrDefaultStatItems1Forbidden, *BulkFetchOrDefaultStatItems1NotFound, *BulkFetchOrDefaultStatItems1UnprocessableEntity, *BulkFetchOrDefaultStatItems1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchOrDefaultStatItems1Params()
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
		ID:                 "bulkFetchOrDefaultStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchOrDefaultStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkFetchOrDefaultStatItems1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkFetchOrDefaultStatItems1Unauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkFetchOrDefaultStatItems1Forbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkFetchOrDefaultStatItems1NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkFetchOrDefaultStatItems1UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkFetchOrDefaultStatItems1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkFetchOrDefaultStatItems1Short bulk fetch user stat item values
Bulk fetch multiple user's stat item values for a given namespace and statCode.
NOTE: If stat item does not exist, will return default value. Other detail info:
+ *Returns*: list of user's stat item values
*/
func (a *Client) BulkFetchOrDefaultStatItems1Short(params *BulkFetchOrDefaultStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItems1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchOrDefaultStatItems1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkFetchOrDefaultStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchOrDefaultStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkFetchOrDefaultStatItems1OK:
		return v, nil
	case *BulkFetchOrDefaultStatItems1Unauthorized:
		return nil, v
	case *BulkFetchOrDefaultStatItems1Forbidden:
		return nil, v
	case *BulkFetchOrDefaultStatItems1NotFound:
		return nil, v
	case *BulkFetchOrDefaultStatItems1UnprocessableEntity:
		return nil, v
	case *BulkFetchOrDefaultStatItems1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminListUsersStatItemsShort instead.

AdminListUsersStatItems (legacy) admin list user's statitems
Admin list all statItems of user
NOTE: Legacy endpoint , please use POST /v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault
                      * If stat code does not exist, will ignore this stat code.
                      * If stat item does not exist, will return default value
Other detail info:
                      *  Returns : stat items
*/
func (a *Client) AdminListUsersStatItems(params *AdminListUsersStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersStatItemsOK, *AdminListUsersStatItemsBadRequest, *AdminListUsersStatItemsUnauthorized, *AdminListUsersStatItemsForbidden, *AdminListUsersStatItemsNotFound, *AdminListUsersStatItemsUnprocessableEntity, *AdminListUsersStatItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUsersStatItemsParams()
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
		ID:                 "AdminListUsersStatItems",
		Method:             "GET",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUsersStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListUsersStatItemsOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminListUsersStatItemsBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminListUsersStatItemsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminListUsersStatItemsForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminListUsersStatItemsNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminListUsersStatItemsUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminListUsersStatItemsInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUsersStatItemsShort (legacy) admin list user's statitems
Admin list all statItems of user
NOTE: Legacy endpoint , please use POST /v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault
                      * If stat code does not exist, will ignore this stat code.
                      * If stat item does not exist, will return default value
Other detail info:
                      *  Returns : stat items
*/
func (a *Client) AdminListUsersStatItemsShort(params *AdminListUsersStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUsersStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListUsersStatItems",
		Method:             "GET",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUsersStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUsersStatItemsOK:
		return v, nil
	case *AdminListUsersStatItemsBadRequest:
		return nil, v
	case *AdminListUsersStatItemsUnauthorized:
		return nil, v
	case *AdminListUsersStatItemsForbidden:
		return nil, v
	case *AdminListUsersStatItemsNotFound:
		return nil, v
	case *AdminListUsersStatItemsUnprocessableEntity:
		return nil, v
	case *AdminListUsersStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkUpdateUserStatItemShort instead.

BulkUpdateUserStatItem bulk update user's statitems value
Bulk update user's statitems value for given namespace and user with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItem(params *BulkUpdateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemOK, *BulkUpdateUserStatItemBadRequest, *BulkUpdateUserStatItemUnauthorized, *BulkUpdateUserStatItemForbidden, *BulkUpdateUserStatItemUnprocessableEntity, *BulkUpdateUserStatItemInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItemParams()
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
		ID:                 "bulkUpdateUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItemOK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkUpdateUserStatItemBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkUpdateUserStatItemUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkUpdateUserStatItemForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkUpdateUserStatItemUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkUpdateUserStatItemInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkUpdateUserStatItemShort bulk update user's statitems value
Bulk update user's statitems value for given namespace and user with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItemShort(params *BulkUpdateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkUpdateUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItemOK:
		return v, nil
	case *BulkUpdateUserStatItemBadRequest:
		return nil, v
	case *BulkUpdateUserStatItemUnauthorized:
		return nil, v
	case *BulkUpdateUserStatItemForbidden:
		return nil, v
	case *BulkUpdateUserStatItemUnprocessableEntity:
		return nil, v
	case *BulkUpdateUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkGetOrDefaultByUserIDShort instead.

BulkGetOrDefaultByUserID bulk get user's statitems value by user id and multiple stat codes
Bulk get user's statitems value for given namespace and user by multiple stat codes.
Will return default value if player doesn't have the stat.
Other detail info:
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
+ *Max stat codes*: 20
+ *Returns*: list of user's stat item values
*/
func (a *Client) BulkGetOrDefaultByUserID(params *BulkGetOrDefaultByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOrDefaultByUserIDOK, *BulkGetOrDefaultByUserIDUnauthorized, *BulkGetOrDefaultByUserIDForbidden, *BulkGetOrDefaultByUserIDUnprocessableEntity, *BulkGetOrDefaultByUserIDInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetOrDefaultByUserIDParams()
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
		ID:                 "bulkGetOrDefaultByUserId",
		Method:             "POST",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetOrDefaultByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkGetOrDefaultByUserIDOK:
		return v, nil, nil, nil, nil, nil

	case *BulkGetOrDefaultByUserIDUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *BulkGetOrDefaultByUserIDForbidden:
		return nil, nil, v, nil, nil, nil

	case *BulkGetOrDefaultByUserIDUnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *BulkGetOrDefaultByUserIDInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetOrDefaultByUserIDShort bulk get user's statitems value by user id and multiple stat codes
Bulk get user's statitems value for given namespace and user by multiple stat codes.
Will return default value if player doesn't have the stat.
Other detail info:
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
+ *Max stat codes*: 20
+ *Returns*: list of user's stat item values
*/
func (a *Client) BulkGetOrDefaultByUserIDShort(params *BulkGetOrDefaultByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOrDefaultByUserIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetOrDefaultByUserIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetOrDefaultByUserId",
		Method:             "POST",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetOrDefaultByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetOrDefaultByUserIDOK:
		return v, nil
	case *BulkGetOrDefaultByUserIDUnauthorized:
		return nil, v
	case *BulkGetOrDefaultByUserIDForbidden:
		return nil, v
	case *BulkGetOrDefaultByUserIDUnprocessableEntity:
		return nil, v
	case *BulkGetOrDefaultByUserIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkResetUserStatItemValuesShort instead.

BulkResetUserStatItemValues bulk reset user's statitem values
Bulk reset user's statitem values for given namespace and user.
Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItemValues(params *BulkResetUserStatItemValuesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemValuesOK, *BulkResetUserStatItemValuesBadRequest, *BulkResetUserStatItemValuesUnauthorized, *BulkResetUserStatItemValuesForbidden, *BulkResetUserStatItemValuesUnprocessableEntity, *BulkResetUserStatItemValuesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItemValuesParams()
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
		ID:                 "bulkResetUserStatItemValues",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItemValuesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItemValuesOK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkResetUserStatItemValuesBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkResetUserStatItemValuesUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkResetUserStatItemValuesForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkResetUserStatItemValuesUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkResetUserStatItemValuesInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItemValuesShort bulk reset user's statitem values
Bulk reset user's statitem values for given namespace and user.
Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItemValuesShort(params *BulkResetUserStatItemValuesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemValuesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItemValuesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkResetUserStatItemValues",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItemValuesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItemValuesOK:
		return v, nil
	case *BulkResetUserStatItemValuesBadRequest:
		return nil, v
	case *BulkResetUserStatItemValuesUnauthorized:
		return nil, v
	case *BulkResetUserStatItemValuesForbidden:
		return nil, v
	case *BulkResetUserStatItemValuesUnprocessableEntity:
		return nil, v
	case *BulkResetUserStatItemValuesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserStatItems2Short instead.

DeleteUserStatItems2 delete user's statitems
Delete user's stat items for given namespace, statCode, and user Id.
If query param *additionalKey* is provided, it will delete user stat items of specific key (i.e. characterName).
Otherwise, it will delete all stat items related to the user Id.

Delete user's statItems given stat code.
Other detail info:
                      *  Returns : no content
*/
func (a *Client) DeleteUserStatItems2(params *DeleteUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems2NoContent, *DeleteUserStatItems2Unauthorized, *DeleteUserStatItems2Forbidden, *DeleteUserStatItems2NotFound, *DeleteUserStatItems2UnprocessableEntity, *DeleteUserStatItems2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserStatItems2Params()
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
		ID:                 "deleteUserStatItems_2",
		Method:             "DELETE",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserStatItems2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItems2NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteUserStatItems2Unauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteUserStatItems2Forbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteUserStatItems2NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteUserStatItems2UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteUserStatItems2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStatItems2Short delete user's statitems
Delete user's stat items for given namespace, statCode, and user Id.
If query param *additionalKey* is provided, it will delete user stat items of specific key (i.e. characterName).
Otherwise, it will delete all stat items related to the user Id.

Delete user's statItems given stat code.
Other detail info:
                        *  Returns : no content
*/
func (a *Client) DeleteUserStatItems2Short(params *DeleteUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserStatItems2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserStatItems_2",
		Method:             "DELETE",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserStatItems2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItems2NoContent:
		return v, nil
	case *DeleteUserStatItems2Unauthorized:
		return nil, v
	case *DeleteUserStatItems2Forbidden:
		return nil, v
	case *DeleteUserStatItems2NotFound:
		return nil, v
	case *DeleteUserStatItems2UnprocessableEntity:
		return nil, v
	case *DeleteUserStatItems2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateUserStatItemValueShort instead.

UpdateUserStatItemValue update user's statitem value
Update user's statitem value for a given namespace and user with a certain update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) UpdateUserStatItemValue(params *UpdateUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValueOK, *UpdateUserStatItemValueBadRequest, *UpdateUserStatItemValueUnauthorized, *UpdateUserStatItemValueForbidden, *UpdateUserStatItemValueNotFound, *UpdateUserStatItemValueConflict, *UpdateUserStatItemValueUnprocessableEntity, *UpdateUserStatItemValueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserStatItemValueParams()
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
		ID:                 "updateUserStatItemValue",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserStatItemValueOK:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *UpdateUserStatItemValueBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *UpdateUserStatItemValueUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *UpdateUserStatItemValueForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *UpdateUserStatItemValueNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *UpdateUserStatItemValueConflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *UpdateUserStatItemValueUnprocessableEntity:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *UpdateUserStatItemValueInternalServerError:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserStatItemValueShort update user's statitem value
Update user's statitem value for a given namespace and user with a certain update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) UpdateUserStatItemValueShort(params *UpdateUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserStatItemValueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateUserStatItemValue",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserStatItemValueOK:
		return v, nil
	case *UpdateUserStatItemValueBadRequest:
		return nil, v
	case *UpdateUserStatItemValueUnauthorized:
		return nil, v
	case *UpdateUserStatItemValueForbidden:
		return nil, v
	case *UpdateUserStatItemValueNotFound:
		return nil, v
	case *UpdateUserStatItemValueConflict:
		return nil, v
	case *UpdateUserStatItemValueUnprocessableEntity:
		return nil, v
	case *UpdateUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkUpdateUserStatItem1Short instead.

BulkUpdateUserStatItem1 public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItem1(params *BulkUpdateUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem1OK, *BulkUpdateUserStatItem1BadRequest, *BulkUpdateUserStatItem1Unauthorized, *BulkUpdateUserStatItem1Forbidden, *BulkUpdateUserStatItem1UnprocessableEntity, *BulkUpdateUserStatItem1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItem1Params()
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
		ID:                 "bulkUpdateUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItem1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkUpdateUserStatItem1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkUpdateUserStatItem1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkUpdateUserStatItem1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkUpdateUserStatItem1UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkUpdateUserStatItem1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkUpdateUserStatItem1Short public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItem1Short(params *BulkUpdateUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItem1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkUpdateUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItem1OK:
		return v, nil
	case *BulkUpdateUserStatItem1BadRequest:
		return nil, v
	case *BulkUpdateUserStatItem1Unauthorized:
		return nil, v
	case *BulkUpdateUserStatItem1Forbidden:
		return nil, v
	case *BulkUpdateUserStatItem1UnprocessableEntity:
		return nil, v
	case *BulkUpdateUserStatItem1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicQueryUserStatItems2Short instead.

PublicQueryUserStatItems2 public list user's statitems
Public list all statItems of user.
NOTE:
                        * If stat code does not exist, will ignore this stat code.
                        * If stat item does not exist, will return default value
Other detail info:
                        *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems2(params *PublicQueryUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems2OK, *PublicQueryUserStatItems2BadRequest, *PublicQueryUserStatItems2Unauthorized, *PublicQueryUserStatItems2Forbidden, *PublicQueryUserStatItems2NotFound, *PublicQueryUserStatItems2UnprocessableEntity, *PublicQueryUserStatItems2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserStatItems2Params()
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
		ID:                 "publicQueryUserStatItems_2",
		Method:             "GET",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserStatItems2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserStatItems2OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicQueryUserStatItems2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicQueryUserStatItems2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicQueryUserStatItems2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicQueryUserStatItems2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicQueryUserStatItems2UnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicQueryUserStatItems2InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItems2Short public list user's statitems
Public list all statItems of user.
NOTE:
                      * If stat code does not exist, will ignore this stat code.
                      * If stat item does not exist, will return default value
Other detail info:
                      *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems2Short(params *PublicQueryUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserStatItems2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryUserStatItems_2",
		Method:             "GET",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserStatItems2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserStatItems2OK:
		return v, nil
	case *PublicQueryUserStatItems2BadRequest:
		return nil, v
	case *PublicQueryUserStatItems2Unauthorized:
		return nil, v
	case *PublicQueryUserStatItems2Forbidden:
		return nil, v
	case *PublicQueryUserStatItems2NotFound:
		return nil, v
	case *PublicQueryUserStatItems2UnprocessableEntity:
		return nil, v
	case *PublicQueryUserStatItems2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkUpdateUserStatItem2Short instead.

BulkUpdateUserStatItem2 public bulk update user's statitems value
Public bulk update user's statitems value for given namespace and user with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItem2(params *BulkUpdateUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem2OK, *BulkUpdateUserStatItem2BadRequest, *BulkUpdateUserStatItem2Unauthorized, *BulkUpdateUserStatItem2Forbidden, *BulkUpdateUserStatItem2UnprocessableEntity, *BulkUpdateUserStatItem2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItem2Params()
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
		ID:                 "bulkUpdateUserStatItem_2",
		Method:             "PUT",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItem2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItem2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkUpdateUserStatItem2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkUpdateUserStatItem2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkUpdateUserStatItem2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkUpdateUserStatItem2UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkUpdateUserStatItem2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkUpdateUserStatItem2Short public bulk update user's statitems value
Public bulk update user's statitems value for given namespace and user with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItem2Short(params *BulkUpdateUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItem2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkUpdateUserStatItem_2",
		Method:             "PUT",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItem2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItem2OK:
		return v, nil
	case *BulkUpdateUserStatItem2BadRequest:
		return nil, v
	case *BulkUpdateUserStatItem2Unauthorized:
		return nil, v
	case *BulkUpdateUserStatItem2Forbidden:
		return nil, v
	case *BulkUpdateUserStatItem2UnprocessableEntity:
		return nil, v
	case *BulkUpdateUserStatItem2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateUserStatItemValue1Short instead.

UpdateUserStatItemValue1 public update user's statitem value
Public update user's statitem value for a given namespace and user with a certain update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) UpdateUserStatItemValue1(params *UpdateUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValue1OK, *UpdateUserStatItemValue1BadRequest, *UpdateUserStatItemValue1Unauthorized, *UpdateUserStatItemValue1Forbidden, *UpdateUserStatItemValue1NotFound, *UpdateUserStatItemValue1Conflict, *UpdateUserStatItemValue1UnprocessableEntity, *UpdateUserStatItemValue1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserStatItemValue1Params()
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
		ID:                 "updateUserStatItemValue_1",
		Method:             "PUT",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserStatItemValue1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserStatItemValue1OK:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *UpdateUserStatItemValue1BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *UpdateUserStatItemValue1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *UpdateUserStatItemValue1Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *UpdateUserStatItemValue1NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *UpdateUserStatItemValue1Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *UpdateUserStatItemValue1UnprocessableEntity:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *UpdateUserStatItemValue1InternalServerError:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserStatItemValue1Short public update user's statitem value
Public update user's statitem value for a given namespace and user with a certain update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) UpdateUserStatItemValue1Short(params *UpdateUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValue1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserStatItemValue1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateUserStatItemValue_1",
		Method:             "PUT",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserStatItemValue1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserStatItemValue1OK:
		return v, nil
	case *UpdateUserStatItemValue1BadRequest:
		return nil, v
	case *UpdateUserStatItemValue1Unauthorized:
		return nil, v
	case *UpdateUserStatItemValue1Forbidden:
		return nil, v
	case *UpdateUserStatItemValue1NotFound:
		return nil, v
	case *UpdateUserStatItemValue1Conflict:
		return nil, v
	case *UpdateUserStatItemValue1UnprocessableEntity:
		return nil, v
	case *UpdateUserStatItemValue1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
