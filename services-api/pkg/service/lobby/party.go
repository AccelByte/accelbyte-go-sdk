// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/party"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PartyService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

func (p *PartyService) AdminGetPartyDataV1(input *party.AdminGetPartyDataV1Params) (*lobbyclientmodels.ModelsPartyData, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Party.AdminGetPartyDataV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
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

func (p *PartyService) AdminGetUserPartyV1(input *party.AdminGetUserPartyV1Params) (*lobbyclientmodels.ModelsPartyData, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Party.AdminGetUserPartyV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
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

func (p *PartyService) PublicGetPartyDataV1(input *party.PublicGetPartyDataV1Params) (*lobbyclientmodels.ModelsPartyData, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Party.PublicGetPartyDataV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
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

func (p *PartyService) PublicUpdatePartyAttributesV1(input *party.PublicUpdatePartyAttributesV1Params) (*lobbyclientmodels.ModelsPartyData, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, preconditionFailed, internalServerError, err := p.Client.Party.PublicUpdatePartyAttributesV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if preconditionFailed != nil {
		return nil, preconditionFailed
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PartyService) AdminGetPartyDataV1Short(input *party.AdminGetPartyDataV1Params, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsPartyData, error) {
	ok, err := p.Client.Party.AdminGetPartyDataV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PartyService) AdminGetUserPartyV1Short(input *party.AdminGetUserPartyV1Params, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsPartyData, error) {
	ok, err := p.Client.Party.AdminGetUserPartyV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PartyService) PublicGetPartyDataV1Short(input *party.PublicGetPartyDataV1Params, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsPartyData, error) {
	ok, err := p.Client.Party.PublicGetPartyDataV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PartyService) PublicUpdatePartyAttributesV1Short(input *party.PublicUpdatePartyAttributesV1Params, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsPartyData, error) {
	ok, err := p.Client.Party.PublicUpdatePartyAttributesV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
