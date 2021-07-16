package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type StatisticConfigService struct {
	SocialServiceClient *socialclient.JusticeSocialService
	TokenRepository     repository.TokenRepository
}

func (s *StatisticConfigService) GetStat(namespace, statCode string) (*socialclientmodels.StatInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &stat_configuration.GetStatParams{
		Namespace: namespace,
		StatCode:  statCode,
	}
	ok, notFound, err := s.SocialServiceClient.StatConfiguration.GetStat(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticConfigService) DeleteStat(namespace, statCode string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &stat_configuration.DeleteStatParams{
		Namespace: namespace,
		StatCode:  statCode,
	}
	_, notFound, err := s.SocialServiceClient.StatConfiguration.DeleteStat(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *StatisticConfigService) UpdateStat(namespace, statCode string, content *socialclientmodels.StatUpdate) (*socialclientmodels.StatInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &stat_configuration.UpdateStatParams{
		Body:      content,
		Namespace: namespace,
		StatCode:  statCode,
	}
	ok, notFound, err := s.SocialServiceClient.StatConfiguration.UpdateStat(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticConfigService) GetStats(namespace string, limit, offset *int32) (*socialclientmodels.StatPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &stat_configuration.GetStatsParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, err := s.SocialServiceClient.StatConfiguration.GetStats(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatisticConfigService) CreateStat(namespace string, content *socialclientmodels.StatCreate) (*socialclientmodels.StatInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &stat_configuration.CreateStatParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, conflict, err := s.SocialServiceClient.StatConfiguration.CreateStat(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticConfigService) QueryStats(namespace, keyword string, limit, offset *int32) (*socialclientmodels.StatPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &stat_configuration.QueryStatsParams{
		Keyword:   keyword,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, err := s.SocialServiceClient.StatConfiguration.QueryStats(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatisticConfigService) ExportStats(namespace string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &stat_configuration.ExportStatsParams{
		Namespace: namespace,
	}
	_, err = s.SocialServiceClient.StatConfiguration.ExportStats(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *StatisticConfigService) ImportStats(namespace string, file runtime.NamedReadCloser, replaceExisting *bool) (*socialclientmodels.StatImportInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &stat_configuration.ImportStatsParams{
		File:            file,
		Namespace:       namespace,
		ReplaceExisting: replaceExisting,
	}
	ok, badRequest, err := s.SocialServiceClient.StatConfiguration.ImportStats(params, client.BearerToken(*token.AccessToken))
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

func (s *StatisticConfigService) PublicCreateStat(namespace string, content *socialclientmodels.StatCreate) (*socialclientmodels.StatInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &stat_configuration.CreateStat1Params{
		Body:      content,
		Namespace: namespace,
	}
	ok, conflict, err := s.SocialServiceClient.StatConfiguration.CreateStat1(params, client.BearerToken(*token.AccessToken))
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
