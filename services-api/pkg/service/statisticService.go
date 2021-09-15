package service

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/global_statistic"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type StatisticService struct {
	SocialServiceClient *socialclient.JusticeSocialService
	TokenRepository     repository.TokenRepository
}

func (s *StatisticService) GetGlobalStatItems(namespace string, limit, offset *int32) (*socialclientmodels.GlobalStatItemPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &global_statistic.GetGlobalStatItemsParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, err := s.SocialServiceClient.GlobalStatistic.GetGlobalStatItems(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatisticService) BulkUpdateMultipleUserStatItem(namespace string, content []*socialclientmodels.BulkUserStatItemInc) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkIncUserStatItemValueParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkIncUserStatItemValue(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) BulkFetchStatItems(namespace, statCode, userIds string) ([]*socialclientmodels.UserStatItemInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkFetchStatItemsParams{
		Namespace: namespace,
		StatCode:  statCode,
		UserIds:   userIds,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkFetchStatItems(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) BulkResetMultipleUserStatItem(namespace string, content []*socialclientmodels.BulkUserStatItemReset) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkResetUserStatItemParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkResetUserStatItem(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) BulkUpdateUserStatItem(namespace string, content []*socialclientmodels.BulkStatItemInc) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkIncUserStatItemValue1Params{
		Body:      content,
		Namespace: namespace,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkIncUserStatItemValue1(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) GetUserStatItems(namespace, userId string, statCodes, tags *string, limit, offset *int32) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.GetUserStatItemsParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		StatCodes: statCodes,
		Tags:      tags,
		UserID:    userId,
	}
	ok, err := s.SocialServiceClient.UserStatistic.GetUserStatItems(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatisticService) BulkCreateUserStatItems(namespace, userId string, content []*socialclientmodels.BulkStatItemCreate) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkCreateUserStatItemsParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkCreateUserStatItems(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) BulkResetUserStatItem(namespace, userId string, content []*socialclientmodels.BulkStatItemReset) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkResetUserStatItem1Params{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkResetUserStatItem1(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) CreateUserStatItem(namespace, userId, statCode string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &user_statistic.CreateUserStatItemParams{
		Namespace: namespace,
		StatCode:  statCode,
		UserID:    userId,
	}
	_, notFound, conflict, err := s.SocialServiceClient.UserStatistic.CreateUserStatItem(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) DeleteUserStatItems(namespace, userId, statCode string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &user_statistic.DeleteUserStatItemsParams{
		Namespace: namespace,
		StatCode:  statCode,
		UserID:    userId,
	}
	_, unauthorized, forbidden, notFound, err := s.SocialServiceClient.UserStatistic.DeleteUserStatItems(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) ResetUserStatItemValue(namespace, statCode, userId string, additionalKey *string) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.ResetUserStatItemValueParams{
		AdditionalKey: additionalKey,
		Namespace:     namespace,
		StatCode:      statCode,
		UserID:        userId,
	}
	ok, badRequest, notFound, err := s.SocialServiceClient.UserStatistic.ResetUserStatItemValue(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) IncUserStatItemValue(namespace, statCode, userId string, content *socialclientmodels.StatItemInc) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.IncUserStatItemValueParams{
		Body:      content,
		Namespace: namespace,
		StatCode:  statCode,
		UserID:    userId,
	}
	ok, badRequest, notFound, conflict, err := s.SocialServiceClient.UserStatistic.IncUserStatItemValue(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicBulkIncMultipleUserStatItem(namespace string, content []*socialclientmodels.BulkUserStatItemInc) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.PublicBulkIncUserStatItemParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.PublicBulkIncUserStatItem(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicBulkFetchStatItems(namespace, statCode, userIds string) ([]*socialclientmodels.UserStatItemInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkFetchStatItems1Params{
		Namespace: namespace,
		StatCode:  statCode,
		UserIds:   userIds,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkFetchStatItems1(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicBulkResetMultipleUserStatItem(namespace string, content []*socialclientmodels.BulkUserStatItemReset) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkResetUserStatItem2Params{
		Body:      content,
		Namespace: namespace,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkResetUserStatItem2(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicBulkIncUserStatItem(namespace, userId string, content []*socialclientmodels.BulkStatItemInc) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.PublicBulkIncUserStatItem1Params{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.PublicBulkIncUserStatItem1(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicQueryUserStatItems(namespace, userId string, tags, statCodes *string, limit, offset *int32) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.PublicQueryUserStatItemsParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		StatCodes: statCodes,
		Tags:      tags,
		UserID:    userId,
	}
	ok, err := s.SocialServiceClient.UserStatistic.PublicQueryUserStatItems(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatisticService) PublicBulkCreateUserStatItems(namespace, userId string, content []*socialclientmodels.BulkStatItemCreate) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.PublicBulkCreateUserStatItemsParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.PublicBulkCreateUserStatItems(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicBulkResetUserStatItem(namespace, userId string, content []*socialclientmodels.BulkStatItemReset) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkResetUserStatItem3Params{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkResetUserStatItem3(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicIncUserStatItem(namespace, userId string, content *socialclientmodels.StatItemInc) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.PublicIncUserStatItemParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, notFound, conflict, err := s.SocialServiceClient.UserStatistic.PublicIncUserStatItem(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicCreateUserStatItem(namespace, userId, statCode string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &user_statistic.PublicCreateUserStatItemParams{
		Namespace: namespace,
		StatCode:  statCode,
		UserID:    userId,
	}
	_, notFound, conflict, err := s.SocialServiceClient.UserStatistic.PublicCreateUserStatItem(params, client.BearerToken(*token.AccessToken))

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

func (s *StatisticService) PublicDeleteUserStatItem(namespace, userId, statCode string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &user_statistic.DeleteUserStatItems1Params{
		Namespace: namespace,
		StatCode:  statCode,
		UserID:    userId,
	}
	_, unauthorized, forbidden, notFound, err := s.SocialServiceClient.UserStatistic.DeleteUserStatItems1(params, client.BearerToken(*token.AccessToken))

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

func (s *StatisticService) PublicResetUserStatItemValue(namespace, userId, statCode string) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.ResetUserStatItemValue1Params{
		Namespace: namespace,
		StatCode:  statCode,
		UserID:    userId,
	}
	ok, badRequest, notFound, err := s.SocialServiceClient.UserStatistic.ResetUserStatItemValue1(params, client.BearerToken(*token.AccessToken))

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

func (s *StatisticService) BulkUpdateMultipleUserStatItemV2(namespace string, content []*socialclientmodels.BulkUserStatItemUpdate) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkUpdateUserStatItemV2Params{
		Body:      content,
		Namespace: namespace,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkUpdateUserStatItemV2(params, client.BearerToken(*token.AccessToken))

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

func (s *StatisticService) BulkUpdateUserStatItemV2(namespace string, content []*socialclientmodels.BulkStatItemUpdate) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkUpdateUserStatItemParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkUpdateUserStatItem(params, client.BearerToken(*token.AccessToken))

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

func (s *StatisticService) IncUserStatItemValueV2(namespace string, content *socialclientmodels.StatItemUpdate) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.UpdateUserStatItemValueParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.UpdateUserStatItemValue(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) DeleteUserStatItemsV2(namespace, userId, statCode string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &user_statistic.DeleteUserStatItems2Params{
		Namespace: namespace,
		StatCode:  statCode,
		UserID:    userId,
	}
	_, unauthorized, forbidden, notFound, err := s.SocialServiceClient.UserStatistic.DeleteUserStatItems2(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicBulkIncMultipleUserStatItemV2(namespace string, content []*socialclientmodels.BulkUserStatItemUpdate) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkUpdateUserStatItem1Params{
		Body:      content,
		Namespace: namespace,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkUpdateUserStatItem1(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicBulkIncUserStatItemV2(namespace string, content []*socialclientmodels.BulkStatItemUpdate) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkUpdateUserStatItem2Params{
		Body:      content,
		Namespace: namespace,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkUpdateUserStatItem2(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicIncUserStatItemV2(namespace string, content *socialclientmodels.StatItemUpdate) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.UpdateUserStatItemValue1Params{
		Body:      content,
		Namespace: namespace,
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.UpdateUserStatItemValue1(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) BulkIncUserStatItem(namespace string, content []*socialclientmodels.BulkUserStatItemInc) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkIncUserStatItemParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkIncUserStatItem(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) BulkIncUserStatItemValue2(namespace string, userID string, content []*socialclientmodels.BulkStatItemInc) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkIncUserStatItemValue2Params{
		Body:      content,
		Namespace: namespace,
		UserID:    userID,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkIncUserStatItemValue2(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) BulkIncUserStatItem1(namespace string, userID string, content []*socialclientmodels.BulkStatItemInc) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.BulkIncUserStatItem1Params{
		Body:      content,
		Namespace: namespace,
		UserID:    userID,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.BulkIncUserStatItem1(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicBulkIncUserStatItemValue(namespace string, content []*socialclientmodels.BulkUserStatItemInc) ([]*socialclientmodels.BulkStatItemOperationResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.PublicBulkIncUserStatItemValueParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, unprocessableEntity, err := s.SocialServiceClient.UserStatistic.PublicBulkIncUserStatItemValue(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticService) PublicIncUserStatItemValue(namespace string, statCode string, userID string, content *socialclientmodels.StatItemInc) (*socialclientmodels.StatItemIncResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_statistic.PublicIncUserStatItemValueParams{
		Body:      content,
		Namespace: namespace,
		StatCode:  statCode,
		UserID:    userID,
	}
	ok, badRequest, notFound, conflict, err := s.SocialServiceClient.UserStatistic.PublicIncUserStatItemValue(params, client.BearerToken(*token.AccessToken))
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
