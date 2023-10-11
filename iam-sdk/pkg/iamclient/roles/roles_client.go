// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package roles

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new roles API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for roles API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetRoles(params *GetRolesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRolesOK, *GetRolesUnauthorized, *GetRolesForbidden, error)
	GetRolesShort(params *GetRolesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRolesOK, error)
	CreateRole(params *CreateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRoleCreated, *CreateRoleBadRequest, *CreateRoleUnauthorized, *CreateRoleForbidden, error)
	CreateRoleShort(params *CreateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRoleCreated, error)
	GetRole(params *GetRoleParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleOK, *GetRoleUnauthorized, *GetRoleForbidden, *GetRoleNotFound, error)
	GetRoleShort(params *GetRoleParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleOK, error)
	UpdateRole(params *UpdateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRoleOK, *UpdateRoleBadRequest, *UpdateRoleUnauthorized, *UpdateRoleForbidden, *UpdateRoleNotFound, error)
	UpdateRoleShort(params *UpdateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRoleOK, error)
	DeleteRole(params *DeleteRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRoleNoContent, *DeleteRoleUnauthorized, *DeleteRoleForbidden, *DeleteRoleNotFound, error)
	DeleteRoleShort(params *DeleteRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRoleNoContent, error)
	GetRoleAdminStatus(params *GetRoleAdminStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleAdminStatusOK, *GetRoleAdminStatusBadRequest, *GetRoleAdminStatusUnauthorized, *GetRoleAdminStatusForbidden, *GetRoleAdminStatusNotFound, error)
	GetRoleAdminStatusShort(params *GetRoleAdminStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleAdminStatusOK, error)
	SetRoleAsAdmin(params *SetRoleAsAdminParams, authInfo runtime.ClientAuthInfoWriter) (*SetRoleAsAdminNoContent, *SetRoleAsAdminBadRequest, *SetRoleAsAdminUnauthorized, *SetRoleAsAdminForbidden, *SetRoleAsAdminNotFound, error)
	SetRoleAsAdminShort(params *SetRoleAsAdminParams, authInfo runtime.ClientAuthInfoWriter) (*SetRoleAsAdminNoContent, error)
	RemoveRoleAdmin(params *RemoveRoleAdminParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleAdminNoContent, *RemoveRoleAdminBadRequest, *RemoveRoleAdminUnauthorized, *RemoveRoleAdminForbidden, *RemoveRoleAdminNotFound, error)
	RemoveRoleAdminShort(params *RemoveRoleAdminParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleAdminNoContent, error)
	GetRoleManagers(params *GetRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleManagersOK, *GetRoleManagersBadRequest, *GetRoleManagersUnauthorized, *GetRoleManagersForbidden, *GetRoleManagersNotFound, error)
	GetRoleManagersShort(params *GetRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleManagersOK, error)
	AddRoleManagers(params *AddRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleManagersNoContent, *AddRoleManagersBadRequest, *AddRoleManagersUnauthorized, *AddRoleManagersForbidden, *AddRoleManagersNotFound, error)
	AddRoleManagersShort(params *AddRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleManagersNoContent, error)
	RemoveRoleManagers(params *RemoveRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleManagersNoContent, *RemoveRoleManagersBadRequest, *RemoveRoleManagersUnauthorized, *RemoveRoleManagersForbidden, *RemoveRoleManagersNotFound, error)
	RemoveRoleManagersShort(params *RemoveRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleManagersNoContent, error)
	GetRoleMembers(params *GetRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleMembersOK, *GetRoleMembersBadRequest, *GetRoleMembersUnauthorized, *GetRoleMembersForbidden, *GetRoleMembersNotFound, error)
	GetRoleMembersShort(params *GetRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleMembersOK, error)
	AddRoleMembers(params *AddRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleMembersNoContent, *AddRoleMembersBadRequest, *AddRoleMembersUnauthorized, *AddRoleMembersForbidden, *AddRoleMembersNotFound, error)
	AddRoleMembersShort(params *AddRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleMembersNoContent, error)
	RemoveRoleMembers(params *RemoveRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleMembersNoContent, *RemoveRoleMembersBadRequest, *RemoveRoleMembersUnauthorized, *RemoveRoleMembersForbidden, *RemoveRoleMembersNotFound, error)
	RemoveRoleMembersShort(params *RemoveRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleMembersNoContent, error)
	UpdateRolePermissions(params *UpdateRolePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRolePermissionsNoContent, *UpdateRolePermissionsBadRequest, *UpdateRolePermissionsUnauthorized, *UpdateRolePermissionsForbidden, *UpdateRolePermissionsNotFound, error)
	UpdateRolePermissionsShort(params *UpdateRolePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRolePermissionsNoContent, error)
	AddRolePermission(params *AddRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddRolePermissionNoContent, *AddRolePermissionBadRequest, *AddRolePermissionUnauthorized, *AddRolePermissionForbidden, *AddRolePermissionNotFound, error)
	AddRolePermissionShort(params *AddRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddRolePermissionNoContent, error)
	DeleteRolePermission(params *DeleteRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRolePermissionNoContent, *DeleteRolePermissionBadRequest, *DeleteRolePermissionUnauthorized, *DeleteRolePermissionForbidden, *DeleteRolePermissionNotFound, error)
	DeleteRolePermissionShort(params *DeleteRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRolePermissionNoContent, error)
	AdminGetRolesV3(params *AdminGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV3OK, *AdminGetRolesV3BadRequest, *AdminGetRolesV3Unauthorized, *AdminGetRolesV3Forbidden, *AdminGetRolesV3InternalServerError, error)
	AdminGetRolesV3Short(params *AdminGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV3OK, error)
	AdminCreateRoleV3(params *AdminCreateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV3Created, *AdminCreateRoleV3BadRequest, *AdminCreateRoleV3Unauthorized, *AdminCreateRoleV3Forbidden, *AdminCreateRoleV3InternalServerError, error)
	AdminCreateRoleV3Short(params *AdminCreateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV3Created, error)
	AdminGetRoleV3(params *AdminGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV3OK, *AdminGetRoleV3BadRequest, *AdminGetRoleV3Unauthorized, *AdminGetRoleV3Forbidden, *AdminGetRoleV3NotFound, *AdminGetRoleV3InternalServerError, error)
	AdminGetRoleV3Short(params *AdminGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV3OK, error)
	AdminDeleteRoleV3(params *AdminDeleteRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV3NoContent, *AdminDeleteRoleV3BadRequest, *AdminDeleteRoleV3Unauthorized, *AdminDeleteRoleV3Forbidden, *AdminDeleteRoleV3NotFound, *AdminDeleteRoleV3Conflict, *AdminDeleteRoleV3InternalServerError, error)
	AdminDeleteRoleV3Short(params *AdminDeleteRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV3NoContent, error)
	AdminUpdateRoleV3(params *AdminUpdateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV3OK, *AdminUpdateRoleV3BadRequest, *AdminUpdateRoleV3Unauthorized, *AdminUpdateRoleV3Forbidden, *AdminUpdateRoleV3NotFound, *AdminUpdateRoleV3InternalServerError, error)
	AdminUpdateRoleV3Short(params *AdminUpdateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV3OK, error)
	AdminGetRoleAdminStatusV3(params *AdminGetRoleAdminStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleAdminStatusV3OK, *AdminGetRoleAdminStatusV3BadRequest, *AdminGetRoleAdminStatusV3Unauthorized, *AdminGetRoleAdminStatusV3Forbidden, *AdminGetRoleAdminStatusV3NotFound, *AdminGetRoleAdminStatusV3InternalServerError, error)
	AdminGetRoleAdminStatusV3Short(params *AdminGetRoleAdminStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleAdminStatusV3OK, error)
	AdminUpdateAdminRoleStatusV3(params *AdminUpdateAdminRoleStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAdminRoleStatusV3NoContent, *AdminUpdateAdminRoleStatusV3BadRequest, *AdminUpdateAdminRoleStatusV3Unauthorized, *AdminUpdateAdminRoleStatusV3Forbidden, *AdminUpdateAdminRoleStatusV3NotFound, *AdminUpdateAdminRoleStatusV3InternalServerError, error)
	AdminUpdateAdminRoleStatusV3Short(params *AdminUpdateAdminRoleStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAdminRoleStatusV3NoContent, error)
	AdminRemoveRoleAdminV3(params *AdminRemoveRoleAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleAdminV3NoContent, *AdminRemoveRoleAdminV3BadRequest, *AdminRemoveRoleAdminV3Unauthorized, *AdminRemoveRoleAdminV3Forbidden, *AdminRemoveRoleAdminV3NotFound, *AdminRemoveRoleAdminV3InternalServerError, error)
	AdminRemoveRoleAdminV3Short(params *AdminRemoveRoleAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleAdminV3NoContent, error)
	AdminGetRoleManagersV3(params *AdminGetRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleManagersV3OK, *AdminGetRoleManagersV3BadRequest, *AdminGetRoleManagersV3Unauthorized, *AdminGetRoleManagersV3Forbidden, *AdminGetRoleManagersV3NotFound, *AdminGetRoleManagersV3InternalServerError, error)
	AdminGetRoleManagersV3Short(params *AdminGetRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleManagersV3OK, error)
	AdminAddRoleManagersV3(params *AdminAddRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleManagersV3NoContent, *AdminAddRoleManagersV3BadRequest, *AdminAddRoleManagersV3Unauthorized, *AdminAddRoleManagersV3Forbidden, *AdminAddRoleManagersV3NotFound, *AdminAddRoleManagersV3Conflict, error)
	AdminAddRoleManagersV3Short(params *AdminAddRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleManagersV3NoContent, error)
	AdminRemoveRoleManagersV3(params *AdminRemoveRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleManagersV3NoContent, *AdminRemoveRoleManagersV3BadRequest, *AdminRemoveRoleManagersV3Unauthorized, *AdminRemoveRoleManagersV3Forbidden, *AdminRemoveRoleManagersV3NotFound, *AdminRemoveRoleManagersV3InternalServerError, error)
	AdminRemoveRoleManagersV3Short(params *AdminRemoveRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleManagersV3NoContent, error)
	AdminGetRoleMembersV3(params *AdminGetRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleMembersV3OK, *AdminGetRoleMembersV3BadRequest, *AdminGetRoleMembersV3Unauthorized, *AdminGetRoleMembersV3Forbidden, *AdminGetRoleMembersV3NotFound, *AdminGetRoleMembersV3InternalServerError, error)
	AdminGetRoleMembersV3Short(params *AdminGetRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleMembersV3OK, error)
	AdminAddRoleMembersV3(params *AdminAddRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleMembersV3NoContent, *AdminAddRoleMembersV3BadRequest, *AdminAddRoleMembersV3Unauthorized, *AdminAddRoleMembersV3Forbidden, *AdminAddRoleMembersV3NotFound, *AdminAddRoleMembersV3Conflict, *AdminAddRoleMembersV3InternalServerError, error)
	AdminAddRoleMembersV3Short(params *AdminAddRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleMembersV3NoContent, error)
	AdminRemoveRoleMembersV3(params *AdminRemoveRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleMembersV3NoContent, *AdminRemoveRoleMembersV3BadRequest, *AdminRemoveRoleMembersV3Unauthorized, *AdminRemoveRoleMembersV3Forbidden, *AdminRemoveRoleMembersV3NotFound, *AdminRemoveRoleMembersV3InternalServerError, error)
	AdminRemoveRoleMembersV3Short(params *AdminRemoveRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleMembersV3NoContent, error)
	AdminUpdateRolePermissionsV3(params *AdminUpdateRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV3NoContent, *AdminUpdateRolePermissionsV3BadRequest, *AdminUpdateRolePermissionsV3Unauthorized, *AdminUpdateRolePermissionsV3Forbidden, *AdminUpdateRolePermissionsV3NotFound, *AdminUpdateRolePermissionsV3InternalServerError, error)
	AdminUpdateRolePermissionsV3Short(params *AdminUpdateRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV3NoContent, error)
	AdminAddRolePermissionsV3(params *AdminAddRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV3NoContent, *AdminAddRolePermissionsV3BadRequest, *AdminAddRolePermissionsV3Unauthorized, *AdminAddRolePermissionsV3Forbidden, *AdminAddRolePermissionsV3NotFound, *AdminAddRolePermissionsV3InternalServerError, error)
	AdminAddRolePermissionsV3Short(params *AdminAddRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV3NoContent, error)
	AdminDeleteRolePermissionsV3(params *AdminDeleteRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV3NoContent, *AdminDeleteRolePermissionsV3Unauthorized, *AdminDeleteRolePermissionsV3Forbidden, *AdminDeleteRolePermissionsV3NotFound, error)
	AdminDeleteRolePermissionsV3Short(params *AdminDeleteRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV3NoContent, error)
	AdminDeleteRolePermissionV3(params *AdminDeleteRolePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionV3NoContent, *AdminDeleteRolePermissionV3BadRequest, *AdminDeleteRolePermissionV3Unauthorized, *AdminDeleteRolePermissionV3Forbidden, *AdminDeleteRolePermissionV3NotFound, *AdminDeleteRolePermissionV3InternalServerError, error)
	AdminDeleteRolePermissionV3Short(params *AdminDeleteRolePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionV3NoContent, error)
	PublicGetRolesV3(params *PublicGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRolesV3OK, *PublicGetRolesV3BadRequest, error)
	PublicGetRolesV3Short(params *PublicGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRolesV3OK, error)
	PublicGetRoleV3(params *PublicGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRoleV3OK, *PublicGetRoleV3BadRequest, *PublicGetRoleV3NotFound, error)
	PublicGetRoleV3Short(params *PublicGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRoleV3OK, error)
	AdminGetRolesV4(params *AdminGetRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV4OK, *AdminGetRolesV4BadRequest, *AdminGetRolesV4Unauthorized, *AdminGetRolesV4Forbidden, *AdminGetRolesV4InternalServerError, error)
	AdminGetRolesV4Short(params *AdminGetRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV4OK, error)
	AdminCreateRoleV4(params *AdminCreateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV4Created, *AdminCreateRoleV4BadRequest, *AdminCreateRoleV4Unauthorized, *AdminCreateRoleV4Forbidden, *AdminCreateRoleV4InternalServerError, error)
	AdminCreateRoleV4Short(params *AdminCreateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV4Created, error)
	AdminGetRoleV4(params *AdminGetRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV4OK, *AdminGetRoleV4BadRequest, *AdminGetRoleV4Unauthorized, *AdminGetRoleV4Forbidden, *AdminGetRoleV4NotFound, *AdminGetRoleV4InternalServerError, error)
	AdminGetRoleV4Short(params *AdminGetRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV4OK, error)
	AdminDeleteRoleV4(params *AdminDeleteRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV4NoContent, *AdminDeleteRoleV4BadRequest, *AdminDeleteRoleV4Unauthorized, *AdminDeleteRoleV4Forbidden, *AdminDeleteRoleV4NotFound, *AdminDeleteRoleV4InternalServerError, error)
	AdminDeleteRoleV4Short(params *AdminDeleteRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV4NoContent, error)
	AdminUpdateRoleV4(params *AdminUpdateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV4OK, *AdminUpdateRoleV4BadRequest, *AdminUpdateRoleV4Unauthorized, *AdminUpdateRoleV4Forbidden, *AdminUpdateRoleV4NotFound, error)
	AdminUpdateRoleV4Short(params *AdminUpdateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV4OK, error)
	AdminUpdateRolePermissionsV4(params *AdminUpdateRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV4OK, *AdminUpdateRolePermissionsV4BadRequest, *AdminUpdateRolePermissionsV4Unauthorized, *AdminUpdateRolePermissionsV4Forbidden, *AdminUpdateRolePermissionsV4NotFound, error)
	AdminUpdateRolePermissionsV4Short(params *AdminUpdateRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV4OK, error)
	AdminAddRolePermissionsV4(params *AdminAddRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV4OK, *AdminAddRolePermissionsV4BadRequest, *AdminAddRolePermissionsV4Unauthorized, *AdminAddRolePermissionsV4Forbidden, *AdminAddRolePermissionsV4NotFound, error)
	AdminAddRolePermissionsV4Short(params *AdminAddRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV4OK, error)
	AdminDeleteRolePermissionsV4(params *AdminDeleteRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV4NoContent, *AdminDeleteRolePermissionsV4Unauthorized, *AdminDeleteRolePermissionsV4Forbidden, *AdminDeleteRolePermissionsV4NotFound, error)
	AdminDeleteRolePermissionsV4Short(params *AdminDeleteRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV4NoContent, error)
	AdminListAssignedUsersV4(params *AdminListAssignedUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAssignedUsersV4OK, *AdminListAssignedUsersV4BadRequest, *AdminListAssignedUsersV4Unauthorized, *AdminListAssignedUsersV4Forbidden, *AdminListAssignedUsersV4NotFound, error)
	AdminListAssignedUsersV4Short(params *AdminListAssignedUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAssignedUsersV4OK, error)
	AdminAssignUserToRoleV4(params *AdminAssignUserToRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAssignUserToRoleV4Created, *AdminAssignUserToRoleV4BadRequest, *AdminAssignUserToRoleV4Unauthorized, *AdminAssignUserToRoleV4Forbidden, *AdminAssignUserToRoleV4NotFound, *AdminAssignUserToRoleV4Conflict, *AdminAssignUserToRoleV4UnprocessableEntity, error)
	AdminAssignUserToRoleV4Short(params *AdminAssignUserToRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAssignUserToRoleV4Created, error)
	AdminRevokeUserFromRoleV4(params *AdminRevokeUserFromRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRevokeUserFromRoleV4NoContent, *AdminRevokeUserFromRoleV4BadRequest, *AdminRevokeUserFromRoleV4Unauthorized, *AdminRevokeUserFromRoleV4Forbidden, *AdminRevokeUserFromRoleV4NotFound, error)
	AdminRevokeUserFromRoleV4Short(params *AdminRevokeUserFromRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRevokeUserFromRoleV4NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetRolesShort instead.

GetRoles get roles


## The endpoint is going to be deprecated


Required permission 'ROLE [READ]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles [GET]
*/
func (a *Client) GetRoles(params *GetRolesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRolesOK, *GetRolesUnauthorized, *GetRolesForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRolesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRoles",
		Method:             "GET",
		PathPattern:        "/iam/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRolesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetRolesOK:
		return v, nil, nil, nil

	case *GetRolesUnauthorized:
		return nil, v, nil, nil

	case *GetRolesForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRolesShort get roles


## The endpoint is going to be deprecated


Required permission 'ROLE [READ]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles [GET]
*/
func (a *Client) GetRolesShort(params *GetRolesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRolesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRolesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRoles",
		Method:             "GET",
		PathPattern:        "/iam/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRolesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRolesOK:
		return v, nil
	case *GetRolesUnauthorized:
		return nil, v
	case *GetRolesForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateRoleShort instead.

CreateRole create role


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [CREATE]' or 'ADMIN:ROLE [CREATE]'


Role can only be assigned to other users by the role's manager.




If role is an administrator role (i.e. AdminRole == true), it will list out the role's members.




Administrator role can be created only when at least 1 manager is specified.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles [POST]
*/
func (a *Client) CreateRole(params *CreateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRoleCreated, *CreateRoleBadRequest, *CreateRoleUnauthorized, *CreateRoleForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateRole",
		Method:             "POST",
		PathPattern:        "/iam/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateRoleCreated:
		return v, nil, nil, nil, nil

	case *CreateRoleBadRequest:
		return nil, v, nil, nil, nil

	case *CreateRoleUnauthorized:
		return nil, nil, v, nil, nil

	case *CreateRoleForbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateRoleShort create role


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [CREATE]' or 'ADMIN:ROLE [CREATE]'


Role can only be assigned to other users by the role's manager.




If role is an administrator role (i.e. AdminRole == true), it will list out the role's members.




Administrator role can be created only when at least 1 manager is specified.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles [POST]
*/
func (a *Client) CreateRoleShort(params *CreateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRoleCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateRole",
		Method:             "POST",
		PathPattern:        "/iam/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateRoleCreated:
		return v, nil
	case *CreateRoleBadRequest:
		return nil, v
	case *CreateRoleUnauthorized:
		return nil, v
	case *CreateRoleForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetRoleShort instead.

GetRole get role


## The endpoint is going to be deprecated


Required permission 'ROLE [READ]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId} [GET]
*/
func (a *Client) GetRole(params *GetRoleParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleOK, *GetRoleUnauthorized, *GetRoleForbidden, *GetRoleNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRole",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetRoleOK:
		return v, nil, nil, nil, nil

	case *GetRoleUnauthorized:
		return nil, v, nil, nil, nil

	case *GetRoleForbidden:
		return nil, nil, v, nil, nil

	case *GetRoleNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRoleShort get role


## The endpoint is going to be deprecated


Required permission 'ROLE [READ]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId} [GET]
*/
func (a *Client) GetRoleShort(params *GetRoleParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRole",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRoleOK:
		return v, nil
	case *GetRoleUnauthorized:
		return nil, v
	case *GetRoleForbidden:
		return nil, v
	case *GetRoleNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateRoleShort instead.

UpdateRole update role


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId} [PATCH]
*/
func (a *Client) UpdateRole(params *UpdateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRoleOK, *UpdateRoleBadRequest, *UpdateRoleUnauthorized, *UpdateRoleForbidden, *UpdateRoleNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateRole",
		Method:             "PUT",
		PathPattern:        "/iam/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateRoleOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateRoleBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateRoleUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateRoleForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateRoleNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRoleShort update role


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId} [PATCH]
*/
func (a *Client) UpdateRoleShort(params *UpdateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRoleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateRole",
		Method:             "PUT",
		PathPattern:        "/iam/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRoleOK:
		return v, nil
	case *UpdateRoleBadRequest:
		return nil, v
	case *UpdateRoleUnauthorized:
		return nil, v
	case *UpdateRoleForbidden:
		return nil, v
	case *UpdateRoleNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteRoleShort instead.

DeleteRole delete role


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [DELETE]' or 'ADMIN:ROLE [DELETE]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId} [DELETE]
*/
func (a *Client) DeleteRole(params *DeleteRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRoleNoContent, *DeleteRoleUnauthorized, *DeleteRoleForbidden, *DeleteRoleNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteRole",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteRoleNoContent:
		return v, nil, nil, nil, nil

	case *DeleteRoleUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteRoleForbidden:
		return nil, nil, v, nil, nil

	case *DeleteRoleNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRoleShort delete role


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [DELETE]' or 'ADMIN:ROLE [DELETE]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId} [DELETE]
*/
func (a *Client) DeleteRoleShort(params *DeleteRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRoleNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteRole",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRoleNoContent:
		return v, nil
	case *DeleteRoleUnauthorized:
		return nil, v
	case *DeleteRoleForbidden:
		return nil, v
	case *DeleteRoleNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetRoleAdminStatusShort instead.

GetRoleAdminStatus get role admin status


## The endpoint is going to be deprecated


Required permission 'ROLE [READ]


Admin roles has its members listed in the role.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/admin [GET]
*/
func (a *Client) GetRoleAdminStatus(params *GetRoleAdminStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleAdminStatusOK, *GetRoleAdminStatusBadRequest, *GetRoleAdminStatusUnauthorized, *GetRoleAdminStatusForbidden, *GetRoleAdminStatusNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleAdminStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRoleAdminStatus",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleAdminStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetRoleAdminStatusOK:
		return v, nil, nil, nil, nil, nil

	case *GetRoleAdminStatusBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetRoleAdminStatusUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetRoleAdminStatusForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetRoleAdminStatusNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRoleAdminStatusShort get role admin status


## The endpoint is going to be deprecated


Required permission 'ROLE [READ]


Admin roles has its members listed in the role.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/admin [GET]
*/
func (a *Client) GetRoleAdminStatusShort(params *GetRoleAdminStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleAdminStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleAdminStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRoleAdminStatus",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleAdminStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRoleAdminStatusOK:
		return v, nil
	case *GetRoleAdminStatusBadRequest:
		return nil, v
	case *GetRoleAdminStatusUnauthorized:
		return nil, v
	case *GetRoleAdminStatusForbidden:
		return nil, v
	case *GetRoleAdminStatusNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SetRoleAsAdminShort instead.

SetRoleAsAdmin set role as admin role


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'


Admin roles has its members listed in the role.




Role can be set as admin role only when it has at least 1 manager.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/admin [POST]
*/
func (a *Client) SetRoleAsAdmin(params *SetRoleAsAdminParams, authInfo runtime.ClientAuthInfoWriter) (*SetRoleAsAdminNoContent, *SetRoleAsAdminBadRequest, *SetRoleAsAdminUnauthorized, *SetRoleAsAdminForbidden, *SetRoleAsAdminNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetRoleAsAdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SetRoleAsAdmin",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetRoleAsAdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SetRoleAsAdminNoContent:
		return v, nil, nil, nil, nil, nil

	case *SetRoleAsAdminBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SetRoleAsAdminUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SetRoleAsAdminForbidden:
		return nil, nil, nil, v, nil, nil

	case *SetRoleAsAdminNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetRoleAsAdminShort set role as admin role


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'


Admin roles has its members listed in the role.




Role can be set as admin role only when it has at least 1 manager.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/admin [POST]
*/
func (a *Client) SetRoleAsAdminShort(params *SetRoleAsAdminParams, authInfo runtime.ClientAuthInfoWriter) (*SetRoleAsAdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetRoleAsAdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SetRoleAsAdmin",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetRoleAsAdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetRoleAsAdminNoContent:
		return v, nil
	case *SetRoleAsAdminBadRequest:
		return nil, v
	case *SetRoleAsAdminUnauthorized:
		return nil, v
	case *SetRoleAsAdminForbidden:
		return nil, v
	case *SetRoleAsAdminNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RemoveRoleAdminShort instead.

RemoveRoleAdmin remove role admin status


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/admin [DELETE]
*/
func (a *Client) RemoveRoleAdmin(params *RemoveRoleAdminParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleAdminNoContent, *RemoveRoleAdminBadRequest, *RemoveRoleAdminUnauthorized, *RemoveRoleAdminForbidden, *RemoveRoleAdminNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveRoleAdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RemoveRoleAdmin",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveRoleAdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RemoveRoleAdminNoContent:
		return v, nil, nil, nil, nil, nil

	case *RemoveRoleAdminBadRequest:
		return nil, v, nil, nil, nil, nil

	case *RemoveRoleAdminUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *RemoveRoleAdminForbidden:
		return nil, nil, nil, v, nil, nil

	case *RemoveRoleAdminNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RemoveRoleAdminShort remove role admin status


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/admin [DELETE]
*/
func (a *Client) RemoveRoleAdminShort(params *RemoveRoleAdminParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleAdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveRoleAdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RemoveRoleAdmin",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveRoleAdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RemoveRoleAdminNoContent:
		return v, nil
	case *RemoveRoleAdminBadRequest:
		return nil, v
	case *RemoveRoleAdminUnauthorized:
		return nil, v
	case *RemoveRoleAdminForbidden:
		return nil, v
	case *RemoveRoleAdminNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetRoleManagersShort instead.

GetRoleManagers get role managers


## The endpoint is going to be deprecated


Required permission 'ROLE [READ]'


Role can only be assigned to other users by the role's manager.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/managers [GET]
*/
func (a *Client) GetRoleManagers(params *GetRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleManagersOK, *GetRoleManagersBadRequest, *GetRoleManagersUnauthorized, *GetRoleManagersForbidden, *GetRoleManagersNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleManagersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRoleManagers",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleManagersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetRoleManagersOK:
		return v, nil, nil, nil, nil, nil

	case *GetRoleManagersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetRoleManagersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetRoleManagersForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetRoleManagersNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRoleManagersShort get role managers


## The endpoint is going to be deprecated


Required permission 'ROLE [READ]'


Role can only be assigned to other users by the role's manager.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/managers [GET]
*/
func (a *Client) GetRoleManagersShort(params *GetRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleManagersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleManagersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRoleManagers",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleManagersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRoleManagersOK:
		return v, nil
	case *GetRoleManagersBadRequest:
		return nil, v
	case *GetRoleManagersUnauthorized:
		return nil, v
	case *GetRoleManagersForbidden:
		return nil, v
	case *GetRoleManagersNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AddRoleManagersShort instead.

AddRoleManagers add role managers


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'


Role can only be assigned to other users by the role's manager.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/managers [POST]
*/
func (a *Client) AddRoleManagers(params *AddRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleManagersNoContent, *AddRoleManagersBadRequest, *AddRoleManagersUnauthorized, *AddRoleManagersForbidden, *AddRoleManagersNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddRoleManagersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddRoleManagers",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddRoleManagersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddRoleManagersNoContent:
		return v, nil, nil, nil, nil, nil

	case *AddRoleManagersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AddRoleManagersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AddRoleManagersForbidden:
		return nil, nil, nil, v, nil, nil

	case *AddRoleManagersNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddRoleManagersShort add role managers


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'


Role can only be assigned to other users by the role's manager.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/managers [POST]
*/
func (a *Client) AddRoleManagersShort(params *AddRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleManagersNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddRoleManagersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddRoleManagers",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddRoleManagersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddRoleManagersNoContent:
		return v, nil
	case *AddRoleManagersBadRequest:
		return nil, v
	case *AddRoleManagersUnauthorized:
		return nil, v
	case *AddRoleManagersForbidden:
		return nil, v
	case *AddRoleManagersNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RemoveRoleManagersShort instead.

RemoveRoleManagers remove role managers


## The endpoint is going to be deprecated


Required permission Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/managers [DELETE]
*/
func (a *Client) RemoveRoleManagers(params *RemoveRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleManagersNoContent, *RemoveRoleManagersBadRequest, *RemoveRoleManagersUnauthorized, *RemoveRoleManagersForbidden, *RemoveRoleManagersNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveRoleManagersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RemoveRoleManagers",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveRoleManagersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RemoveRoleManagersNoContent:
		return v, nil, nil, nil, nil, nil

	case *RemoveRoleManagersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *RemoveRoleManagersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *RemoveRoleManagersForbidden:
		return nil, nil, nil, v, nil, nil

	case *RemoveRoleManagersNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RemoveRoleManagersShort remove role managers


## The endpoint is going to be deprecated


Required permission Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/managers [DELETE]
*/
func (a *Client) RemoveRoleManagersShort(params *RemoveRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleManagersNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveRoleManagersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RemoveRoleManagers",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveRoleManagersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RemoveRoleManagersNoContent:
		return v, nil
	case *RemoveRoleManagersBadRequest:
		return nil, v
	case *RemoveRoleManagersUnauthorized:
		return nil, v
	case *RemoveRoleManagersForbidden:
		return nil, v
	case *RemoveRoleManagersNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetRoleMembersShort instead.

GetRoleMembers get role members


## The endpoint is going to be deprecated


Required permission 'ROLE [READ]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/members [GET]
*/
func (a *Client) GetRoleMembers(params *GetRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleMembersOK, *GetRoleMembersBadRequest, *GetRoleMembersUnauthorized, *GetRoleMembersForbidden, *GetRoleMembersNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleMembersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRoleMembers",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetRoleMembersOK:
		return v, nil, nil, nil, nil, nil

	case *GetRoleMembersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetRoleMembersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetRoleMembersForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetRoleMembersNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRoleMembersShort get role members


## The endpoint is going to be deprecated


Required permission 'ROLE [READ]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/members [GET]
*/
func (a *Client) GetRoleMembersShort(params *GetRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleMembersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleMembersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRoleMembers",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRoleMembersOK:
		return v, nil
	case *GetRoleMembersBadRequest:
		return nil, v
	case *GetRoleMembersUnauthorized:
		return nil, v
	case *GetRoleMembersForbidden:
		return nil, v
	case *GetRoleMembersNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AddRoleMembersShort instead.

AddRoleMembers add role members


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'


Admin roles has its members listed in the role.




Role can only be assigned to other users by the role's manager.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/members [POST]
*/
func (a *Client) AddRoleMembers(params *AddRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleMembersNoContent, *AddRoleMembersBadRequest, *AddRoleMembersUnauthorized, *AddRoleMembersForbidden, *AddRoleMembersNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddRoleMembersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddRoleMembers",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddRoleMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddRoleMembersNoContent:
		return v, nil, nil, nil, nil, nil

	case *AddRoleMembersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AddRoleMembersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AddRoleMembersForbidden:
		return nil, nil, nil, v, nil, nil

	case *AddRoleMembersNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddRoleMembersShort add role members


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'


Admin roles has its members listed in the role.




Role can only be assigned to other users by the role's manager.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/members [POST]
*/
func (a *Client) AddRoleMembersShort(params *AddRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleMembersNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddRoleMembersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddRoleMembers",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddRoleMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddRoleMembersNoContent:
		return v, nil
	case *AddRoleMembersBadRequest:
		return nil, v
	case *AddRoleMembersUnauthorized:
		return nil, v
	case *AddRoleMembersForbidden:
		return nil, v
	case *AddRoleMembersNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RemoveRoleMembersShort instead.

RemoveRoleMembers remove role members


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/members [DELETE]
*/
func (a *Client) RemoveRoleMembers(params *RemoveRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleMembersNoContent, *RemoveRoleMembersBadRequest, *RemoveRoleMembersUnauthorized, *RemoveRoleMembersForbidden, *RemoveRoleMembersNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveRoleMembersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RemoveRoleMembers",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveRoleMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RemoveRoleMembersNoContent:
		return v, nil, nil, nil, nil, nil

	case *RemoveRoleMembersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *RemoveRoleMembersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *RemoveRoleMembersForbidden:
		return nil, nil, nil, v, nil, nil

	case *RemoveRoleMembersNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RemoveRoleMembersShort remove role members


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/members [DELETE]
*/
func (a *Client) RemoveRoleMembersShort(params *RemoveRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleMembersNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveRoleMembersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RemoveRoleMembers",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveRoleMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RemoveRoleMembersNoContent:
		return v, nil
	case *RemoveRoleMembersBadRequest:
		return nil, v
	case *RemoveRoleMembersUnauthorized:
		return nil, v
	case *RemoveRoleMembersForbidden:
		return nil, v
	case *RemoveRoleMembersNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateRolePermissionsShort instead.

UpdateRolePermissions update role permissions


## The endpoint is going to be deprecated




Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'




This endpoint will REPLACE role's permissions with the ones defined in body




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/permissions [POST]
*/
func (a *Client) UpdateRolePermissions(params *UpdateRolePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRolePermissionsNoContent, *UpdateRolePermissionsBadRequest, *UpdateRolePermissionsUnauthorized, *UpdateRolePermissionsForbidden, *UpdateRolePermissionsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRolePermissionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateRolePermissions",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRolePermissionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateRolePermissionsNoContent:
		return v, nil, nil, nil, nil, nil

	case *UpdateRolePermissionsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateRolePermissionsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateRolePermissionsForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateRolePermissionsNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRolePermissionsShort update role permissions


## The endpoint is going to be deprecated




Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'




This endpoint will REPLACE role's permissions with the ones defined in body




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.


Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/permissions [POST]
*/
func (a *Client) UpdateRolePermissionsShort(params *UpdateRolePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRolePermissionsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRolePermissionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateRolePermissions",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRolePermissionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRolePermissionsNoContent:
		return v, nil
	case *UpdateRolePermissionsBadRequest:
		return nil, v
	case *UpdateRolePermissionsUnauthorized:
		return nil, v
	case *UpdateRolePermissionsForbidden:
		return nil, v
	case *UpdateRolePermissionsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AddRolePermissionShort instead.

AddRolePermission add role permission


## The endpoint is going to be deprecated




Required permission 'ROLE:ADMIN [UPDATE]' Or 'ADMIN:ROLE [UPDATE]'




This endpoint will update existing permission (bitwise OR the action) if found one with same resource, otherwise it will append a new permission




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.


Endpoint migration guide


                                  * Substitute endpoint(update): /iam/v3/admin/roles/{roleId}/permissions [PUT]


                                  * Substitute endpoint(create): /iam/v3/admin/roles/{roleId}/permissions [POST]
*/
func (a *Client) AddRolePermission(params *AddRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddRolePermissionNoContent, *AddRolePermissionBadRequest, *AddRolePermissionUnauthorized, *AddRolePermissionForbidden, *AddRolePermissionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddRolePermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddRolePermission",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddRolePermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddRolePermissionNoContent:
		return v, nil, nil, nil, nil, nil

	case *AddRolePermissionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AddRolePermissionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AddRolePermissionForbidden:
		return nil, nil, nil, v, nil, nil

	case *AddRolePermissionNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddRolePermissionShort add role permission


## The endpoint is going to be deprecated




Required permission 'ROLE:ADMIN [UPDATE]' Or 'ADMIN:ROLE [UPDATE]'




This endpoint will update existing permission (bitwise OR the action) if found one with same resource, otherwise it will append a new permission




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.


Endpoint migration guide


                                  * Substitute endpoint(update): /iam/v3/admin/roles/{roleId}/permissions [PUT]


                                  * Substitute endpoint(create): /iam/v3/admin/roles/{roleId}/permissions [POST]
*/
func (a *Client) AddRolePermissionShort(params *AddRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddRolePermissionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddRolePermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddRolePermission",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddRolePermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddRolePermissionNoContent:
		return v, nil
	case *AddRolePermissionBadRequest:
		return nil, v
	case *AddRolePermissionUnauthorized:
		return nil, v
	case *AddRolePermissionForbidden:
		return nil, v
	case *AddRolePermissionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteRolePermissionShort instead.

DeleteRolePermission delete role permission


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/permissions/{resource}/{action} [DELETE]


                                  * Substitute endpoint: /iam/v4/admin/roles/{roleId}/permissions [DELETE]
*/
func (a *Client) DeleteRolePermission(params *DeleteRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRolePermissionNoContent, *DeleteRolePermissionBadRequest, *DeleteRolePermissionUnauthorized, *DeleteRolePermissionForbidden, *DeleteRolePermissionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRolePermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteRolePermission",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRolePermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteRolePermissionNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteRolePermissionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteRolePermissionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteRolePermissionForbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteRolePermissionNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRolePermissionShort delete role permission


## The endpoint is going to be deprecated


Required permission 'ROLE:ADMIN [UPDATE]' or 'ADMIN:ROLE [UPDATE]'
Endpoint migration guide


                                  * Substitute endpoint: /iam/v3/admin/roles/{roleId}/permissions/{resource}/{action} [DELETE]


                                  * Substitute endpoint: /iam/v4/admin/roles/{roleId}/permissions [DELETE]
*/
func (a *Client) DeleteRolePermissionShort(params *DeleteRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRolePermissionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRolePermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteRolePermission",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRolePermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRolePermissionNoContent:
		return v, nil
	case *DeleteRolePermissionBadRequest:
		return nil, v
	case *DeleteRolePermissionUnauthorized:
		return nil, v
	case *DeleteRolePermissionForbidden:
		return nil, v
	case *DeleteRolePermissionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetRolesV3Short instead.

AdminGetRolesV3 get roles
Required permission 'ADMIN:ROLE [READ]'


action code: 10414
*/
func (a *Client) AdminGetRolesV3(params *AdminGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV3OK, *AdminGetRolesV3BadRequest, *AdminGetRolesV3Unauthorized, *AdminGetRolesV3Forbidden, *AdminGetRolesV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRolesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRolesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRolesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRolesV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetRolesV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetRolesV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetRolesV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetRolesV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRolesV3Short get roles
Required permission 'ADMIN:ROLE [READ]'


action code: 10414
*/
func (a *Client) AdminGetRolesV3Short(params *AdminGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRolesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRolesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRolesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRolesV3OK:
		return v, nil
	case *AdminGetRolesV3BadRequest:
		return nil, v
	case *AdminGetRolesV3Unauthorized:
		return nil, v
	case *AdminGetRolesV3Forbidden:
		return nil, v
	case *AdminGetRolesV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateRoleV3Short instead.

AdminCreateRoleV3 create role
Required permission 'ADMIN:ROLE [CREATE]'

Create role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- permissions: specify the permission that this role have
- managers: specify list of user that will act as the managers of this role
- members: specify list of user that will act as the members of this role
- adminRole: specify if role is for admin user (default false)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted or not (default true)


action code: 10401
*/
func (a *Client) AdminCreateRoleV3(params *AdminCreateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV3Created, *AdminCreateRoleV3BadRequest, *AdminCreateRoleV3Unauthorized, *AdminCreateRoleV3Forbidden, *AdminCreateRoleV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateRoleV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateRoleV3Created:
		return v, nil, nil, nil, nil, nil

	case *AdminCreateRoleV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminCreateRoleV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminCreateRoleV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminCreateRoleV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateRoleV3Short create role
Required permission 'ADMIN:ROLE [CREATE]'

Create role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- permissions: specify the permission that this role have
- managers: specify list of user that will act as the managers of this role
- members: specify list of user that will act as the members of this role
- adminRole: specify if role is for admin user (default false)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted or not (default true)


action code: 10401
*/
func (a *Client) AdminCreateRoleV3Short(params *AdminCreateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateRoleV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateRoleV3Created:
		return v, nil
	case *AdminCreateRoleV3BadRequest:
		return nil, v
	case *AdminCreateRoleV3Unauthorized:
		return nil, v
	case *AdminCreateRoleV3Forbidden:
		return nil, v
	case *AdminCreateRoleV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetRoleV3Short instead.

AdminGetRoleV3 get role
Required permission 'ADMIN:ROLE [READ]'


action code: 10419
*/
func (a *Client) AdminGetRoleV3(params *AdminGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV3OK, *AdminGetRoleV3BadRequest, *AdminGetRoleV3Unauthorized, *AdminGetRoleV3Forbidden, *AdminGetRoleV3NotFound, *AdminGetRoleV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetRoleV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetRoleV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetRoleV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetRoleV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetRoleV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleV3Short get role
Required permission 'ADMIN:ROLE [READ]'


action code: 10419
*/
func (a *Client) AdminGetRoleV3Short(params *AdminGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleV3OK:
		return v, nil
	case *AdminGetRoleV3BadRequest:
		return nil, v
	case *AdminGetRoleV3Unauthorized:
		return nil, v
	case *AdminGetRoleV3Forbidden:
		return nil, v
	case *AdminGetRoleV3NotFound:
		return nil, v
	case *AdminGetRoleV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteRoleV3Short instead.

AdminDeleteRoleV3 delete role
Required permission ''ADMIN:ROLE [DELETE]''
action code: 10403
*/
func (a *Client) AdminDeleteRoleV3(params *AdminDeleteRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV3NoContent, *AdminDeleteRoleV3BadRequest, *AdminDeleteRoleV3Unauthorized, *AdminDeleteRoleV3Forbidden, *AdminDeleteRoleV3NotFound, *AdminDeleteRoleV3Conflict, *AdminDeleteRoleV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteRoleV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRoleV3NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminDeleteRoleV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminDeleteRoleV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminDeleteRoleV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminDeleteRoleV3NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminDeleteRoleV3Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminDeleteRoleV3InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteRoleV3Short delete role
Required permission ''ADMIN:ROLE [DELETE]''
action code: 10403
*/
func (a *Client) AdminDeleteRoleV3Short(params *AdminDeleteRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteRoleV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRoleV3NoContent:
		return v, nil
	case *AdminDeleteRoleV3BadRequest:
		return nil, v
	case *AdminDeleteRoleV3Unauthorized:
		return nil, v
	case *AdminDeleteRoleV3Forbidden:
		return nil, v
	case *AdminDeleteRoleV3NotFound:
		return nil, v
	case *AdminDeleteRoleV3Conflict:
		return nil, v
	case *AdminDeleteRoleV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateRoleV3Short instead.

AdminUpdateRoleV3 update role
Required permission 'ADMIN:ROLE [UPDATE]'

Update role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted or not (optional)


action code: 10402
*/
func (a *Client) AdminUpdateRoleV3(params *AdminUpdateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV3OK, *AdminUpdateRoleV3BadRequest, *AdminUpdateRoleV3Unauthorized, *AdminUpdateRoleV3Forbidden, *AdminUpdateRoleV3NotFound, *AdminUpdateRoleV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateRoleV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRoleV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateRoleV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateRoleV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateRoleV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateRoleV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateRoleV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateRoleV3Short update role
Required permission 'ADMIN:ROLE [UPDATE]'

Update role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted or not (optional)


action code: 10402
*/
func (a *Client) AdminUpdateRoleV3Short(params *AdminUpdateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateRoleV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRoleV3OK:
		return v, nil
	case *AdminUpdateRoleV3BadRequest:
		return nil, v
	case *AdminUpdateRoleV3Unauthorized:
		return nil, v
	case *AdminUpdateRoleV3Forbidden:
		return nil, v
	case *AdminUpdateRoleV3NotFound:
		return nil, v
	case *AdminUpdateRoleV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetRoleAdminStatusV3Short instead.

AdminGetRoleAdminStatusV3 get role admin status


Required permission 'ADMIN:ROLE [READ]'




Admin roles has its members listed in the role.




action code: 10420
*/
func (a *Client) AdminGetRoleAdminStatusV3(params *AdminGetRoleAdminStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleAdminStatusV3OK, *AdminGetRoleAdminStatusV3BadRequest, *AdminGetRoleAdminStatusV3Unauthorized, *AdminGetRoleAdminStatusV3Forbidden, *AdminGetRoleAdminStatusV3NotFound, *AdminGetRoleAdminStatusV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleAdminStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleAdminStatusV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleAdminStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleAdminStatusV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetRoleAdminStatusV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetRoleAdminStatusV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetRoleAdminStatusV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetRoleAdminStatusV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetRoleAdminStatusV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleAdminStatusV3Short get role admin status


Required permission 'ADMIN:ROLE [READ]'




Admin roles has its members listed in the role.




action code: 10420
*/
func (a *Client) AdminGetRoleAdminStatusV3Short(params *AdminGetRoleAdminStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleAdminStatusV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleAdminStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleAdminStatusV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleAdminStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleAdminStatusV3OK:
		return v, nil
	case *AdminGetRoleAdminStatusV3BadRequest:
		return nil, v
	case *AdminGetRoleAdminStatusV3Unauthorized:
		return nil, v
	case *AdminGetRoleAdminStatusV3Forbidden:
		return nil, v
	case *AdminGetRoleAdminStatusV3NotFound:
		return nil, v
	case *AdminGetRoleAdminStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateAdminRoleStatusV3Short instead.

AdminUpdateAdminRoleStatusV3 set role as admin role


Required permission 'ADMIN:ROLE [UPDATE]'




Admin roles has its members listed in the role.




Role can be set as admin role only when it has at least 1 manager.



action code: 10412
*/
func (a *Client) AdminUpdateAdminRoleStatusV3(params *AdminUpdateAdminRoleStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAdminRoleStatusV3NoContent, *AdminUpdateAdminRoleStatusV3BadRequest, *AdminUpdateAdminRoleStatusV3Unauthorized, *AdminUpdateAdminRoleStatusV3Forbidden, *AdminUpdateAdminRoleStatusV3NotFound, *AdminUpdateAdminRoleStatusV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAdminRoleStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateAdminRoleStatusV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAdminRoleStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAdminRoleStatusV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateAdminRoleStatusV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateAdminRoleStatusV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateAdminRoleStatusV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateAdminRoleStatusV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateAdminRoleStatusV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAdminRoleStatusV3Short set role as admin role


Required permission 'ADMIN:ROLE [UPDATE]'




Admin roles has its members listed in the role.




Role can be set as admin role only when it has at least 1 manager.



action code: 10412
*/
func (a *Client) AdminUpdateAdminRoleStatusV3Short(params *AdminUpdateAdminRoleStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAdminRoleStatusV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAdminRoleStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateAdminRoleStatusV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAdminRoleStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAdminRoleStatusV3NoContent:
		return v, nil
	case *AdminUpdateAdminRoleStatusV3BadRequest:
		return nil, v
	case *AdminUpdateAdminRoleStatusV3Unauthorized:
		return nil, v
	case *AdminUpdateAdminRoleStatusV3Forbidden:
		return nil, v
	case *AdminUpdateAdminRoleStatusV3NotFound:
		return nil, v
	case *AdminUpdateAdminRoleStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminRemoveRoleAdminV3Short instead.

AdminRemoveRoleAdminV3 remove role admin status


Required permission 'ADMIN:ROLE [UPDATE]'

code: 10413
*/
func (a *Client) AdminRemoveRoleAdminV3(params *AdminRemoveRoleAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleAdminV3NoContent, *AdminRemoveRoleAdminV3BadRequest, *AdminRemoveRoleAdminV3Unauthorized, *AdminRemoveRoleAdminV3Forbidden, *AdminRemoveRoleAdminV3NotFound, *AdminRemoveRoleAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveRoleAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRemoveRoleAdminV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveRoleAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveRoleAdminV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminRemoveRoleAdminV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminRemoveRoleAdminV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminRemoveRoleAdminV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminRemoveRoleAdminV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminRemoveRoleAdminV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRemoveRoleAdminV3Short remove role admin status


Required permission 'ADMIN:ROLE [UPDATE]'

code: 10413
*/
func (a *Client) AdminRemoveRoleAdminV3Short(params *AdminRemoveRoleAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleAdminV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveRoleAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRemoveRoleAdminV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveRoleAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveRoleAdminV3NoContent:
		return v, nil
	case *AdminRemoveRoleAdminV3BadRequest:
		return nil, v
	case *AdminRemoveRoleAdminV3Unauthorized:
		return nil, v
	case *AdminRemoveRoleAdminV3Forbidden:
		return nil, v
	case *AdminRemoveRoleAdminV3NotFound:
		return nil, v
	case *AdminRemoveRoleAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetRoleManagersV3Short instead.

AdminGetRoleManagersV3 get role managers


Required permission 'ADMIN:ROLE [READ]'




Role can only be assigned to other users by the role's manager.



action code: 10415
*/
func (a *Client) AdminGetRoleManagersV3(params *AdminGetRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleManagersV3OK, *AdminGetRoleManagersV3BadRequest, *AdminGetRoleManagersV3Unauthorized, *AdminGetRoleManagersV3Forbidden, *AdminGetRoleManagersV3NotFound, *AdminGetRoleManagersV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleManagersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleManagersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleManagersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleManagersV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetRoleManagersV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetRoleManagersV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetRoleManagersV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetRoleManagersV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetRoleManagersV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleManagersV3Short get role managers


Required permission 'ADMIN:ROLE [READ]'




Role can only be assigned to other users by the role's manager.



action code: 10415
*/
func (a *Client) AdminGetRoleManagersV3Short(params *AdminGetRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleManagersV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleManagersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleManagersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleManagersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleManagersV3OK:
		return v, nil
	case *AdminGetRoleManagersV3BadRequest:
		return nil, v
	case *AdminGetRoleManagersV3Unauthorized:
		return nil, v
	case *AdminGetRoleManagersV3Forbidden:
		return nil, v
	case *AdminGetRoleManagersV3NotFound:
		return nil, v
	case *AdminGetRoleManagersV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddRoleManagersV3Short instead.

AdminAddRoleManagersV3 add role managers


Role can only be assigned to other users by the role's manager.





Required permission 'ADMIN:ROLE [UPDATE]'


action code: 10408
*/
func (a *Client) AdminAddRoleManagersV3(params *AdminAddRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleManagersV3NoContent, *AdminAddRoleManagersV3BadRequest, *AdminAddRoleManagersV3Unauthorized, *AdminAddRoleManagersV3Forbidden, *AdminAddRoleManagersV3NotFound, *AdminAddRoleManagersV3Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRoleManagersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddRoleManagersV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRoleManagersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddRoleManagersV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminAddRoleManagersV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminAddRoleManagersV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminAddRoleManagersV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminAddRoleManagersV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminAddRoleManagersV3Conflict:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddRoleManagersV3Short add role managers


Role can only be assigned to other users by the role's manager.





Required permission 'ADMIN:ROLE [UPDATE]'


action code: 10408
*/
func (a *Client) AdminAddRoleManagersV3Short(params *AdminAddRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleManagersV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRoleManagersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddRoleManagersV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRoleManagersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddRoleManagersV3NoContent:
		return v, nil
	case *AdminAddRoleManagersV3BadRequest:
		return nil, v
	case *AdminAddRoleManagersV3Unauthorized:
		return nil, v
	case *AdminAddRoleManagersV3Forbidden:
		return nil, v
	case *AdminAddRoleManagersV3NotFound:
		return nil, v
	case *AdminAddRoleManagersV3Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminRemoveRoleManagersV3Short instead.

AdminRemoveRoleManagersV3 remove role managers


Required permission 'ADMIN:ROLE [UPDATE]'




Role can only be assigned to other users by the role's manager.


action code: 10409
*/
func (a *Client) AdminRemoveRoleManagersV3(params *AdminRemoveRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleManagersV3NoContent, *AdminRemoveRoleManagersV3BadRequest, *AdminRemoveRoleManagersV3Unauthorized, *AdminRemoveRoleManagersV3Forbidden, *AdminRemoveRoleManagersV3NotFound, *AdminRemoveRoleManagersV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveRoleManagersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRemoveRoleManagersV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveRoleManagersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveRoleManagersV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminRemoveRoleManagersV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminRemoveRoleManagersV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminRemoveRoleManagersV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminRemoveRoleManagersV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminRemoveRoleManagersV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRemoveRoleManagersV3Short remove role managers


Required permission 'ADMIN:ROLE [UPDATE]'




Role can only be assigned to other users by the role's manager.


action code: 10409
*/
func (a *Client) AdminRemoveRoleManagersV3Short(params *AdminRemoveRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleManagersV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveRoleManagersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRemoveRoleManagersV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveRoleManagersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveRoleManagersV3NoContent:
		return v, nil
	case *AdminRemoveRoleManagersV3BadRequest:
		return nil, v
	case *AdminRemoveRoleManagersV3Unauthorized:
		return nil, v
	case *AdminRemoveRoleManagersV3Forbidden:
		return nil, v
	case *AdminRemoveRoleManagersV3NotFound:
		return nil, v
	case *AdminRemoveRoleManagersV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetRoleMembersV3Short instead.

AdminGetRoleMembersV3 get role members


Required permission 'ADMIN:ROLE [READ]'




Admin roles has its members listed in the role.




action code: 10416
*/
func (a *Client) AdminGetRoleMembersV3(params *AdminGetRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleMembersV3OK, *AdminGetRoleMembersV3BadRequest, *AdminGetRoleMembersV3Unauthorized, *AdminGetRoleMembersV3Forbidden, *AdminGetRoleMembersV3NotFound, *AdminGetRoleMembersV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleMembersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleMembersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleMembersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleMembersV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetRoleMembersV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetRoleMembersV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetRoleMembersV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetRoleMembersV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetRoleMembersV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleMembersV3Short get role members


Required permission 'ADMIN:ROLE [READ]'




Admin roles has its members listed in the role.




action code: 10416
*/
func (a *Client) AdminGetRoleMembersV3Short(params *AdminGetRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleMembersV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleMembersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleMembersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleMembersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleMembersV3OK:
		return v, nil
	case *AdminGetRoleMembersV3BadRequest:
		return nil, v
	case *AdminGetRoleMembersV3Unauthorized:
		return nil, v
	case *AdminGetRoleMembersV3Forbidden:
		return nil, v
	case *AdminGetRoleMembersV3NotFound:
		return nil, v
	case *AdminGetRoleMembersV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddRoleMembersV3Short instead.

AdminAddRoleMembersV3 add role members


Required permission 'ADMIN:ROLE [UPDATE]'




Admin roles has its members listed in the role.




Role can only be assigned to other users by the role's manager.


action code: 10410
*/
func (a *Client) AdminAddRoleMembersV3(params *AdminAddRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleMembersV3NoContent, *AdminAddRoleMembersV3BadRequest, *AdminAddRoleMembersV3Unauthorized, *AdminAddRoleMembersV3Forbidden, *AdminAddRoleMembersV3NotFound, *AdminAddRoleMembersV3Conflict, *AdminAddRoleMembersV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRoleMembersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddRoleMembersV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRoleMembersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddRoleMembersV3NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminAddRoleMembersV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminAddRoleMembersV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminAddRoleMembersV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminAddRoleMembersV3NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminAddRoleMembersV3Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminAddRoleMembersV3InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddRoleMembersV3Short add role members


Required permission 'ADMIN:ROLE [UPDATE]'




Admin roles has its members listed in the role.




Role can only be assigned to other users by the role's manager.


action code: 10410
*/
func (a *Client) AdminAddRoleMembersV3Short(params *AdminAddRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleMembersV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRoleMembersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddRoleMembersV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRoleMembersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddRoleMembersV3NoContent:
		return v, nil
	case *AdminAddRoleMembersV3BadRequest:
		return nil, v
	case *AdminAddRoleMembersV3Unauthorized:
		return nil, v
	case *AdminAddRoleMembersV3Forbidden:
		return nil, v
	case *AdminAddRoleMembersV3NotFound:
		return nil, v
	case *AdminAddRoleMembersV3Conflict:
		return nil, v
	case *AdminAddRoleMembersV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminRemoveRoleMembersV3Short instead.

AdminRemoveRoleMembersV3 remove role members


Required permission 'ADMIN:ROLE [UPDATE]'




Admin roles has its members listed in the role.




Role can only be assigned to other users by the role's manager.


action code: 10411
*/
func (a *Client) AdminRemoveRoleMembersV3(params *AdminRemoveRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleMembersV3NoContent, *AdminRemoveRoleMembersV3BadRequest, *AdminRemoveRoleMembersV3Unauthorized, *AdminRemoveRoleMembersV3Forbidden, *AdminRemoveRoleMembersV3NotFound, *AdminRemoveRoleMembersV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveRoleMembersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRemoveRoleMembersV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveRoleMembersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveRoleMembersV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminRemoveRoleMembersV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminRemoveRoleMembersV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminRemoveRoleMembersV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminRemoveRoleMembersV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminRemoveRoleMembersV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRemoveRoleMembersV3Short remove role members


Required permission 'ADMIN:ROLE [UPDATE]'




Admin roles has its members listed in the role.




Role can only be assigned to other users by the role's manager.


action code: 10411
*/
func (a *Client) AdminRemoveRoleMembersV3Short(params *AdminRemoveRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleMembersV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveRoleMembersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRemoveRoleMembersV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveRoleMembersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveRoleMembersV3NoContent:
		return v, nil
	case *AdminRemoveRoleMembersV3BadRequest:
		return nil, v
	case *AdminRemoveRoleMembersV3Unauthorized:
		return nil, v
	case *AdminRemoveRoleMembersV3Forbidden:
		return nil, v
	case *AdminRemoveRoleMembersV3NotFound:
		return nil, v
	case *AdminRemoveRoleMembersV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateRolePermissionsV3Short instead.

AdminUpdateRolePermissionsV3 update role permissions


Required permission 'ADMIN:ROLE [UPDATE]'




This endpoint will REPLACE role's permissions with the ones defined in body



action code: 10405



Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminUpdateRolePermissionsV3(params *AdminUpdateRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV3NoContent, *AdminUpdateRolePermissionsV3BadRequest, *AdminUpdateRolePermissionsV3Unauthorized, *AdminUpdateRolePermissionsV3Forbidden, *AdminUpdateRolePermissionsV3NotFound, *AdminUpdateRolePermissionsV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRolePermissionsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateRolePermissionsV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRolePermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRolePermissionsV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateRolePermissionsV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateRolePermissionsV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateRolePermissionsV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateRolePermissionsV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateRolePermissionsV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateRolePermissionsV3Short update role permissions


Required permission 'ADMIN:ROLE [UPDATE]'




This endpoint will REPLACE role's permissions with the ones defined in body



action code: 10405



Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminUpdateRolePermissionsV3Short(params *AdminUpdateRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRolePermissionsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateRolePermissionsV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRolePermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRolePermissionsV3NoContent:
		return v, nil
	case *AdminUpdateRolePermissionsV3BadRequest:
		return nil, v
	case *AdminUpdateRolePermissionsV3Unauthorized:
		return nil, v
	case *AdminUpdateRolePermissionsV3Forbidden:
		return nil, v
	case *AdminUpdateRolePermissionsV3NotFound:
		return nil, v
	case *AdminUpdateRolePermissionsV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddRolePermissionsV3Short instead.

AdminAddRolePermissionsV3 add role permissions


Required permission 'ADMIN:ROLE [UPDATE]'




This endpoint will ATTACH permission(s) into the role



action code: 10404



Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminAddRolePermissionsV3(params *AdminAddRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV3NoContent, *AdminAddRolePermissionsV3BadRequest, *AdminAddRolePermissionsV3Unauthorized, *AdminAddRolePermissionsV3Forbidden, *AdminAddRolePermissionsV3NotFound, *AdminAddRolePermissionsV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRolePermissionsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddRolePermissionsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRolePermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddRolePermissionsV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminAddRolePermissionsV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminAddRolePermissionsV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminAddRolePermissionsV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminAddRolePermissionsV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminAddRolePermissionsV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddRolePermissionsV3Short add role permissions


Required permission 'ADMIN:ROLE [UPDATE]'




This endpoint will ATTACH permission(s) into the role



action code: 10404



Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminAddRolePermissionsV3Short(params *AdminAddRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRolePermissionsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddRolePermissionsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRolePermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddRolePermissionsV3NoContent:
		return v, nil
	case *AdminAddRolePermissionsV3BadRequest:
		return nil, v
	case *AdminAddRolePermissionsV3Unauthorized:
		return nil, v
	case *AdminAddRolePermissionsV3Forbidden:
		return nil, v
	case *AdminAddRolePermissionsV3NotFound:
		return nil, v
	case *AdminAddRolePermissionsV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteRolePermissionsV3Short instead.

AdminDeleteRolePermissionsV3 delete role
Required permission 'ADMIN:ROLE [UPDATE]'
*/
func (a *Client) AdminDeleteRolePermissionsV3(params *AdminDeleteRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV3NoContent, *AdminDeleteRolePermissionsV3Unauthorized, *AdminDeleteRolePermissionsV3Forbidden, *AdminDeleteRolePermissionsV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRolePermissionsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteRolePermissionsV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRolePermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRolePermissionsV3NoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteRolePermissionsV3Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteRolePermissionsV3Forbidden:
		return nil, nil, v, nil, nil

	case *AdminDeleteRolePermissionsV3NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteRolePermissionsV3Short delete role
Required permission 'ADMIN:ROLE [UPDATE]'
*/
func (a *Client) AdminDeleteRolePermissionsV3Short(params *AdminDeleteRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRolePermissionsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteRolePermissionsV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRolePermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRolePermissionsV3NoContent:
		return v, nil
	case *AdminDeleteRolePermissionsV3Unauthorized:
		return nil, v
	case *AdminDeleteRolePermissionsV3Forbidden:
		return nil, v
	case *AdminDeleteRolePermissionsV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteRolePermissionV3Short instead.

AdminDeleteRolePermissionV3 delete role permission
Required permission 'ADMIN:ROLE [UPDATE]'
action code: 10406
*/
func (a *Client) AdminDeleteRolePermissionV3(params *AdminDeleteRolePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionV3NoContent, *AdminDeleteRolePermissionV3BadRequest, *AdminDeleteRolePermissionV3Unauthorized, *AdminDeleteRolePermissionV3Forbidden, *AdminDeleteRolePermissionV3NotFound, *AdminDeleteRolePermissionV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRolePermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteRolePermissionV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRolePermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRolePermissionV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeleteRolePermissionV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeleteRolePermissionV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeleteRolePermissionV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeleteRolePermissionV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeleteRolePermissionV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteRolePermissionV3Short delete role permission
Required permission 'ADMIN:ROLE [UPDATE]'
action code: 10406
*/
func (a *Client) AdminDeleteRolePermissionV3Short(params *AdminDeleteRolePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRolePermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteRolePermissionV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRolePermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRolePermissionV3NoContent:
		return v, nil
	case *AdminDeleteRolePermissionV3BadRequest:
		return nil, v
	case *AdminDeleteRolePermissionV3Unauthorized:
		return nil, v
	case *AdminDeleteRolePermissionV3Forbidden:
		return nil, v
	case *AdminDeleteRolePermissionV3NotFound:
		return nil, v
	case *AdminDeleteRolePermissionV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetRolesV3Short instead.

PublicGetRolesV3 get roles

This endpoint is used to get all non-admin role.


action code: 10418
*/
func (a *Client) PublicGetRolesV3(params *PublicGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRolesV3OK, *PublicGetRolesV3BadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRolesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetRolesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRolesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetRolesV3OK:
		return v, nil, nil

	case *PublicGetRolesV3BadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetRolesV3Short get roles

This endpoint is used to get all non-admin role.


action code: 10418
*/
func (a *Client) PublicGetRolesV3Short(params *PublicGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRolesV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRolesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetRolesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRolesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRolesV3OK:
		return v, nil
	case *PublicGetRolesV3BadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetRoleV3Short instead.

PublicGetRoleV3 get public role

This endpoint is used to get non-admin role based on specify roleId.
action code : 10417
*/
func (a *Client) PublicGetRoleV3(params *PublicGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRoleV3OK, *PublicGetRoleV3BadRequest, *PublicGetRoleV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetRoleV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetRoleV3OK:
		return v, nil, nil, nil

	case *PublicGetRoleV3BadRequest:
		return nil, v, nil, nil

	case *PublicGetRoleV3NotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetRoleV3Short get public role

This endpoint is used to get non-admin role based on specify roleId.
action code : 10417
*/
func (a *Client) PublicGetRoleV3Short(params *PublicGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRoleV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetRoleV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRoleV3OK:
		return v, nil
	case *PublicGetRoleV3BadRequest:
		return nil, v
	case *PublicGetRoleV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetRolesV4Short instead.

AdminGetRolesV4 get roles
Required permission ADMIN:ROLE [READ]

action code: 10414
*/
func (a *Client) AdminGetRolesV4(params *AdminGetRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV4OK, *AdminGetRolesV4BadRequest, *AdminGetRolesV4Unauthorized, *AdminGetRolesV4Forbidden, *AdminGetRolesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRolesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRolesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRolesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRolesV4OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetRolesV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetRolesV4Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetRolesV4Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetRolesV4InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRolesV4Short get roles
Required permission ADMIN:ROLE [READ]

action code: 10414
*/
func (a *Client) AdminGetRolesV4Short(params *AdminGetRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRolesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRolesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRolesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRolesV4OK:
		return v, nil
	case *AdminGetRolesV4BadRequest:
		return nil, v
	case *AdminGetRolesV4Unauthorized:
		return nil, v
	case *AdminGetRolesV4Forbidden:
		return nil, v
	case *AdminGetRolesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateRoleV4Short instead.

AdminCreateRoleV4 create role
Required permission: ADMIN:ROLE [CREATE]

Create role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- adminRole: specify if role is for admin user (default false)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted (default true)

action code: 10401
*/
func (a *Client) AdminCreateRoleV4(params *AdminCreateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV4Created, *AdminCreateRoleV4BadRequest, *AdminCreateRoleV4Unauthorized, *AdminCreateRoleV4Forbidden, *AdminCreateRoleV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateRoleV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateRoleV4Created:
		return v, nil, nil, nil, nil, nil

	case *AdminCreateRoleV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminCreateRoleV4Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminCreateRoleV4Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminCreateRoleV4InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateRoleV4Short create role
Required permission: ADMIN:ROLE [CREATE]

Create role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- adminRole: specify if role is for admin user (default false)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted (default true)

action code: 10401
*/
func (a *Client) AdminCreateRoleV4Short(params *AdminCreateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV4Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateRoleV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateRoleV4Created:
		return v, nil
	case *AdminCreateRoleV4BadRequest:
		return nil, v
	case *AdminCreateRoleV4Unauthorized:
		return nil, v
	case *AdminCreateRoleV4Forbidden:
		return nil, v
	case *AdminCreateRoleV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetRoleV4Short instead.

AdminGetRoleV4 get role
Required permission ADMIN:ROLE [READ]

action code: 10419
*/
func (a *Client) AdminGetRoleV4(params *AdminGetRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV4OK, *AdminGetRoleV4BadRequest, *AdminGetRoleV4Unauthorized, *AdminGetRoleV4Forbidden, *AdminGetRoleV4NotFound, *AdminGetRoleV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetRoleV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetRoleV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetRoleV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetRoleV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetRoleV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleV4Short get role
Required permission ADMIN:ROLE [READ]

action code: 10419
*/
func (a *Client) AdminGetRoleV4Short(params *AdminGetRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleV4OK:
		return v, nil
	case *AdminGetRoleV4BadRequest:
		return nil, v
	case *AdminGetRoleV4Unauthorized:
		return nil, v
	case *AdminGetRoleV4Forbidden:
		return nil, v
	case *AdminGetRoleV4NotFound:
		return nil, v
	case *AdminGetRoleV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteRoleV4Short instead.

AdminDeleteRoleV4 delete role
Required permission ADMIN:ROLE [DELETE]

Removes role ID from user's Roles and NamespaceRoles before deleting the role.

action code: 10403
*/
func (a *Client) AdminDeleteRoleV4(params *AdminDeleteRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV4NoContent, *AdminDeleteRoleV4BadRequest, *AdminDeleteRoleV4Unauthorized, *AdminDeleteRoleV4Forbidden, *AdminDeleteRoleV4NotFound, *AdminDeleteRoleV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteRoleV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRoleV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeleteRoleV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeleteRoleV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeleteRoleV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeleteRoleV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeleteRoleV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteRoleV4Short delete role
Required permission ADMIN:ROLE [DELETE]

Removes role ID from user's Roles and NamespaceRoles before deleting the role.

action code: 10403
*/
func (a *Client) AdminDeleteRoleV4Short(params *AdminDeleteRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteRoleV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRoleV4NoContent:
		return v, nil
	case *AdminDeleteRoleV4BadRequest:
		return nil, v
	case *AdminDeleteRoleV4Unauthorized:
		return nil, v
	case *AdminDeleteRoleV4Forbidden:
		return nil, v
	case *AdminDeleteRoleV4NotFound:
		return nil, v
	case *AdminDeleteRoleV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateRoleV4Short instead.

AdminUpdateRoleV4 update role
Required permission ADMIN:ROLE [UPDATE]

Update role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- adminRole: specify if role is for admin user (default false)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted (optional)

action code: 10402
*/
func (a *Client) AdminUpdateRoleV4(params *AdminUpdateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV4OK, *AdminUpdateRoleV4BadRequest, *AdminUpdateRoleV4Unauthorized, *AdminUpdateRoleV4Forbidden, *AdminUpdateRoleV4NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateRoleV4",
		Method:             "PATCH",
		PathPattern:        "/iam/v4/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRoleV4OK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateRoleV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateRoleV4Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateRoleV4Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateRoleV4NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateRoleV4Short update role
Required permission ADMIN:ROLE [UPDATE]

Update role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- adminRole: specify if role is for admin user (default false)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted (optional)

action code: 10402
*/
func (a *Client) AdminUpdateRoleV4Short(params *AdminUpdateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateRoleV4",
		Method:             "PATCH",
		PathPattern:        "/iam/v4/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRoleV4OK:
		return v, nil
	case *AdminUpdateRoleV4BadRequest:
		return nil, v
	case *AdminUpdateRoleV4Unauthorized:
		return nil, v
	case *AdminUpdateRoleV4Forbidden:
		return nil, v
	case *AdminUpdateRoleV4NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateRolePermissionsV4Short instead.

AdminUpdateRolePermissionsV4 update role permissions


Required permission 'ADMIN:ROLE [UPDATE]'




This endpoint will REPLACE role's permissions with the ones defined in body



action code: 10405



Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminUpdateRolePermissionsV4(params *AdminUpdateRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV4OK, *AdminUpdateRolePermissionsV4BadRequest, *AdminUpdateRolePermissionsV4Unauthorized, *AdminUpdateRolePermissionsV4Forbidden, *AdminUpdateRolePermissionsV4NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRolePermissionsV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateRolePermissionsV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRolePermissionsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRolePermissionsV4OK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateRolePermissionsV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateRolePermissionsV4Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateRolePermissionsV4Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateRolePermissionsV4NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateRolePermissionsV4Short update role permissions


Required permission 'ADMIN:ROLE [UPDATE]'




This endpoint will REPLACE role's permissions with the ones defined in body



action code: 10405



Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminUpdateRolePermissionsV4Short(params *AdminUpdateRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRolePermissionsV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateRolePermissionsV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRolePermissionsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRolePermissionsV4OK:
		return v, nil
	case *AdminUpdateRolePermissionsV4BadRequest:
		return nil, v
	case *AdminUpdateRolePermissionsV4Unauthorized:
		return nil, v
	case *AdminUpdateRolePermissionsV4Forbidden:
		return nil, v
	case *AdminUpdateRolePermissionsV4NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddRolePermissionsV4Short instead.

AdminAddRolePermissionsV4 add role permissions v4


Required permission 'ADMIN:ROLE [UPDATE]'




This endpoint will ATTACH permission(s) into the role



action code: 10404



Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminAddRolePermissionsV4(params *AdminAddRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV4OK, *AdminAddRolePermissionsV4BadRequest, *AdminAddRolePermissionsV4Unauthorized, *AdminAddRolePermissionsV4Forbidden, *AdminAddRolePermissionsV4NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRolePermissionsV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddRolePermissionsV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRolePermissionsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddRolePermissionsV4OK:
		return v, nil, nil, nil, nil, nil

	case *AdminAddRolePermissionsV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminAddRolePermissionsV4Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminAddRolePermissionsV4Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminAddRolePermissionsV4NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddRolePermissionsV4Short add role permissions v4


Required permission 'ADMIN:ROLE [UPDATE]'




This endpoint will ATTACH permission(s) into the role



action code: 10404



Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                                  1. Seconds: 0-59 * / , -


                                  2. Minutes: 0-59 * / , -


                                  3. Hours: 0-23 * / , -


                                  4. Day of month: 1-31 * / , - L W


                                  5. Month: 1-12 JAN-DEC * / , -


                                  6. Day of week: 0-6 SUN-SAT * / , - L #


                                  7. Year: 1970-2099 * / , -




Special characters:




                                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminAddRolePermissionsV4Short(params *AdminAddRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRolePermissionsV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddRolePermissionsV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRolePermissionsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddRolePermissionsV4OK:
		return v, nil
	case *AdminAddRolePermissionsV4BadRequest:
		return nil, v
	case *AdminAddRolePermissionsV4Unauthorized:
		return nil, v
	case *AdminAddRolePermissionsV4Forbidden:
		return nil, v
	case *AdminAddRolePermissionsV4NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteRolePermissionsV4Short instead.

AdminDeleteRolePermissionsV4 delete role permission v4
Required permission ADMIN:ROLE [UPDATE]
*/
func (a *Client) AdminDeleteRolePermissionsV4(params *AdminDeleteRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV4NoContent, *AdminDeleteRolePermissionsV4Unauthorized, *AdminDeleteRolePermissionsV4Forbidden, *AdminDeleteRolePermissionsV4NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRolePermissionsV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteRolePermissionsV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRolePermissionsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRolePermissionsV4NoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteRolePermissionsV4Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteRolePermissionsV4Forbidden:
		return nil, nil, v, nil, nil

	case *AdminDeleteRolePermissionsV4NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteRolePermissionsV4Short delete role permission v4
Required permission ADMIN:ROLE [UPDATE]
*/
func (a *Client) AdminDeleteRolePermissionsV4Short(params *AdminDeleteRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRolePermissionsV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteRolePermissionsV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRolePermissionsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRolePermissionsV4NoContent:
		return v, nil
	case *AdminDeleteRolePermissionsV4Unauthorized:
		return nil, v
	case *AdminDeleteRolePermissionsV4Forbidden:
		return nil, v
	case *AdminDeleteRolePermissionsV4NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminListAssignedUsersV4Short instead.

AdminListAssignedUsersV4 get role's assigned users
Required permission ADMIN:ROLE [READ]
Query all users that has the specified role.
action code: 10416
*/
func (a *Client) AdminListAssignedUsersV4(params *AdminListAssignedUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAssignedUsersV4OK, *AdminListAssignedUsersV4BadRequest, *AdminListAssignedUsersV4Unauthorized, *AdminListAssignedUsersV4Forbidden, *AdminListAssignedUsersV4NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListAssignedUsersV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListAssignedUsersV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListAssignedUsersV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListAssignedUsersV4OK:
		return v, nil, nil, nil, nil, nil

	case *AdminListAssignedUsersV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminListAssignedUsersV4Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminListAssignedUsersV4Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminListAssignedUsersV4NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListAssignedUsersV4Short get role's assigned users
Required permission ADMIN:ROLE [READ]
Query all users that has the specified role.
action code: 10416
*/
func (a *Client) AdminListAssignedUsersV4Short(params *AdminListAssignedUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAssignedUsersV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListAssignedUsersV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListAssignedUsersV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListAssignedUsersV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListAssignedUsersV4OK:
		return v, nil
	case *AdminListAssignedUsersV4BadRequest:
		return nil, v
	case *AdminListAssignedUsersV4Unauthorized:
		return nil, v
	case *AdminListAssignedUsersV4Forbidden:
		return nil, v
	case *AdminListAssignedUsersV4NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAssignUserToRoleV4Short instead.

AdminAssignUserToRoleV4 assign user to role
Required permission ADMIN:ROLE [UPDATE]

Parameters:
- userId: string (required)
- namespace: string (userâs namespace) (required)
- assignedNamespaces: array of string (namespaces to be assigned on role) (required)

action code: 10410
*/
func (a *Client) AdminAssignUserToRoleV4(params *AdminAssignUserToRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAssignUserToRoleV4Created, *AdminAssignUserToRoleV4BadRequest, *AdminAssignUserToRoleV4Unauthorized, *AdminAssignUserToRoleV4Forbidden, *AdminAssignUserToRoleV4NotFound, *AdminAssignUserToRoleV4Conflict, *AdminAssignUserToRoleV4UnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAssignUserToRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAssignUserToRoleV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAssignUserToRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAssignUserToRoleV4Created:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminAssignUserToRoleV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminAssignUserToRoleV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminAssignUserToRoleV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminAssignUserToRoleV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminAssignUserToRoleV4Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminAssignUserToRoleV4UnprocessableEntity:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAssignUserToRoleV4Short assign user to role
Required permission ADMIN:ROLE [UPDATE]

Parameters:
- userId: string (required)
- namespace: string (userâs namespace) (required)
- assignedNamespaces: array of string (namespaces to be assigned on role) (required)

action code: 10410
*/
func (a *Client) AdminAssignUserToRoleV4Short(params *AdminAssignUserToRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAssignUserToRoleV4Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAssignUserToRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAssignUserToRoleV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAssignUserToRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAssignUserToRoleV4Created:
		return v, nil
	case *AdminAssignUserToRoleV4BadRequest:
		return nil, v
	case *AdminAssignUserToRoleV4Unauthorized:
		return nil, v
	case *AdminAssignUserToRoleV4Forbidden:
		return nil, v
	case *AdminAssignUserToRoleV4NotFound:
		return nil, v
	case *AdminAssignUserToRoleV4Conflict:
		return nil, v
	case *AdminAssignUserToRoleV4UnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminRevokeUserFromRoleV4Short instead.

AdminRevokeUserFromRoleV4 revoke user from role
Required permission ADMIN:ROLE [UPDATE]

Current implementation will revoke user from role in all assigned namespaces.

Parameters:
- userId: string (required)
- namespace: string (userâs namespace) (required)

action code: 10411
*/
func (a *Client) AdminRevokeUserFromRoleV4(params *AdminRevokeUserFromRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRevokeUserFromRoleV4NoContent, *AdminRevokeUserFromRoleV4BadRequest, *AdminRevokeUserFromRoleV4Unauthorized, *AdminRevokeUserFromRoleV4Forbidden, *AdminRevokeUserFromRoleV4NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRevokeUserFromRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRevokeUserFromRoleV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRevokeUserFromRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminRevokeUserFromRoleV4NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminRevokeUserFromRoleV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminRevokeUserFromRoleV4Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminRevokeUserFromRoleV4Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminRevokeUserFromRoleV4NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRevokeUserFromRoleV4Short revoke user from role
Required permission ADMIN:ROLE [UPDATE]

Current implementation will revoke user from role in all assigned namespaces.

Parameters:
- userId: string (required)
- namespace: string (userâs namespace) (required)

action code: 10411
*/
func (a *Client) AdminRevokeUserFromRoleV4Short(params *AdminRevokeUserFromRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRevokeUserFromRoleV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRevokeUserFromRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRevokeUserFromRoleV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRevokeUserFromRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRevokeUserFromRoleV4NoContent:
		return v, nil
	case *AdminRevokeUserFromRoleV4BadRequest:
		return nil, v
	case *AdminRevokeUserFromRoleV4Unauthorized:
		return nil, v
	case *AdminRevokeUserFromRoleV4Forbidden:
		return nil, v
	case *AdminRevokeUserFromRoleV4NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
