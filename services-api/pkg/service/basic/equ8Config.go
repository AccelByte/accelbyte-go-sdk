// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package basic

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/e_q_u8_config"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type EQU8ConfigService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

func (e *EQU8ConfigService) GetConfig(input *e_q_u8_config.GetConfigParams) (*basicclientmodels.Equ8Config, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := e.Client.EqU8Config.GetConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EQU8ConfigService) DeleteConfig(input *e_q_u8_config.DeleteConfigParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = e.Client.EqU8Config.DeleteConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (e *EQU8ConfigService) UpdateConfig(input *e_q_u8_config.UpdateConfigParams) (*basicclientmodels.Equ8Config, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := e.Client.EqU8Config.UpdateConfig(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EQU8ConfigService) GetConfigShort(input *e_q_u8_config.GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.Equ8Config, error) {
	ok, err := e.Client.EqU8Config.GetConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EQU8ConfigService) DeleteConfigShort(input *e_q_u8_config.DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := e.Client.EqU8Config.DeleteConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (e *EQU8ConfigService) UpdateConfigShort(input *e_q_u8_config.UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.Equ8Config, error) {
	ok, err := e.Client.EqU8Config.UpdateConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
