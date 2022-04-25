// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package social

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
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

// Deprecated: Use GetStatsShort instead
func (s *StatConfigurationService) GetStats(input *stat_configuration.GetStatsParams) (*socialclientmodels.StatPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.StatConfiguration.GetStats(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateStatShort instead
func (s *StatConfigurationService) CreateStat(input *stat_configuration.CreateStatParams) (*socialclientmodels.StatInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, conflict, err := s.Client.StatConfiguration.CreateStat(input, client.BearerToken(*token.AccessToken))
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use ExportStatsShort instead
func (s *StatConfigurationService) ExportStats(input *stat_configuration.ExportStatsParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.StatConfiguration.ExportStats(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use ImportStatsShort instead
func (s *StatConfigurationService) ImportStats(input *stat_configuration.ImportStatsParams) (*socialclientmodels.StatImportInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := s.Client.StatConfiguration.ImportStats(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use QueryStatsShort instead
func (s *StatConfigurationService) QueryStats(input *stat_configuration.QueryStatsParams) (*socialclientmodels.StatPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.StatConfiguration.QueryStats(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetStatShort instead
func (s *StatConfigurationService) GetStat(input *stat_configuration.GetStatParams) (*socialclientmodels.StatInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.StatConfiguration.GetStat(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteStatShort instead
func (s *StatConfigurationService) DeleteStat(input *stat_configuration.DeleteStatParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := s.Client.StatConfiguration.DeleteStat(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateStatShort instead
func (s *StatConfigurationService) UpdateStat(input *stat_configuration.UpdateStatParams) (*socialclientmodels.StatInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.StatConfiguration.UpdateStat(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateStat1Short instead
func (s *StatConfigurationService) CreateStat1(input *stat_configuration.CreateStat1Params) (*socialclientmodels.StatInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, conflict, err := s.Client.StatConfiguration.CreateStat1(input, client.BearerToken(*token.AccessToken))
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (s *StatConfigurationService) GetStatsShort(input *stat_configuration.GetStatsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*socialclientmodels.StatPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.StatConfiguration.GetStatsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) CreateStatShort(input *stat_configuration.CreateStatParams, authInfoWriter runtime.ClientAuthInfoWriter) (*socialclientmodels.StatInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	created, err := s.Client.StatConfiguration.CreateStatShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (s *StatConfigurationService) ExportStatsShort(input *stat_configuration.ExportStatsParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	_, err := s.Client.StatConfiguration.ExportStatsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (s *StatConfigurationService) ImportStatsShort(input *stat_configuration.ImportStatsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*socialclientmodels.StatImportInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.StatConfiguration.ImportStatsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) QueryStatsShort(input *stat_configuration.QueryStatsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*socialclientmodels.StatPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.StatConfiguration.QueryStatsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) GetStatShort(input *stat_configuration.GetStatParams, authInfoWriter runtime.ClientAuthInfoWriter) (*socialclientmodels.StatInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.StatConfiguration.GetStatShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) DeleteStatShort(input *stat_configuration.DeleteStatParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	_, err := s.Client.StatConfiguration.DeleteStatShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (s *StatConfigurationService) UpdateStatShort(input *stat_configuration.UpdateStatParams, authInfoWriter runtime.ClientAuthInfoWriter) (*socialclientmodels.StatInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.StatConfiguration.UpdateStatShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *StatConfigurationService) CreateStat1Short(input *stat_configuration.CreateStat1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*socialclientmodels.StatInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	created, err := s.Client.StatConfiguration.CreateStat1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}
