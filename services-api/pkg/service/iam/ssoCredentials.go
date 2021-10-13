// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

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
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

func (s *SSOCredService) AddSSOLoginPlatformCredential(input *s_s_o_credential.AddSSOLoginPlatformCredentialParams) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, internalServerError, err := s.Client.SsoCredential.AddSSOLoginPlatformCredential(input, client.BearerToken(*token.AccessToken))
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
	return created.GetPayload(), nil
}

func (s *SSOCredService) DeleteSSOLoginPlatformCredentialV3(input *s_s_o_credential.DeleteSSOLoginPlatformCredentialV3Params) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := s.Client.SsoCredential.DeleteSSOLoginPlatformCredentialV3(input, client.BearerToken(*token.AccessToken))
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

func (s *SSOCredService) RetrieveAllSSOLoginPlatformCredentialV3(input *s_s_o_credential.RetrieveAllSSOLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := s.Client.SsoCredential.RetrieveAllSSOLoginPlatformCredentialV3(input, client.BearerToken(*token.AccessToken))
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

func (s *SSOCredService) RetrieveSSOLoginPlatformCredential(input *s_s_o_credential.RetrieveSSOLoginPlatformCredentialParams) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := s.Client.SsoCredential.RetrieveSSOLoginPlatformCredential(input, client.BearerToken(*token.AccessToken))
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

func (s *SSOCredService) UpdateSSOPlatformCredential(input *s_s_o_credential.UpdateSSOPlatformCredentialParams) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.Client.SsoCredential.UpdateSSOPlatformCredential(input, client.BearerToken(*token.AccessToken))
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
