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
	BulkFetchStatItems(params *BulkFetchStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItemsOK, *BulkFetchStatItemsUnprocessableEntity, error)
	BulkFetchStatItemsShort(params *BulkFetchStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItemsOK, error)
	BulkIncUserStatItem(params *BulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemOK, *BulkIncUserStatItemUnprocessableEntity, error)
	BulkIncUserStatItemShort(params *BulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemOK, error)
	BulkIncUserStatItemValue(params *BulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValueOK, *BulkIncUserStatItemValueUnprocessableEntity, error)
	BulkIncUserStatItemValueShort(params *BulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValueOK, error)
	BulkFetchOrDefaultStatItems(params *BulkFetchOrDefaultStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItemsOK, *BulkFetchOrDefaultStatItemsNotFound, *BulkFetchOrDefaultStatItemsUnprocessableEntity, error)
	BulkFetchOrDefaultStatItemsShort(params *BulkFetchOrDefaultStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItemsOK, error)
	BulkResetUserStatItem(params *BulkResetUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemOK, *BulkResetUserStatItemUnprocessableEntity, error)
	BulkResetUserStatItemShort(params *BulkResetUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemOK, error)
	GetUserStatItems(params *GetUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatItemsOK, error)
	GetUserStatItemsShort(params *GetUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatItemsOK, error)
	BulkCreateUserStatItems(params *BulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateUserStatItemsOK, *BulkCreateUserStatItemsUnprocessableEntity, error)
	BulkCreateUserStatItemsShort(params *BulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateUserStatItemsOK, error)
	BulkIncUserStatItem1(params *BulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItem1OK, *BulkIncUserStatItem1UnprocessableEntity, error)
	BulkIncUserStatItem1Short(params *BulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItem1OK, error)
	BulkIncUserStatItemValue1(params *BulkIncUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue1OK, *BulkIncUserStatItemValue1UnprocessableEntity, error)
	BulkIncUserStatItemValue1Short(params *BulkIncUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue1OK, error)
	BulkResetUserStatItem1(params *BulkResetUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem1OK, *BulkResetUserStatItem1UnprocessableEntity, error)
	BulkResetUserStatItem1Short(params *BulkResetUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem1OK, error)
	CreateUserStatItem(params *CreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserStatItemCreated, *CreateUserStatItemNotFound, *CreateUserStatItemConflict, error)
	CreateUserStatItemShort(params *CreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserStatItemCreated, error)
	DeleteUserStatItems(params *DeleteUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItemsNoContent, *DeleteUserStatItemsUnauthorized, *DeleteUserStatItemsForbidden, *DeleteUserStatItemsNotFound, error)
	DeleteUserStatItemsShort(params *DeleteUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItemsNoContent, error)
	IncUserStatItemValue(params *IncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*IncUserStatItemValueOK, *IncUserStatItemValueBadRequest, *IncUserStatItemValueNotFound, *IncUserStatItemValueConflict, error)
	IncUserStatItemValueShort(params *IncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*IncUserStatItemValueOK, error)
	ResetUserStatItemValue(params *ResetUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValueOK, *ResetUserStatItemValueBadRequest, *ResetUserStatItemValueNotFound, error)
	ResetUserStatItemValueShort(params *ResetUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValueOK, error)
	BulkFetchStatItems1(params *BulkFetchStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItems1OK, *BulkFetchStatItems1UnprocessableEntity, error)
	BulkFetchStatItems1Short(params *BulkFetchStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItems1OK, error)
	PublicBulkIncUserStatItem(params *PublicBulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemOK, *PublicBulkIncUserStatItemUnprocessableEntity, error)
	PublicBulkIncUserStatItemShort(params *PublicBulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemOK, error)
	PublicBulkIncUserStatItemValue(params *PublicBulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemValueOK, *PublicBulkIncUserStatItemValueUnprocessableEntity, error)
	PublicBulkIncUserStatItemValueShort(params *PublicBulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemValueOK, error)
	BulkResetUserStatItem2(params *BulkResetUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem2OK, *BulkResetUserStatItem2UnprocessableEntity, error)
	BulkResetUserStatItem2Short(params *BulkResetUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem2OK, error)
	PublicQueryUserStatItems(params *PublicQueryUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItemsOK, error)
	PublicQueryUserStatItemsShort(params *PublicQueryUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItemsOK, error)
	PublicBulkCreateUserStatItems(params *PublicBulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkCreateUserStatItemsOK, *PublicBulkCreateUserStatItemsUnprocessableEntity, error)
	PublicBulkCreateUserStatItemsShort(params *PublicBulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkCreateUserStatItemsOK, error)
	PublicQueryUserStatItems1(params *PublicQueryUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems1OK, *PublicQueryUserStatItems1BadRequest, *PublicQueryUserStatItems1NotFound, *PublicQueryUserStatItems1UnprocessableEntity, error)
	PublicQueryUserStatItems1Short(params *PublicQueryUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems1OK, error)
	PublicBulkIncUserStatItem1(params *PublicBulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItem1OK, *PublicBulkIncUserStatItem1UnprocessableEntity, error)
	PublicBulkIncUserStatItem1Short(params *PublicBulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItem1OK, error)
	BulkIncUserStatItemValue2(params *BulkIncUserStatItemValue2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue2OK, *BulkIncUserStatItemValue2UnprocessableEntity, error)
	BulkIncUserStatItemValue2Short(params *BulkIncUserStatItemValue2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue2OK, error)
	BulkResetUserStatItem3(params *BulkResetUserStatItem3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem3OK, *BulkResetUserStatItem3UnprocessableEntity, error)
	BulkResetUserStatItem3Short(params *BulkResetUserStatItem3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem3OK, error)
	PublicCreateUserStatItem(params *PublicCreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserStatItemCreated, *PublicCreateUserStatItemNotFound, *PublicCreateUserStatItemConflict, error)
	PublicCreateUserStatItemShort(params *PublicCreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserStatItemCreated, error)
	DeleteUserStatItems1(params *DeleteUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems1NoContent, *DeleteUserStatItems1Unauthorized, *DeleteUserStatItems1Forbidden, *DeleteUserStatItems1NotFound, error)
	DeleteUserStatItems1Short(params *DeleteUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems1NoContent, error)
	PublicIncUserStatItem(params *PublicIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemOK, *PublicIncUserStatItemBadRequest, *PublicIncUserStatItemNotFound, *PublicIncUserStatItemConflict, error)
	PublicIncUserStatItemShort(params *PublicIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemOK, error)
	PublicIncUserStatItemValue(params *PublicIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemValueOK, *PublicIncUserStatItemValueBadRequest, *PublicIncUserStatItemValueNotFound, *PublicIncUserStatItemValueConflict, error)
	PublicIncUserStatItemValueShort(params *PublicIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemValueOK, error)
	ResetUserStatItemValue1(params *ResetUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValue1OK, *ResetUserStatItemValue1BadRequest, *ResetUserStatItemValue1NotFound, error)
	ResetUserStatItemValue1Short(params *ResetUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValue1OK, error)
	BulkUpdateUserStatItemV2(params *BulkUpdateUserStatItemV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemV2OK, *BulkUpdateUserStatItemV2UnprocessableEntity, error)
	BulkUpdateUserStatItemV2Short(params *BulkUpdateUserStatItemV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemV2OK, error)
	BulkFetchOrDefaultStatItems1(params *BulkFetchOrDefaultStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItems1OK, *BulkFetchOrDefaultStatItems1NotFound, *BulkFetchOrDefaultStatItems1UnprocessableEntity, error)
	BulkFetchOrDefaultStatItems1Short(params *BulkFetchOrDefaultStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItems1OK, error)
	BulkUpdateUserStatItem(params *BulkUpdateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemOK, *BulkUpdateUserStatItemUnprocessableEntity, error)
	BulkUpdateUserStatItemShort(params *BulkUpdateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemOK, error)
	BulkResetUserStatItemValues(params *BulkResetUserStatItemValuesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemValuesOK, *BulkResetUserStatItemValuesUnprocessableEntity, error)
	BulkResetUserStatItemValuesShort(params *BulkResetUserStatItemValuesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemValuesOK, error)
	DeleteUserStatItems2(params *DeleteUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems2NoContent, *DeleteUserStatItems2Unauthorized, *DeleteUserStatItems2Forbidden, *DeleteUserStatItems2NotFound, error)
	DeleteUserStatItems2Short(params *DeleteUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems2NoContent, error)
	UpdateUserStatItemValue(params *UpdateUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValueOK, *UpdateUserStatItemValueBadRequest, *UpdateUserStatItemValueNotFound, *UpdateUserStatItemValueConflict, *UpdateUserStatItemValueUnprocessableEntity, error)
	UpdateUserStatItemValueShort(params *UpdateUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValueOK, error)
	BulkUpdateUserStatItem1(params *BulkUpdateUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem1OK, *BulkUpdateUserStatItem1UnprocessableEntity, error)
	BulkUpdateUserStatItem1Short(params *BulkUpdateUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem1OK, error)
	PublicQueryUserStatItems2(params *PublicQueryUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems2OK, *PublicQueryUserStatItems2BadRequest, *PublicQueryUserStatItems2NotFound, *PublicQueryUserStatItems2UnprocessableEntity, error)
	PublicQueryUserStatItems2Short(params *PublicQueryUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems2OK, error)
	BulkUpdateUserStatItem2(params *BulkUpdateUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem2OK, *BulkUpdateUserStatItem2UnprocessableEntity, error)
	BulkUpdateUserStatItem2Short(params *BulkUpdateUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem2OK, error)
	UpdateUserStatItemValue1(params *UpdateUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValue1OK, *UpdateUserStatItemValue1BadRequest, *UpdateUserStatItemValue1NotFound, *UpdateUserStatItemValue1Conflict, *UpdateUserStatItemValue1UnprocessableEntity, error)
	UpdateUserStatItemValue1Short(params *UpdateUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValue1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use BulkFetchStatItemsShort instead.

BulkFetchStatItems bulk fetch statitems value
Bulk fetch multiple user's statitem value for a given namespace and statCode.
Other detail info:
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:STATITEM", action=2 (READ)
+ *Returns*: list of user's statItem
*/
func (a *Client) BulkFetchStatItems(params *BulkFetchStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItemsOK, *BulkFetchStatItemsUnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkFetchStatItemsOK:
		return v, nil, nil

	case *BulkFetchStatItemsUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkFetchStatItemsShort bulk fetch statitems value
Bulk fetch multiple user's statitem value for a given namespace and statCode.
Other detail info:
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:STATITEM", action=2 (READ)
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
	case *BulkFetchStatItemsUnprocessableEntity:
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
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
              *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItem(params *BulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemOK, *BulkIncUserStatItemUnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemOK:
		return v, nil, nil

	case *BulkIncUserStatItemUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemShort bulk update multiple user's statitems value
Bulk update multiple user's statitems value.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
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
	case *BulkIncUserStatItemUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkIncUserStatItemValueShort instead.

BulkIncUserStatItemValue bulk update multiple user's statitems value
Bulk update multiple user's statitems value.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
              *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemValue(params *BulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValueOK, *BulkIncUserStatItemValueUnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValueOK:
		return v, nil, nil

	case *BulkIncUserStatItemValueUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValueShort bulk update multiple user's statitems value
Bulk update multiple user's statitems value.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
              *  Returns : bulk updated result
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
	case *BulkIncUserStatItemValueUnprocessableEntity:
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
+ *Required permission*: resource=ADMIN:NAMESPACE:{namespace}:STATITEM, action=2 (READ)
+ *Returns*: list of user's stat item values
*/
func (a *Client) BulkFetchOrDefaultStatItems(params *BulkFetchOrDefaultStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItemsOK, *BulkFetchOrDefaultStatItemsNotFound, *BulkFetchOrDefaultStatItemsUnprocessableEntity, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkFetchOrDefaultStatItemsOK:
		return v, nil, nil, nil

	case *BulkFetchOrDefaultStatItemsNotFound:
		return nil, v, nil, nil

	case *BulkFetchOrDefaultStatItemsUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkFetchOrDefaultStatItemsShort bulk fetch user stat item values
Bulk fetch multiple user's stat item values for a given namespace and statCode.
NOTE: If stat item does not exist, will return default value. Other detail info:
+ *Required permission*: resource=ADMIN:NAMESPACE:{namespace}:STATITEM, action=2 (READ)
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
	case *BulkFetchOrDefaultStatItemsNotFound:
		return nil, v
	case *BulkFetchOrDefaultStatItemsUnprocessableEntity:
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
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem(params *BulkResetUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemOK, *BulkResetUserStatItemUnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItemOK:
		return v, nil, nil

	case *BulkResetUserStatItemUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItemShort bulk reset multiple user's statitems value
Bulk reset multiple user's statitems value.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
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
	case *BulkResetUserStatItemUnprocessableEntity:
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
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
              *  Returns : stat items
*/
func (a *Client) GetUserStatItems(params *GetUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatItemsOK, error) {
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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserStatItemsShort list user's statitems
List user's statItems.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkCreateUserStatItemsShort instead.

BulkCreateUserStatItems bulk create user's statitems
Bulk create user's statItems.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=1 (CREATE)
              *  Returns : bulk created result
*/
func (a *Client) BulkCreateUserStatItems(params *BulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateUserStatItemsOK, *BulkCreateUserStatItemsUnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkCreateUserStatItemsOK:
		return v, nil, nil

	case *BulkCreateUserStatItemsUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkCreateUserStatItemsShort bulk create user's statitems
Bulk create user's statItems.
Other detail info:
                *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=1 (CREATE)
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
	case *BulkCreateUserStatItemsUnprocessableEntity:
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
                  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
                  *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItem1(params *BulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItem1OK, *BulkIncUserStatItem1UnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItem1OK:
		return v, nil, nil

	case *BulkIncUserStatItem1UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItem1Short bulk update user's statitems value
Bulk update user's statitems value.
Other detail info:
                  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *BulkIncUserStatItem1UnprocessableEntity:
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
                  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
                  *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemValue1(params *BulkIncUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue1OK, *BulkIncUserStatItemValue1UnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValue1OK:
		return v, nil, nil

	case *BulkIncUserStatItemValue1UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValue1Short bulk update user's statitems value
Bulk update user's statitems value.
Other detail info:
                  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *BulkIncUserStatItemValue1UnprocessableEntity:
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
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem1(params *BulkResetUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem1OK, *BulkResetUserStatItem1UnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem1OK:
		return v, nil, nil

	case *BulkResetUserStatItem1UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItem1Short bulk reset user's statitems value
Bulk reset user's statitems value for given namespace and user.
Other detail info:
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *BulkResetUserStatItem1UnprocessableEntity:
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
                  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=1 (CREATE)
                  *  Returns : created user's statItem
*/
func (a *Client) CreateUserStatItem(params *CreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserStatItemCreated, *CreateUserStatItemNotFound, *CreateUserStatItemConflict, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateUserStatItemCreated:
		return v, nil, nil, nil

	case *CreateUserStatItemNotFound:
		return nil, v, nil, nil

	case *CreateUserStatItemConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateUserStatItemShort create user's statitem
Create statItem for a user.
Other detail info:
                  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=1 (CREATE)
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
	case *CreateUserStatItemNotFound:
		return nil, v
	case *CreateUserStatItemConflict:
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
                  *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=8 (DELETE)
                  *  Returns : no content
*/
func (a *Client) DeleteUserStatItems(params *DeleteUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItemsNoContent, *DeleteUserStatItemsUnauthorized, *DeleteUserStatItemsForbidden, *DeleteUserStatItemsNotFound, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItemsNoContent:
		return v, nil, nil, nil, nil

	case *DeleteUserStatItemsUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteUserStatItemsForbidden:
		return nil, nil, v, nil, nil

	case *DeleteUserStatItemsNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStatItemsShort delete user's statitems
This endpoint is for testing purpose. Use this endpoint for cleaning up after testing.
Delete user's statItems given stat code.
Other detail info:
                    *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=8 (DELETE)
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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use IncUserStatItemValueShort instead.

IncUserStatItemValue update user's statitem value
Update user's statitem value.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
                      *  Returns : updated user's statItem
*/
func (a *Client) IncUserStatItemValue(params *IncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*IncUserStatItemValueOK, *IncUserStatItemValueBadRequest, *IncUserStatItemValueNotFound, *IncUserStatItemValueConflict, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *IncUserStatItemValueOK:
		return v, nil, nil, nil, nil

	case *IncUserStatItemValueBadRequest:
		return nil, v, nil, nil, nil

	case *IncUserStatItemValueNotFound:
		return nil, nil, v, nil, nil

	case *IncUserStatItemValueConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IncUserStatItemValueShort update user's statitem value
Update user's statitem value.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *IncUserStatItemValueNotFound:
		return nil, v
	case *IncUserStatItemValueConflict:
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
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
+ *Returns*: updated user's statItem
*/
func (a *Client) ResetUserStatItemValue(params *ResetUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValueOK, *ResetUserStatItemValueBadRequest, *ResetUserStatItemValueNotFound, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ResetUserStatItemValueOK:
		return v, nil, nil, nil

	case *ResetUserStatItemValueBadRequest:
		return nil, v, nil, nil

	case *ResetUserStatItemValueNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetUserStatItemValueShort reset user's statitem value
Reset user's statitem value for a given namespace and user.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *ResetUserStatItemValueNotFound:
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
+ *Required permission*: resource="NAMESPACE:{namespace}:STATITEM", action=2 (READ)
+ *Returns*: list of user's statItem
*/
func (a *Client) BulkFetchStatItems1(params *BulkFetchStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItems1OK, *BulkFetchStatItems1UnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkFetchStatItems1OK:
		return v, nil, nil

	case *BulkFetchStatItems1UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkFetchStatItems1Short public bulk fetch statitems value
Public bulk fetch multiple user's statitem value for a given namespace and statCode.
Other detail info:
+ *Required permission*: resource="NAMESPACE:{namespace}:STATITEM", action=2 (READ)
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
	case *BulkFetchStatItems1UnprocessableEntity:
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
                      *  Required permission : resource="NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
                      *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItem(params *PublicBulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemOK, *PublicBulkIncUserStatItemUnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItemOK:
		return v, nil, nil

	case *PublicBulkIncUserStatItemUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItemShort public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value.
Other detail info:
                      *  Required permission : resource="NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
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
	case *PublicBulkIncUserStatItemUnprocessableEntity:
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
                      *  Required permission : resource="NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
                      *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItemValue(params *PublicBulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemValueOK, *PublicBulkIncUserStatItemValueUnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItemValueOK:
		return v, nil, nil

	case *PublicBulkIncUserStatItemValueUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItemValueShort public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value.
Other detail info:
                      *  Required permission : resource="NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
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
	case *PublicBulkIncUserStatItemValueUnprocessableEntity:
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
+ *Required permission*: resource="NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem2(params *BulkResetUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem2OK, *BulkResetUserStatItem2UnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem2OK:
		return v, nil, nil

	case *BulkResetUserStatItem2UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItem2Short public bulk reset multiple user's statitems value
Bulk reset multiple user's statitems value.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Required permission*: resource="NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
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
	case *BulkResetUserStatItem2UnprocessableEntity:
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
                      *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
                      *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems(params *PublicQueryUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItemsOK, error) {
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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItemsShort public list user's statitems
Public list all statItems by pagination.
Other detail info:
                      *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicBulkCreateUserStatItemsShort instead.

PublicBulkCreateUserStatItems bulk create user's statitems
Bulk create statItems.
Other detail info:
                      *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=1 (CREATE)
                      *  Returns : bulk created result
*/
func (a *Client) PublicBulkCreateUserStatItems(params *PublicBulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkCreateUserStatItemsOK, *PublicBulkCreateUserStatItemsUnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBulkCreateUserStatItemsOK:
		return v, nil, nil

	case *PublicBulkCreateUserStatItemsUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkCreateUserStatItemsShort bulk create user's statitems
Bulk create statItems.
Other detail info:
                      *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=1 (CREATE)
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
	case *PublicBulkCreateUserStatItemsUnprocessableEntity:
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
                    *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
                    *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems1(params *PublicQueryUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems1OK, *PublicQueryUserStatItems1BadRequest, *PublicQueryUserStatItems1NotFound, *PublicQueryUserStatItems1UnprocessableEntity, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserStatItems1OK:
		return v, nil, nil, nil, nil

	case *PublicQueryUserStatItems1BadRequest:
		return nil, v, nil, nil, nil

	case *PublicQueryUserStatItems1NotFound:
		return nil, nil, v, nil, nil

	case *PublicQueryUserStatItems1UnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItems1Short public list user's statitems
Public list all statItems of user.
NOTE:
                  * If stat code does not exist, will ignore this stat code.
                  * If stat item does not exist, will return default value
Other detail info:
                  *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
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
	case *PublicQueryUserStatItems1NotFound:
		return nil, v
	case *PublicQueryUserStatItems1UnprocessableEntity:
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
                  *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
                  *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItem1(params *PublicBulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItem1OK, *PublicBulkIncUserStatItem1UnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItem1OK:
		return v, nil, nil

	case *PublicBulkIncUserStatItem1UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItem1Short public bulk update user's statitems value
Public bulk update user's statitems value.
Other detail info:
                  *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *PublicBulkIncUserStatItem1UnprocessableEntity:
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
                  *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
                  *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemValue2(params *BulkIncUserStatItemValue2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue2OK, *BulkIncUserStatItemValue2UnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValue2OK:
		return v, nil, nil

	case *BulkIncUserStatItemValue2UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValue2Short public bulk update user's statitems value
Public bulk update user's statitems value.
Other detail info:
                    *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *BulkIncUserStatItemValue2UnprocessableEntity:
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
+ *Required permission*: resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem3(params *BulkResetUserStatItem3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem3OK, *BulkResetUserStatItem3UnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem3OK:
		return v, nil, nil

	case *BulkResetUserStatItem3UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItem3Short public bulk reset user's statitems value
Public bulk reset user's statitems value for given namespace and user.
Other detail info:
+ *Required permission*: resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *BulkResetUserStatItem3UnprocessableEntity:
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
                      *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=1 (CREATE)
                      *  Returns : created user's statItem
*/
func (a *Client) PublicCreateUserStatItem(params *PublicCreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserStatItemCreated, *PublicCreateUserStatItemNotFound, *PublicCreateUserStatItemConflict, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserStatItemCreated:
		return v, nil, nil, nil

	case *PublicCreateUserStatItemNotFound:
		return nil, v, nil, nil

	case *PublicCreateUserStatItemConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserStatItemShort create user's statitem
Create user's statItem.
Other detail info:
                      *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=1 (CREATE)
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
	case *PublicCreateUserStatItemNotFound:
		return nil, v
	case *PublicCreateUserStatItemConflict:
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
                      *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=8 (DELETE)
                      *  Returns : no content
*/
func (a *Client) DeleteUserStatItems1(params *DeleteUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems1NoContent, *DeleteUserStatItems1Unauthorized, *DeleteUserStatItems1Forbidden, *DeleteUserStatItems1NotFound, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItems1NoContent:
		return v, nil, nil, nil, nil

	case *DeleteUserStatItems1Unauthorized:
		return nil, v, nil, nil, nil

	case *DeleteUserStatItems1Forbidden:
		return nil, nil, v, nil, nil

	case *DeleteUserStatItems1NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStatItems1Short delete user's statitems
Delete user's statItems given stat code.
Other detail info:
                        *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=8 (DELETE)
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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicIncUserStatItemShort instead.

PublicIncUserStatItem public update user's statitem value
Public update user's statitem value.
Other detail info:
                          *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
                          *  Returns : updated user's statItem
*/
func (a *Client) PublicIncUserStatItem(params *PublicIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemOK, *PublicIncUserStatItemBadRequest, *PublicIncUserStatItemNotFound, *PublicIncUserStatItemConflict, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicIncUserStatItemOK:
		return v, nil, nil, nil, nil

	case *PublicIncUserStatItemBadRequest:
		return nil, v, nil, nil, nil

	case *PublicIncUserStatItemNotFound:
		return nil, nil, v, nil, nil

	case *PublicIncUserStatItemConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicIncUserStatItemShort public update user's statitem value
Public update user's statitem value.
Other detail info:
                          *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *PublicIncUserStatItemNotFound:
		return nil, v
	case *PublicIncUserStatItemConflict:
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
                          *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
                          *  Returns : updated user's statItem
*/
func (a *Client) PublicIncUserStatItemValue(params *PublicIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemValueOK, *PublicIncUserStatItemValueBadRequest, *PublicIncUserStatItemValueNotFound, *PublicIncUserStatItemValueConflict, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicIncUserStatItemValueOK:
		return v, nil, nil, nil, nil

	case *PublicIncUserStatItemValueBadRequest:
		return nil, v, nil, nil, nil

	case *PublicIncUserStatItemValueNotFound:
		return nil, nil, v, nil, nil

	case *PublicIncUserStatItemValueConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicIncUserStatItemValueShort public update user's statitem value
Public update user's statitem value.
Other detail info:
                          *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *PublicIncUserStatItemValueNotFound:
		return nil, v
	case *PublicIncUserStatItemValueConflict:
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
+ *Required permission*: resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
+ *Returns*: updated user's statItem
*/
func (a *Client) ResetUserStatItemValue1(params *ResetUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValue1OK, *ResetUserStatItemValue1BadRequest, *ResetUserStatItemValue1NotFound, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ResetUserStatItemValue1OK:
		return v, nil, nil, nil

	case *ResetUserStatItemValue1BadRequest:
		return nil, v, nil, nil

	case *ResetUserStatItemValue1NotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetUserStatItemValue1Short public reset user's statitem value
Reset user's statitem value for a given namespace and user.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Required permission*: resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *ResetUserStatItemValue1NotFound:
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
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItemV2(params *BulkUpdateUserStatItemV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemV2OK, *BulkUpdateUserStatItemV2UnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItemV2OK:
		return v, nil, nil

	case *BulkUpdateUserStatItemV2UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
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
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
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
	case *BulkUpdateUserStatItemV2UnprocessableEntity:
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
+ *Required permission*: resource=ADMIN:NAMESPACE:{namespace}:STATITEM, action=2 (READ)
+ *Returns*: list of user's stat item values
*/
func (a *Client) BulkFetchOrDefaultStatItems1(params *BulkFetchOrDefaultStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItems1OK, *BulkFetchOrDefaultStatItems1NotFound, *BulkFetchOrDefaultStatItems1UnprocessableEntity, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkFetchOrDefaultStatItems1OK:
		return v, nil, nil, nil

	case *BulkFetchOrDefaultStatItems1NotFound:
		return nil, v, nil, nil

	case *BulkFetchOrDefaultStatItems1UnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkFetchOrDefaultStatItems1Short bulk fetch user stat item values
Bulk fetch multiple user's stat item values for a given namespace and statCode.
NOTE: If stat item does not exist, will return default value. Other detail info:
+ *Required permission*: resource=ADMIN:NAMESPACE:{namespace}:STATITEM, action=2 (READ)
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
	case *BulkFetchOrDefaultStatItems1NotFound:
		return nil, v
	case *BulkFetchOrDefaultStatItems1UnprocessableEntity:
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
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItem(params *BulkUpdateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemOK, *BulkUpdateUserStatItemUnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItemOK:
		return v, nil, nil

	case *BulkUpdateUserStatItemUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
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
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *BulkUpdateUserStatItemUnprocessableEntity:
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
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItemValues(params *BulkResetUserStatItemValuesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemValuesOK, *BulkResetUserStatItemValuesUnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItemValuesOK:
		return v, nil, nil

	case *BulkResetUserStatItemValuesUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItemValuesShort bulk reset user's statitem values
Bulk reset user's statitem values for given namespace and user.
Other detail info:
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *BulkResetUserStatItemValuesUnprocessableEntity:
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
                          *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=8 (DELETE)
                          *  Returns : no content
*/
func (a *Client) DeleteUserStatItems2(params *DeleteUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems2NoContent, *DeleteUserStatItems2Unauthorized, *DeleteUserStatItems2Forbidden, *DeleteUserStatItems2NotFound, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItems2NoContent:
		return v, nil, nil, nil, nil

	case *DeleteUserStatItems2Unauthorized:
		return nil, v, nil, nil, nil

	case *DeleteUserStatItems2Forbidden:
		return nil, nil, v, nil, nil

	case *DeleteUserStatItems2NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStatItems2Short delete user's statitems
Delete user's stat items for given namespace, statCode, and user Id.
If query param *additionalKey* is provided, it will delete user stat items of specific key (i.e. characterName).
Otherwise, it will delete all stat items related to the user Id.

Delete user's statItems given stat code.
Other detail info:
                            *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=8 (DELETE)
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
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
+ *Returns*: updated user's statItem
*/
func (a *Client) UpdateUserStatItemValue(params *UpdateUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValueOK, *UpdateUserStatItemValueBadRequest, *UpdateUserStatItemValueNotFound, *UpdateUserStatItemValueConflict, *UpdateUserStatItemValueUnprocessableEntity, error) {
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserStatItemValueOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateUserStatItemValueBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateUserStatItemValueNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdateUserStatItemValueConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateUserStatItemValueUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
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
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *UpdateUserStatItemValueNotFound:
		return nil, v
	case *UpdateUserStatItemValueConflict:
		return nil, v
	case *UpdateUserStatItemValueUnprocessableEntity:
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
+ *Required permission*: resource="NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItem1(params *BulkUpdateUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem1OK, *BulkUpdateUserStatItem1UnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItem1OK:
		return v, nil, nil

	case *BulkUpdateUserStatItem1UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
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
+ *Required permission*: resource="NAMESPACE:{namespace}:STATITEM", action=4 (UPDATE)
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
	case *BulkUpdateUserStatItem1UnprocessableEntity:
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
                            *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
                            *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems2(params *PublicQueryUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems2OK, *PublicQueryUserStatItems2BadRequest, *PublicQueryUserStatItems2NotFound, *PublicQueryUserStatItems2UnprocessableEntity, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserStatItems2OK:
		return v, nil, nil, nil, nil

	case *PublicQueryUserStatItems2BadRequest:
		return nil, v, nil, nil, nil

	case *PublicQueryUserStatItems2NotFound:
		return nil, nil, v, nil, nil

	case *PublicQueryUserStatItems2UnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItems2Short public list user's statitems
Public list all statItems of user.
NOTE:
                          * If stat code does not exist, will ignore this stat code.
                          * If stat item does not exist, will return default value
Other detail info:
                          *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
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
	case *PublicQueryUserStatItems2NotFound:
		return nil, v
	case *PublicQueryUserStatItems2UnprocessableEntity:
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
+ *Required permission*: resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItem2(params *BulkUpdateUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem2OK, *BulkUpdateUserStatItem2UnprocessableEntity, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItem2OK:
		return v, nil, nil

	case *BulkUpdateUserStatItem2UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
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
+ *Required permission*: resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *BulkUpdateUserStatItem2UnprocessableEntity:
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
+ *Required permission*: resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
+ *Returns*: updated user's statItem
*/
func (a *Client) UpdateUserStatItemValue1(params *UpdateUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValue1OK, *UpdateUserStatItemValue1BadRequest, *UpdateUserStatItemValue1NotFound, *UpdateUserStatItemValue1Conflict, *UpdateUserStatItemValue1UnprocessableEntity, error) {
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserStatItemValue1OK:
		return v, nil, nil, nil, nil, nil

	case *UpdateUserStatItemValue1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateUserStatItemValue1NotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdateUserStatItemValue1Conflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateUserStatItemValue1UnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
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
+ *Required permission*: resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
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
	case *UpdateUserStatItemValue1NotFound:
		return nil, v
	case *UpdateUserStatItemValue1Conflict:
		return nil, v
	case *UpdateUserStatItemValue1UnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
