// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type RolesService struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetRolesShort instead
func (r *RolesService) GetRoles(input *roles.GetRolesParams) ([]*iamclientmodels.ModelRoleResponseWithManagers, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := r.Client.Roles.GetRoles(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateRoleShort instead
func (r *RolesService) CreateRole(input *roles.CreateRoleParams) (*iamclientmodels.AccountcommonRole, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, err := r.Client.Roles.CreateRole(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use GetRoleShort instead
func (r *RolesService) GetRole(input *roles.GetRoleParams) (*iamclientmodels.ModelRoleResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := r.Client.Roles.GetRole(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateRoleShort instead
func (r *RolesService) UpdateRole(input *roles.UpdateRoleParams) (*iamclientmodels.ModelRoleResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.UpdateRole(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteRoleShort instead
func (r *RolesService) DeleteRole(input *roles.DeleteRoleParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := r.Client.Roles.DeleteRole(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetRoleAdminStatusShort instead
func (r *RolesService) GetRoleAdminStatus(input *roles.GetRoleAdminStatusParams) (*iamclientmodels.ModelRoleAdminStatusResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.GetRoleAdminStatus(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use SetRoleAsAdminShort instead
func (r *RolesService) SetRoleAsAdmin(input *roles.SetRoleAsAdminParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.SetRoleAsAdmin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RemoveRoleAdminShort instead
func (r *RolesService) RemoveRoleAdmin(input *roles.RemoveRoleAdminParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.RemoveRoleAdmin(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetRoleManagersShort instead
func (r *RolesService) GetRoleManagers(input *roles.GetRoleManagersParams) (*iamclientmodels.ModelRoleManagersResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.GetRoleManagers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AddRoleManagersShort instead
func (r *RolesService) AddRoleManagers(input *roles.AddRoleManagersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AddRoleManagers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RemoveRoleManagersShort instead
func (r *RolesService) RemoveRoleManagers(input *roles.RemoveRoleManagersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.RemoveRoleManagers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetRoleMembersShort instead
func (r *RolesService) GetRoleMembers(input *roles.GetRoleMembersParams) (*iamclientmodels.ModelRoleMembersResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.GetRoleMembers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AddRoleMembersShort instead
func (r *RolesService) AddRoleMembers(input *roles.AddRoleMembersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AddRoleMembers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RemoveRoleMembersShort instead
func (r *RolesService) RemoveRoleMembers(input *roles.RemoveRoleMembersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.RemoveRoleMembers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateRolePermissionsShort instead
func (r *RolesService) UpdateRolePermissions(input *roles.UpdateRolePermissionsParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.UpdateRolePermissions(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AddRolePermissionShort instead
func (r *RolesService) AddRolePermission(input *roles.AddRolePermissionParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AddRolePermission(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use DeleteRolePermissionShort instead
func (r *RolesService) DeleteRolePermission(input *roles.DeleteRolePermissionParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.DeleteRolePermission(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminGetRolesV3Short instead
func (r *RolesService) AdminGetRolesV3(input *roles.AdminGetRolesV3Params) (*iamclientmodels.ModelRoleResponseWithManagersAndPaginationV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, err := r.Client.Roles.AdminGetRolesV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminCreateRoleV3Short instead
func (r *RolesService) AdminCreateRoleV3(input *roles.AdminCreateRoleV3Params) (*iamclientmodels.AccountcommonRoleV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, err := r.Client.Roles.AdminCreateRoleV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use AdminGetRoleV3Short instead
func (r *RolesService) AdminGetRoleV3(input *roles.AdminGetRoleV3Params) (*iamclientmodels.ModelRoleResponseV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminGetRoleV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminDeleteRoleV3Short instead
func (r *RolesService) AdminDeleteRoleV3(input *roles.AdminDeleteRoleV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := r.Client.Roles.AdminDeleteRoleV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminUpdateRoleV3Short instead
func (r *RolesService) AdminUpdateRoleV3(input *roles.AdminUpdateRoleV3Params) (*iamclientmodels.ModelRoleResponseV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminUpdateRoleV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminGetRoleAdminStatusV3Short instead
func (r *RolesService) AdminGetRoleAdminStatusV3(input *roles.AdminGetRoleAdminStatusV3Params) (*iamclientmodels.ModelRoleAdminStatusResponseV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminGetRoleAdminStatusV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminUpdateAdminRoleStatusV3Short instead
func (r *RolesService) AdminUpdateAdminRoleStatusV3(input *roles.AdminUpdateAdminRoleStatusV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := r.Client.Roles.AdminUpdateAdminRoleStatusV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminRemoveRoleAdminV3Short instead
func (r *RolesService) AdminRemoveRoleAdminV3(input *roles.AdminRemoveRoleAdminV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := r.Client.Roles.AdminRemoveRoleAdminV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminGetRoleManagersV3Short instead
func (r *RolesService) AdminGetRoleManagersV3(input *roles.AdminGetRoleManagersV3Params) (*iamclientmodels.ModelRoleManagersResponsesV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminGetRoleManagersV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminAddRoleManagersV3Short instead
func (r *RolesService) AdminAddRoleManagersV3(input *roles.AdminAddRoleManagersV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err := r.Client.Roles.AdminAddRoleManagersV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminRemoveRoleManagersV3Short instead
func (r *RolesService) AdminRemoveRoleManagersV3(input *roles.AdminRemoveRoleManagersV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminRemoveRoleManagersV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminGetRoleMembersV3Short instead
func (r *RolesService) AdminGetRoleMembersV3(input *roles.AdminGetRoleMembersV3Params) (*iamclientmodels.ModelRoleMembersResponseV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminGetRoleMembersV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminAddRoleMembersV3Short instead
func (r *RolesService) AdminAddRoleMembersV3(input *roles.AdminAddRoleMembersV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err := r.Client.Roles.AdminAddRoleMembersV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminRemoveRoleMembersV3Short instead
func (r *RolesService) AdminRemoveRoleMembersV3(input *roles.AdminRemoveRoleMembersV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminRemoveRoleMembersV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminUpdateRolePermissionsV3Short instead
func (r *RolesService) AdminUpdateRolePermissionsV3(input *roles.AdminUpdateRolePermissionsV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminUpdateRolePermissionsV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminAddRolePermissionsV3Short instead
func (r *RolesService) AdminAddRolePermissionsV3(input *roles.AdminAddRolePermissionsV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminAddRolePermissionsV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminDeleteRolePermissionsV3Short instead
func (r *RolesService) AdminDeleteRolePermissionsV3(input *roles.AdminDeleteRolePermissionsV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminDeleteRolePermissionsV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminDeleteRolePermissionV3Short instead
func (r *RolesService) AdminDeleteRolePermissionV3(input *roles.AdminDeleteRolePermissionV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := r.Client.Roles.AdminDeleteRolePermissionV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicGetRolesV3Short instead
func (r *RolesService) PublicGetRolesV3(input *roles.PublicGetRolesV3Params) (*iamclientmodels.ModelRoleNamesResponseV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := r.Client.Roles.PublicGetRolesV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetRoleV3Short instead
func (r *RolesService) PublicGetRoleV3(input *roles.PublicGetRoleV3Params) (*iamclientmodels.ModelRoleResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := r.Client.Roles.PublicGetRoleV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminGetRolesV4Short instead
func (r *RolesService) AdminGetRolesV4(input *roles.AdminGetRolesV4Params) (*iamclientmodels.ModelListRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, err := r.Client.Roles.AdminGetRolesV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminCreateRoleV4Short instead
func (r *RolesService) AdminCreateRoleV4(input *roles.AdminCreateRoleV4Params) (*iamclientmodels.ModelRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, err := r.Client.Roles.AdminCreateRoleV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use AdminGetRoleV4Short instead
func (r *RolesService) AdminGetRoleV4(input *roles.AdminGetRoleV4Params) (*iamclientmodels.ModelRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminGetRoleV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminDeleteRoleV4Short instead
func (r *RolesService) AdminDeleteRoleV4(input *roles.AdminDeleteRoleV4Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := r.Client.Roles.AdminDeleteRoleV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminUpdateRoleV4Short instead
func (r *RolesService) AdminUpdateRoleV4(input *roles.AdminUpdateRoleV4Params) (*iamclientmodels.ModelRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminUpdateRoleV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminUpdateRolePermissionsV4Short instead
func (r *RolesService) AdminUpdateRolePermissionsV4(input *roles.AdminUpdateRolePermissionsV4Params) (*iamclientmodels.ModelRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminUpdateRolePermissionsV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminAddRolePermissionsV4Short instead
func (r *RolesService) AdminAddRolePermissionsV4(input *roles.AdminAddRolePermissionsV4Params) (*iamclientmodels.ModelRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminAddRolePermissionsV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminDeleteRolePermissionsV4Short instead
func (r *RolesService) AdminDeleteRolePermissionsV4(input *roles.AdminDeleteRolePermissionsV4Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminDeleteRolePermissionsV4(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminListAssignedUsersV4Short instead
func (r *RolesService) AdminListAssignedUsersV4(input *roles.AdminListAssignedUsersV4Params) (*iamclientmodels.ModelListAssignedUsersV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminListAssignedUsersV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminAssignUserToRoleV4Short instead
func (r *RolesService) AdminAssignUserToRoleV4(input *roles.AdminAssignUserToRoleV4Params) (*iamclientmodels.ModelAssignedUserV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, conflict, unprocessableEntity, err := r.Client.Roles.AdminAssignUserToRoleV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use AdminRevokeUserFromRoleV4Short instead
func (r *RolesService) AdminRevokeUserFromRoleV4(input *roles.AdminRevokeUserFromRoleV4Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := r.Client.Roles.AdminRevokeUserFromRoleV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) GetRolesShort(input *roles.GetRolesParams) ([]*iamclientmodels.ModelRoleResponseWithManagers, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.GetRolesShort(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) CreateRoleShort(input *roles.CreateRoleParams) (*iamclientmodels.AccountcommonRole, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	created, err := r.Client.Roles.CreateRoleShort(input, authWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (r *RolesService) GetRoleShort(input *roles.GetRoleParams) (*iamclientmodels.ModelRoleResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.GetRoleShort(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) UpdateRoleShort(input *roles.UpdateRoleParams) (*iamclientmodels.ModelRoleResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.UpdateRoleShort(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) DeleteRoleShort(input *roles.DeleteRoleParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.DeleteRoleShort(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) GetRoleAdminStatusShort(input *roles.GetRoleAdminStatusParams) (*iamclientmodels.ModelRoleAdminStatusResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.GetRoleAdminStatusShort(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) SetRoleAsAdminShort(input *roles.SetRoleAsAdminParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.SetRoleAsAdminShort(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) RemoveRoleAdminShort(input *roles.RemoveRoleAdminParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.RemoveRoleAdminShort(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) GetRoleManagersShort(input *roles.GetRoleManagersParams) (*iamclientmodels.ModelRoleManagersResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.GetRoleManagersShort(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AddRoleManagersShort(input *roles.AddRoleManagersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AddRoleManagersShort(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) RemoveRoleManagersShort(input *roles.RemoveRoleManagersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.RemoveRoleManagersShort(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) GetRoleMembersShort(input *roles.GetRoleMembersParams) (*iamclientmodels.ModelRoleMembersResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.GetRoleMembersShort(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AddRoleMembersShort(input *roles.AddRoleMembersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AddRoleMembersShort(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) RemoveRoleMembersShort(input *roles.RemoveRoleMembersParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.RemoveRoleMembersShort(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) UpdateRolePermissionsShort(input *roles.UpdateRolePermissionsParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.UpdateRolePermissionsShort(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AddRolePermissionShort(input *roles.AddRolePermissionParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AddRolePermissionShort(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) DeleteRolePermissionShort(input *roles.DeleteRolePermissionParams) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.DeleteRolePermissionShort(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminGetRolesV3Short(input *roles.AdminGetRolesV3Params) (*iamclientmodels.ModelRoleResponseWithManagersAndPaginationV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminGetRolesV3Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminCreateRoleV3Short(input *roles.AdminCreateRoleV3Params) (*iamclientmodels.AccountcommonRoleV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	created, err := r.Client.Roles.AdminCreateRoleV3Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (r *RolesService) AdminGetRoleV3Short(input *roles.AdminGetRoleV3Params) (*iamclientmodels.ModelRoleResponseV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminGetRoleV3Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminDeleteRoleV3Short(input *roles.AdminDeleteRoleV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminDeleteRoleV3Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminUpdateRoleV3Short(input *roles.AdminUpdateRoleV3Params) (*iamclientmodels.ModelRoleResponseV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminUpdateRoleV3Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminGetRoleAdminStatusV3Short(input *roles.AdminGetRoleAdminStatusV3Params) (*iamclientmodels.ModelRoleAdminStatusResponseV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminGetRoleAdminStatusV3Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminUpdateAdminRoleStatusV3Short(input *roles.AdminUpdateAdminRoleStatusV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminUpdateAdminRoleStatusV3Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminRemoveRoleAdminV3Short(input *roles.AdminRemoveRoleAdminV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminRemoveRoleAdminV3Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminGetRoleManagersV3Short(input *roles.AdminGetRoleManagersV3Params) (*iamclientmodels.ModelRoleManagersResponsesV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminGetRoleManagersV3Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminAddRoleManagersV3Short(input *roles.AdminAddRoleManagersV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminAddRoleManagersV3Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminRemoveRoleManagersV3Short(input *roles.AdminRemoveRoleManagersV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminRemoveRoleManagersV3Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminGetRoleMembersV3Short(input *roles.AdminGetRoleMembersV3Params) (*iamclientmodels.ModelRoleMembersResponseV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminGetRoleMembersV3Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminAddRoleMembersV3Short(input *roles.AdminAddRoleMembersV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminAddRoleMembersV3Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminRemoveRoleMembersV3Short(input *roles.AdminRemoveRoleMembersV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminRemoveRoleMembersV3Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminUpdateRolePermissionsV3Short(input *roles.AdminUpdateRolePermissionsV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminUpdateRolePermissionsV3Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminAddRolePermissionsV3Short(input *roles.AdminAddRolePermissionsV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminAddRolePermissionsV3Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminDeleteRolePermissionsV3Short(input *roles.AdminDeleteRolePermissionsV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminDeleteRolePermissionsV3Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminDeleteRolePermissionV3Short(input *roles.AdminDeleteRolePermissionV3Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminDeleteRolePermissionV3Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) PublicGetRolesV3Short(input *roles.PublicGetRolesV3Params) (*iamclientmodels.ModelRoleNamesResponseV3, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.PublicGetRolesV3Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) PublicGetRoleV3Short(input *roles.PublicGetRoleV3Params) (*iamclientmodels.ModelRoleResponse, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.PublicGetRoleV3Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminGetRolesV4Short(input *roles.AdminGetRolesV4Params) (*iamclientmodels.ModelListRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminGetRolesV4Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminCreateRoleV4Short(input *roles.AdminCreateRoleV4Params) (*iamclientmodels.ModelRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	created, err := r.Client.Roles.AdminCreateRoleV4Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (r *RolesService) AdminGetRoleV4Short(input *roles.AdminGetRoleV4Params) (*iamclientmodels.ModelRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminGetRoleV4Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminDeleteRoleV4Short(input *roles.AdminDeleteRoleV4Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminDeleteRoleV4Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminUpdateRoleV4Short(input *roles.AdminUpdateRoleV4Params) (*iamclientmodels.ModelRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminUpdateRoleV4Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminUpdateRolePermissionsV4Short(input *roles.AdminUpdateRolePermissionsV4Params) (*iamclientmodels.ModelRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminUpdateRolePermissionsV4Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminAddRolePermissionsV4Short(input *roles.AdminAddRolePermissionsV4Params) (*iamclientmodels.ModelRoleV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminAddRolePermissionsV4Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminDeleteRolePermissionsV4Short(input *roles.AdminDeleteRolePermissionsV4Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminDeleteRolePermissionsV4Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}

func (r *RolesService) AdminListAssignedUsersV4Short(input *roles.AdminListAssignedUsersV4Params) (*iamclientmodels.ModelListAssignedUsersV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	ok, err := r.Client.Roles.AdminListAssignedUsersV4Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (r *RolesService) AdminAssignUserToRoleV4Short(input *roles.AdminAssignUserToRoleV4Params) (*iamclientmodels.ModelAssignedUserV4Response, error) {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	created, err := r.Client.Roles.AdminAssignUserToRoleV4Short(input, authWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (r *RolesService) AdminRevokeUserFromRoleV4Short(input *roles.AdminRevokeUserFromRoleV4Params) error {
	token, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	authWriter := auth.Compose(
		auth.Bearer(*token.AccessToken),
	)
	_, err = r.Client.Roles.AdminRevokeUserFromRoleV4Short(input, authWriter)
	if err != nil {
		return err
	}

	return nil
}
