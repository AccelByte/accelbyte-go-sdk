// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type RewardService struct {
	Client                 *platformclient.JusticePlatformService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *RewardService) GetAuthSession() auth.Session {
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

// Deprecated: Use CreateRewardShort instead
func (aaa *RewardService) CreateReward(input *reward.CreateRewardParams) (*platformclientmodels.RewardInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := aaa.Client.Reward.CreateReward(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use QueryRewardsShort instead
func (aaa *RewardService) QueryRewards(input *reward.QueryRewardsParams) (*platformclientmodels.RewardPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.Reward.QueryRewards(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ExportRewardsShort instead
func (aaa *RewardService) ExportRewards(input *reward.ExportRewardsParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Reward.ExportRewards(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use ImportRewardsShort instead
func (aaa *RewardService) ImportRewards(input *reward.ImportRewardsParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := aaa.Client.Reward.ImportRewards(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetRewardShort instead
func (aaa *RewardService) GetReward(input *reward.GetRewardParams) (*platformclientmodels.RewardInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Reward.GetReward(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateRewardShort instead
func (aaa *RewardService) UpdateReward(input *reward.UpdateRewardParams) (*platformclientmodels.RewardInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := aaa.Client.Reward.UpdateReward(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteRewardShort instead
func (aaa *RewardService) DeleteReward(input *reward.DeleteRewardParams) (*platformclientmodels.RewardInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Reward.DeleteReward(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CheckEventConditionShort instead
func (aaa *RewardService) CheckEventCondition(input *reward.CheckEventConditionParams) (*platformclientmodels.ConditionMatchResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Reward.CheckEventCondition(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetRewardByCodeShort instead
func (aaa *RewardService) GetRewardByCode(input *reward.GetRewardByCodeParams) (*platformclientmodels.RewardInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Reward.GetRewardByCode(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use QueryRewards1Short instead
func (aaa *RewardService) QueryRewards1(input *reward.QueryRewards1Params) (*platformclientmodels.RewardPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.Reward.QueryRewards1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetReward1Short instead
func (aaa *RewardService) GetReward1(input *reward.GetReward1Params) (*platformclientmodels.RewardInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Reward.GetReward1(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *RewardService) CreateRewardShort(input *reward.CreateRewardParams) (*platformclientmodels.RewardInfo, error) {
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

	ok, err := aaa.Client.Reward.CreateRewardShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *RewardService) QueryRewardsShort(input *reward.QueryRewardsParams) (*platformclientmodels.RewardPagingSlicedResult, error) {
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

	ok, err := aaa.Client.Reward.QueryRewardsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *RewardService) ExportRewardsShort(input *reward.ExportRewardsParams) error {
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

	_, err := aaa.Client.Reward.ExportRewardsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *RewardService) ImportRewardsShort(input *reward.ImportRewardsParams) error {
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

	_, err := aaa.Client.Reward.ImportRewardsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *RewardService) GetRewardShort(input *reward.GetRewardParams) (*platformclientmodels.RewardInfo, error) {
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

	ok, err := aaa.Client.Reward.GetRewardShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *RewardService) UpdateRewardShort(input *reward.UpdateRewardParams) (*platformclientmodels.RewardInfo, error) {
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

	ok, err := aaa.Client.Reward.UpdateRewardShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *RewardService) DeleteRewardShort(input *reward.DeleteRewardParams) (*platformclientmodels.RewardInfo, error) {
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

	ok, err := aaa.Client.Reward.DeleteRewardShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *RewardService) CheckEventConditionShort(input *reward.CheckEventConditionParams) (*platformclientmodels.ConditionMatchResult, error) {
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

	ok, err := aaa.Client.Reward.CheckEventConditionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *RewardService) GetRewardByCodeShort(input *reward.GetRewardByCodeParams) (*platformclientmodels.RewardInfo, error) {
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

	ok, err := aaa.Client.Reward.GetRewardByCodeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *RewardService) QueryRewards1Short(input *reward.QueryRewards1Params) (*platformclientmodels.RewardPagingSlicedResult, error) {
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

	ok, err := aaa.Client.Reward.QueryRewards1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *RewardService) GetReward1Short(input *reward.GetReward1Params) (*platformclientmodels.RewardInfo, error) {
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

	ok, err := aaa.Client.Reward.GetReward1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
