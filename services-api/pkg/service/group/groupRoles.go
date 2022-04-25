// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_roles"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type GroupRolesService struct {
	Client          *groupclient.JusticeGroupService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetMemberRolesListAdminV1Short instead
func (g *GroupRolesService) GetMemberRolesListAdminV1(input *group_roles.GetMemberRolesListAdminV1Params) (*groupclientmodels.ModelsGetMemberRolesListResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := g.Client.GroupRoles.GetMemberRolesListAdminV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateMemberRoleAdminV1Short instead
func (g *GroupRolesService) CreateMemberRoleAdminV1(input *group_roles.CreateMemberRoleAdminV1Params) (*groupclientmodels.ModelsCreateMemberRoleResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, internalServerError, err := g.Client.GroupRoles.CreateMemberRoleAdminV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use GetSingleMemberRoleAdminV1Short instead
func (g *GroupRolesService) GetSingleMemberRoleAdminV1(input *group_roles.GetSingleMemberRoleAdminV1Params) (*groupclientmodels.ModelsGetMemberRoleResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.GroupRoles.GetSingleMemberRoleAdminV1(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteMemberRoleAdminV1Short instead
func (g *GroupRolesService) DeleteMemberRoleAdminV1(input *group_roles.DeleteMemberRoleAdminV1Params) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.GroupRoles.DeleteMemberRoleAdminV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateMemberRoleAdminV1Short instead
func (g *GroupRolesService) UpdateMemberRoleAdminV1(input *group_roles.UpdateMemberRoleAdminV1Params) (*groupclientmodels.ModelsUpdateMemberRoleResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.GroupRoles.UpdateMemberRoleAdminV1(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateMemberRolePermissionAdminV1Short instead
func (g *GroupRolesService) UpdateMemberRolePermissionAdminV1(input *group_roles.UpdateMemberRolePermissionAdminV1Params) (*groupclientmodels.ModelsUpdateMemberRoleResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.GroupRoles.UpdateMemberRolePermissionAdminV1(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetMemberRolesListPublicV1Short instead
func (g *GroupRolesService) GetMemberRolesListPublicV1(input *group_roles.GetMemberRolesListPublicV1Params) (*groupclientmodels.ModelsGetMemberRolesListResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := g.Client.GroupRoles.GetMemberRolesListPublicV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateMemberRolePublicV1Short instead
func (g *GroupRolesService) UpdateMemberRolePublicV1(input *group_roles.UpdateMemberRolePublicV1Params) (*groupclientmodels.ModelsGetUserGroupInformationResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.GroupRoles.UpdateMemberRolePublicV1(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteMemberRolePublicV1Short instead
func (g *GroupRolesService) DeleteMemberRolePublicV1(input *group_roles.DeleteMemberRolePublicV1Params) (*groupclientmodels.ModelsUpdateMemberRoleResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, unprocessableEntity, internalServerError, err := g.Client.GroupRoles.DeleteMemberRolePublicV1(input, client.BearerToken(*token.AccessToken))
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
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:GROUP:ROLE [READ]'], 'authorization': []}]
func (g *GroupRolesService) GetMemberRolesListAdminV1Short(input *group_roles.GetMemberRolesListAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGetMemberRolesListResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.GroupRoles.GetMemberRolesListAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:GROUP:ROLE [CREATE]'], 'authorization': []}]
func (g *GroupRolesService) CreateMemberRoleAdminV1Short(input *group_roles.CreateMemberRoleAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsCreateMemberRoleResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	created, err := g.Client.GroupRoles.CreateMemberRoleAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:GROUP:ROLE [READ]'], 'authorization': []}]
func (g *GroupRolesService) GetSingleMemberRoleAdminV1Short(input *group_roles.GetSingleMemberRoleAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGetMemberRoleResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.GroupRoles.GetSingleMemberRoleAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:GROUP:ROLE [DELETE]'], 'authorization': []}]
func (g *GroupRolesService) DeleteMemberRoleAdminV1Short(input *group_roles.DeleteMemberRoleAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	_, err := g.Client.GroupRoles.DeleteMemberRoleAdminV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:GROUP:ROLE [UPDATE]'], 'authorization': []}]
func (g *GroupRolesService) UpdateMemberRoleAdminV1Short(input *group_roles.UpdateMemberRoleAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsUpdateMemberRoleResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.GroupRoles.UpdateMemberRoleAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:GROUP:ROLE [UPDATE]'], 'authorization': []}]
func (g *GroupRolesService) UpdateMemberRolePermissionAdminV1Short(input *group_roles.UpdateMemberRolePermissionAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsUpdateMemberRoleResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.GroupRoles.UpdateMemberRolePermissionAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (g *GroupRolesService) GetMemberRolesListPublicV1Short(input *group_roles.GetMemberRolesListPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGetMemberRolesListResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.GroupRoles.GetMemberRolesListPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (g *GroupRolesService) UpdateMemberRolePublicV1Short(input *group_roles.UpdateMemberRolePublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGetUserGroupInformationResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.GroupRoles.UpdateMemberRolePublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (g *GroupRolesService) DeleteMemberRolePublicV1Short(input *group_roles.DeleteMemberRolePublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsUpdateMemberRoleResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.GroupRoles.DeleteMemberRolePublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
