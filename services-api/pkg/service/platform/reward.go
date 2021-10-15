package platform

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type RewardService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (r *RewardService) ExportRewards(input *reward.ExportRewardsParams) error {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = r.Client.Reward.ExportRewards(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
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

func (r *RewardService) UpdateReward(input *reward.UpdateRewardParams) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := r.Client.Reward.UpdateReward(input, client.BearerToken(*accessToken.AccessToken))
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

func (r *RewardService) DeleteReward(input *reward.DeleteRewardParams) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := r.Client.Reward.DeleteReward(input, client.BearerToken(*accessToken.AccessToken))
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

func (r *RewardService) ImportRewards(input *reward.ImportRewardsParams) error {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := r.Client.Reward.ImportRewards(input, client.BearerToken(*accessToken.AccessToken))
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

func (r *RewardService) CreateReward(input *reward.CreateRewardParams) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := r.Client.Reward.CreateReward(input, client.BearerToken(*accessToken.AccessToken))
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

func (r *RewardService) QueryRewards(input *reward.QueryRewardsParams) (*platformclientmodels.RewardPagingSlicedResult, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := r.Client.Reward.QueryRewards(input, client.BearerToken(*accessToken.AccessToken))
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

func (r *RewardService) PublicGetReward(input *reward.GetReward1Params) (*platformclientmodels.RewardInfo, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := r.Client.Reward.GetReward1(input, client.BearerToken(*accessToken.AccessToken))
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

func (r *RewardService) PublicQueryRewards(input *reward.QueryRewards1Params) (*platformclientmodels.RewardPagingSlicedResult, error) {
	accessToken, err := r.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := r.Client.Reward.QueryRewards1(input, client.BearerToken(*accessToken.AccessToken))
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
