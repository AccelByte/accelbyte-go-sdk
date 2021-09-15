// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_credential"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type SSOCredService struct {
	IamService      *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

func (s SSOCredService) AddSSOLoginPlatformCredentialV3(body *iamclientmodels.ModelSSOPlatformCredentialRequest, namespace string, platformID string) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &s_s_o_credential.AddSSOLoginPlatformCredentialParams{
		Body:       body,
		Namespace:  namespace,
		PlatformID: platformID,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := s.IamService.SsoCredential.AddSSOLoginPlatformCredential(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg := "unauthorized"
		logrus.Error(errorMsg)
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg := "forbidden"
		logrus.Error(errorMsg)
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

func (s SSOCredService) DeleteSSOLoginPlatformCredentialV3(namespace string, platformID string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &s_s_o_credential.DeleteSSOLoginPlatformCredentialV3Params{
		Namespace:  namespace,
		PlatformID: platformID,
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := s.IamService.SsoCredential.DeleteSSOLoginPlatformCredentialV3(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg := "unauthorized"
		logrus.Error(errorMsg)
		return unauthorized
	}
	if forbidden != nil {
		errorMsg := "forbidden"
		logrus.Error(errorMsg)
		return forbidden
	}
	if notFound != nil {
		errorMsg := "not found"
		logrus.Error(errorMsg)
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

func (s SSOCredService) RetrieveAllSSOLoginPlatformCredentialV3(limit *int64, namespace string, offset *string) ([]*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &s_s_o_credential.RetrieveAllSSOLoginPlatformCredentialV3Params{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := s.IamService.SsoCredential.RetrieveAllSSOLoginPlatformCredentialV3(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg := "unauthorized"
		logrus.Error(errorMsg)
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg := "forbidden"
		logrus.Error(errorMsg)
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

func (s SSOCredService) RetrieveSSOLoginPlatformCredentialV3(namespace string, platformID string) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &s_s_o_credential.RetrieveSSOLoginPlatformCredentialParams{
		Namespace:  namespace,
		PlatformID: platformID,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := s.IamService.SsoCredential.RetrieveSSOLoginPlatformCredential(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg := "unauthorized"
		logrus.Error(errorMsg)
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg := "forbidden"
		logrus.Error(errorMsg)
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

func (s SSOCredService) UpdateSSOLoginPlatformCredentialV3(body *iamclientmodels.ModelSSOPlatformCredentialRequest, namespace string, platformID string) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &s_s_o_credential.UpdateSSOPlatformCredentialParams{
		Body:       body,
		Namespace:  namespace,
		PlatformID: platformID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.IamService.SsoCredential.UpdateSSOPlatformCredential(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg := "unauthorized"
		logrus.Error(errorMsg)
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg := "forbidden"
		logrus.Error(errorMsg)
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
