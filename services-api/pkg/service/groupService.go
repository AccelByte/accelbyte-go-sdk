package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type GroupService struct {
	GroupClient     *groupclient.JusticeGroupService
	TokenRepository repository.TokenRepository
}

func (s *GroupService) GetGroupListAdminV1(namespace string, groupName, groupRegion, configCode *string, limit, offset *int64) (*groupclientmodels.ModelsGetGroupsListResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group.GetGroupListAdminV1Params{
		ConfigurationCode: configCode,
		GroupName:         groupName,
		GroupRegion:       groupRegion,
		Limit:             limit,
		Namespace:         namespace,
		Offset:            offset,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := s.GroupClient.Group.GetGroupListAdminV1(params, client.BearerToken(*token.AccessToken))
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

func (s *GroupService) GetSingleGroupAdminV1(namespace, groupId string) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group.GetSingleGroupAdminV1Params{
		GroupID:   groupId,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.Group.GetSingleGroupAdminV1(params, client.BearerToken(*token.AccessToken))
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

func (s *GroupService) DeleteGroupAdminV1(namespace, groupId string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &group.DeleteGroupAdminV1Params{
		GroupID:   groupId,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.Group.DeleteGroupAdminV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
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

func (s *GroupService) PublicGetGroupListV1(namespace string, groupName, groupRegion *string, limit, offset *int64) (*groupclientmodels.ModelsGetGroupsListResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group.GetGroupListPublicV1Params{
		GroupName:   groupName,
		GroupRegion: groupRegion,
		Limit:       limit,
		Namespace:   namespace,
		Offset:      offset,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := s.GroupClient.Group.GetGroupListPublicV1(params, client.BearerToken(*token.AccessToken))
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

func (s *GroupService) PublicCreateNewGroupV1(namespace string, content *groupclientmodels.ModelsPublicCreateNewGroupRequestV1) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &group.CreateNewGroupPublicV1Params{
		Body:      content,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, conflict, internalServerError, err := s.GroupClient.Group.CreateNewGroupPublicV1(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
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

func (s *GroupService) PublicGetSingleGroupV1(namespace, groupId string) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group.GetSingleGroupPublicV1Params{
		GroupID:   groupId,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.Group.GetSingleGroupPublicV1(params, client.BearerToken(*token.AccessToken))
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

func (s *GroupService) PublicUpdateSingleGroupV1(namespace, groupId string, content *groupclientmodels.ModelsUpdateGroupRequestV1) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group.UpdateSingleGroupPublicV1Params{
		Body:      content,
		GroupID:   groupId,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.Group.UpdateSingleGroupPublicV1(params, client.BearerToken(*token.AccessToken))
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

func (s *GroupService) PublicDeleteGroupV1(namespace, groupId string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &group.DeleteGroupPublicV1Params{
		GroupID:   groupId,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.Group.DeleteGroupPublicV1(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
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

func (s *GroupService) PublicUpdateSingleGroupPartialV1(namespace, groupId string, content *groupclientmodels.ModelsUpdateGroupRequestV1) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group.UpdateSingleGroupPartialPublicV1Params{
		Body:      content,
		GroupID:   groupId,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.Group.UpdateSingleGroupPartialPublicV1(params, client.BearerToken(*token.AccessToken))
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

func (s *GroupService) PublicUpdateGroupCustomAttributesV1(namespace, groupId string, content *groupclientmodels.ModelsUpdateGroupCustomAttributesRequestV1) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group.UpdateGroupCustomAttributesPublicV1Params{
		Body:      content,
		GroupID:   groupId,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.Group.UpdateGroupCustomAttributesPublicV1(params, client.BearerToken(*token.AccessToken))
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

func (s *GroupService) PublicUpdateGroupCustomRuleV1(namespace, groupId string, content *groupclientmodels.ModelsUpdateGroupCustomRuleRequestV1) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group.UpdateGroupCustomRulePublicV1Params{
		Body:      content,
		GroupID:   groupId,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.Group.UpdateGroupCustomRulePublicV1(params, client.BearerToken(*token.AccessToken))
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

func (s *GroupService) PublicUpdateGroupPredefinedRuleV1(namespace, groupId, allowedAction string, content *groupclientmodels.ModelsUpdateGroupPredefinedRuleRequestV1) (*groupclientmodels.ModelsGroupResponseV1, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &group.UpdateGroupPredefinedRulePublicV1Params{
		AllowedAction: allowedAction,
		Body:          content,
		GroupID:       groupId,
		Namespace:     namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.Group.UpdateGroupPredefinedRulePublicV1(params, client.BearerToken(*token.AccessToken))
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

func (s *GroupService) PublicDeleteGroupPredefinedRuleV1(namespace, groupId, allowedAction string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &group.DeleteGroupPredefinedRulePublicV1Params{
		AllowedAction: allowedAction,
		GroupID:       groupId,
		Namespace:     namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.GroupClient.Group.DeleteGroupPredefinedRulePublicV1(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
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
