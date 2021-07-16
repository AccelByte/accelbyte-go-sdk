package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type RewardService struct {
	PlatformServiceClient *platformclient.JusticePlatformService
	TokenRepository       repository.TokenRepository
}

func (r *RewardService) ExportRewards(namespace string) error {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &reward.ExportRewardsParams{
		Namespace: namespace,
	}
	_, err = r.PlatformServiceClient.Reward.ExportRewards(params, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (r *RewardService) GetReward(namespace, rewardId string) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &reward.GetRewardParams{
		Namespace: namespace,
		RewardID:  rewardId,
	}
	ok, notFound, err := r.PlatformServiceClient.Reward.GetReward(params, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (r *RewardService) UpdateReward(namespace, rewardId string) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &reward.UpdateRewardParams{
		Namespace: namespace,
		RewardID:  rewardId,
	}
	ok, notFound, conflict, err := r.PlatformServiceClient.Reward.UpdateReward(params, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (r *RewardService) DeleteReward(namespace, rewardId string) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &reward.DeleteRewardParams{
		Namespace: namespace,
		RewardID:  rewardId,
	}
	ok, notFound, err := r.PlatformServiceClient.Reward.DeleteReward(params, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (r *RewardService) ImportRewards(namespace string, replaceExisting bool, file runtime.NamedReadCloser) error {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &reward.ImportRewardsParams{
		File:            file,
		Namespace:       namespace,
		ReplaceExisting: replaceExisting,
	}
	_, notFound, err := r.PlatformServiceClient.Reward.ImportRewards(params, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return err
}

func (r *RewardService) CreateReward(namespace string, content *platformclientmodels.RewardCreate) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &reward.CreateRewardParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, notFound, conflict, unprocessableEntity, err := r.PlatformServiceClient.Reward.CreateReward(params, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (r *RewardService) QueryRewards(namespace string, eventTopic, sort *string, limit, offset *int32) (*platformclientmodels.RewardPagingSlicedResult, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &reward.QueryRewardsParams{
		EventTopic: eventTopic,
		Limit:      limit,
		Namespace:  namespace,
		Offset:     offset,
		SortBy:     sort,
	}
	ok, unprocessableEntity, err := r.PlatformServiceClient.Reward.QueryRewards(params, client.BearerToken(*accessToken.AccessToken))

	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (r *RewardService) PublicGetReward(namespace, rewardId string) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &reward.GetReward1Params{
		Namespace: namespace,
		RewardID:  rewardId,
	}
	ok, unprocessableEntity, err := r.PlatformServiceClient.Reward.GetReward1(params, client.BearerToken(*accessToken.AccessToken))

	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (r *RewardService) PublicQueryRewards(namespace string, eventTopic, sort *string, limit, offset *int32) (*platformclientmodels.RewardPagingSlicedResult, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &reward.QueryRewards1Params{
		EventTopic: eventTopic,
		Limit:      limit,
		Namespace:  namespace,
		Offset:     offset,
		SortBy:     sort,
	}
	ok, unprocessableEntity, err := r.PlatformServiceClient.Reward.QueryRewards1(params, client.BearerToken(*accessToken.AccessToken))

	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}
