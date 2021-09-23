// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient"
	retrieval "github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type DataRetrievalService struct {
	GdprServiceClient *gdprclient.JusticeGdprService
	TokenRepository   repository.TokenRepository
}

// GetAdminEmailConfiguration is used to get admin email addresses configuration
func (dataRetrieval *DataRetrievalService) GetAdminEmailConfiguration(namespace string) ([]string, error) {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &retrieval.GetAdminEmailConfigurationParams{
		Namespace: namespace,
	}
	ok, unauthorized, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.GetAdminEmailConfiguration(params, client.BearerToken(*token.AccessToken))
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
	return ok.GetPayload(), nil
}

// UpdateAdminEmailConfiguration is used to update admin email address configuration
func (dataRetrieval *DataRetrievalService) UpdateAdminEmailConfiguration(namespace string, body []string) error {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &retrieval.UpdateAdminEmailConfigurationParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.UpdateAdminEmailConfiguration(params, client.BearerToken(*token.AccessToken))
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

// SaveAdminEmailConfiguration is used to add admin email address configuration
func (dataRetrieval *DataRetrievalService) SaveAdminEmailConfiguration(namespace string, body []string) error {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &retrieval.SaveAdminEmailConfigurationParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.SaveAdminEmailConfiguration(params, client.BearerToken(*token.AccessToken))
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

// DeleteAdminEmailConfiguration is used to update admin email address configuration
func (dataRetrieval *DataRetrievalService) DeleteAdminEmailConfiguration(namespace string, emails []string) error {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &retrieval.DeleteAdminEmailConfigurationParams{
		Emails:    emails,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.DeleteAdminEmailConfiguration(params, client.BearerToken(*token.AccessToken))
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

// AdminGetListPersonalDataRequest is used to get list personal data requests
func (dataRetrieval *DataRetrievalService) AdminGetListPersonalDataRequest(namespace string, requestDate *string, limit, offset *int64) (*gdprclientmodels.ModelsListPersonalDataResponse, error) {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &retrieval.AdminGetListPersonalDataRequestParams{
		Limit:       limit,
		Namespace:   namespace,
		Offset:      offset,
		RequestDate: requestDate,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.AdminGetListPersonalDataRequest(params, client.BearerToken(*token.AccessToken))
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

// AdminGetUserPersonalDataRequests is used to get user's personal data requests
func (dataRetrieval *DataRetrievalService) AdminGetUserPersonalDataRequests(namespace, userId string, limit, offset *int64) (*gdprclientmodels.ModelsUserPersonalDataResponse, error) {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &retrieval.AdminGetUserPersonalDataRequestsParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.AdminGetUserPersonalDataRequests(params, client.BearerToken(*token.AccessToken))
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
	return ok.GetPayload(), nil
}

// AdminRequestDataRetrieval is used to submit user personal data retrieval request
func (dataRetrieval *DataRetrievalService) AdminRequestDataRetrieval(namespace, userId string, password *string) (*gdprclientmodels.ModelsDataRetrievalResponse, error) {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &retrieval.AdminRequestDataRetrievalParams{
		Namespace: namespace,
		Password:  password,
		UserID:    userId,
	}
	created, badRequest, unauthorized, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.AdminRequestDataRetrieval(params, client.BearerToken(*token.AccessToken))
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

// AdminCancelUserPersonalDataRequest is used to cancel user's personal data requests
func (dataRetrieval *DataRetrievalService) AdminCancelUserPersonalDataRequest(namespace, userId, requestDate string) error {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &retrieval.AdminCancelUserPersonalDataRequestParams{
		Namespace:   namespace,
		RequestDate: requestDate,
		UserID:      userId,
	}
	_, unauthorized, notFound, conflict, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.AdminCancelUserPersonalDataRequest(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
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

// AdminGeneratePersonalDataURL is used to generate personal data download url
func (dataRetrieval *DataRetrievalService) AdminGeneratePersonalDataURL(namespace, userId, password, requestDate string) (*gdprclientmodels.ModelsUserDataURL, error) {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &retrieval.AdminGeneratePersonalDataURLParams{
		Namespace:   namespace,
		Password:    password,
		RequestDate: requestDate,
		UserID:      userId,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.AdminGeneratePersonalDataURL(params, client.BearerToken(*token.AccessToken))
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

// PublicGetUserPersonalDataRequests is used to get user's personal data requests
func (dataRetrieval *DataRetrievalService) PublicGetUserPersonalDataRequests(namespace, userId string, limit, offset *int64) (*gdprclientmodels.ModelsUserPersonalDataResponse, error) {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &retrieval.PublicGetUserPersonalDataRequestsParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.PublicGetUserPersonalDataRequests(params, client.BearerToken(*token.AccessToken))
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
	return ok.GetPayload(), nil
}

// PublicRequestDataRetrieval is used to submit personal data retrieval request
func (dataRetrieval *DataRetrievalService) PublicRequestDataRetrieval(namespace, userId, password string) (*gdprclientmodels.ModelsDataRetrievalResponse, error) {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &retrieval.PublicRequestDataRetrievalParams{
		Namespace: namespace,
		UserID:    userId,
		Password:  password,
	}
	ok, badRequest, unauthorized, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.PublicRequestDataRetrieval(params, client.BearerToken(*token.AccessToken))
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
	return ok.GetPayload(), nil
}

// PublicCancelUserPersonalDataRequest is used to cancel user s personal data requests
func (dataRetrieval *DataRetrievalService) PublicCancelUserPersonalDataRequest(namespace, userId, requestDate string) error {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &retrieval.PublicCancelUserPersonalDataRequestParams{
		Namespace:   namespace,
		RequestDate: requestDate,
		UserID:      userId,
	}
	_, unauthorized, notFound, conflict, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.PublicCancelUserPersonalDataRequest(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
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

// PublicGeneratePersonalDataURL is used to generate personal data download url
func (dataRetrieval *DataRetrievalService) PublicGeneratePersonalDataURL(namespace, userId, password, requestDate string) (*gdprclientmodels.ModelsUserDataURL, error) {
	token, err := dataRetrieval.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &retrieval.PublicGeneratePersonalDataURLParams{
		Namespace:   namespace,
		Password:    password,
		RequestDate: requestDate,
		UserID:      userId,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := dataRetrieval.GdprServiceClient.DataRetrieval.PublicGeneratePersonalDataURL(params, client.BearerToken(*token.AccessToken))
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
