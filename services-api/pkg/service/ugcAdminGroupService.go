// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	nr "github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_admin_group"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type AdminGroupConfigService struct {
	UgcServiceClient *ugcclient.JusticeUgcService
	TokenRepository  repository.TokenRepository
}

// AdminCreateGroup creates groups
func (u *AdminGroupConfigService) AdminCreateGroup(namespace string, body *ugcclientmodels.ModelsCreateGroupRequest) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminCreateGroupParams{
		Body:      body,
		Namespace: namespace,
	}
	created, badRequest, unauthorized, internalServer, err := u.UgcServiceClient.NrAdminGroup.AdminCreateGroup(params, client.BearerToken(*token.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// AdminDeleteGroup deletes group
func (u *AdminGroupConfigService) AdminDeleteGroup(namespace, userId, groupId string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &nr.AdminDeleteGroupParams{
		GroupID:   groupId,
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, internalServer, err := u.UgcServiceClient.NrAdminGroup.AdminDeleteGroup(params, client.BearerToken(*token.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminGetAllGroups gets all user groups
func (u *AdminGroupConfigService) AdminGetAllGroups(namespace, userId string, limit, offset *string) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminGetAllGroupsParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		UserID:    userId,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminGroup.AdminGetAllGroups(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminGetGroup gets specific user group
func (u *AdminGroupConfigService) AdminGetGroup(namespace, userId, groupId string) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminGetGroupParams{
		GroupID:   groupId,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminGroup.AdminGetGroup(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminGetGroupContents gets contents belong to a group
func (u *AdminGroupConfigService) AdminGetGroupContents(namespace, userId, groupId string, limit, offset *string) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminGetGroupContentsParams{
		GroupID:   groupId,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		UserID:    userId,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminGroup.AdminGetGroupContents(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminUpdateGroup updates group
func (u *AdminGroupConfigService) AdminUpdateGroup(namespace, userId, groupId string, body *ugcclientmodels.ModelsCreateGroupRequest) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminUpdateGroupParams{
		Body:      body,
		GroupID:   groupId,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminGroup.AdminUpdateGroup(params, client.BearerToken(*token.AccessToken))
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SingleAdminDeleteGroup deletes group
func (u *AdminGroupConfigService) SingleAdminDeleteGroup(namespace, groupId string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &nr.SingleAdminDeleteGroupParams{
		GroupID:   groupId,
		Namespace: namespace,
	}
	_, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminGroup.SingleAdminDeleteGroup(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// SingleAdminGetAllGroups gets all user groups
func (u *AdminGroupConfigService) SingleAdminGetAllGroups(namespace string, limit, offset *string) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.SingleAdminGetAllGroupsParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminGroup.SingleAdminGetAllGroups(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SingleAdminGetGroup gets specific user group
func (u *AdminGroupConfigService) SingleAdminGetGroup(namespace, groupId string) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.SingleAdminGetGroupParams{
		GroupID:   groupId,
		Namespace: namespace,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminGroup.SingleAdminGetGroup(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SingleAdminGetGroupContents gets contents belong to a group
func (u *AdminGroupConfigService) SingleAdminGetGroupContents(namespace, groupId string, limit, offset *string) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.SingleAdminGetGroupContentsParams{
		GroupID:   groupId,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminGroup.SingleAdminGetGroupContents(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SingleAdminUpdateGroup updates group
func (u *AdminGroupConfigService) SingleAdminUpdateGroup(namespace, groupId string, body *ugcclientmodels.ModelsCreateGroupRequest) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.SingleAdminUpdateGroupParams{
		Body:      body,
		GroupID:   groupId,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminGroup.SingleAdminUpdateGroup(params, client.BearerToken(*token.AccessToken))
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
