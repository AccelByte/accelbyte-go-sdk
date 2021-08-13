// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

// all need to be updated

type ThirdPartyCredentialService struct {
	TokenRepository repository.TokenRepository
	IamClient       *iamclient.JusticeIamService
}

func (thirdPartyCredentialService *ThirdPartyCredentialService) AddThirdPartyLoginPlatformCredentialV3(namespace string, platformID string, modelThirdPartyLoginPlatformCredentialRequest *iamclientmodels.ModelThirdPartyLoginPlatformCredentialRequest) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := thirdPartyCredentialService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &third_party_credential.AddThirdPartyLoginPlatformCredentialV3Params{
		Body:       modelThirdPartyLoginPlatformCredentialRequest,
		Namespace:  namespace,
		PlatformID: platformID,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := thirdPartyCredentialService.IamClient.ThirdPartyCredential.AddThirdPartyLoginPlatformCredentialV3(params, client.BearerToken(*accessToken.AccessToken))

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
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (thirdPartyCredentialService *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformCredentialV3(namespace string, platformID string) error {
	accessToken, err := thirdPartyCredentialService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &third_party_credential.DeleteThirdPartyLoginPlatformCredentialV3Params{
		Namespace:  namespace,
		PlatformID: platformID,
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := thirdPartyCredentialService.IamClient.ThirdPartyCredential.DeleteThirdPartyLoginPlatformCredentialV3(params, client.BearerToken(*accessToken.AccessToken))
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
		errorMsg := "Not Found"
		logrus.Error(errorMsg)
		return notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (thirdPartyCredentialService *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(namespace string) ([]*iamclientmodels.ModelPublicThirdPartyPlatformInfo, error) {
	accessToken, err := thirdPartyCredentialService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params{
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := thirdPartyCredentialService.IamClient.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(params, client.BearerToken(*accessToken.AccessToken))
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
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (thirdPartyCredentialService *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(namespace string) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := thirdPartyCredentialService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params{
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := thirdPartyCredentialService.IamClient.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(params, client.BearerToken(*accessToken.AccessToken))
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
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (thirdPartyCredentialService *ThirdPartyCredentialService) RetrieveAllThirdPartyLoginPlatformCredentialV3(namespace string) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := thirdPartyCredentialService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &third_party_credential.RetrieveAllThirdPartyLoginPlatformCredentialV3Params{
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := thirdPartyCredentialService.IamClient.ThirdPartyCredential.RetrieveAllThirdPartyLoginPlatformCredentialV3(params, client.BearerToken(*accessToken.AccessToken))
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
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (thirdPartyCredentialService *ThirdPartyCredentialService) RetrieveThirdPartyLoginPlatformCredentialV3(namespace string) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := thirdPartyCredentialService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &third_party_credential.RetrieveThirdPartyLoginPlatformCredentialV3Params{
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := thirdPartyCredentialService.IamClient.ThirdPartyCredential.RetrieveThirdPartyLoginPlatformCredentialV3(params, client.BearerToken(*accessToken.AccessToken))
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
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (thirdPartyCredentialService *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformCredentialV3(namespace string, platformID string, modelThirdPartyLoginPlatformCredentialRequest *iamclientmodels.ModelThirdPartyLoginPlatformCredentialRequest) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := thirdPartyCredentialService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &third_party_credential.UpdateThirdPartyLoginPlatformCredentialV3Params{
		Namespace:  namespace,
		PlatformID: platformID,
		Body:       modelThirdPartyLoginPlatformCredentialRequest,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := thirdPartyCredentialService.IamClient.ThirdPartyCredential.UpdateThirdPartyLoginPlatformCredentialV3(params, client.BearerToken(*accessToken.AccessToken))
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
		return nil, err
	}
	return ok.GetPayload(), nil
}
