package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"

	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type AchievementService struct {
	AchievementService *achievementclient.JusticeAchievementService
	TokenRepository    repository.TokenRepository
}

func (a *AchievementService) AdminCreateNewAchievement(body *achievementclientmodels.ModelsAchievementRequest, namespace string) (*achievementclientmodels.ModelsAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &achievements.AdminCreateNewAchievementParams{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, internalServerError, err := a.AchievementService.Achievements.AdminCreateNewAchievement(params, client.BearerToken(*token.AccessToken))
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

func (a *AchievementService) AdminDeleteAchievement(achievementsCode, namespace string) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &achievements.AdminDeleteAchievementParams{
		AchievementCode: achievementsCode,
		Namespace:       namespace,
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := a.AchievementService.Achievements.AdminDeleteAchievement(params, client.BearerToken(*token.AccessToken))
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
		return err
	}
	return nil
}

func (a *AchievementService) AdminGetAchievement(achievementsCode, namespace string) (*achievementclientmodels.ModelsAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &achievements.AdminGetAchievementParams{
		AchievementCode: achievementsCode,
		Namespace:       namespace,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.AchievementService.Achievements.AdminGetAchievement(params, client.BearerToken(*token.AccessToken))
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

func (a *AchievementService) AdminListAchievements(limit *int64, namespace string, offset *int64, sortBy *string) (*achievementclientmodels.ModelsPaginatedAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &achievements.AdminListAchievementsParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		SortBy:    sortBy,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.AchievementService.Achievements.AdminListAchievements(params, client.BearerToken(*token.AccessToken))
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

func (a *AchievementService) AdminListUserAchievements(limit *int64, namespace string, offset *int64, preferUnlocked *bool, userID string) (*achievementclientmodels.ModelsPaginatedUserAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &achievements.AdminListUserAchievementsParams{
		Limit:          limit,
		Namespace:      namespace,
		Offset:         offset,
		PreferUnlocked: preferUnlocked,
		UserID:         userID,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.AchievementService.Achievements.AdminListUserAchievements(params, client.BearerToken(*token.AccessToken))
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

func (a *AchievementService) AdminUnlockAchievement(achievementCode, namespace, userID string) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &achievements.AdminUnlockAchievementParams{
		AchievementCode: achievementCode,
		Namespace:       namespace,
		UserID:          userID,
	}
	_, badRequest, unauthorized, internalServerError, err := a.AchievementService.Achievements.AdminUnlockAchievement(params, client.BearerToken(*token.AccessToken))
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

func (a *AchievementService) AdminUpdateAchievement(body *achievementclientmodels.ModelsAchievementUpdateRequest, achievementCode, namespace string) (*achievementclientmodels.ModelsAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &achievements.AdminUpdateAchievementParams{
		Body:            body,
		AchievementCode: achievementCode,
		Namespace:       namespace,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.AchievementService.Achievements.AdminUpdateAchievement(params, client.BearerToken(*token.AccessToken))
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

func (a *AchievementService) AdminUpdateAchievementListOrder(body *achievementclientmodels.ModelsAchievementOrderUpdateRequest, achievementCode, namespace string) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &achievements.AdminUpdateAchievementListOrderParams{
		Body:            body,
		AchievementCode: achievementCode,
		Namespace:       namespace,
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := a.AchievementService.Achievements.AdminUpdateAchievementListOrder(params, client.BearerToken(*token.AccessToken))
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
		return err
	}
	return nil
}

func (a *AchievementService) ExportAchievements(namespace string) ([]*achievementclientmodels.ModelsAchievement, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &achievements.ExportAchievementsParams{
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, internalServerError, err := a.AchievementService.Achievements.ExportAchievements(params, client.BearerToken(*token.AccessToken))
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

func (a *AchievementService) ImportAchievements(file runtime.NamedReadCloser, namespace string, strategy *string) (*achievementclientmodels.ServiceImportConfigResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &achievements.ImportAchievementsParams{
		File:      file,
		Namespace: namespace,
		Strategy:  strategy,
	}
	ok, unauthorized, forbidden, internalServerError, err := a.AchievementService.Achievements.ImportAchievements(params, client.BearerToken(*token.AccessToken))
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

func (a *AchievementService) PublicGetAchievement(achievementCode, language, namespace string) (*achievementclientmodels.ModelsPublicAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &achievements.PublicGetAchievementParams{
		AchievementCode: achievementCode,
		Language:        language,
		Namespace:       namespace,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.AchievementService.Achievements.PublicGetAchievement(params, client.BearerToken(*token.AccessToken))
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

func (a *AchievementService) PublicListAchievements(language string, limit *int64, namespace string, offset *int64, sortBy *string) (*achievementclientmodels.ModelsPublicAchievementsResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &achievements.PublicListAchievementsParams{
		Language:  language,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		SortBy:    sortBy,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.AchievementService.Achievements.PublicListAchievements(params, client.BearerToken(*token.AccessToken))
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

func (a *AchievementService) PublicListUserAchievements(limit *int64, namespace string, offset *int64, preferUnlocked *bool, userID string) (*achievementclientmodels.ModelsPaginatedUserAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &achievements.PublicListUserAchievementsParams{
		Limit:          limit,
		Namespace:      namespace,
		Offset:         offset,
		PreferUnlocked: preferUnlocked,
		UserID:         userID,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.AchievementService.Achievements.PublicListUserAchievements(params, client.BearerToken(*token.AccessToken))
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

func (a *AchievementService) PublicUnlockAchievement(achievementCode, namespace, userID string) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &achievements.PublicUnlockAchievementParams{
		AchievementCode: achievementCode,
		Namespace:       namespace,
		UserID:          userID,
	}
	_, badRequest, unauthorized, internalServerError, err := a.AchievementService.Achievements.PublicUnlockAchievement(params, client.BearerToken(*token.AccessToken))
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
