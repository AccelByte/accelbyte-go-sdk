// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package service

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type RoleService struct {
	IamService      *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// AdminGetRolesV3 is for admin to get the roles
func (roleService *RoleService) AdminGetRolesV3(after, before *string, isWildCard *bool, limit *int64) (*iamclientmodels.ModelRoleResponseWithManagersAndPaginationV3, error) {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &roles.AdminGetRolesV3Params{
		After:      after,
		Before:     before,
		IsWildcard: isWildCard,
		Limit:      limit,
	}
	ok, badRequest, unauthorized, forbidden, err := roleService.IamService.Roles.AdminGetRolesV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminCreateRoleV3 is for admin to create the roles
func (roleService *RoleService) AdminCreateRoleV3(roleName *string, adminRole, isWildcard *bool,
	managers []*iamclientmodels.AccountcommonRoleManagerV3, members []*iamclientmodels.AccountcommonRoleMemberV3,
	permissions []*iamclientmodels.AccountcommonPermissionV3) (*iamclientmodels.AccountcommonRoleV3, error) {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &roles.AdminCreateRoleV3Params{
		Body: &iamclientmodels.ModelRoleCreateV3Request{
			AdminRole:   adminRole,
			IsWildcard:  isWildcard,
			Managers:    managers,
			Members:     members,
			Permissions: permissions,
			RoleName:    roleName,
		},
	}
	createRole, badRequest, unauthorized, forbidden, err := roleService.IamService.Roles.AdminCreateRoleV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return createRole.GetPayload(), nil
}

// AdminGetRoleV3 is for admin to get the roles by roleId
func (roleService *RoleService) AdminGetRoleV3(roleId string) (*iamclientmodels.ModelRoleResponseV3, error) {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &roles.AdminGetRoleV3Params{
		RoleID: roleId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := roleService.IamService.Roles.AdminGetRoleV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminDeleteRoleV3 is for admin to delete the roles
func (roleService *RoleService) AdminDeleteRoleV3(roleId string) error {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &roles.AdminDeleteRoleV3Params{
		RoleID: roleId,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err := roleService.IamService.Roles.AdminDeleteRoleV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminUpdateRoleV3 is for admin to update existing role
func (roleService *RoleService) AdminUpdateRoleV3(roleId string, roleName *string, isWildcard *bool) (*iamclientmodels.ModelRoleResponseV3, error) {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &roles.AdminUpdateRoleV3Params{
		Body: &iamclientmodels.ModelRoleUpdateRequestV3{
			IsWildcard: isWildcard,
			RoleName:   roleName,
		},
		RoleID: roleId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := roleService.IamService.Roles.AdminUpdateRoleV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminGetRoleAdminStatusV3 is for admin to get admin status
func (roleService *RoleService) AdminGetRoleAdminStatusV3(roleId string) (*iamclientmodels.ModelRoleAdminStatusResponseV3, error) {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &roles.AdminGetRoleAdminStatusV3Params{
		RoleID: roleId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := roleService.IamService.Roles.AdminGetRoleAdminStatusV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminUpdateAdminRoleStatusV3 is for admin to update role set as admin
func (roleService *RoleService) AdminUpdateAdminRoleStatusV3(roleId string) error {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &roles.AdminUpdateAdminRoleStatusV3Params{
		RoleID: roleId,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err := roleService.IamService.Roles.AdminUpdateAdminRoleStatusV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminRemoveRoleAdminV3 is for admin to delete role admin status
func (roleService *RoleService) AdminRemoveRoleAdminV3(roleId string) error {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &roles.AdminRemoveRoleAdminV3Params{
		RoleID: roleId,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err := roleService.IamService.Roles.AdminRemoveRoleAdminV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminGetRoleManagers is for admin to get the roles by role's managers
func (roleService *RoleService) AdminGetRoleManagers(roleId string, after, before *string, limit *int64) (*iamclientmodels.ModelRoleManagersResponsesV3, error) {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &roles.AdminGetRoleManagersV3Params{
		After:  after,
		Before: before,
		Limit:  limit,
		RoleID: roleId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := roleService.IamService.Roles.AdminGetRoleManagersV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminAddRoleManagersV3 is for admin to add role by role's managers
func (roleService *RoleService) AdminAddRoleManagersV3(roleId string, managers []*iamclientmodels.AccountcommonRoleManagerV3) error {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &roles.AdminAddRoleManagersV3Params{
		Body: &iamclientmodels.ModelRoleManagersRequestV3{
			Managers: managers,
		},
		RoleID: roleId,
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err := roleService.IamService.Roles.AdminAddRoleManagersV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminRemoveRoleManagersV3 is for admin to delete assigned role by role's managers
func (roleService *RoleService) AdminRemoveRoleManagersV3(roleId string, managers []*iamclientmodels.AccountcommonRoleManagerV3) error {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &roles.AdminRemoveRoleManagersV3Params{
		Body: &iamclientmodels.ModelRoleManagersRequestV3{
			Managers: managers,
		},
		RoleID: roleId,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := roleService.IamService.Roles.AdminRemoveRoleManagersV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminGetRoleMembersV3 is for admin to get the role members
func (roleService *RoleService) AdminGetRoleMembersV3(roleId string, before, after *string, limit *int64) (*iamclientmodels.ModelRoleMembersResponseV3, error) {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &roles.AdminGetRoleMembersV3Params{
		After:  after,
		Before: before,
		Limit:  limit,
		RoleID: roleId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := roleService.IamService.Roles.AdminGetRoleMembersV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminAddRoleMembersV3 is for admin to add role by role's manager listed in members
func (roleService *RoleService) AdminAddRoleMembersV3(roleId string, managers []*iamclientmodels.AccountcommonRoleMemberV3) error {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &roles.AdminAddRoleMembersV3Params{
		Body: &iamclientmodels.ModelRoleMembersRequestV3{
			Members: managers,
		},
		RoleID: roleId,
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err := roleService.IamService.Roles.AdminAddRoleMembersV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminRemoveRoleMembersV3 is for admin to delete role by role's manager listed in members
func (roleService *RoleService) AdminRemoveRoleMembersV3(roleId string, managers []*iamclientmodels.AccountcommonRoleMemberV3) error {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &roles.AdminRemoveRoleMembersV3Params{
		Body: &iamclientmodels.ModelRoleMembersRequestV3{
			Members: managers,
		},
		RoleID: roleId,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := roleService.IamService.Roles.AdminRemoveRoleMembersV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminUpdateRolePermissionsV3 is for admin to update existing role's permission
func (roleService *RoleService) AdminUpdateRolePermissionsV3(roleId string, permissions []*iamclientmodels.AccountcommonPermissionV3) error {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &roles.AdminUpdateRolePermissionsV3Params{
		Body: &iamclientmodels.AccountcommonPermissionsV3{
			Permissions: permissions,
		},
		RoleID: roleId,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := roleService.IamService.Roles.AdminUpdateRolePermissionsV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminAddRolePermissionsV3 is for admin to add role's permission
func (roleService *RoleService) AdminAddRolePermissionsV3(roleId string, permissions []*iamclientmodels.AccountcommonPermissionV3) error {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &roles.AdminAddRolePermissionsV3Params{
		Body: &iamclientmodels.AccountcommonPermissionsV3{
			Permissions: permissions,
		},
		RoleID: roleId,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := roleService.IamService.Roles.AdminAddRolePermissionsV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminDeleteRolePermissionsV3 is for admin to delete role's permissions
func (roleService *RoleService) AdminDeleteRolePermissionsV3(roleId string, body []string) error {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &roles.AdminDeleteRolePermissionsV3Params{
		Body:   body,
		RoleID: roleId,
	}
	_, unauthorized, forbidden, notFound, err := roleService.IamService.Roles.AdminDeleteRolePermissionsV3(params, client.BearerToken(*accessToken.AccessToken))
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
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminDeleteRolePermissionV3 is for admin to delete a role's permission
func (roleService *RoleService) AdminDeleteRolePermissionV3(roleId, resource string, action int64) error {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &roles.AdminDeleteRolePermissionV3Params{
		Action:   action,
		Resource: resource,
		RoleID:   roleId,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err := roleService.IamService.Roles.AdminDeleteRolePermissionV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// PublicGetRolesV3 is for public to get the roles
func (roleService *RoleService) PublicGetRolesV3(after, before *string, isWildCard *bool, limit *int64) (*iamclientmodels.ModelRoleNamesResponseV3, error) {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &roles.PublicGetRolesV3Params{
		After:      after,
		Before:     before,
		IsWildcard: isWildCard,
		Limit:      limit,
	}
	ok, badRequest, err := roleService.IamService.Roles.PublicGetRolesV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// PublicGetRoleV3 is for public to get the roles by id
func (roleService *RoleService) PublicGetRoleV3(roleId string) (*iamclientmodels.ModelRoleResponse, error) {
	accessToken, err := roleService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &roles.PublicGetRoleV3Params{
		RoleID: roleId,
	}
	ok, badRequest, notFound, err := roleService.IamService.Roles.PublicGetRoleV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
