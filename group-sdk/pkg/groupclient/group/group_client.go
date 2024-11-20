// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package group

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new group API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for group API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetGroupListAdminV1(params *GetGroupListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListAdminV1OK, *GetGroupListAdminV1BadRequest, *GetGroupListAdminV1Unauthorized, *GetGroupListAdminV1Forbidden, *GetGroupListAdminV1InternalServerError, error)
	GetGroupListAdminV1Short(params *GetGroupListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListAdminV1OK, error)
	GetSingleGroupAdminV1(params *GetSingleGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupAdminV1OK, *GetSingleGroupAdminV1BadRequest, *GetSingleGroupAdminV1Unauthorized, *GetSingleGroupAdminV1Forbidden, *GetSingleGroupAdminV1NotFound, *GetSingleGroupAdminV1InternalServerError, error)
	GetSingleGroupAdminV1Short(params *GetSingleGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupAdminV1OK, error)
	DeleteGroupAdminV1(params *DeleteGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupAdminV1NoContent, *DeleteGroupAdminV1BadRequest, *DeleteGroupAdminV1Unauthorized, *DeleteGroupAdminV1Forbidden, *DeleteGroupAdminV1NotFound, *DeleteGroupAdminV1InternalServerError, error)
	DeleteGroupAdminV1Short(params *DeleteGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupAdminV1NoContent, error)
	GetGroupListPublicV1(params *GetGroupListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListPublicV1OK, *GetGroupListPublicV1BadRequest, *GetGroupListPublicV1Unauthorized, *GetGroupListPublicV1Forbidden, *GetGroupListPublicV1InternalServerError, error)
	GetGroupListPublicV1Short(params *GetGroupListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListPublicV1OK, error)
	CreateNewGroupPublicV1(params *CreateNewGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV1Created, *CreateNewGroupPublicV1BadRequest, *CreateNewGroupPublicV1Unauthorized, *CreateNewGroupPublicV1Forbidden, *CreateNewGroupPublicV1Conflict, *CreateNewGroupPublicV1InternalServerError, error)
	CreateNewGroupPublicV1Short(params *CreateNewGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV1Created, error)
	GetSingleGroupPublicV1(params *GetSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupPublicV1OK, *GetSingleGroupPublicV1BadRequest, *GetSingleGroupPublicV1Unauthorized, *GetSingleGroupPublicV1Forbidden, *GetSingleGroupPublicV1NotFound, *GetSingleGroupPublicV1InternalServerError, error)
	GetSingleGroupPublicV1Short(params *GetSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupPublicV1OK, error)
	UpdateSingleGroupV1(params *UpdateSingleGroupV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSingleGroupV1OK, *UpdateSingleGroupV1BadRequest, *UpdateSingleGroupV1Unauthorized, *UpdateSingleGroupV1Forbidden, *UpdateSingleGroupV1NotFound, *UpdateSingleGroupV1InternalServerError, error)
	UpdateSingleGroupV1Short(params *UpdateSingleGroupV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSingleGroupV1OK, error)
	DeleteGroupPublicV1(params *DeleteGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV1NoContent, *DeleteGroupPublicV1BadRequest, *DeleteGroupPublicV1Unauthorized, *DeleteGroupPublicV1Forbidden, *DeleteGroupPublicV1NotFound, *DeleteGroupPublicV1InternalServerError, error)
	DeleteGroupPublicV1Short(params *DeleteGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV1NoContent, error)
	UpdatePatchSingleGroupPublicV1(params *UpdatePatchSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV1OK, *UpdatePatchSingleGroupPublicV1BadRequest, *UpdatePatchSingleGroupPublicV1Unauthorized, *UpdatePatchSingleGroupPublicV1Forbidden, *UpdatePatchSingleGroupPublicV1NotFound, *UpdatePatchSingleGroupPublicV1InternalServerError, error)
	UpdatePatchSingleGroupPublicV1Short(params *UpdatePatchSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV1OK, error)
	UpdateGroupCustomAttributesPublicV1(params *UpdateGroupCustomAttributesPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV1OK, *UpdateGroupCustomAttributesPublicV1BadRequest, *UpdateGroupCustomAttributesPublicV1Unauthorized, *UpdateGroupCustomAttributesPublicV1Forbidden, *UpdateGroupCustomAttributesPublicV1NotFound, *UpdateGroupCustomAttributesPublicV1InternalServerError, error)
	UpdateGroupCustomAttributesPublicV1Short(params *UpdateGroupCustomAttributesPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV1OK, error)
	UpdateGroupCustomRulePublicV1(params *UpdateGroupCustomRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV1OK, *UpdateGroupCustomRulePublicV1BadRequest, *UpdateGroupCustomRulePublicV1Unauthorized, *UpdateGroupCustomRulePublicV1Forbidden, *UpdateGroupCustomRulePublicV1NotFound, *UpdateGroupCustomRulePublicV1InternalServerError, error)
	UpdateGroupCustomRulePublicV1Short(params *UpdateGroupCustomRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV1OK, error)
	UpdateGroupPredefinedRulePublicV1(params *UpdateGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV1OK, *UpdateGroupPredefinedRulePublicV1BadRequest, *UpdateGroupPredefinedRulePublicV1Unauthorized, *UpdateGroupPredefinedRulePublicV1Forbidden, *UpdateGroupPredefinedRulePublicV1NotFound, *UpdateGroupPredefinedRulePublicV1InternalServerError, error)
	UpdateGroupPredefinedRulePublicV1Short(params *UpdateGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV1OK, error)
	DeleteGroupPredefinedRulePublicV1(params *DeleteGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV1NoContent, *DeleteGroupPredefinedRulePublicV1BadRequest, *DeleteGroupPredefinedRulePublicV1Unauthorized, *DeleteGroupPredefinedRulePublicV1Forbidden, *DeleteGroupPredefinedRulePublicV1NotFound, *DeleteGroupPredefinedRulePublicV1InternalServerError, error)
	DeleteGroupPredefinedRulePublicV1Short(params *DeleteGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV1NoContent, error)
	GetListGroupByIDsAdminV2(params *GetListGroupByIDsAdminV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsAdminV2OK, *GetListGroupByIDsAdminV2BadRequest, *GetListGroupByIDsAdminV2Unauthorized, *GetListGroupByIDsAdminV2Forbidden, *GetListGroupByIDsAdminV2InternalServerError, error)
	GetListGroupByIDsAdminV2Short(params *GetListGroupByIDsAdminV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsAdminV2OK, error)
	CreateNewGroupPublicV2(params *CreateNewGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV2Created, *CreateNewGroupPublicV2BadRequest, *CreateNewGroupPublicV2Unauthorized, *CreateNewGroupPublicV2Forbidden, *CreateNewGroupPublicV2Conflict, *CreateNewGroupPublicV2InternalServerError, error)
	CreateNewGroupPublicV2Short(params *CreateNewGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV2Created, error)
	GetListGroupByIDsV2(params *GetListGroupByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsV2OK, *GetListGroupByIDsV2BadRequest, *GetListGroupByIDsV2Unauthorized, *GetListGroupByIDsV2Forbidden, *GetListGroupByIDsV2InternalServerError, error)
	GetListGroupByIDsV2Short(params *GetListGroupByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsV2OK, error)
	UpdatePutSingleGroupPublicV2(params *UpdatePutSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePutSingleGroupPublicV2OK, *UpdatePutSingleGroupPublicV2BadRequest, *UpdatePutSingleGroupPublicV2Unauthorized, *UpdatePutSingleGroupPublicV2Forbidden, *UpdatePutSingleGroupPublicV2NotFound, *UpdatePutSingleGroupPublicV2InternalServerError, error)
	UpdatePutSingleGroupPublicV2Short(params *UpdatePutSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePutSingleGroupPublicV2OK, error)
	DeleteGroupPublicV2(params *DeleteGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV2NoContent, *DeleteGroupPublicV2BadRequest, *DeleteGroupPublicV2Unauthorized, *DeleteGroupPublicV2Forbidden, *DeleteGroupPublicV2NotFound, *DeleteGroupPublicV2InternalServerError, error)
	DeleteGroupPublicV2Short(params *DeleteGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV2NoContent, error)
	UpdatePatchSingleGroupPublicV2(params *UpdatePatchSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV2OK, *UpdatePatchSingleGroupPublicV2BadRequest, *UpdatePatchSingleGroupPublicV2Unauthorized, *UpdatePatchSingleGroupPublicV2Forbidden, *UpdatePatchSingleGroupPublicV2NotFound, *UpdatePatchSingleGroupPublicV2InternalServerError, error)
	UpdatePatchSingleGroupPublicV2Short(params *UpdatePatchSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV2OK, error)
	UpdateGroupCustomAttributesPublicV2(params *UpdateGroupCustomAttributesPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV2OK, *UpdateGroupCustomAttributesPublicV2BadRequest, *UpdateGroupCustomAttributesPublicV2Unauthorized, *UpdateGroupCustomAttributesPublicV2Forbidden, *UpdateGroupCustomAttributesPublicV2NotFound, *UpdateGroupCustomAttributesPublicV2InternalServerError, error)
	UpdateGroupCustomAttributesPublicV2Short(params *UpdateGroupCustomAttributesPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV2OK, error)
	UpdateGroupCustomRulePublicV2(params *UpdateGroupCustomRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV2OK, *UpdateGroupCustomRulePublicV2BadRequest, *UpdateGroupCustomRulePublicV2Unauthorized, *UpdateGroupCustomRulePublicV2Forbidden, *UpdateGroupCustomRulePublicV2NotFound, *UpdateGroupCustomRulePublicV2InternalServerError, error)
	UpdateGroupCustomRulePublicV2Short(params *UpdateGroupCustomRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV2OK, error)
	UpdateGroupPredefinedRulePublicV2(params *UpdateGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV2OK, *UpdateGroupPredefinedRulePublicV2BadRequest, *UpdateGroupPredefinedRulePublicV2Unauthorized, *UpdateGroupPredefinedRulePublicV2Forbidden, *UpdateGroupPredefinedRulePublicV2NotFound, *UpdateGroupPredefinedRulePublicV2InternalServerError, error)
	UpdateGroupPredefinedRulePublicV2Short(params *UpdateGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV2OK, error)
	DeleteGroupPredefinedRulePublicV2(params *DeleteGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV2NoContent, *DeleteGroupPredefinedRulePublicV2BadRequest, *DeleteGroupPredefinedRulePublicV2Unauthorized, *DeleteGroupPredefinedRulePublicV2Forbidden, *DeleteGroupPredefinedRulePublicV2NotFound, *DeleteGroupPredefinedRulePublicV2InternalServerError, error)
	DeleteGroupPredefinedRulePublicV2Short(params *DeleteGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV2NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetGroupListAdminV1Short instead.

GetGroupListAdminV1 get list of groups
Get list of groups. This endpoint will show any types of group

Action Code: 73301
*/
func (a *Client) GetGroupListAdminV1(params *GetGroupListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListAdminV1OK, *GetGroupListAdminV1BadRequest, *GetGroupListAdminV1Unauthorized, *GetGroupListAdminV1Forbidden, *GetGroupListAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupListAdminV1Params()
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
		ID:                 "getGroupListAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupListAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGroupListAdminV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetGroupListAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetGroupListAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetGroupListAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetGroupListAdminV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupListAdminV1Short get list of groups
Get list of groups. This endpoint will show any types of group

Action Code: 73301
*/
func (a *Client) GetGroupListAdminV1Short(params *GetGroupListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupListAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupListAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupListAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupListAdminV1OK:
		return v, nil
	case *GetGroupListAdminV1BadRequest:
		return nil, v
	case *GetGroupListAdminV1Unauthorized:
		return nil, v
	case *GetGroupListAdminV1Forbidden:
		return nil, v
	case *GetGroupListAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSingleGroupAdminV1Short instead.

GetSingleGroupAdminV1 get single group
Get single group information. This endpoint will show the group information by the groupId

Action Code: 73306
*/
func (a *Client) GetSingleGroupAdminV1(params *GetSingleGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupAdminV1OK, *GetSingleGroupAdminV1BadRequest, *GetSingleGroupAdminV1Unauthorized, *GetSingleGroupAdminV1Forbidden, *GetSingleGroupAdminV1NotFound, *GetSingleGroupAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleGroupAdminV1Params()
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
		ID:                 "getSingleGroupAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleGroupAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetSingleGroupAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetSingleGroupAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetSingleGroupAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetSingleGroupAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetSingleGroupAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetSingleGroupAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSingleGroupAdminV1Short get single group
Get single group information. This endpoint will show the group information by the groupId

Action Code: 73306
*/
func (a *Client) GetSingleGroupAdminV1Short(params *GetSingleGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleGroupAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSingleGroupAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleGroupAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSingleGroupAdminV1OK:
		return v, nil
	case *GetSingleGroupAdminV1BadRequest:
		return nil, v
	case *GetSingleGroupAdminV1Unauthorized:
		return nil, v
	case *GetSingleGroupAdminV1Forbidden:
		return nil, v
	case *GetSingleGroupAdminV1NotFound:
		return nil, v
	case *GetSingleGroupAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGroupAdminV1Short instead.

DeleteGroupAdminV1 delete existing group
Delete existing group. It will check whether the groupID is exist before doing the process to delete the group.

Action Code: 73302
*/
func (a *Client) DeleteGroupAdminV1(params *DeleteGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupAdminV1NoContent, *DeleteGroupAdminV1BadRequest, *DeleteGroupAdminV1Unauthorized, *DeleteGroupAdminV1Forbidden, *DeleteGroupAdminV1NotFound, *DeleteGroupAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupAdminV1Params()
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
		ID:                 "deleteGroupAdminV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupAdminV1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteGroupAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteGroupAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteGroupAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteGroupAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteGroupAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupAdminV1Short delete existing group
Delete existing group. It will check whether the groupID is exist before doing the process to delete the group.

Action Code: 73302
*/
func (a *Client) DeleteGroupAdminV1Short(params *DeleteGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupAdminV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGroupAdminV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupAdminV1NoContent:
		return v, nil
	case *DeleteGroupAdminV1BadRequest:
		return nil, v
	case *DeleteGroupAdminV1Unauthorized:
		return nil, v
	case *DeleteGroupAdminV1Forbidden:
		return nil, v
	case *DeleteGroupAdminV1NotFound:
		return nil, v
	case *DeleteGroupAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGroupListPublicV1Short instead.

GetGroupListPublicV1 get list of groups
Required valid user authentication

Get list of groups. This endpoint will only show OPEN and PUBLIC group type. This endpoint can search based on the group name by filling the "groupName" query parameter

Action Code: 73303
*/
func (a *Client) GetGroupListPublicV1(params *GetGroupListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListPublicV1OK, *GetGroupListPublicV1BadRequest, *GetGroupListPublicV1Unauthorized, *GetGroupListPublicV1Forbidden, *GetGroupListPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupListPublicV1Params()
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
		ID:                 "getGroupListPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupListPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGroupListPublicV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetGroupListPublicV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetGroupListPublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetGroupListPublicV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetGroupListPublicV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupListPublicV1Short get list of groups
Required valid user authentication

Get list of groups. This endpoint will only show OPEN and PUBLIC group type. This endpoint can search based on the group name by filling the "groupName" query parameter

Action Code: 73303
*/
func (a *Client) GetGroupListPublicV1Short(params *GetGroupListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupListPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupListPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupListPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupListPublicV1OK:
		return v, nil
	case *GetGroupListPublicV1BadRequest:
		return nil, v
	case *GetGroupListPublicV1Unauthorized:
		return nil, v
	case *GetGroupListPublicV1Forbidden:
		return nil, v
	case *GetGroupListPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateNewGroupPublicV1Short instead.

CreateNewGroupPublicV1 create new group
Required valid user authentication

This endpoint is used to create new group

There are some fields that needs to be fulfilled

* **groupDescription**: the description of the group (optional)
* **groupIcon**: group icon URL link (optional)
* **groupName**: name of the group
* **groupRegion**: region of the group
* **groupRules**: rules for specific group. It consists of groupCustomRule that can be used to save custom rule, and groupPredefinedRules that has similar usage with configuration, but this rule only works in specific group
* **allowedAction**: available action in group service. It consist of joinGroup and createGroup
* **ruleAttribute**: attribute of the player that needs to be checked
* **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
* **ruleValue**: value that needs to be checked
* **customAttributes**: additional custom group attributes (optional)

Action Code: 73304
*/
func (a *Client) CreateNewGroupPublicV1(params *CreateNewGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV1Created, *CreateNewGroupPublicV1BadRequest, *CreateNewGroupPublicV1Unauthorized, *CreateNewGroupPublicV1Forbidden, *CreateNewGroupPublicV1Conflict, *CreateNewGroupPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNewGroupPublicV1Params()
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
		ID:                 "createNewGroupPublicV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNewGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateNewGroupPublicV1Created:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateNewGroupPublicV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateNewGroupPublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateNewGroupPublicV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateNewGroupPublicV1Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateNewGroupPublicV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNewGroupPublicV1Short create new group
Required valid user authentication

This endpoint is used to create new group

There are some fields that needs to be fulfilled

* **groupDescription**: the description of the group (optional)
* **groupIcon**: group icon URL link (optional)
* **groupName**: name of the group
* **groupRegion**: region of the group
* **groupRules**: rules for specific group. It consists of groupCustomRule that can be used to save custom rule, and groupPredefinedRules that has similar usage with configuration, but this rule only works in specific group
* **allowedAction**: available action in group service. It consist of joinGroup and createGroup
* **ruleAttribute**: attribute of the player that needs to be checked
* **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
* **ruleValue**: value that needs to be checked
* **customAttributes**: additional custom group attributes (optional)

Action Code: 73304
*/
func (a *Client) CreateNewGroupPublicV1Short(params *CreateNewGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNewGroupPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createNewGroupPublicV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNewGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNewGroupPublicV1Created:
		return v, nil
	case *CreateNewGroupPublicV1BadRequest:
		return nil, v
	case *CreateNewGroupPublicV1Unauthorized:
		return nil, v
	case *CreateNewGroupPublicV1Forbidden:
		return nil, v
	case *CreateNewGroupPublicV1Conflict:
		return nil, v
	case *CreateNewGroupPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSingleGroupPublicV1Short instead.

GetSingleGroupPublicV1 get single group
Required valid user authentication

Get single group information. This endpoint will show the group information by the groupId

Action Code: 73306
*/
func (a *Client) GetSingleGroupPublicV1(params *GetSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupPublicV1OK, *GetSingleGroupPublicV1BadRequest, *GetSingleGroupPublicV1Unauthorized, *GetSingleGroupPublicV1Forbidden, *GetSingleGroupPublicV1NotFound, *GetSingleGroupPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleGroupPublicV1Params()
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
		ID:                 "getSingleGroupPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetSingleGroupPublicV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetSingleGroupPublicV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetSingleGroupPublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetSingleGroupPublicV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetSingleGroupPublicV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetSingleGroupPublicV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSingleGroupPublicV1Short get single group
Required valid user authentication

Get single group information. This endpoint will show the group information by the groupId

Action Code: 73306
*/
func (a *Client) GetSingleGroupPublicV1Short(params *GetSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleGroupPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSingleGroupPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSingleGroupPublicV1OK:
		return v, nil
	case *GetSingleGroupPublicV1BadRequest:
		return nil, v
	case *GetSingleGroupPublicV1Unauthorized:
		return nil, v
	case *GetSingleGroupPublicV1Forbidden:
		return nil, v
	case *GetSingleGroupPublicV1NotFound:
		return nil, v
	case *GetSingleGroupPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateSingleGroupV1Short instead.

UpdateSingleGroupV1 update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdateSingleGroupV1(params *UpdateSingleGroupV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSingleGroupV1OK, *UpdateSingleGroupV1BadRequest, *UpdateSingleGroupV1Unauthorized, *UpdateSingleGroupV1Forbidden, *UpdateSingleGroupV1NotFound, *UpdateSingleGroupV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSingleGroupV1Params()
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
		ID:                 "updateSingleGroupV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSingleGroupV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateSingleGroupV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateSingleGroupV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateSingleGroupV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateSingleGroupV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateSingleGroupV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateSingleGroupV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSingleGroupV1Short update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdateSingleGroupV1Short(params *UpdateSingleGroupV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSingleGroupV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSingleGroupV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateSingleGroupV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSingleGroupV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSingleGroupV1OK:
		return v, nil
	case *UpdateSingleGroupV1BadRequest:
		return nil, v
	case *UpdateSingleGroupV1Unauthorized:
		return nil, v
	case *UpdateSingleGroupV1Forbidden:
		return nil, v
	case *UpdateSingleGroupV1NotFound:
		return nil, v
	case *UpdateSingleGroupV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGroupPublicV1Short instead.

DeleteGroupPublicV1 delete existing group
Required valid user authentication

Required Member Role Permission: "GROUP [DELETE]"

Delete existing group. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73305
*/
func (a *Client) DeleteGroupPublicV1(params *DeleteGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV1NoContent, *DeleteGroupPublicV1BadRequest, *DeleteGroupPublicV1Unauthorized, *DeleteGroupPublicV1Forbidden, *DeleteGroupPublicV1NotFound, *DeleteGroupPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPublicV1Params()
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
		ID:                 "deleteGroupPublicV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPublicV1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteGroupPublicV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteGroupPublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteGroupPublicV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteGroupPublicV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteGroupPublicV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupPublicV1Short delete existing group
Required valid user authentication

Required Member Role Permission: "GROUP [DELETE]"

Delete existing group. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73305
*/
func (a *Client) DeleteGroupPublicV1Short(params *DeleteGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGroupPublicV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPublicV1NoContent:
		return v, nil
	case *DeleteGroupPublicV1BadRequest:
		return nil, v
	case *DeleteGroupPublicV1Unauthorized:
		return nil, v
	case *DeleteGroupPublicV1Forbidden:
		return nil, v
	case *DeleteGroupPublicV1NotFound:
		return nil, v
	case *DeleteGroupPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePatchSingleGroupPublicV1Short instead.

UpdatePatchSingleGroupPublicV1 update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdatePatchSingleGroupPublicV1(params *UpdatePatchSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV1OK, *UpdatePatchSingleGroupPublicV1BadRequest, *UpdatePatchSingleGroupPublicV1Unauthorized, *UpdatePatchSingleGroupPublicV1Forbidden, *UpdatePatchSingleGroupPublicV1NotFound, *UpdatePatchSingleGroupPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePatchSingleGroupPublicV1Params()
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
		ID:                 "updatePatchSingleGroupPublicV1",
		Method:             "PATCH",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePatchSingleGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePatchSingleGroupPublicV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdatePatchSingleGroupPublicV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdatePatchSingleGroupPublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdatePatchSingleGroupPublicV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdatePatchSingleGroupPublicV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdatePatchSingleGroupPublicV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePatchSingleGroupPublicV1Short update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdatePatchSingleGroupPublicV1Short(params *UpdatePatchSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePatchSingleGroupPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePatchSingleGroupPublicV1",
		Method:             "PATCH",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePatchSingleGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePatchSingleGroupPublicV1OK:
		return v, nil
	case *UpdatePatchSingleGroupPublicV1BadRequest:
		return nil, v
	case *UpdatePatchSingleGroupPublicV1Unauthorized:
		return nil, v
	case *UpdatePatchSingleGroupPublicV1Forbidden:
		return nil, v
	case *UpdatePatchSingleGroupPublicV1NotFound:
		return nil, v
	case *UpdatePatchSingleGroupPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGroupCustomAttributesPublicV1Short instead.

UpdateGroupCustomAttributesPublicV1 update group custom attributes
Requires valid user authentication

Required Member Role Permission: "GROUP [UPDATE]

This endpoint replaces current group custom attributes entirely. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73311
*/
func (a *Client) UpdateGroupCustomAttributesPublicV1(params *UpdateGroupCustomAttributesPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV1OK, *UpdateGroupCustomAttributesPublicV1BadRequest, *UpdateGroupCustomAttributesPublicV1Unauthorized, *UpdateGroupCustomAttributesPublicV1Forbidden, *UpdateGroupCustomAttributesPublicV1NotFound, *UpdateGroupCustomAttributesPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomAttributesPublicV1Params()
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
		ID:                 "updateGroupCustomAttributesPublicV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomAttributesPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomAttributesPublicV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateGroupCustomAttributesPublicV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateGroupCustomAttributesPublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateGroupCustomAttributesPublicV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateGroupCustomAttributesPublicV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateGroupCustomAttributesPublicV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupCustomAttributesPublicV1Short update group custom attributes
Requires valid user authentication

Required Member Role Permission: "GROUP [UPDATE]

This endpoint replaces current group custom attributes entirely. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73311
*/
func (a *Client) UpdateGroupCustomAttributesPublicV1Short(params *UpdateGroupCustomAttributesPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomAttributesPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGroupCustomAttributesPublicV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomAttributesPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomAttributesPublicV1OK:
		return v, nil
	case *UpdateGroupCustomAttributesPublicV1BadRequest:
		return nil, v
	case *UpdateGroupCustomAttributesPublicV1Unauthorized:
		return nil, v
	case *UpdateGroupCustomAttributesPublicV1Forbidden:
		return nil, v
	case *UpdateGroupCustomAttributesPublicV1NotFound:
		return nil, v
	case *UpdateGroupCustomAttributesPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGroupCustomRulePublicV1Short instead.

UpdateGroupCustomRulePublicV1 update group custom rule
Required valid user authentication

Update group custom rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73308
*/
func (a *Client) UpdateGroupCustomRulePublicV1(params *UpdateGroupCustomRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV1OK, *UpdateGroupCustomRulePublicV1BadRequest, *UpdateGroupCustomRulePublicV1Unauthorized, *UpdateGroupCustomRulePublicV1Forbidden, *UpdateGroupCustomRulePublicV1NotFound, *UpdateGroupCustomRulePublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomRulePublicV1Params()
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
		ID:                 "updateGroupCustomRulePublicV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomRulePublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomRulePublicV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateGroupCustomRulePublicV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateGroupCustomRulePublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateGroupCustomRulePublicV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateGroupCustomRulePublicV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateGroupCustomRulePublicV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupCustomRulePublicV1Short update group custom rule
Required valid user authentication

Update group custom rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73308
*/
func (a *Client) UpdateGroupCustomRulePublicV1Short(params *UpdateGroupCustomRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomRulePublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGroupCustomRulePublicV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomRulePublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomRulePublicV1OK:
		return v, nil
	case *UpdateGroupCustomRulePublicV1BadRequest:
		return nil, v
	case *UpdateGroupCustomRulePublicV1Unauthorized:
		return nil, v
	case *UpdateGroupCustomRulePublicV1Forbidden:
		return nil, v
	case *UpdateGroupCustomRulePublicV1NotFound:
		return nil, v
	case *UpdateGroupCustomRulePublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGroupPredefinedRulePublicV1Short instead.

UpdateGroupPredefinedRulePublicV1 update predefined group rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update predefined group rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

If the rule action is not defined in the group, it will be added immediately to the predefined group rule

Action Code: 73310
*/
func (a *Client) UpdateGroupPredefinedRulePublicV1(params *UpdateGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV1OK, *UpdateGroupPredefinedRulePublicV1BadRequest, *UpdateGroupPredefinedRulePublicV1Unauthorized, *UpdateGroupPredefinedRulePublicV1Forbidden, *UpdateGroupPredefinedRulePublicV1NotFound, *UpdateGroupPredefinedRulePublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupPredefinedRulePublicV1Params()
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
		ID:                 "updateGroupPredefinedRulePublicV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupPredefinedRulePublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupPredefinedRulePublicV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateGroupPredefinedRulePublicV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateGroupPredefinedRulePublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateGroupPredefinedRulePublicV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateGroupPredefinedRulePublicV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateGroupPredefinedRulePublicV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupPredefinedRulePublicV1Short update predefined group rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update predefined group rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

If the rule action is not defined in the group, it will be added immediately to the predefined group rule

Action Code: 73310
*/
func (a *Client) UpdateGroupPredefinedRulePublicV1Short(params *UpdateGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupPredefinedRulePublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGroupPredefinedRulePublicV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupPredefinedRulePublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupPredefinedRulePublicV1OK:
		return v, nil
	case *UpdateGroupPredefinedRulePublicV1BadRequest:
		return nil, v
	case *UpdateGroupPredefinedRulePublicV1Unauthorized:
		return nil, v
	case *UpdateGroupPredefinedRulePublicV1Forbidden:
		return nil, v
	case *UpdateGroupPredefinedRulePublicV1NotFound:
		return nil, v
	case *UpdateGroupPredefinedRulePublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGroupPredefinedRulePublicV1Short instead.

DeleteGroupPredefinedRulePublicV1 delete group predefined rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Delete group predefined rule based on the allowed action. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73309
*/
func (a *Client) DeleteGroupPredefinedRulePublicV1(params *DeleteGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV1NoContent, *DeleteGroupPredefinedRulePublicV1BadRequest, *DeleteGroupPredefinedRulePublicV1Unauthorized, *DeleteGroupPredefinedRulePublicV1Forbidden, *DeleteGroupPredefinedRulePublicV1NotFound, *DeleteGroupPredefinedRulePublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPredefinedRulePublicV1Params()
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
		ID:                 "deleteGroupPredefinedRulePublicV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPredefinedRulePublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPredefinedRulePublicV1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteGroupPredefinedRulePublicV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteGroupPredefinedRulePublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteGroupPredefinedRulePublicV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteGroupPredefinedRulePublicV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteGroupPredefinedRulePublicV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupPredefinedRulePublicV1Short delete group predefined rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Delete group predefined rule based on the allowed action. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73309
*/
func (a *Client) DeleteGroupPredefinedRulePublicV1Short(params *DeleteGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPredefinedRulePublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGroupPredefinedRulePublicV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPredefinedRulePublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPredefinedRulePublicV1NoContent:
		return v, nil
	case *DeleteGroupPredefinedRulePublicV1BadRequest:
		return nil, v
	case *DeleteGroupPredefinedRulePublicV1Unauthorized:
		return nil, v
	case *DeleteGroupPredefinedRulePublicV1Forbidden:
		return nil, v
	case *DeleteGroupPredefinedRulePublicV1NotFound:
		return nil, v
	case *DeleteGroupPredefinedRulePublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetListGroupByIDsAdminV2Short instead.

GetListGroupByIDsAdminV2 get list of groups by group ids
Required valid user authentication

Get list of groups by group Ids.

Action Code: 73303
*/
func (a *Client) GetListGroupByIDsAdminV2(params *GetListGroupByIDsAdminV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsAdminV2OK, *GetListGroupByIDsAdminV2BadRequest, *GetListGroupByIDsAdminV2Unauthorized, *GetListGroupByIDsAdminV2Forbidden, *GetListGroupByIDsAdminV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListGroupByIDsAdminV2Params()
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
		ID:                 "getListGroupByIDsAdminV2",
		Method:             "POST",
		PathPattern:        "/group/v2/admin/namespaces/{namespace}/groups/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListGroupByIDsAdminV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListGroupByIDsAdminV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetListGroupByIDsAdminV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetListGroupByIDsAdminV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetListGroupByIDsAdminV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetListGroupByIDsAdminV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListGroupByIDsAdminV2Short get list of groups by group ids
Required valid user authentication

Get list of groups by group Ids.

Action Code: 73303
*/
func (a *Client) GetListGroupByIDsAdminV2Short(params *GetListGroupByIDsAdminV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsAdminV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListGroupByIDsAdminV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getListGroupByIDsAdminV2",
		Method:             "POST",
		PathPattern:        "/group/v2/admin/namespaces/{namespace}/groups/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListGroupByIDsAdminV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListGroupByIDsAdminV2OK:
		return v, nil
	case *GetListGroupByIDsAdminV2BadRequest:
		return nil, v
	case *GetListGroupByIDsAdminV2Unauthorized:
		return nil, v
	case *GetListGroupByIDsAdminV2Forbidden:
		return nil, v
	case *GetListGroupByIDsAdminV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateNewGroupPublicV2Short instead.

CreateNewGroupPublicV2 create new group
Required valid user authentication

This endpoint is used to create new group

There are some fields that needs to be fulfilled

* **groupDescription**: the description of the group (optional)
* **groupIcon**: group icon URL link (optional)
* **groupName**: name of the group
* **groupRegion**: region of the group
* **groupRules**: rules for specific group. It consists of groupCustomRule that can be used to save custom rule, and groupPredefinedRules that has similar usage with configuration, but this rule only works in specific group
* **allowedAction**: available action in group service. It consist of joinGroup and inviteGroup
* **ruleAttribute**: attribute of the player that needs to be checked
* **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
* **ruleValue**: value that needs to be checked
* **customAttributes**: additional custom group attributes (optional)

Action Code: 73304
*/
func (a *Client) CreateNewGroupPublicV2(params *CreateNewGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV2Created, *CreateNewGroupPublicV2BadRequest, *CreateNewGroupPublicV2Unauthorized, *CreateNewGroupPublicV2Forbidden, *CreateNewGroupPublicV2Conflict, *CreateNewGroupPublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNewGroupPublicV2Params()
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
		ID:                 "createNewGroupPublicV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNewGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateNewGroupPublicV2Created:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateNewGroupPublicV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateNewGroupPublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateNewGroupPublicV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateNewGroupPublicV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateNewGroupPublicV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNewGroupPublicV2Short create new group
Required valid user authentication

This endpoint is used to create new group

There are some fields that needs to be fulfilled

* **groupDescription**: the description of the group (optional)
* **groupIcon**: group icon URL link (optional)
* **groupName**: name of the group
* **groupRegion**: region of the group
* **groupRules**: rules for specific group. It consists of groupCustomRule that can be used to save custom rule, and groupPredefinedRules that has similar usage with configuration, but this rule only works in specific group
* **allowedAction**: available action in group service. It consist of joinGroup and inviteGroup
* **ruleAttribute**: attribute of the player that needs to be checked
* **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
* **ruleValue**: value that needs to be checked
* **customAttributes**: additional custom group attributes (optional)

Action Code: 73304
*/
func (a *Client) CreateNewGroupPublicV2Short(params *CreateNewGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNewGroupPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createNewGroupPublicV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNewGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNewGroupPublicV2Created:
		return v, nil
	case *CreateNewGroupPublicV2BadRequest:
		return nil, v
	case *CreateNewGroupPublicV2Unauthorized:
		return nil, v
	case *CreateNewGroupPublicV2Forbidden:
		return nil, v
	case *CreateNewGroupPublicV2Conflict:
		return nil, v
	case *CreateNewGroupPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetListGroupByIDsV2Short instead.

GetListGroupByIDsV2 get list of groups by group ids
Required valid user authentication

Get list of groups by group Ids.

Action Code: 73303
*/
func (a *Client) GetListGroupByIDsV2(params *GetListGroupByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsV2OK, *GetListGroupByIDsV2BadRequest, *GetListGroupByIDsV2Unauthorized, *GetListGroupByIDsV2Forbidden, *GetListGroupByIDsV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListGroupByIDsV2Params()
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
		ID:                 "getListGroupByIDsV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListGroupByIDsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListGroupByIDsV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetListGroupByIDsV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetListGroupByIDsV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetListGroupByIDsV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetListGroupByIDsV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListGroupByIDsV2Short get list of groups by group ids
Required valid user authentication

Get list of groups by group Ids.

Action Code: 73303
*/
func (a *Client) GetListGroupByIDsV2Short(params *GetListGroupByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListGroupByIDsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getListGroupByIDsV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListGroupByIDsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListGroupByIDsV2OK:
		return v, nil
	case *GetListGroupByIDsV2BadRequest:
		return nil, v
	case *GetListGroupByIDsV2Unauthorized:
		return nil, v
	case *GetListGroupByIDsV2Forbidden:
		return nil, v
	case *GetListGroupByIDsV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePutSingleGroupPublicV2Short instead.

UpdatePutSingleGroupPublicV2 update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdatePutSingleGroupPublicV2(params *UpdatePutSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePutSingleGroupPublicV2OK, *UpdatePutSingleGroupPublicV2BadRequest, *UpdatePutSingleGroupPublicV2Unauthorized, *UpdatePutSingleGroupPublicV2Forbidden, *UpdatePutSingleGroupPublicV2NotFound, *UpdatePutSingleGroupPublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePutSingleGroupPublicV2Params()
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
		ID:                 "updatePutSingleGroupPublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePutSingleGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePutSingleGroupPublicV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdatePutSingleGroupPublicV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdatePutSingleGroupPublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdatePutSingleGroupPublicV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdatePutSingleGroupPublicV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdatePutSingleGroupPublicV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePutSingleGroupPublicV2Short update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdatePutSingleGroupPublicV2Short(params *UpdatePutSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePutSingleGroupPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePutSingleGroupPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePutSingleGroupPublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePutSingleGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePutSingleGroupPublicV2OK:
		return v, nil
	case *UpdatePutSingleGroupPublicV2BadRequest:
		return nil, v
	case *UpdatePutSingleGroupPublicV2Unauthorized:
		return nil, v
	case *UpdatePutSingleGroupPublicV2Forbidden:
		return nil, v
	case *UpdatePutSingleGroupPublicV2NotFound:
		return nil, v
	case *UpdatePutSingleGroupPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGroupPublicV2Short instead.

DeleteGroupPublicV2 delete existing group
Required valid user authentication

Required Member Role Permission: "GROUP [DELETE]"

Delete existing group. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73305
*/
func (a *Client) DeleteGroupPublicV2(params *DeleteGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV2NoContent, *DeleteGroupPublicV2BadRequest, *DeleteGroupPublicV2Unauthorized, *DeleteGroupPublicV2Forbidden, *DeleteGroupPublicV2NotFound, *DeleteGroupPublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPublicV2Params()
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
		ID:                 "deleteGroupPublicV2",
		Method:             "DELETE",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPublicV2NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteGroupPublicV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteGroupPublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteGroupPublicV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteGroupPublicV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteGroupPublicV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupPublicV2Short delete existing group
Required valid user authentication

Required Member Role Permission: "GROUP [DELETE]"

Delete existing group. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73305
*/
func (a *Client) DeleteGroupPublicV2Short(params *DeleteGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGroupPublicV2",
		Method:             "DELETE",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPublicV2NoContent:
		return v, nil
	case *DeleteGroupPublicV2BadRequest:
		return nil, v
	case *DeleteGroupPublicV2Unauthorized:
		return nil, v
	case *DeleteGroupPublicV2Forbidden:
		return nil, v
	case *DeleteGroupPublicV2NotFound:
		return nil, v
	case *DeleteGroupPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePatchSingleGroupPublicV2Short instead.

UpdatePatchSingleGroupPublicV2 update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdatePatchSingleGroupPublicV2(params *UpdatePatchSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV2OK, *UpdatePatchSingleGroupPublicV2BadRequest, *UpdatePatchSingleGroupPublicV2Unauthorized, *UpdatePatchSingleGroupPublicV2Forbidden, *UpdatePatchSingleGroupPublicV2NotFound, *UpdatePatchSingleGroupPublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePatchSingleGroupPublicV2Params()
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
		ID:                 "updatePatchSingleGroupPublicV2",
		Method:             "PATCH",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePatchSingleGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePatchSingleGroupPublicV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdatePatchSingleGroupPublicV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdatePatchSingleGroupPublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdatePatchSingleGroupPublicV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdatePatchSingleGroupPublicV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdatePatchSingleGroupPublicV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePatchSingleGroupPublicV2Short update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdatePatchSingleGroupPublicV2Short(params *UpdatePatchSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePatchSingleGroupPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePatchSingleGroupPublicV2",
		Method:             "PATCH",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePatchSingleGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePatchSingleGroupPublicV2OK:
		return v, nil
	case *UpdatePatchSingleGroupPublicV2BadRequest:
		return nil, v
	case *UpdatePatchSingleGroupPublicV2Unauthorized:
		return nil, v
	case *UpdatePatchSingleGroupPublicV2Forbidden:
		return nil, v
	case *UpdatePatchSingleGroupPublicV2NotFound:
		return nil, v
	case *UpdatePatchSingleGroupPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGroupCustomAttributesPublicV2Short instead.

UpdateGroupCustomAttributesPublicV2 update group custom attributes
Requires valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

This endpoint replaces current group custom attributes entirely. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73311
*/
func (a *Client) UpdateGroupCustomAttributesPublicV2(params *UpdateGroupCustomAttributesPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV2OK, *UpdateGroupCustomAttributesPublicV2BadRequest, *UpdateGroupCustomAttributesPublicV2Unauthorized, *UpdateGroupCustomAttributesPublicV2Forbidden, *UpdateGroupCustomAttributesPublicV2NotFound, *UpdateGroupCustomAttributesPublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomAttributesPublicV2Params()
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
		ID:                 "updateGroupCustomAttributesPublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomAttributesPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomAttributesPublicV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateGroupCustomAttributesPublicV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateGroupCustomAttributesPublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateGroupCustomAttributesPublicV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateGroupCustomAttributesPublicV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateGroupCustomAttributesPublicV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupCustomAttributesPublicV2Short update group custom attributes
Requires valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

This endpoint replaces current group custom attributes entirely. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73311
*/
func (a *Client) UpdateGroupCustomAttributesPublicV2Short(params *UpdateGroupCustomAttributesPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomAttributesPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGroupCustomAttributesPublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomAttributesPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomAttributesPublicV2OK:
		return v, nil
	case *UpdateGroupCustomAttributesPublicV2BadRequest:
		return nil, v
	case *UpdateGroupCustomAttributesPublicV2Unauthorized:
		return nil, v
	case *UpdateGroupCustomAttributesPublicV2Forbidden:
		return nil, v
	case *UpdateGroupCustomAttributesPublicV2NotFound:
		return nil, v
	case *UpdateGroupCustomAttributesPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGroupCustomRulePublicV2Short instead.

UpdateGroupCustomRulePublicV2 update group custom rule
Required valid user authentication

Update group custom rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73308
*/
func (a *Client) UpdateGroupCustomRulePublicV2(params *UpdateGroupCustomRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV2OK, *UpdateGroupCustomRulePublicV2BadRequest, *UpdateGroupCustomRulePublicV2Unauthorized, *UpdateGroupCustomRulePublicV2Forbidden, *UpdateGroupCustomRulePublicV2NotFound, *UpdateGroupCustomRulePublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomRulePublicV2Params()
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
		ID:                 "updateGroupCustomRulePublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomRulePublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomRulePublicV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateGroupCustomRulePublicV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateGroupCustomRulePublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateGroupCustomRulePublicV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateGroupCustomRulePublicV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateGroupCustomRulePublicV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupCustomRulePublicV2Short update group custom rule
Required valid user authentication

Update group custom rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73308
*/
func (a *Client) UpdateGroupCustomRulePublicV2Short(params *UpdateGroupCustomRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomRulePublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGroupCustomRulePublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomRulePublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomRulePublicV2OK:
		return v, nil
	case *UpdateGroupCustomRulePublicV2BadRequest:
		return nil, v
	case *UpdateGroupCustomRulePublicV2Unauthorized:
		return nil, v
	case *UpdateGroupCustomRulePublicV2Forbidden:
		return nil, v
	case *UpdateGroupCustomRulePublicV2NotFound:
		return nil, v
	case *UpdateGroupCustomRulePublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGroupPredefinedRulePublicV2Short instead.

UpdateGroupPredefinedRulePublicV2 update predefined group rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update predefined group rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

If the rule action is not defined in the group, it will be added immediately to the predefined group rule

Action Code: 73310
*/
func (a *Client) UpdateGroupPredefinedRulePublicV2(params *UpdateGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV2OK, *UpdateGroupPredefinedRulePublicV2BadRequest, *UpdateGroupPredefinedRulePublicV2Unauthorized, *UpdateGroupPredefinedRulePublicV2Forbidden, *UpdateGroupPredefinedRulePublicV2NotFound, *UpdateGroupPredefinedRulePublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupPredefinedRulePublicV2Params()
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
		ID:                 "updateGroupPredefinedRulePublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupPredefinedRulePublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupPredefinedRulePublicV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateGroupPredefinedRulePublicV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateGroupPredefinedRulePublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateGroupPredefinedRulePublicV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateGroupPredefinedRulePublicV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateGroupPredefinedRulePublicV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupPredefinedRulePublicV2Short update predefined group rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update predefined group rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

If the rule action is not defined in the group, it will be added immediately to the predefined group rule

Action Code: 73310
*/
func (a *Client) UpdateGroupPredefinedRulePublicV2Short(params *UpdateGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupPredefinedRulePublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGroupPredefinedRulePublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupPredefinedRulePublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupPredefinedRulePublicV2OK:
		return v, nil
	case *UpdateGroupPredefinedRulePublicV2BadRequest:
		return nil, v
	case *UpdateGroupPredefinedRulePublicV2Unauthorized:
		return nil, v
	case *UpdateGroupPredefinedRulePublicV2Forbidden:
		return nil, v
	case *UpdateGroupPredefinedRulePublicV2NotFound:
		return nil, v
	case *UpdateGroupPredefinedRulePublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGroupPredefinedRulePublicV2Short instead.

DeleteGroupPredefinedRulePublicV2 delete group predefined rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Delete group predefined rule based on the allowed action. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73309
*/
func (a *Client) DeleteGroupPredefinedRulePublicV2(params *DeleteGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV2NoContent, *DeleteGroupPredefinedRulePublicV2BadRequest, *DeleteGroupPredefinedRulePublicV2Unauthorized, *DeleteGroupPredefinedRulePublicV2Forbidden, *DeleteGroupPredefinedRulePublicV2NotFound, *DeleteGroupPredefinedRulePublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPredefinedRulePublicV2Params()
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
		ID:                 "deleteGroupPredefinedRulePublicV2",
		Method:             "DELETE",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPredefinedRulePublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPredefinedRulePublicV2NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteGroupPredefinedRulePublicV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteGroupPredefinedRulePublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteGroupPredefinedRulePublicV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteGroupPredefinedRulePublicV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteGroupPredefinedRulePublicV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupPredefinedRulePublicV2Short delete group predefined rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Delete group predefined rule based on the allowed action. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73309
*/
func (a *Client) DeleteGroupPredefinedRulePublicV2Short(params *DeleteGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPredefinedRulePublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGroupPredefinedRulePublicV2",
		Method:             "DELETE",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPredefinedRulePublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPredefinedRulePublicV2NoContent:
		return v, nil
	case *DeleteGroupPredefinedRulePublicV2BadRequest:
		return nil, v
	case *DeleteGroupPredefinedRulePublicV2Unauthorized:
		return nil, v
	case *DeleteGroupPredefinedRulePublicV2Forbidden:
		return nil, v
	case *DeleteGroupPredefinedRulePublicV2NotFound:
		return nil, v
	case *DeleteGroupPredefinedRulePublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
