// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/third_party"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type ThirdPartyService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

func (t *ThirdPartyService) AdminGetThirdPartyConfig(input *third_party.AdminGetThirdPartyConfigParams) (*lobbyclientmodels.ModelsGetConfigResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := t.Client.ThirdParty.AdminGetThirdPartyConfig(input, client.BearerToken(*accessToken.AccessToken))
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

func (t *ThirdPartyService) AdminUpdateThirdPartyConfig(input *third_party.AdminUpdateThirdPartyConfigParams) (*lobbyclientmodels.ModelsUpdateConfigResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := t.Client.ThirdParty.AdminUpdateThirdPartyConfig(input, client.BearerToken(*accessToken.AccessToken))
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

func (t *ThirdPartyService) AdminCreateThirdPartyConfig(input *third_party.AdminCreateThirdPartyConfigParams) (*lobbyclientmodels.ModelsCreateConfigResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, internalServerError, err := t.Client.ThirdParty.AdminCreateThirdPartyConfig(input, client.BearerToken(*accessToken.AccessToken))
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
	return created.GetPayload(), nil
}

func (t *ThirdPartyService) AdminDeleteThirdPartyConfig(input *third_party.AdminDeleteThirdPartyConfigParams) (string, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	noContent, badRequest, unauthorized, forbidden, internalServerError, err := t.Client.ThirdParty.AdminDeleteThirdPartyConfig(input, client.BearerToken(*accessToken.AccessToken))
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

func (t *ThirdPartyService) AdminGetThirdPartyConfigShort(input *third_party.AdminGetThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsGetConfigResponse, error) {
	ok, err := t.Client.ThirdParty.AdminGetThirdPartyConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (t *ThirdPartyService) AdminUpdateThirdPartyConfigShort(input *third_party.AdminUpdateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsUpdateConfigResponse, error) {
	ok, err := t.Client.ThirdParty.AdminUpdateThirdPartyConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (t *ThirdPartyService) AdminCreateThirdPartyConfigShort(input *third_party.AdminCreateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsCreateConfigResponse, error) {
	created, err := t.Client.ThirdParty.AdminCreateThirdPartyConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (t *ThirdPartyService) AdminDeleteThirdPartyConfigShort(input *third_party.AdminDeleteThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (string, error) {
	noContent, err := t.Client.ThirdParty.AdminDeleteThirdPartyConfigShort(input, authInfo)
	if err != nil {
		return "", err
	}
	return noContent.GetPayload(), nil
}
