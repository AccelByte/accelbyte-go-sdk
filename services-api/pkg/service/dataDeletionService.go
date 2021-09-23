// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient"
	deletion "github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type DataDeletionService struct {
	GdprServiceClient *gdprclient.JusticeGdprService
	TokenRepository   repository.TokenRepository
}

// AdminGetListDeletionDataRequest is used to retrieve all user's account deletion
func (dataDeletionService *DataDeletionService) AdminGetListDeletionDataRequest(namespace string, after, before, requestDate *string, limit, offset *int64) (*gdprclientmodels.ModelsListDeletionDataResponse, error) {
	token, err := dataDeletionService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &deletion.AdminGetListDeletionDataRequestParams{
		After:       after,
		Before:      before,
		Limit:       limit,
		Namespace:   namespace,
		Offset:      offset,
		RequestDate: requestDate,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err := dataDeletionService.GdprServiceClient.DataDeletion.AdminGetListDeletionDataRequest(params, client.BearerToken(*token.AccessToken))
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

// AdminGetUserAccountDeletionRequest is used to retrieves specific user s account deletion request
func (dataDeletionService *DataDeletionService) AdminGetUserAccountDeletionRequest(namespace, userId string) (*gdprclientmodels.ModelsDeletionData, error) {
	token, err := dataDeletionService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &deletion.AdminGetUserAccountDeletionRequestParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, forbidden, notFound, internalServer, err := dataDeletionService.GdprServiceClient.DataDeletion.AdminGetUserAccountDeletionRequest(params, client.BearerToken(*token.AccessToken))
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

// AdminSubmitUserAccountDeletionRequest is used to submits user s account deletion requests
func (dataDeletionService *DataDeletionService) AdminSubmitUserAccountDeletionRequest(namespace, userId string) (*gdprclientmodels.ModelsRequestDeleteResponse, error) {
	token, err := dataDeletionService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &deletion.AdminSubmitUserAccountDeletionRequestParams{
		Namespace: namespace,
		UserID:    userId,
	}
	created, unauthorized, forbidden, notFound, conflict, internalServer, err := dataDeletionService.GdprServiceClient.DataDeletion.AdminSubmitUserAccountDeletionRequest(params, client.BearerToken(*token.AccessToken))
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

// AdminCancelUserAccountDeletionRequest is used to cancels user s account deletion request
func (dataDeletionService *DataDeletionService) AdminCancelUserAccountDeletionRequest(namespace, userId string) error {
	token, err := dataDeletionService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &deletion.AdminCancelUserAccountDeletionRequestParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err := dataDeletionService.GdprServiceClient.DataDeletion.AdminCancelUserAccountDeletionRequest(params, client.BearerToken(*token.AccessToken))
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

// PublicSubmitUserAccountDeletionRequest is used to submits user s account deletion requests
func (dataDeletionService *DataDeletionService) PublicSubmitUserAccountDeletionRequest(namespace, userId string) (*gdprclientmodels.ModelsRequestDeleteResponse, error) {
	token, err := dataDeletionService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &deletion.PublicSubmitUserAccountDeletionRequestParams{
		Namespace: namespace,
		UserID:    userId,
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServer, err := dataDeletionService.GdprServiceClient.DataDeletion.PublicSubmitUserAccountDeletionRequest(params, client.BearerToken(*token.AccessToken))
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

// PublicCancelUserAccountDeletionRequest is used to cancels user s account deletion request
func (dataDeletionService *DataDeletionService) PublicCancelUserAccountDeletionRequest(namespace, userId string) error {
	token, err := dataDeletionService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &deletion.PublicCancelUserAccountDeletionRequestParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, forbidden, notFound, internalServer, err := dataDeletionService.GdprServiceClient.DataDeletion.PublicCancelUserAccountDeletionRequest(params, client.BearerToken(*token.AccessToken))
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

// PublicGetUserAccountDeletionStatus is used to retrieve specific user s account deletion status
func (dataDeletionService *DataDeletionService) PublicGetUserAccountDeletionStatus(namespace, userId string) (*gdprclientmodels.ModelsDeletionStatus, error) {
	token, err := dataDeletionService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &deletion.PublicGetUserAccountDeletionStatusParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, forbidden, internalServer, err := dataDeletionService.GdprServiceClient.DataDeletion.PublicGetUserAccountDeletionStatus(params, client.BearerToken(*token.AccessToken))
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
