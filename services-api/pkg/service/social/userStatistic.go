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

func (aaa *UserStatisticService) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: 2022-01-10 - please use BulkFetchStatItemsShort instead.
func (aaa *UserStatisticService) BulkFetchStatItems(input *user_statistic.BulkFetchStatItemsParams) ([]*socialclientmodels.UserStatItemInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkFetchStatItems(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkIncUserStatItemShort instead.
func (aaa *UserStatisticService) BulkIncUserStatItem(input *user_statistic.BulkIncUserStatItemParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkIncUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkIncUserStatItemValueShort instead.
func (aaa *UserStatisticService) BulkIncUserStatItemValue(input *user_statistic.BulkIncUserStatItemValueParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkIncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkFetchOrDefaultStatItemsShort instead.
func (aaa *UserStatisticService) BulkFetchOrDefaultStatItems(input *user_statistic.BulkFetchOrDefaultStatItemsParams) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, unprocessableEntity, err := aaa.Client.UserStatistic.BulkFetchOrDefaultStatItems(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use BulkResetUserStatItemShort instead.
func (aaa *UserStatisticService) BulkResetUserStatItem(input *user_statistic.BulkResetUserStatItemParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkResetUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetUserStatItemsShort instead.
func (aaa *UserStatisticService) GetUserStatItems(input *user_statistic.GetUserStatItemsParams) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.UserStatistic.GetUserStatItems(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkCreateUserStatItemsShort instead.
func (aaa *UserStatisticService) BulkCreateUserStatItems(input *user_statistic.BulkCreateUserStatItemsParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkCreateUserStatItems(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkIncUserStatItem1Short instead.
func (aaa *UserStatisticService) BulkIncUserStatItem1(input *user_statistic.BulkIncUserStatItem1Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkIncUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkIncUserStatItemValue1Short instead.
func (aaa *UserStatisticService) BulkIncUserStatItemValue1(input *user_statistic.BulkIncUserStatItemValue1Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkIncUserStatItemValue1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkResetUserStatItem1Short instead.
func (aaa *UserStatisticService) BulkResetUserStatItem1(input *user_statistic.BulkResetUserStatItem1Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkResetUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use CreateUserStatItemShort instead.
func (aaa *UserStatisticService) CreateUserStatItem(input *user_statistic.CreateUserStatItemParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := aaa.Client.UserStatistic.CreateUserStatItem(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use DeleteUserStatItemsShort instead.
func (aaa *UserStatisticService) DeleteUserStatItems(input *user_statistic.DeleteUserStatItemsParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := aaa.Client.UserStatistic.DeleteUserStatItems(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use IncUserStatItemValueShort instead.
func (aaa *UserStatisticService) IncUserStatItemValue(input *user_statistic.IncUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := aaa.Client.UserStatistic.IncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use ResetUserStatItemValueShort instead.
func (aaa *UserStatisticService) ResetUserStatItemValue(input *user_statistic.ResetUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.UserStatistic.ResetUserStatItemValue(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use BulkFetchStatItems1Short instead.
func (aaa *UserStatisticService) BulkFetchStatItems1(input *user_statistic.BulkFetchStatItems1Params) ([]*socialclientmodels.UserStatItemInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkFetchStatItems1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicBulkIncUserStatItemShort instead.
func (aaa *UserStatisticService) PublicBulkIncUserStatItem(input *user_statistic.PublicBulkIncUserStatItemParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.PublicBulkIncUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicBulkIncUserStatItemValueShort instead.
func (aaa *UserStatisticService) PublicBulkIncUserStatItemValue(input *user_statistic.PublicBulkIncUserStatItemValueParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.PublicBulkIncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkResetUserStatItem2Short instead.
func (aaa *UserStatisticService) BulkResetUserStatItem2(input *user_statistic.BulkResetUserStatItem2Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkResetUserStatItem2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicQueryUserStatItemsShort instead.
func (aaa *UserStatisticService) PublicQueryUserStatItems(input *user_statistic.PublicQueryUserStatItemsParams) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.UserStatistic.PublicQueryUserStatItems(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicBulkCreateUserStatItemsShort instead.
func (aaa *UserStatisticService) PublicBulkCreateUserStatItems(input *user_statistic.PublicBulkCreateUserStatItemsParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.PublicBulkCreateUserStatItems(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicQueryUserStatItems1Short instead.
func (aaa *UserStatisticService) PublicQueryUserStatItems1(input *user_statistic.PublicQueryUserStatItems1Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, unprocessableEntity, err := aaa.Client.UserStatistic.PublicQueryUserStatItems1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicBulkIncUserStatItem1Short instead.
func (aaa *UserStatisticService) PublicBulkIncUserStatItem1(input *user_statistic.PublicBulkIncUserStatItem1Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.PublicBulkIncUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkIncUserStatItemValue2Short instead.
func (aaa *UserStatisticService) BulkIncUserStatItemValue2(input *user_statistic.BulkIncUserStatItemValue2Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkIncUserStatItemValue2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkResetUserStatItem3Short instead.
func (aaa *UserStatisticService) BulkResetUserStatItem3(input *user_statistic.BulkResetUserStatItem3Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkResetUserStatItem3(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicCreateUserStatItemShort instead.
func (aaa *UserStatisticService) PublicCreateUserStatItem(input *user_statistic.PublicCreateUserStatItemParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := aaa.Client.UserStatistic.PublicCreateUserStatItem(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use DeleteUserStatItems1Short instead.
func (aaa *UserStatisticService) DeleteUserStatItems1(input *user_statistic.DeleteUserStatItems1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := aaa.Client.UserStatistic.DeleteUserStatItems1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicIncUserStatItemShort instead.
func (aaa *UserStatisticService) PublicIncUserStatItem(input *user_statistic.PublicIncUserStatItemParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := aaa.Client.UserStatistic.PublicIncUserStatItem(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicIncUserStatItemValueShort instead.
func (aaa *UserStatisticService) PublicIncUserStatItemValue(input *user_statistic.PublicIncUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := aaa.Client.UserStatistic.PublicIncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use ResetUserStatItemValue1Short instead.
func (aaa *UserStatisticService) ResetUserStatItemValue1(input *user_statistic.ResetUserStatItemValue1Params) (*socialclientmodels.StatItemIncResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.UserStatistic.ResetUserStatItemValue1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use BulkUpdateUserStatItemV2Short instead.
func (aaa *UserStatisticService) BulkUpdateUserStatItemV2(input *user_statistic.BulkUpdateUserStatItemV2Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkUpdateUserStatItemV2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkFetchOrDefaultStatItems1Short instead.
func (aaa *UserStatisticService) BulkFetchOrDefaultStatItems1(input *user_statistic.BulkFetchOrDefaultStatItems1Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, unprocessableEntity, err := aaa.Client.UserStatistic.BulkFetchOrDefaultStatItems1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use BulkUpdateUserStatItemShort instead.
func (aaa *UserStatisticService) BulkUpdateUserStatItem(input *user_statistic.BulkUpdateUserStatItemParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkUpdateUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkResetUserStatItemValuesShort instead.
func (aaa *UserStatisticService) BulkResetUserStatItemValues(input *user_statistic.BulkResetUserStatItemValuesParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkResetUserStatItemValues(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use DeleteUserStatItems2Short instead.
func (aaa *UserStatisticService) DeleteUserStatItems2(input *user_statistic.DeleteUserStatItems2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := aaa.Client.UserStatistic.DeleteUserStatItems2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use UpdateUserStatItemValueShort instead.
func (aaa *UserStatisticService) UpdateUserStatItemValue(input *user_statistic.UpdateUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := aaa.Client.UserStatistic.UpdateUserStatItemValue(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use BulkUpdateUserStatItem1Short instead.
func (aaa *UserStatisticService) BulkUpdateUserStatItem1(input *user_statistic.BulkUpdateUserStatItem1Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkUpdateUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicQueryUserStatItems2Short instead.
func (aaa *UserStatisticService) PublicQueryUserStatItems2(input *user_statistic.PublicQueryUserStatItems2Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, unprocessableEntity, err := aaa.Client.UserStatistic.PublicQueryUserStatItems2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use BulkUpdateUserStatItem2Short instead.
func (aaa *UserStatisticService) BulkUpdateUserStatItem2(input *user_statistic.BulkUpdateUserStatItem2Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.UserStatistic.BulkUpdateUserStatItem2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use UpdateUserStatItemValue1Short instead.
func (aaa *UserStatisticService) UpdateUserStatItemValue1(input *user_statistic.UpdateUserStatItemValue1Params) (*socialclientmodels.StatItemIncResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := aaa.Client.UserStatistic.UpdateUserStatItemValue1(input, client.BearerToken(*token.AccessToken))
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

func (aaa *UserStatisticService) BulkFetchStatItemsShort(input *user_statistic.BulkFetchStatItemsParams) ([]*socialclientmodels.UserStatItemInfo, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkFetchStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkIncUserStatItemShort(input *user_statistic.BulkIncUserStatItemParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkIncUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkIncUserStatItemValueShort(input *user_statistic.BulkIncUserStatItemValueParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkIncUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkFetchOrDefaultStatItemsShort(input *user_statistic.BulkFetchOrDefaultStatItemsParams) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkFetchOrDefaultStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkResetUserStatItemShort(input *user_statistic.BulkResetUserStatItemParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkResetUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) GetUserStatItemsShort(input *user_statistic.GetUserStatItemsParams) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
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

	ok, err := aaa.Client.UserStatistic.GetUserStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkCreateUserStatItemsShort(input *user_statistic.BulkCreateUserStatItemsParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkCreateUserStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkIncUserStatItem1Short(input *user_statistic.BulkIncUserStatItem1Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkIncUserStatItem1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkIncUserStatItemValue1Short(input *user_statistic.BulkIncUserStatItemValue1Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkIncUserStatItemValue1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkResetUserStatItem1Short(input *user_statistic.BulkResetUserStatItem1Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkResetUserStatItem1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) CreateUserStatItemShort(input *user_statistic.CreateUserStatItemParams) error {
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

	_, err := aaa.Client.UserStatistic.CreateUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UserStatisticService) DeleteUserStatItemsShort(input *user_statistic.DeleteUserStatItemsParams) error {
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

	_, err := aaa.Client.UserStatistic.DeleteUserStatItemsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UserStatisticService) IncUserStatItemValueShort(input *user_statistic.IncUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
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

	ok, err := aaa.Client.UserStatistic.IncUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) ResetUserStatItemValueShort(input *user_statistic.ResetUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
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

	ok, err := aaa.Client.UserStatistic.ResetUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkFetchStatItems1Short(input *user_statistic.BulkFetchStatItems1Params) ([]*socialclientmodels.UserStatItemInfo, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkFetchStatItems1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) PublicBulkIncUserStatItemShort(input *user_statistic.PublicBulkIncUserStatItemParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.PublicBulkIncUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) PublicBulkIncUserStatItemValueShort(input *user_statistic.PublicBulkIncUserStatItemValueParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.PublicBulkIncUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkResetUserStatItem2Short(input *user_statistic.BulkResetUserStatItem2Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkResetUserStatItem2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) PublicQueryUserStatItemsShort(input *user_statistic.PublicQueryUserStatItemsParams) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
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

	ok, err := aaa.Client.UserStatistic.PublicQueryUserStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) PublicBulkCreateUserStatItemsShort(input *user_statistic.PublicBulkCreateUserStatItemsParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.PublicBulkCreateUserStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) PublicQueryUserStatItems1Short(input *user_statistic.PublicQueryUserStatItems1Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
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

	ok, err := aaa.Client.UserStatistic.PublicQueryUserStatItems1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) PublicBulkIncUserStatItem1Short(input *user_statistic.PublicBulkIncUserStatItem1Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.PublicBulkIncUserStatItem1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkIncUserStatItemValue2Short(input *user_statistic.BulkIncUserStatItemValue2Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkIncUserStatItemValue2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkResetUserStatItem3Short(input *user_statistic.BulkResetUserStatItem3Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkResetUserStatItem3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) PublicCreateUserStatItemShort(input *user_statistic.PublicCreateUserStatItemParams) error {
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

	_, err := aaa.Client.UserStatistic.PublicCreateUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UserStatisticService) DeleteUserStatItems1Short(input *user_statistic.DeleteUserStatItems1Params) error {
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

	_, err := aaa.Client.UserStatistic.DeleteUserStatItems1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UserStatisticService) PublicIncUserStatItemShort(input *user_statistic.PublicIncUserStatItemParams) (*socialclientmodels.StatItemIncResult, error) {
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

	ok, err := aaa.Client.UserStatistic.PublicIncUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) PublicIncUserStatItemValueShort(input *user_statistic.PublicIncUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
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

	ok, err := aaa.Client.UserStatistic.PublicIncUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) ResetUserStatItemValue1Short(input *user_statistic.ResetUserStatItemValue1Params) (*socialclientmodels.StatItemIncResult, error) {
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

	ok, err := aaa.Client.UserStatistic.ResetUserStatItemValue1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkUpdateUserStatItemV2Short(input *user_statistic.BulkUpdateUserStatItemV2Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkUpdateUserStatItemV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkFetchOrDefaultStatItems1Short(input *user_statistic.BulkFetchOrDefaultStatItems1Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkFetchOrDefaultStatItems1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkUpdateUserStatItemShort(input *user_statistic.BulkUpdateUserStatItemParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkUpdateUserStatItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkResetUserStatItemValuesShort(input *user_statistic.BulkResetUserStatItemValuesParams) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkResetUserStatItemValuesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) DeleteUserStatItems2Short(input *user_statistic.DeleteUserStatItems2Params) error {
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

	_, err := aaa.Client.UserStatistic.DeleteUserStatItems2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UserStatisticService) UpdateUserStatItemValueShort(input *user_statistic.UpdateUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
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

	ok, err := aaa.Client.UserStatistic.UpdateUserStatItemValueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkUpdateUserStatItem1Short(input *user_statistic.BulkUpdateUserStatItem1Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkUpdateUserStatItem1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) PublicQueryUserStatItems2Short(input *user_statistic.PublicQueryUserStatItems2Params) ([]*socialclientmodels.ADTOObjectForUserStatItemValue, error) {
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

	ok, err := aaa.Client.UserStatistic.PublicQueryUserStatItems2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) BulkUpdateUserStatItem2Short(input *user_statistic.BulkUpdateUserStatItem2Params) ([]*socialclientmodels.BulkStatOperationResult, error) {
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

	ok, err := aaa.Client.UserStatistic.BulkUpdateUserStatItem2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UserStatisticService) UpdateUserStatItemValue1Short(input *user_statistic.UpdateUserStatItemValue1Params) (*socialclientmodels.StatItemIncResult, error) {
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

	ok, err := aaa.Client.UserStatistic.UpdateUserStatItemValue1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
