// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package social

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type StatConfigurationService struct {
	Client          *socialclient.JusticeSocialService
	TokenRepository repository.TokenRepository
}

func (s *StatConfigurationService) GetStats(input *stat_configuration.GetStatsParams) (*socialclientmodels.StatPagingSlicedResult, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.StatConfiguration.GetStats(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) CreateStat(input *stat_configuration.CreateStatParams) (*socialclientmodels.StatInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, conflict, err := s.Client.StatConfiguration.CreateStat(input, client.BearerToken(*accessToken.AccessToken))
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (s *StatConfigurationService) ExportStats(input *stat_configuration.ExportStatsParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.StatConfiguration.ExportStats(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (s *StatConfigurationService) ImportStats(input *stat_configuration.ImportStatsParams) (*socialclientmodels.StatImportInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := s.Client.StatConfiguration.ImportStats(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) QueryStats(input *stat_configuration.QueryStatsParams) (*socialclientmodels.StatPagingSlicedResult, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.StatConfiguration.QueryStats(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) GetStat(input *stat_configuration.GetStatParams) (*socialclientmodels.StatInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.StatConfiguration.GetStat(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) DeleteStat(input *stat_configuration.DeleteStatParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := s.Client.StatConfiguration.DeleteStat(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

func (s *StatConfigurationService) UpdateStat(input *stat_configuration.UpdateStatParams) (*socialclientmodels.StatInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.StatConfiguration.UpdateStat(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) CreateStat1(input *stat_configuration.CreateStat1Params) (*socialclientmodels.StatInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, conflict, err := s.Client.StatConfiguration.CreateStat1(input, client.BearerToken(*accessToken.AccessToken))
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (s *StatConfigurationService) GetStatsShort(input *stat_configuration.GetStatsParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.StatPagingSlicedResult, error) {
	ok, err := s.Client.StatConfiguration.GetStatsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) CreateStatShort(input *stat_configuration.CreateStatParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.StatInfo, error) {
	created, err := s.Client.StatConfiguration.CreateStatShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (s *StatConfigurationService) ExportStatsShort(input *stat_configuration.ExportStatsParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := s.Client.StatConfiguration.ExportStatsShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (s *StatConfigurationService) ImportStatsShort(input *stat_configuration.ImportStatsParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.StatImportInfo, error) {
	ok, err := s.Client.StatConfiguration.ImportStatsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) QueryStatsShort(input *stat_configuration.QueryStatsParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.StatPagingSlicedResult, error) {
	ok, err := s.Client.StatConfiguration.QueryStatsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) GetStatShort(input *stat_configuration.GetStatParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.StatInfo, error) {
	ok, err := s.Client.StatConfiguration.GetStatShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) DeleteStatShort(input *stat_configuration.DeleteStatParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := s.Client.StatConfiguration.DeleteStatShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (s *StatConfigurationService) UpdateStatShort(input *stat_configuration.UpdateStatParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.StatInfo, error) {
	ok, err := s.Client.StatConfiguration.UpdateStatShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) CreateStat1Short(input *stat_configuration.CreateStat1Params, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.StatInfo, error) {
	created, err := s.Client.StatConfiguration.CreateStat1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}
