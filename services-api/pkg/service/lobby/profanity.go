// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type ProfanityService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminDebugProfanityFiltersShort instead
func (p *ProfanityService) AdminDebugProfanityFilters(input *profanity.AdminDebugProfanityFiltersParams) ([]*lobbyclientmodels.ModelsProfanityFilter, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminDebugProfanityFilters(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminGetProfanityListFiltersV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminAddProfanityFilterIntoList(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminAddProfanityFilters(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminImportProfanityFiltersFromFile(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminDeleteProfanityFilter(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminGetProfanityLists(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminCreateProfanityList(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminUpdateProfanityList(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminDeleteProfanityList(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminGetProfanityRule(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminSetProfanityRuleForNamespace(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Profanity.AdminVerifyMessageProfanityResponse(input, client.BearerToken(*token.AccessToken))
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

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminDebugProfanityFiltersShort(input *profanity.AdminDebugProfanityFiltersParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelsProfanityFilter, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Profanity.AdminDebugProfanityFiltersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminGetProfanityListFiltersV1Short(input *profanity.AdminGetProfanityListFiltersV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsAdminGetProfanityListFiltersV1Response, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Profanity.AdminGetProfanityListFiltersV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [CREATE]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminAddProfanityFilterIntoListShort(input *profanity.AdminAddProfanityFilterIntoListParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.Profanity.AdminAddProfanityFilterIntoListShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [CREATE]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminAddProfanityFiltersShort(input *profanity.AdminAddProfanityFiltersParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.Profanity.AdminAddProfanityFiltersShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [CREATE]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminImportProfanityFiltersFromFileShort(input *profanity.AdminImportProfanityFiltersFromFileParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.Profanity.AdminImportProfanityFiltersFromFileShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [DELETE]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminDeleteProfanityFilterShort(input *profanity.AdminDeleteProfanityFilterParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelsProfanityFilter, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Profanity.AdminDeleteProfanityFilterShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminGetProfanityListsShort(input *profanity.AdminGetProfanityListsParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelsAdminGetProfanityListsListResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Profanity.AdminGetProfanityListsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [CREATE]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminCreateProfanityListShort(input *profanity.AdminCreateProfanityListParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.Profanity.AdminCreateProfanityListShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [UPDATE]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminUpdateProfanityListShort(input *profanity.AdminUpdateProfanityListParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.Profanity.AdminUpdateProfanityListShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [DELETE]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminDeleteProfanityListShort(input *profanity.AdminDeleteProfanityListParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.Profanity.AdminDeleteProfanityListShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminGetProfanityRuleShort(input *profanity.AdminGetProfanityRuleParams, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsProfanityRule, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Profanity.AdminGetProfanityRuleShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [UPDATE]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminSetProfanityRuleForNamespaceShort(input *profanity.AdminSetProfanityRuleForNamespaceParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.Profanity.AdminSetProfanityRuleForNamespaceShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:PROFANITY [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (p *ProfanityService) AdminVerifyMessageProfanityResponseShort(input *profanity.AdminVerifyMessageProfanityResponseParams, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsAdminVerifyMessageProfanityResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Profanity.AdminVerifyMessageProfanityResponseShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
