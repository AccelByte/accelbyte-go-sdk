// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type RewardService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (r *RewardService) CreateReward(input *reward.CreateRewardParams) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := r.Client.Reward.CreateReward(input, client.BearerToken(*accessToken.AccessToken))
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

func (r *RewardService) QueryRewards(input *reward.QueryRewardsParams) (*platformclientmodels.RewardPagingSlicedResult, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := r.Client.Reward.QueryRewards(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) ExportRewards(input *reward.ExportRewardsParams) error {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = r.Client.Reward.ExportRewards(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (r *RewardService) ImportRewards(input *reward.ImportRewardsParams) error {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := r.Client.Reward.ImportRewards(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}
	return nil
}

func (r *RewardService) GetReward(input *reward.GetRewardParams) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := r.Client.Reward.GetReward(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) UpdateReward(input *reward.UpdateRewardParams) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := r.Client.Reward.UpdateReward(input, client.BearerToken(*accessToken.AccessToken))
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

func (r *RewardService) DeleteReward(input *reward.DeleteRewardParams) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := r.Client.Reward.DeleteReward(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) CheckEventCondition(input *reward.CheckEventConditionParams) (*platformclientmodels.ConditionMatchResult, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := r.Client.Reward.CheckEventCondition(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) GetRewardByCode(input *reward.GetRewardByCodeParams) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := r.Client.Reward.GetRewardByCode(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) QueryRewards1(input *reward.QueryRewards1Params) (*platformclientmodels.RewardPagingSlicedResult, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := r.Client.Reward.QueryRewards1(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) GetReward1(input *reward.GetReward1Params) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := r.Client.Reward.GetReward1(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) CreateRewardShort(input *reward.CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.RewardInfo, error) {
	ok, err := r.Client.Reward.CreateRewardShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) QueryRewardsShort(input *reward.QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.RewardPagingSlicedResult, error) {
	ok, err := r.Client.Reward.QueryRewardsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) ExportRewardsShort(input *reward.ExportRewardsParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := r.Client.Reward.ExportRewardsShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (r *RewardService) ImportRewardsShort(input *reward.ImportRewardsParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := r.Client.Reward.ImportRewardsShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (r *RewardService) GetRewardShort(input *reward.GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.RewardInfo, error) {
	ok, err := r.Client.Reward.GetRewardShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) UpdateRewardShort(input *reward.UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.RewardInfo, error) {
	ok, err := r.Client.Reward.UpdateRewardShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) DeleteRewardShort(input *reward.DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.RewardInfo, error) {
	ok, err := r.Client.Reward.DeleteRewardShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) CheckEventConditionShort(input *reward.CheckEventConditionParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.ConditionMatchResult, error) {
	ok, err := r.Client.Reward.CheckEventConditionShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) GetRewardByCodeShort(input *reward.GetRewardByCodeParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.RewardInfo, error) {
	ok, err := r.Client.Reward.GetRewardByCodeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) QueryRewards1Short(input *reward.QueryRewards1Params, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.RewardPagingSlicedResult, error) {
	ok, err := r.Client.Reward.QueryRewards1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (r *RewardService) GetReward1Short(input *reward.GetReward1Params, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.RewardInfo, error) {
	ok, err := r.Client.Reward.GetReward1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
