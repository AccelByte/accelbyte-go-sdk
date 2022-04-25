// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type GroupService struct {
	Client          *groupclient.JusticeGroupService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetGroupListAdminV1Short instead
func (g *GroupService) GetGroupListAdminV1(input *group.GetGroupListAdminV1Params) (*groupclientmodels.ModelsGetGroupsListResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := g.Client.Group.GetGroupListAdminV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetSingleGroupAdminV1Short instead
func (g *GroupService) GetSingleGroupAdminV1(input *group.GetSingleGroupAdminV1Params) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.Group.GetSingleGroupAdminV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteGroupAdminV1Short instead
func (g *GroupService) DeleteGroupAdminV1(input *group.DeleteGroupAdminV1Params) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.Group.DeleteGroupAdminV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetGroupListPublicV1Short instead
func (g *GroupService) GetGroupListPublicV1(input *group.GetGroupListPublicV1Params) (*groupclientmodels.ModelsGetGroupsListResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := g.Client.Group.GetGroupListPublicV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CreateNewGroupPublicV1Short instead
func (g *GroupService) CreateNewGroupPublicV1(input *group.CreateNewGroupPublicV1Params) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := g.Client.Group.CreateNewGroupPublicV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use GetSingleGroupPublicV1Short instead
func (g *GroupService) GetSingleGroupPublicV1(input *group.GetSingleGroupPublicV1Params) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.Group.GetSingleGroupPublicV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateSingleGroupV1Short instead
func (g *GroupService) UpdateSingleGroupV1(input *group.UpdateSingleGroupV1Params) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.Group.UpdateSingleGroupV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteGroupPublicV1Short instead
func (g *GroupService) DeleteGroupPublicV1(input *group.DeleteGroupPublicV1Params) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.Group.DeleteGroupPublicV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdatePatchSingleGroupPublicV1Short instead
func (g *GroupService) UpdatePatchSingleGroupPublicV1(input *group.UpdatePatchSingleGroupPublicV1Params) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.Group.UpdatePatchSingleGroupPublicV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateGroupCustomAttributesPublicV1Short instead
func (g *GroupService) UpdateGroupCustomAttributesPublicV1(input *group.UpdateGroupCustomAttributesPublicV1Params) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.Group.UpdateGroupCustomAttributesPublicV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateGroupCustomRulePublicV1Short instead
func (g *GroupService) UpdateGroupCustomRulePublicV1(input *group.UpdateGroupCustomRulePublicV1Params) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.Group.UpdateGroupCustomRulePublicV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateGroupPredefinedRulePublicV1Short instead
func (g *GroupService) UpdateGroupPredefinedRulePublicV1(input *group.UpdateGroupPredefinedRulePublicV1Params) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.Group.UpdateGroupPredefinedRulePublicV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteGroupPredefinedRulePublicV1Short instead
func (g *GroupService) DeleteGroupPredefinedRulePublicV1(input *group.DeleteGroupPredefinedRulePublicV1Params) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.Group.DeleteGroupPredefinedRulePublicV1(input, client.BearerToken(*token.AccessToken))
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

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:GROUP [READ]'], 'authorization': []}]
func (g *GroupService) GetGroupListAdminV1Short(input *group.GetGroupListAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGetGroupsListResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.Group.GetGroupListAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:GROUP [READ]'], 'authorization': []}]
func (g *GroupService) GetSingleGroupAdminV1Short(input *group.GetSingleGroupAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGroupResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.Group.GetSingleGroupAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:GROUP:{groupId} [DELETE]'], 'authorization': []}]
func (g *GroupService) DeleteGroupAdminV1Short(input *group.DeleteGroupAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	_, err := g.Client.Group.DeleteGroupAdminV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (g *GroupService) GetGroupListPublicV1Short(input *group.GetGroupListPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGetGroupsListResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.Group.GetGroupListPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (g *GroupService) CreateNewGroupPublicV1Short(input *group.CreateNewGroupPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGroupResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	created, err := g.Client.Group.CreateNewGroupPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'authorization': []}]
func (g *GroupService) GetSingleGroupPublicV1Short(input *group.GetSingleGroupPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGroupResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.Group.GetSingleGroupPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['GROUP [UPDATE]'], 'authorization': []}]
func (g *GroupService) UpdateSingleGroupV1Short(input *group.UpdateSingleGroupV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGroupResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.Group.UpdateSingleGroupV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['GROUP [DELETE]'], 'authorization': []}]
func (g *GroupService) DeleteGroupPublicV1Short(input *group.DeleteGroupPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	_, err := g.Client.Group.DeleteGroupPublicV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['GROUP [UPDATE]'], 'authorization': []}]
func (g *GroupService) UpdatePatchSingleGroupPublicV1Short(input *group.UpdatePatchSingleGroupPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGroupResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.Group.UpdatePatchSingleGroupPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['GROUP [UPDATE]'], 'authorization': []}]
func (g *GroupService) UpdateGroupCustomAttributesPublicV1Short(input *group.UpdateGroupCustomAttributesPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGroupResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.Group.UpdateGroupCustomAttributesPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (g *GroupService) UpdateGroupCustomRulePublicV1Short(input *group.UpdateGroupCustomRulePublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGroupResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.Group.UpdateGroupCustomRulePublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['GROUP [UPDATE]'], 'authorization': []}]
func (g *GroupService) UpdateGroupPredefinedRulePublicV1Short(input *group.UpdateGroupPredefinedRulePublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGroupResponseV1, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	ok, err := g.Client.Group.UpdateGroupPredefinedRulePublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['GROUP [UPDATE]'], 'authorization': []}]
func (g *GroupService) DeleteGroupPredefinedRulePublicV1Short(input *group.DeleteGroupPredefinedRulePublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(g.TokenRepository, nil, security, "")
	}
	_, err := g.Client.Group.DeleteGroupPredefinedRulePublicV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
