// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type LeaderboardConfigurationService struct {
	Client                 *leaderboardclient.JusticeLeaderboardService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *LeaderboardConfigurationService) GetAuthSession() auth.Session {
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

// deprecated(2022-01-10): please use GetLeaderboardConfigurationsAdminV1Short instead.
func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationsAdminV1(input *leaderboard_configuration.GetLeaderboardConfigurationsAdminV1Params) (*leaderboardclientmodels.ModelsGetAllLeaderboardConfigsResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationsAdminV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use CreateLeaderboardConfigurationAdminV1Short instead.
func (aaa *LeaderboardConfigurationService) CreateLeaderboardConfigurationAdminV1(input *leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Params) (*leaderboardclientmodels.ModelsLeaderboardConfigReq, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := aaa.Client.LeaderboardConfiguration.CreateLeaderboardConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// deprecated(2022-01-10): please use DeleteBulkLeaderboardConfigurationAdminV1Short instead.
func (aaa *LeaderboardConfigurationService) DeleteBulkLeaderboardConfigurationAdminV1(input *leaderboard_configuration.DeleteBulkLeaderboardConfigurationAdminV1Params) (*leaderboardclientmodels.ModelsDeleteBulkLeaderboardsResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.LeaderboardConfiguration.DeleteBulkLeaderboardConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use GetLeaderboardConfigurationAdminV1Short instead.
func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationAdminV1(input *leaderboard_configuration.GetLeaderboardConfigurationAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use UpdateLeaderboardConfigurationAdminV1Short instead.
func (aaa *LeaderboardConfigurationService) UpdateLeaderboardConfigurationAdminV1(input *leaderboard_configuration.UpdateLeaderboardConfigurationAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardConfiguration.UpdateLeaderboardConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use DeleteLeaderboardConfigurationAdminV1Short instead.
func (aaa *LeaderboardConfigurationService) DeleteLeaderboardConfigurationAdminV1(input *leaderboard_configuration.DeleteLeaderboardConfigurationAdminV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardConfiguration.DeleteLeaderboardConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// deprecated(2022-01-10): please use GetLeaderboardConfigurationsPublicV1Short instead.
func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationsPublicV1(input *leaderboard_configuration.GetLeaderboardConfigurationsPublicV1Params) (*leaderboardclientmodels.ModelsGetAllLeaderboardConfigsPublicResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationsPublicV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use CreateLeaderboardConfigurationPublicV1Short instead.
func (aaa *LeaderboardConfigurationService) CreateLeaderboardConfigurationPublicV1(input *leaderboard_configuration.CreateLeaderboardConfigurationPublicV1Params) (*leaderboardclientmodels.ModelsLeaderboardConfigReq, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := aaa.Client.LeaderboardConfiguration.CreateLeaderboardConfigurationPublicV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// deprecated(2022-01-10): please use GetLeaderboardConfigurationsPublicV2Short instead.
func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationsPublicV2(input *leaderboard_configuration.GetLeaderboardConfigurationsPublicV2Params) (*leaderboardclientmodels.V2GetAllLeaderboardConfigsPublicResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationsPublicV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationsAdminV1Short(input *leaderboard_configuration.GetLeaderboardConfigurationsAdminV1Params) (*leaderboardclientmodels.ModelsGetAllLeaderboardConfigsResp, error) {
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

	ok, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationsAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationService) CreateLeaderboardConfigurationAdminV1Short(input *leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Params) (*leaderboardclientmodels.ModelsLeaderboardConfigReq, error) {
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

	created, err := aaa.Client.LeaderboardConfiguration.CreateLeaderboardConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationService) DeleteBulkLeaderboardConfigurationAdminV1Short(input *leaderboard_configuration.DeleteBulkLeaderboardConfigurationAdminV1Params) (*leaderboardclientmodels.ModelsDeleteBulkLeaderboardsResp, error) {
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

	ok, err := aaa.Client.LeaderboardConfiguration.DeleteBulkLeaderboardConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationAdminV1Short(input *leaderboard_configuration.GetLeaderboardConfigurationAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigResp, error) {
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

	ok, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationService) UpdateLeaderboardConfigurationAdminV1Short(input *leaderboard_configuration.UpdateLeaderboardConfigurationAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigResp, error) {
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

	ok, err := aaa.Client.LeaderboardConfiguration.UpdateLeaderboardConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationService) DeleteLeaderboardConfigurationAdminV1Short(input *leaderboard_configuration.DeleteLeaderboardConfigurationAdminV1Params) error {
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

	_, err := aaa.Client.LeaderboardConfiguration.DeleteLeaderboardConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationsPublicV1Short(input *leaderboard_configuration.GetLeaderboardConfigurationsPublicV1Params) (*leaderboardclientmodels.ModelsGetAllLeaderboardConfigsPublicResp, error) {
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

	ok, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationsPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationService) CreateLeaderboardConfigurationPublicV1Short(input *leaderboard_configuration.CreateLeaderboardConfigurationPublicV1Params) (*leaderboardclientmodels.ModelsLeaderboardConfigReq, error) {
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

	created, err := aaa.Client.LeaderboardConfiguration.CreateLeaderboardConfigurationPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationsPublicV2Short(input *leaderboard_configuration.GetLeaderboardConfigurationsPublicV2Params) (*leaderboardclientmodels.V2GetAllLeaderboardConfigsPublicResp, error) {
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

	ok, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationsPublicV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
