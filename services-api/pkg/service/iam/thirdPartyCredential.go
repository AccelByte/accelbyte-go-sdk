// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type ThirdPartyCredentialService struct {
	Client    repository.TokenRepository
	IamClient *iamclient.JusticeIamService
}

func (t *ThirdPartyCredentialService) AddThirdPartyLoginPlatformCredentialV3(input *third_party_credential.AddThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.Client.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := t.IamClient.ThirdPartyCredential.AddThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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

func (t *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformCredentialV3(input *third_party_credential.DeleteThirdPartyLoginPlatformCredentialV3Params) error {
	accessToken, err := t.Client.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := t.IamClient.ThirdPartyCredential.DeleteThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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

func (t *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params) ([]*iamclientmodels.ModelPublicThirdPartyPlatformInfo, error) {
	accessToken, err := t.Client.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := t.IamClient.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(input, client.BearerToken(*accessToken.AccessToken))
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

func (t *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.Client.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := t.IamClient.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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

func (t *ThirdPartyCredentialService) RetrieveAllThirdPartyLoginPlatformCredentialV3(input *third_party_credential.RetrieveAllThirdPartyLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.Client.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := t.IamClient.ThirdPartyCredential.RetrieveAllThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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

func (t *ThirdPartyCredentialService) RetrieveThirdPartyLoginPlatformCredentialV3(input *third_party_credential.RetrieveThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.Client.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := t.IamClient.ThirdPartyCredential.RetrieveThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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

func (t *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformCredentialV3(input *third_party_credential.UpdateThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.Client.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := t.IamClient.ThirdPartyCredential.UpdateThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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
