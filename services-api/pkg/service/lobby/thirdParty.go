// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/third_party"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type ThirdPartyService struct {
	Client           *lobbyclient.JusticeLobbyService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *ThirdPartyService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use AdminGetThirdPartyConfigShort instead.
func (aaa *ThirdPartyService) AdminGetThirdPartyConfig(input *third_party.AdminGetThirdPartyConfigParams) (*lobbyclientmodels.ModelsGetConfigResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.ThirdParty.AdminGetThirdPartyConfig(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminUpdateThirdPartyConfigShort instead.
func (aaa *ThirdPartyService) AdminUpdateThirdPartyConfig(input *third_party.AdminUpdateThirdPartyConfigParams) (*lobbyclientmodels.ModelsUpdateConfigResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.ThirdParty.AdminUpdateThirdPartyConfig(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminCreateThirdPartyConfigShort instead.
func (aaa *ThirdPartyService) AdminCreateThirdPartyConfig(input *third_party.AdminCreateThirdPartyConfigParams) (*lobbyclientmodels.ModelsCreateConfigResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := aaa.Client.ThirdParty.AdminCreateThirdPartyConfig(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminDeleteThirdPartyConfigShort instead.
func (aaa *ThirdPartyService) AdminDeleteThirdPartyConfig(input *third_party.AdminDeleteThirdPartyConfigParams) (string, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	noContent, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.ThirdParty.AdminDeleteThirdPartyConfig(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return "", badRequest
	}
	if unauthorized != nil {
		return "", unauthorized
	}
	if forbidden != nil {
		return "", forbidden
	}
	if internalServerError != nil {
		return "", internalServerError
	}
	if err != nil {
		return "", err
	}

	return noContent.GetPayload(), nil
}

func (aaa *ThirdPartyService) AdminGetThirdPartyConfigShort(input *third_party.AdminGetThirdPartyConfigParams) (*lobbyclientmodels.ModelsGetConfigResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ThirdParty.AdminGetThirdPartyConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ThirdPartyService) AdminUpdateThirdPartyConfigShort(input *third_party.AdminUpdateThirdPartyConfigParams) (*lobbyclientmodels.ModelsUpdateConfigResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ThirdParty.AdminUpdateThirdPartyConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ThirdPartyService) AdminCreateThirdPartyConfigShort(input *third_party.AdminCreateThirdPartyConfigParams) (*lobbyclientmodels.ModelsCreateConfigResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.ThirdParty.AdminCreateThirdPartyConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *ThirdPartyService) AdminDeleteThirdPartyConfigShort(input *third_party.AdminDeleteThirdPartyConfigParams) (string, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	noContent, err := aaa.Client.ThirdParty.AdminDeleteThirdPartyConfigShort(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return noContent.GetPayload(), nil
}
