// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievement

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AchievementsService struct {
	Client          *achievementclient.JusticeAchievementService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminListAchievementsShort instead
func (a *AchievementsService) AdminListAchievements(input *achievements.AdminListAchievementsParams) (*achievementclientmodels.ModelsPaginatedAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.Achievements.AdminListAchievements(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use AdminCreateNewAchievementShort instead
func (a *AchievementsService) AdminCreateNewAchievement(input *achievements.AdminCreateNewAchievementParams) (*achievementclientmodels.ModelsAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := a.Client.Achievements.AdminCreateNewAchievement(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use ExportAchievementsShort instead
func (a *AchievementsService) ExportAchievements(input *achievements.ExportAchievementsParams) ([]*achievementclientmodels.ModelsAchievement, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := a.Client.Achievements.ExportAchievements(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use ImportAchievementsShort instead
func (a *AchievementsService) ImportAchievements(input *achievements.ImportAchievementsParams) (*achievementclientmodels.ServiceImportConfigResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := a.Client.Achievements.ImportAchievements(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminGetAchievementShort instead
func (a *AchievementsService) AdminGetAchievement(input *achievements.AdminGetAchievementParams) (*achievementclientmodels.ModelsAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.Achievements.AdminGetAchievement(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use AdminUpdateAchievementShort instead
func (a *AchievementsService) AdminUpdateAchievement(input *achievements.AdminUpdateAchievementParams) (*achievementclientmodels.ModelsAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.Achievements.AdminUpdateAchievement(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use AdminDeleteAchievementShort instead
func (a *AchievementsService) AdminDeleteAchievement(input *achievements.AdminDeleteAchievementParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := a.Client.Achievements.AdminDeleteAchievement(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
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

// Deprecated: Use AdminUpdateAchievementListOrderShort instead
func (a *AchievementsService) AdminUpdateAchievementListOrder(input *achievements.AdminUpdateAchievementListOrderParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := a.Client.Achievements.AdminUpdateAchievementListOrder(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
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

// Deprecated: Use AdminListUserAchievementsShort instead
func (a *AchievementsService) AdminListUserAchievements(input *achievements.AdminListUserAchievementsParams) (*achievementclientmodels.ModelsPaginatedUserAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.Achievements.AdminListUserAchievements(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use AdminUnlockAchievementShort instead
func (a *AchievementsService) AdminUnlockAchievement(input *achievements.AdminUnlockAchievementParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := a.Client.Achievements.AdminUnlockAchievement(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicListAchievementsShort instead
func (a *AchievementsService) PublicListAchievements(input *achievements.PublicListAchievementsParams) (*achievementclientmodels.ModelsPublicAchievementsResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.Achievements.PublicListAchievements(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use PublicGetAchievementShort instead
func (a *AchievementsService) PublicGetAchievement(input *achievements.PublicGetAchievementParams) (*achievementclientmodels.ModelsPublicAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.Achievements.PublicGetAchievement(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use PublicListUserAchievementsShort instead
func (a *AchievementsService) PublicListUserAchievements(input *achievements.PublicListUserAchievementsParams) (*achievementclientmodels.ModelsPaginatedUserAchievementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.Achievements.PublicListUserAchievements(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use PublicUnlockAchievementShort instead
func (a *AchievementsService) PublicUnlockAchievement(input *achievements.PublicUnlockAchievementParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := a.Client.Achievements.PublicUnlockAchievement(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

func (a *AchievementsService) AdminListAchievementsShort(input *achievements.AdminListAchievementsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*achievementclientmodels.ModelsPaginatedAchievementResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Achievements.AdminListAchievementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AchievementsService) AdminCreateNewAchievementShort(input *achievements.AdminCreateNewAchievementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*achievementclientmodels.ModelsAchievementResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	created, err := a.Client.Achievements.AdminCreateNewAchievementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (a *AchievementsService) ExportAchievementsShort(input *achievements.ExportAchievementsParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*achievementclientmodels.ModelsAchievement, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Achievements.ExportAchievementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AchievementsService) ImportAchievementsShort(input *achievements.ImportAchievementsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*achievementclientmodels.ServiceImportConfigResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Achievements.ImportAchievementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AchievementsService) AdminGetAchievementShort(input *achievements.AdminGetAchievementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*achievementclientmodels.ModelsAchievementResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Achievements.AdminGetAchievementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AchievementsService) AdminUpdateAchievementShort(input *achievements.AdminUpdateAchievementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*achievementclientmodels.ModelsAchievementResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Achievements.AdminUpdateAchievementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AchievementsService) AdminDeleteAchievementShort(input *achievements.AdminDeleteAchievementParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.Achievements.AdminDeleteAchievementShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AchievementsService) AdminUpdateAchievementListOrderShort(input *achievements.AdminUpdateAchievementListOrderParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.Achievements.AdminUpdateAchievementListOrderShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AchievementsService) AdminListUserAchievementsShort(input *achievements.AdminListUserAchievementsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*achievementclientmodels.ModelsPaginatedUserAchievementResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Achievements.AdminListUserAchievementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AchievementsService) AdminUnlockAchievementShort(input *achievements.AdminUnlockAchievementParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.Achievements.AdminUnlockAchievementShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AchievementsService) PublicListAchievementsShort(input *achievements.PublicListAchievementsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*achievementclientmodels.ModelsPublicAchievementsResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Achievements.PublicListAchievementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AchievementsService) PublicGetAchievementShort(input *achievements.PublicGetAchievementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*achievementclientmodels.ModelsPublicAchievementResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Achievements.PublicGetAchievementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AchievementsService) PublicListUserAchievementsShort(input *achievements.PublicListUserAchievementsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*achievementclientmodels.ModelsPaginatedUserAchievementResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Achievements.PublicListUserAchievementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AchievementsService) PublicUnlockAchievementShort(input *achievements.PublicUnlockAchievementParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.Achievements.PublicUnlockAchievementShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
