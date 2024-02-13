// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration_v3"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type LeaderboardConfigurationV3Service struct {
	Client           *leaderboardclient.JusticeLeaderboardService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdLeaderboardConfigurationV3 *string

func (aaa *LeaderboardConfigurationV3Service) UpdateFlightId(flightId string) {
	tempFlightIdLeaderboardConfigurationV3 = &flightId
}

func (aaa *LeaderboardConfigurationV3Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use GetLeaderboardConfigurationsAdminV3Short instead.
func (aaa *LeaderboardConfigurationV3Service) GetLeaderboardConfigurationsAdminV3(input *leaderboard_configuration_v3.GetLeaderboardConfigurationsAdminV3Params) (*leaderboardclientmodels.ModelsGetAllLeaderboardConfigsRespV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.LeaderboardConfigurationV3.GetLeaderboardConfigurationsAdminV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use CreateLeaderboardConfigurationAdminV3Short instead.
func (aaa *LeaderboardConfigurationV3Service) CreateLeaderboardConfigurationAdminV3(input *leaderboard_configuration_v3.CreateLeaderboardConfigurationAdminV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigRespV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := aaa.Client.LeaderboardConfigurationV3.CreateLeaderboardConfigurationAdminV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use DeleteBulkLeaderboardConfigurationAdminV3Short instead.
func (aaa *LeaderboardConfigurationV3Service) DeleteBulkLeaderboardConfigurationAdminV3(input *leaderboard_configuration_v3.DeleteBulkLeaderboardConfigurationAdminV3Params) (*leaderboardclientmodels.ModelsDeleteBulkLeaderboardsResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.LeaderboardConfigurationV3.DeleteBulkLeaderboardConfigurationAdminV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetLeaderboardConfigurationAdminV3Short instead.
func (aaa *LeaderboardConfigurationV3Service) GetLeaderboardConfigurationAdminV3(input *leaderboard_configuration_v3.GetLeaderboardConfigurationAdminV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigRespV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardConfigurationV3.GetLeaderboardConfigurationAdminV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use UpdateLeaderboardConfigurationAdminV3Short instead.
func (aaa *LeaderboardConfigurationV3Service) UpdateLeaderboardConfigurationAdminV3(input *leaderboard_configuration_v3.UpdateLeaderboardConfigurationAdminV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigRespV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := aaa.Client.LeaderboardConfigurationV3.UpdateLeaderboardConfigurationAdminV3(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use DeleteLeaderboardConfigurationAdminV3Short instead.
func (aaa *LeaderboardConfigurationV3Service) DeleteLeaderboardConfigurationAdminV3(input *leaderboard_configuration_v3.DeleteLeaderboardConfigurationAdminV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardConfigurationV3.DeleteLeaderboardConfigurationAdminV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use HardDeleteLeaderboardAdminV3Short instead.
func (aaa *LeaderboardConfigurationV3Service) HardDeleteLeaderboardAdminV3(input *leaderboard_configuration_v3.HardDeleteLeaderboardAdminV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardConfigurationV3.HardDeleteLeaderboardAdminV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetLeaderboardConfigurationsPublicV3Short instead.
func (aaa *LeaderboardConfigurationV3Service) GetLeaderboardConfigurationsPublicV3(input *leaderboard_configuration_v3.GetLeaderboardConfigurationsPublicV3Params) (*leaderboardclientmodels.ModelsGetAllLeaderboardConfigsPublicRespV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.LeaderboardConfigurationV3.GetLeaderboardConfigurationsPublicV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetLeaderboardConfigurationPublicV3Short instead.
func (aaa *LeaderboardConfigurationV3Service) GetLeaderboardConfigurationPublicV3(input *leaderboard_configuration_v3.GetLeaderboardConfigurationPublicV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigPublicRespV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardConfigurationV3.GetLeaderboardConfigurationPublicV3(input, client.BearerToken(*token.AccessToken))
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

func (aaa *LeaderboardConfigurationV3Service) GetLeaderboardConfigurationsAdminV3Short(input *leaderboard_configuration_v3.GetLeaderboardConfigurationsAdminV3Params) (*leaderboardclientmodels.ModelsGetAllLeaderboardConfigsRespV3, error) {
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
	if tempFlightIdLeaderboardConfigurationV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardConfigurationV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfigurationV3.GetLeaderboardConfigurationsAdminV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationV3Service) CreateLeaderboardConfigurationAdminV3Short(input *leaderboard_configuration_v3.CreateLeaderboardConfigurationAdminV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigRespV3, error) {
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
	if tempFlightIdLeaderboardConfigurationV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardConfigurationV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.LeaderboardConfigurationV3.CreateLeaderboardConfigurationAdminV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationV3Service) DeleteBulkLeaderboardConfigurationAdminV3Short(input *leaderboard_configuration_v3.DeleteBulkLeaderboardConfigurationAdminV3Params) (*leaderboardclientmodels.ModelsDeleteBulkLeaderboardsResp, error) {
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
	if tempFlightIdLeaderboardConfigurationV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardConfigurationV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfigurationV3.DeleteBulkLeaderboardConfigurationAdminV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationV3Service) GetLeaderboardConfigurationAdminV3Short(input *leaderboard_configuration_v3.GetLeaderboardConfigurationAdminV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigRespV3, error) {
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
	if tempFlightIdLeaderboardConfigurationV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardConfigurationV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfigurationV3.GetLeaderboardConfigurationAdminV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationV3Service) UpdateLeaderboardConfigurationAdminV3Short(input *leaderboard_configuration_v3.UpdateLeaderboardConfigurationAdminV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigRespV3, error) {
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
	if tempFlightIdLeaderboardConfigurationV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardConfigurationV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfigurationV3.UpdateLeaderboardConfigurationAdminV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationV3Service) DeleteLeaderboardConfigurationAdminV3Short(input *leaderboard_configuration_v3.DeleteLeaderboardConfigurationAdminV3Params) error {
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
	if tempFlightIdLeaderboardConfigurationV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardConfigurationV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.LeaderboardConfigurationV3.DeleteLeaderboardConfigurationAdminV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LeaderboardConfigurationV3Service) HardDeleteLeaderboardAdminV3Short(input *leaderboard_configuration_v3.HardDeleteLeaderboardAdminV3Params) error {
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
	if tempFlightIdLeaderboardConfigurationV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardConfigurationV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.LeaderboardConfigurationV3.HardDeleteLeaderboardAdminV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LeaderboardConfigurationV3Service) GetLeaderboardConfigurationsPublicV3Short(input *leaderboard_configuration_v3.GetLeaderboardConfigurationsPublicV3Params) (*leaderboardclientmodels.ModelsGetAllLeaderboardConfigsPublicRespV3, error) {
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
	if tempFlightIdLeaderboardConfigurationV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardConfigurationV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfigurationV3.GetLeaderboardConfigurationsPublicV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardConfigurationV3Service) GetLeaderboardConfigurationPublicV3Short(input *leaderboard_configuration_v3.GetLeaderboardConfigurationPublicV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardConfigPublicRespV3, error) {
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
	if tempFlightIdLeaderboardConfigurationV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardConfigurationV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfigurationV3.GetLeaderboardConfigurationPublicV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
