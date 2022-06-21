// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package social

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime/client"
)

type UserStatisticService struct {
	Client                 *socialclient.JusticeSocialService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (u *UserStatisticService) GetAuthSession() auth.Session {
	if u.RefreshTokenRepository != nil {
		return auth.Session{
			u.TokenRepository,
			u.ConfigRepository,
			u.RefreshTokenRepository,
		}
	}

	return auth.Session{
		u.TokenRepository,
		u.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use BulkFetchStatItemsShort instead
func (u *UserStatisticService) BulkFetchStatItems(input *user_statistic.BulkFetchStatItemsParams) ([]*socialclientmodels.UserStatItemInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkFetchStatItems(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkIncUserStatItemShort instead
func (u *UserStatisticService) BulkIncUserStatItem(input *user_statistic.BulkIncUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkIncUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkIncUserStatItemValueShort instead
func (u *UserStatisticService) BulkIncUserStatItemValue(input *user_statistic.BulkIncUserStatItemValueParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkIncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkFetchOrDefaultStatItemsShort instead
func (u *UserStatisticService) BulkFetchOrDefaultStatItems(input *user_statistic.BulkFetchOrDefaultStatItemsParams) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, unprocessableEntity, err := u.Client.UserStatistic.BulkFetchOrDefaultStatItems(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkResetUserStatItemShort instead
func (u *UserStatisticService) BulkResetUserStatItem(input *user_statistic.BulkResetUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkResetUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserStatItemsShort instead
func (u *UserStatisticService) GetUserStatItems(input *user_statistic.GetUserStatItemsParams) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserStatistic.GetUserStatItems(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkCreateUserStatItemsShort instead
func (u *UserStatisticService) BulkCreateUserStatItems(input *user_statistic.BulkCreateUserStatItemsParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkCreateUserStatItems(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkIncUserStatItem1Short instead
func (u *UserStatisticService) BulkIncUserStatItem1(input *user_statistic.BulkIncUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkIncUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkIncUserStatItemValue1Short instead
func (u *UserStatisticService) BulkIncUserStatItemValue1(input *user_statistic.BulkIncUserStatItemValue1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkIncUserStatItemValue1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkResetUserStatItem1Short instead
func (u *UserStatisticService) BulkResetUserStatItem1(input *user_statistic.BulkResetUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkResetUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateUserStatItemShort instead
func (u *UserStatisticService) CreateUserStatItem(input *user_statistic.CreateUserStatItemParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := u.Client.UserStatistic.CreateUserStatItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use DeleteUserStatItemsShort instead
func (u *UserStatisticService) DeleteUserStatItems(input *user_statistic.DeleteUserStatItemsParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := u.Client.UserStatistic.DeleteUserStatItems(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use IncUserStatItemValueShort instead
func (u *UserStatisticService) IncUserStatItemValue(input *user_statistic.IncUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := u.Client.UserStatistic.IncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ResetUserStatItemValueShort instead
func (u *UserStatisticService) ResetUserStatItemValue(input *user_statistic.ResetUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := u.Client.UserStatistic.ResetUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkFetchStatItems1Short instead
func (u *UserStatisticService) BulkFetchStatItems1(input *user_statistic.BulkFetchStatItems1Params) ([]*socialclientmodels.UserStatItemInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkFetchStatItems1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicBulkIncUserStatItemShort instead
func (u *UserStatisticService) PublicBulkIncUserStatItem(input *user_statistic.PublicBulkIncUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.PublicBulkIncUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicBulkIncUserStatItemValueShort instead
func (u *UserStatisticService) PublicBulkIncUserStatItemValue(input *user_statistic.PublicBulkIncUserStatItemValueParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.PublicBulkIncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkResetUserStatItem2Short instead
func (u *UserStatisticService) BulkResetUserStatItem2(input *user_statistic.BulkResetUserStatItem2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkResetUserStatItem2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicQueryUserStatItemsShort instead
func (u *UserStatisticService) PublicQueryUserStatItems(input *user_statistic.PublicQueryUserStatItemsParams) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserStatistic.PublicQueryUserStatItems(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicBulkCreateUserStatItemsShort instead
func (u *UserStatisticService) PublicBulkCreateUserStatItems(input *user_statistic.PublicBulkCreateUserStatItemsParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.PublicBulkCreateUserStatItems(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicQueryUserStatItems1Short instead
func (u *UserStatisticService) PublicQueryUserStatItems1(input *user_statistic.PublicQueryUserStatItems1Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, unprocessableEntity, err := u.Client.UserStatistic.PublicQueryUserStatItems1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicBulkIncUserStatItem1Short instead
func (u *UserStatisticService) PublicBulkIncUserStatItem1(input *user_statistic.PublicBulkIncUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.PublicBulkIncUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkIncUserStatItemValue2Short instead
func (u *UserStatisticService) BulkIncUserStatItemValue2(input *user_statistic.BulkIncUserStatItemValue2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkIncUserStatItemValue2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkResetUserStatItem3Short instead
func (u *UserStatisticService) BulkResetUserStatItem3(input *user_statistic.BulkResetUserStatItem3Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkResetUserStatItem3(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicCreateUserStatItemShort instead
func (u *UserStatisticService) PublicCreateUserStatItem(input *user_statistic.PublicCreateUserStatItemParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := u.Client.UserStatistic.PublicCreateUserStatItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use DeleteUserStatItems1Short instead
func (u *UserStatisticService) DeleteUserStatItems1(input *user_statistic.DeleteUserStatItems1Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := u.Client.UserStatistic.DeleteUserStatItems1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicIncUserStatItemShort instead
func (u *UserStatisticService) PublicIncUserStatItem(input *user_statistic.PublicIncUserStatItemParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := u.Client.UserStatistic.PublicIncUserStatItem(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicIncUserStatItemValueShort instead
func (u *UserStatisticService) PublicIncUserStatItemValue(input *user_statistic.PublicIncUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := u.Client.UserStatistic.PublicIncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ResetUserStatItemValue1Short instead
func (u *UserStatisticService) ResetUserStatItemValue1(input *user_statistic.ResetUserStatItemValue1Params) (*socialclientmodels.StatItemIncResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := u.Client.UserStatistic.ResetUserStatItemValue1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkUpdateUserStatItemV2Short instead
func (u *UserStatisticService) BulkUpdateUserStatItemV2(input *user_statistic.BulkUpdateUserStatItemV2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkUpdateUserStatItemV2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkFetchOrDefaultStatItems1Short instead
func (u *UserStatisticService) BulkFetchOrDefaultStatItems1(input *user_statistic.BulkFetchOrDefaultStatItems1Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, unprocessableEntity, err := u.Client.UserStatistic.BulkFetchOrDefaultStatItems1(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkUpdateUserStatItemShort instead
func (u *UserStatisticService) BulkUpdateUserStatItem(input *user_statistic.BulkUpdateUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkUpdateUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkResetUserStatItemValuesShort instead
func (u *UserStatisticService) BulkResetUserStatItemValues(input *user_statistic.BulkResetUserStatItemValuesParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkResetUserStatItemValues(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteUserStatItems2Short instead
func (u *UserStatisticService) DeleteUserStatItems2(input *user_statistic.DeleteUserStatItems2Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := u.Client.UserStatistic.DeleteUserStatItems2(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateUserStatItemValueShort instead
func (u *UserStatisticService) UpdateUserStatItemValue(input *user_statistic.UpdateUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := u.Client.UserStatistic.UpdateUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkUpdateUserStatItem1Short instead
func (u *UserStatisticService) BulkUpdateUserStatItem1(input *user_statistic.BulkUpdateUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkUpdateUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicQueryUserStatItems2Short instead
func (u *UserStatisticService) PublicQueryUserStatItems2(input *user_statistic.PublicQueryUserStatItems2Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, unprocessableEntity, err := u.Client.UserStatistic.PublicQueryUserStatItems2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkUpdateUserStatItem2Short instead
func (u *UserStatisticService) BulkUpdateUserStatItem2(input *user_statistic.BulkUpdateUserStatItem2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := u.Client.UserStatistic.BulkUpdateUserStatItem2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateUserStatItemValue1Short instead
func (u *UserStatisticService) UpdateUserStatItemValue1(input *user_statistic.UpdateUserStatItemValue1Params) (*socialclientmodels.StatItemIncResult, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := u.Client.UserStatistic.UpdateUserStatItemValue1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkFetchStatItemsShort(input *user_statistic.BulkFetchStatItemsParams) ([]*socialclientmodels.UserStatItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkFetchStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkIncUserStatItemShort(input *user_statistic.BulkIncUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkIncUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkIncUserStatItemValueShort(input *user_statistic.BulkIncUserStatItemValueParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkIncUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkFetchOrDefaultStatItemsShort(input *user_statistic.BulkFetchOrDefaultStatItemsParams) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkFetchOrDefaultStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkResetUserStatItemShort(input *user_statistic.BulkResetUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkResetUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) GetUserStatItemsShort(input *user_statistic.GetUserStatItemsParams) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.GetUserStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkCreateUserStatItemsShort(input *user_statistic.BulkCreateUserStatItemsParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkCreateUserStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkIncUserStatItem1Short(input *user_statistic.BulkIncUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkIncUserStatItem1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkIncUserStatItemValue1Short(input *user_statistic.BulkIncUserStatItemValue1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkIncUserStatItemValue1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkResetUserStatItem1Short(input *user_statistic.BulkResetUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkResetUserStatItem1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) CreateUserStatItemShort(input *user_statistic.CreateUserStatItemParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := u.Client.UserStatistic.CreateUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (u *UserStatisticService) DeleteUserStatItemsShort(input *user_statistic.DeleteUserStatItemsParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := u.Client.UserStatistic.DeleteUserStatItemsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (u *UserStatisticService) IncUserStatItemValueShort(input *user_statistic.IncUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.IncUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) ResetUserStatItemValueShort(input *user_statistic.ResetUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.ResetUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkFetchStatItems1Short(input *user_statistic.BulkFetchStatItems1Params) ([]*socialclientmodels.UserStatItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkFetchStatItems1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) PublicBulkIncUserStatItemShort(input *user_statistic.PublicBulkIncUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.PublicBulkIncUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) PublicBulkIncUserStatItemValueShort(input *user_statistic.PublicBulkIncUserStatItemValueParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.PublicBulkIncUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkResetUserStatItem2Short(input *user_statistic.BulkResetUserStatItem2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkResetUserStatItem2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) PublicQueryUserStatItemsShort(input *user_statistic.PublicQueryUserStatItemsParams) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.PublicQueryUserStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) PublicBulkCreateUserStatItemsShort(input *user_statistic.PublicBulkCreateUserStatItemsParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.PublicBulkCreateUserStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) PublicQueryUserStatItems1Short(input *user_statistic.PublicQueryUserStatItems1Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.PublicQueryUserStatItems1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) PublicBulkIncUserStatItem1Short(input *user_statistic.PublicBulkIncUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.PublicBulkIncUserStatItem1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkIncUserStatItemValue2Short(input *user_statistic.BulkIncUserStatItemValue2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkIncUserStatItemValue2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkResetUserStatItem3Short(input *user_statistic.BulkResetUserStatItem3Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkResetUserStatItem3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) PublicCreateUserStatItemShort(input *user_statistic.PublicCreateUserStatItemParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := u.Client.UserStatistic.PublicCreateUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (u *UserStatisticService) DeleteUserStatItems1Short(input *user_statistic.DeleteUserStatItems1Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := u.Client.UserStatistic.DeleteUserStatItems1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (u *UserStatisticService) PublicIncUserStatItemShort(input *user_statistic.PublicIncUserStatItemParams) (*socialclientmodels.StatItemIncResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.PublicIncUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) PublicIncUserStatItemValueShort(input *user_statistic.PublicIncUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.PublicIncUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) ResetUserStatItemValue1Short(input *user_statistic.ResetUserStatItemValue1Params) (*socialclientmodels.StatItemIncResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.ResetUserStatItemValue1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkUpdateUserStatItemV2Short(input *user_statistic.BulkUpdateUserStatItemV2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkUpdateUserStatItemV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkFetchOrDefaultStatItems1Short(input *user_statistic.BulkFetchOrDefaultStatItems1Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkFetchOrDefaultStatItems1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkUpdateUserStatItemShort(input *user_statistic.BulkUpdateUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkUpdateUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkResetUserStatItemValuesShort(input *user_statistic.BulkResetUserStatItemValuesParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkResetUserStatItemValuesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) DeleteUserStatItems2Short(input *user_statistic.DeleteUserStatItems2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := u.Client.UserStatistic.DeleteUserStatItems2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (u *UserStatisticService) UpdateUserStatItemValueShort(input *user_statistic.UpdateUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.UpdateUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkUpdateUserStatItem1Short(input *user_statistic.BulkUpdateUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkUpdateUserStatItem1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) PublicQueryUserStatItems2Short(input *user_statistic.PublicQueryUserStatItems2Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.PublicQueryUserStatItems2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) BulkUpdateUserStatItem2Short(input *user_statistic.BulkUpdateUserStatItem2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.BulkUpdateUserStatItem2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserStatisticService) UpdateUserStatItemValue1Short(input *user_statistic.UpdateUserStatItemValue1Params) (*socialclientmodels.StatItemIncResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserStatistic.UpdateUserStatItemValue1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
