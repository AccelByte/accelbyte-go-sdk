package social

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type UserStatisticService struct {
	Client          *socialclient.JusticeSocialService
	TokenRepository repository.TokenRepository
}

func (s *UserStatisticService) BulkIncUserStatItemValue(input *user_statistic.BulkIncUserStatItemValueParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkIncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkFetchStatItems(input *user_statistic.BulkFetchStatItemsParams) ([]*socialclientmodels.UserStatItemInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkFetchStatItems(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkResetUserStatItem(input *user_statistic.BulkResetUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkResetUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkIncUserStatItemValue1(input *user_statistic.BulkIncUserStatItemValue1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkIncUserStatItemValue1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) GetUserStatItems(input *user_statistic.GetUserStatItemsParams) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.UserStatistic.GetUserStatItems(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkCreateUserStatItems(input *user_statistic.BulkCreateUserStatItemsParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkCreateUserStatItems(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkResetUserStatItem1(input *user_statistic.BulkResetUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkResetUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) CreateUserStatItem(input *user_statistic.CreateUserStatItemParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, notFound, conflict, err := s.Client.UserStatistic.CreateUserStatItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *UserStatisticService) DeleteUserStatItems(input *user_statistic.DeleteUserStatItemsParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, unauthorized, forbidden, notFound, err := s.Client.UserStatistic.DeleteUserStatItems(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
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
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *UserStatisticService) ResetUserStatItemValue(input *user_statistic.ResetUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, notFound, err := s.Client.UserStatistic.ResetUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) IncUserStatItemValue(input *user_statistic.IncUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := s.Client.UserStatistic.IncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) PublicBulkIncUserStatItem(input *user_statistic.PublicBulkIncUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.PublicBulkIncUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkFetchStatItems1(input *user_statistic.BulkFetchStatItems1Params) ([]*socialclientmodels.UserStatItemInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkFetchStatItems1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkResetUserStatItem2(input *user_statistic.BulkResetUserStatItem2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkResetUserStatItem2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) PublicBulkIncUserStatItem1(input *user_statistic.PublicBulkIncUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.PublicBulkIncUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) PublicQueryUserStatItems(input *user_statistic.PublicQueryUserStatItemsParams) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.UserStatistic.PublicQueryUserStatItems(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) PublicBulkCreateUserStatItems(input *user_statistic.PublicBulkCreateUserStatItemsParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.PublicBulkCreateUserStatItems(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkResetUserStatItem3(input *user_statistic.BulkResetUserStatItem3Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkResetUserStatItem3(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) PublicIncUserStatItem(input *user_statistic.PublicIncUserStatItemParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := s.Client.UserStatistic.PublicIncUserStatItem(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) PublicCreateUserStatItem(input *user_statistic.PublicCreateUserStatItemParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, notFound, conflict, err := s.Client.UserStatistic.PublicCreateUserStatItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *UserStatisticService) DeleteUserStatItems1(input *user_statistic.DeleteUserStatItems1Params) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, unauthorized, forbidden, notFound, err := s.Client.UserStatistic.DeleteUserStatItems1(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *UserStatisticService) ResetUserStatItemValue1(input *user_statistic.ResetUserStatItemValue1Params) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, notFound, err := s.Client.UserStatistic.ResetUserStatItemValue1(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkUpdateUserStatItemV2(input *user_statistic.BulkUpdateUserStatItemV2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkUpdateUserStatItemV2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkUpdateUserStatItem(input *user_statistic.BulkUpdateUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkUpdateUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) UpdateUserStatItemValue(input *user_statistic.UpdateUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := s.Client.UserStatistic.UpdateUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) DeleteUserStatItems2(input *user_statistic.DeleteUserStatItems2Params) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, unauthorized, forbidden, notFound, err := s.Client.UserStatistic.DeleteUserStatItems2(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
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
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *UserStatisticService) BulkUpdateUserStatItem1(input *user_statistic.BulkUpdateUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkUpdateUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkUpdateUserStatItem2(input *user_statistic.BulkUpdateUserStatItem2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkUpdateUserStatItem2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) UpdateUserStatItemValue1(input *user_statistic.UpdateUserStatItemValue1Params) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := s.Client.UserStatistic.UpdateUserStatItemValue1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkIncUserStatItem(input *user_statistic.BulkIncUserStatItemParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkIncUserStatItem(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkIncUserStatItemValue2(input *user_statistic.BulkIncUserStatItemValue2Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkIncUserStatItemValue2(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) BulkIncUserStatItem1(input *user_statistic.BulkIncUserStatItem1Params) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.BulkIncUserStatItem1(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) PublicBulkIncUserStatItemValue(input *user_statistic.PublicBulkIncUserStatItemValueParams) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unprocessableEntity, err := s.Client.UserStatistic.PublicBulkIncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *UserStatisticService) PublicIncUserStatItemValue(input *user_statistic.PublicIncUserStatItemValueParams) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := s.Client.UserStatistic.PublicIncUserStatItemValue(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	return ok.GetPayload(), nil
}
