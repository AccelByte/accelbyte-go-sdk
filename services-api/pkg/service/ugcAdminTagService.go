// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	nr "github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_admin_tag"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type AdminTagConfigService struct {
	UgcServiceClient *ugcclient.JusticeUgcService
	TokenRepository  repository.TokenRepository
}

// AdminCreateTag creates tags
func (u *AdminTagConfigService) AdminCreateTag(namespace string, body *ugcclientmodels.ModelsCreateTagRequest) (*ugcclientmodels.ModelsCreateTagResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminCreateTagParams{
		Body:      body,
		Namespace: namespace,
	}
	created, badRequest, unauthorized, conflict, internalServer, err := u.UgcServiceClient.NrAdminTag.AdminCreateTag(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
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

// AdminDeleteTag deletes tags
func (u *AdminTagConfigService) AdminDeleteTag(namespace, tagId string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &nr.AdminDeleteTagParams{
		Namespace: namespace,
		TagID:     tagId,
	}
	_, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminTag.AdminDeleteTag(params, client.BearerToken(*token.AccessToken))
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

// AdminGetTag gets tags
func (u *AdminTagConfigService) AdminGetTag(namespace string, limit, offset *string) (*ugcclientmodels.ModelsPaginatedGetTagResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminGetTagParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminTag.AdminGetTag(params, client.BearerToken(*token.AccessToken))
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

// AdminUpdateTag updates tag
func (u *AdminTagConfigService) AdminUpdateTag(namespace, tagId string, body *ugcclientmodels.ModelsCreateTagRequest) (*ugcclientmodels.ModelsCreateTagResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminUpdateTagParams{
		Body:      body,
		Namespace: namespace,
		TagID:     tagId,
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServer, err := u.UgcServiceClient.NrAdminTag.AdminUpdateTag(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
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
