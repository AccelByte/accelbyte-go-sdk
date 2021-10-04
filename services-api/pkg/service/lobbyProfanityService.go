package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type LobbyProfanityService struct {
	LobbyClient     *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

func (l *LobbyProfanityService) AdminAddProfanityFilterIntoList(body *lobbyclientmodels.ModelsAdminAddProfanityFilterIntoListRequest, list, namespace string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &profanity.AdminAddProfanityFilterIntoListParams{
		Body:      body,
		List:      list,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminAddProfanityFilterIntoList(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminAddProfanityFilters(body *lobbyclientmodels.ModelsAdminAddProfanityFiltersRequest, list, namespace string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &profanity.AdminAddProfanityFiltersParams{
		Body:      body,
		List:      list,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminAddProfanityFilters(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminCreateProfanityList(body *lobbyclientmodels.ModelsAdminCreateProfanityListRequest, namespace string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &profanity.AdminCreateProfanityListParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminCreateProfanityList(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminDebugProfanityFilters(body *lobbyclientmodels.ModelsDebugProfanityFilterRequest, namespace string) ([]lobbyclientmodels.ModelsProfanityFilter, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &profanity.AdminDebugProfanityFiltersParams{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminDebugProfanityFilters(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminDeleteProfanityFilter(body *lobbyclientmodels.ModelsAdminDeleteProfanityFilterRequest, list, namespace string) ([]lobbyclientmodels.ModelsProfanityFilter, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &profanity.AdminDeleteProfanityFilterParams{
		Body:      body,
		List:      list,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminDeleteProfanityFilter(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminDeleteProfanityList(list, namespace string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &profanity.AdminDeleteProfanityListParams{
		List:      list,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminDeleteProfanityList(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminGetProfanityListFiltersV1(list, namespace string) (*lobbyclientmodels.ModelsAdminGetProfanityListFiltersV1Response, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &profanity.AdminGetProfanityListFiltersV1Params{
		List:      list,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminGetProfanityListFiltersV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminGetProfanityLists(namespace string) ([]*lobbyclientmodels.ModelsAdminGetProfanityListsListResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &profanity.AdminGetProfanityListsParams{
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminGetProfanityLists(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminGetProfanityRule(namespace string) (*lobbyclientmodels.ModelsProfanityRule, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &profanity.AdminGetProfanityRuleParams{
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminGetProfanityRule(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminImportProfanityFiltersFromFile(body []int64, list, namespace string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &profanity.AdminImportProfanityFiltersFromFileParams{
		Body:      body,
		List:      list,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminImportProfanityFiltersFromFile(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminSetProfanityRuleForNamespace(body *lobbyclientmodels.ModelsAdminSetProfanityRuleForNamespaceRequest, namespace string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &profanity.AdminSetProfanityRuleForNamespaceParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminSetProfanityRuleForNamespace(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminUpdateProfanityList(body *lobbyclientmodels.ModelsAdminUpdateProfanityList, list, namespace string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &profanity.AdminUpdateProfanityListParams{
		Body:      body,
		List:      list,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminUpdateProfanityList(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
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

func (l *LobbyProfanityService) AdminVerifyMessageProfanityResponse(body *lobbyclientmodels.ModelsAdminVerifyMessageProfanityRequest, namespace string) (*lobbyclientmodels.ModelsAdminVerifyMessageProfanityResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &profanity.AdminVerifyMessageProfanityResponseParams{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Profanity.AdminVerifyMessageProfanityResponse(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
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
