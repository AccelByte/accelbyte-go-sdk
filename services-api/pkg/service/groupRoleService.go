package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_roles"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type GroupRoleConfigService struct {
	GroupClient     *groupclient.JusticeGroupService
	TokenRepository repository.TokenRepository
}

func (s *GroupRoleConfigService) GetMemberRolesListAdminV1(namespace string, limit, offset *int64) (*groupclientmodels.ModelsGetMemberRolesListResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group_roles.GetMemberRolesListAdminV1Params{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := s.GroupClient.GroupRoles.GetMemberRolesListAdminV1(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *GroupRoleConfigService) CreateMemberRoleAdminV1(namespace string, content *groupclientmodels.ModelsCreateMemberRoleRequestV1) (*groupclientmodels.ModelsCreateMemberRoleResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group_roles.CreateMemberRoleAdminV1Params{
		Body:      content,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := s.GroupClient.GroupRoles.CreateMemberRoleAdminV1(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *GroupRoleConfigService) GetSingleMemberRoleAdminV1(namespace, memberRoleId string) (*groupclientmodels.ModelsGetMemberRoleResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group_roles.GetSingleMemberRoleAdminV1Params{
		MemberRoleID: memberRoleId,
		Namespace:    namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.GroupRoles.GetSingleMemberRoleAdminV1(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *GroupRoleConfigService) DeleteMemberRoleAdminV1(namespace, memberRoleId string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &group_roles.DeleteMemberRoleAdminV1Params{
		MemberRoleID: memberRoleId,
		Namespace:    namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.GroupRoles.DeleteMemberRoleAdminV1(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *GroupRoleConfigService) UpdateMemberRoleAdminV1(namespace, memberRoleId string, content *groupclientmodels.ModelsUpdateMemberRoleRequestV1) (*groupclientmodels.ModelsUpdateMemberRoleResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group_roles.UpdateMemberRoleAdminV1Params{
		Body:         content,
		MemberRoleID: memberRoleId,
		Namespace:    namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.GroupRoles.UpdateMemberRoleAdminV1(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *GroupRoleConfigService) UpdateMemberRolePermissionAdminV1(namespace, memberRoleId string, content *groupclientmodels.ModelsUpdateMemberRolePermissionsRequestV1) (*groupclientmodels.ModelsUpdateMemberRoleResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group_roles.UpdateMemberRolePermissionAdminV1Params{
		Body:         content,
		MemberRoleID: memberRoleId,
		Namespace:    namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.GroupRoles.UpdateMemberRolePermissionAdminV1(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *GroupRoleConfigService) PublicGetMemberRolesListV1(namespace string, limit, offset *int64) (*groupclientmodels.ModelsGetMemberRolesListResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group_roles.GetMemberRolesListPublicV1Params{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := s.GroupClient.GroupRoles.GetMemberRolesListPublicV1(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *GroupRoleConfigService) PublicAssignRoleToGroupMemberAdminV1(namespace, memberRoleId string, content *groupclientmodels.ModelsAssignRoleToMemberRequestV1) (*groupclientmodels.ModelsUpdateMemberRoleResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group_roles.AssignRoleToGroupMemberAdminV1Params{
		Body:         content,
		MemberRoleID: memberRoleId,
		Namespace:    namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.GroupRoles.AssignRoleToGroupMemberAdminV1(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
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

func (s *GroupRoleConfigService) PublicDeleteMemberRoleV1(namespace, memberRoleId string, content *groupclientmodels.ModelsRemoveRoleFromMemberRequestV1) (*groupclientmodels.ModelsUpdateMemberRoleResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group_roles.DeleteMemberRolePublicV1Params{
		Body:         content,
		MemberRoleID: memberRoleId,
		Namespace:    namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.GroupRoles.DeleteMemberRolePublicV1(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
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
