// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package basic

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/e_q_u8_config"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type EQU8ConfigService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetConfigShort instead
func (e *EQU8ConfigService) GetConfig(input *e_q_u8_config.GetConfigParams) (*basicclientmodels.Equ8Config, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := e.Client.EqU8Config.GetConfig(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteConfigShort instead
func (e *EQU8ConfigService) DeleteConfig(input *e_q_u8_config.DeleteConfigParams) error {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = e.Client.EqU8Config.DeleteConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateConfigShort instead
func (e *EQU8ConfigService) UpdateConfig(input *e_q_u8_config.UpdateConfigParams) (*basicclientmodels.Equ8Config, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := e.Client.EqU8Config.UpdateConfig(input, client.BearerToken(*token.AccessToken))
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

func (e *EQU8ConfigService) GetConfigShort(input *e_q_u8_config.GetConfigParams) (*basicclientmodels.Equ8Config, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EqU8Config.GetConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EQU8ConfigService) DeleteConfigShort(input *e_q_u8_config.DeleteConfigParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := e.Client.EqU8Config.DeleteConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (e *EQU8ConfigService) UpdateConfigShort(input *e_q_u8_config.UpdateConfigParams) (*basicclientmodels.Equ8Config, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.EqU8Config.UpdateConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
