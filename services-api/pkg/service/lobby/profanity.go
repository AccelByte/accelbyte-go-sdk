// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type ProfanityService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminDebugProfanityFiltersShort instead
func (p *ProfanityService) AdminDebugProfanityFilters(input *profanity.AdminDebugProfanityFiltersParams) ([]*lobbyclientmodels.ModelsProfanityFilter, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminDebugProfanityFilters(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminGetProfanityListFiltersV1Short instead
func (p *ProfanityService) AdminGetProfanityListFiltersV1(input *profanity.AdminGetProfanityListFiltersV1Params) (*lobbyclientmodels.ModelsAdminGetProfanityListFiltersV1Response, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminGetProfanityListFiltersV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminAddProfanityFilterIntoListShort instead
func (p *ProfanityService) AdminAddProfanityFilterIntoList(input *profanity.AdminAddProfanityFilterIntoListParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminAddProfanityFilterIntoList(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AdminAddProfanityFiltersShort instead
func (p *ProfanityService) AdminAddProfanityFilters(input *profanity.AdminAddProfanityFiltersParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminAddProfanityFilters(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AdminImportProfanityFiltersFromFileShort instead
func (p *ProfanityService) AdminImportProfanityFiltersFromFile(input *profanity.AdminImportProfanityFiltersFromFileParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminImportProfanityFiltersFromFile(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AdminDeleteProfanityFilterShort instead
func (p *ProfanityService) AdminDeleteProfanityFilter(input *profanity.AdminDeleteProfanityFilterParams) ([]*lobbyclientmodels.ModelsProfanityFilter, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminDeleteProfanityFilter(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminGetProfanityListsShort instead
func (p *ProfanityService) AdminGetProfanityLists(input *profanity.AdminGetProfanityListsParams) ([]*lobbyclientmodels.ModelsAdminGetProfanityListsListResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminGetProfanityLists(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminCreateProfanityListShort instead
func (p *ProfanityService) AdminCreateProfanityList(input *profanity.AdminCreateProfanityListParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminCreateProfanityList(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AdminUpdateProfanityListShort instead
func (p *ProfanityService) AdminUpdateProfanityList(input *profanity.AdminUpdateProfanityListParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminUpdateProfanityList(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AdminDeleteProfanityListShort instead
func (p *ProfanityService) AdminDeleteProfanityList(input *profanity.AdminDeleteProfanityListParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminDeleteProfanityList(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AdminGetProfanityRuleShort instead
func (p *ProfanityService) AdminGetProfanityRule(input *profanity.AdminGetProfanityRuleParams) (*lobbyclientmodels.ModelsProfanityRule, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminGetProfanityRule(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminSetProfanityRuleForNamespaceShort instead
func (p *ProfanityService) AdminSetProfanityRuleForNamespace(input *profanity.AdminSetProfanityRuleForNamespaceParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminSetProfanityRuleForNamespace(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AdminVerifyMessageProfanityResponseShort instead
func (p *ProfanityService) AdminVerifyMessageProfanityResponse(input *profanity.AdminVerifyMessageProfanityResponseParams) (*lobbyclientmodels.ModelsAdminVerifyMessageProfanityResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminVerifyMessageProfanityResponse(input, client.BearerToken(*accessToken.AccessToken))
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

func (p *ProfanityService) AdminDebugProfanityFiltersShort(input *profanity.AdminDebugProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelsProfanityFilter, error) {
	ok, err := p.Client.Profanity.AdminDebugProfanityFiltersShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *ProfanityService) AdminGetProfanityListFiltersV1Short(input *profanity.AdminGetProfanityListFiltersV1Params, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsAdminGetProfanityListFiltersV1Response, error) {
	ok, err := p.Client.Profanity.AdminGetProfanityListFiltersV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *ProfanityService) AdminAddProfanityFilterIntoListShort(input *profanity.AdminAddProfanityFilterIntoListParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.Profanity.AdminAddProfanityFilterIntoListShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *ProfanityService) AdminAddProfanityFiltersShort(input *profanity.AdminAddProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.Profanity.AdminAddProfanityFiltersShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *ProfanityService) AdminImportProfanityFiltersFromFileShort(input *profanity.AdminImportProfanityFiltersFromFileParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.Profanity.AdminImportProfanityFiltersFromFileShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *ProfanityService) AdminDeleteProfanityFilterShort(input *profanity.AdminDeleteProfanityFilterParams, authInfo runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelsProfanityFilter, error) {
	ok, err := p.Client.Profanity.AdminDeleteProfanityFilterShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *ProfanityService) AdminGetProfanityListsShort(input *profanity.AdminGetProfanityListsParams, authInfo runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelsAdminGetProfanityListsListResponse, error) {
	ok, err := p.Client.Profanity.AdminGetProfanityListsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *ProfanityService) AdminCreateProfanityListShort(input *profanity.AdminCreateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.Profanity.AdminCreateProfanityListShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *ProfanityService) AdminUpdateProfanityListShort(input *profanity.AdminUpdateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.Profanity.AdminUpdateProfanityListShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *ProfanityService) AdminDeleteProfanityListShort(input *profanity.AdminDeleteProfanityListParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.Profanity.AdminDeleteProfanityListShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *ProfanityService) AdminGetProfanityRuleShort(input *profanity.AdminGetProfanityRuleParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsProfanityRule, error) {
	ok, err := p.Client.Profanity.AdminGetProfanityRuleShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *ProfanityService) AdminSetProfanityRuleForNamespaceShort(input *profanity.AdminSetProfanityRuleForNamespaceParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.Profanity.AdminSetProfanityRuleForNamespaceShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *ProfanityService) AdminVerifyMessageProfanityResponseShort(input *profanity.AdminVerifyMessageProfanityResponseParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsAdminVerifyMessageProfanityResponse, error) {
	ok, err := p.Client.Profanity.AdminVerifyMessageProfanityResponseShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
