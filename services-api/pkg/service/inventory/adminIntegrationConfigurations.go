// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inventory

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_integration_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AdminIntegrationConfigurationsService struct {
	Client           *inventoryclient.JusticeInventoryService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdAdminIntegrationConfigurations *string

func (aaa *AdminIntegrationConfigurationsService) UpdateFlightId(flightId string) {
	tempFlightIdAdminIntegrationConfigurations = &flightId
}

func (aaa *AdminIntegrationConfigurationsService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use AdminListIntegrationConfigurationsShort instead.
func (aaa *AdminIntegrationConfigurationsService) AdminListIntegrationConfigurations(input *admin_integration_configurations.AdminListIntegrationConfigurationsParams) (*inventoryclientmodels.ApimodelsListIntegrationConfigurationsResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := aaa.Client.AdminIntegrationConfigurations.AdminListIntegrationConfigurations(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminCreateIntegrationConfigurationShort instead.
func (aaa *AdminIntegrationConfigurationsService) AdminCreateIntegrationConfiguration(input *admin_integration_configurations.AdminCreateIntegrationConfigurationParams) (*inventoryclientmodels.ApimodelsIntegrationConfigurationResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, conflict, internalServerError, err := aaa.Client.AdminIntegrationConfigurations.AdminCreateIntegrationConfiguration(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: 2022-01-10 - please use AdminUpdateIntegrationConfigurationShort instead.
func (aaa *AdminIntegrationConfigurationsService) AdminUpdateIntegrationConfiguration(input *admin_integration_configurations.AdminUpdateIntegrationConfigurationParams) (*inventoryclientmodels.ApimodelsIntegrationConfigurationResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, internalServerError, err := aaa.Client.AdminIntegrationConfigurations.AdminUpdateIntegrationConfiguration(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: 2022-01-10 - please use AdminUpdateStatusIntegrationConfigurationShort instead.
func (aaa *AdminIntegrationConfigurationsService) AdminUpdateStatusIntegrationConfiguration(input *admin_integration_configurations.AdminUpdateStatusIntegrationConfigurationParams) (*inventoryclientmodels.ApimodelsIntegrationConfigurationResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, internalServerError, err := aaa.Client.AdminIntegrationConfigurations.AdminUpdateStatusIntegrationConfiguration(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

func (aaa *AdminIntegrationConfigurationsService) AdminListIntegrationConfigurationsShort(input *admin_integration_configurations.AdminListIntegrationConfigurationsParams) (*inventoryclientmodels.ApimodelsListIntegrationConfigurationsResp, error) {
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
	if tempFlightIdAdminIntegrationConfigurations != nil {
		input.XFlightId = tempFlightIdAdminIntegrationConfigurations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminIntegrationConfigurations.AdminListIntegrationConfigurationsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminIntegrationConfigurationsService) AdminCreateIntegrationConfigurationShort(input *admin_integration_configurations.AdminCreateIntegrationConfigurationParams) (*inventoryclientmodels.ApimodelsIntegrationConfigurationResp, error) {
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
	if tempFlightIdAdminIntegrationConfigurations != nil {
		input.XFlightId = tempFlightIdAdminIntegrationConfigurations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.AdminIntegrationConfigurations.AdminCreateIntegrationConfigurationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AdminIntegrationConfigurationsService) AdminUpdateIntegrationConfigurationShort(input *admin_integration_configurations.AdminUpdateIntegrationConfigurationParams) (*inventoryclientmodels.ApimodelsIntegrationConfigurationResp, error) {
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
	if tempFlightIdAdminIntegrationConfigurations != nil {
		input.XFlightId = tempFlightIdAdminIntegrationConfigurations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminIntegrationConfigurations.AdminUpdateIntegrationConfigurationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminIntegrationConfigurationsService) AdminUpdateStatusIntegrationConfigurationShort(input *admin_integration_configurations.AdminUpdateStatusIntegrationConfigurationParams) (*inventoryclientmodels.ApimodelsIntegrationConfigurationResp, error) {
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
	if tempFlightIdAdminIntegrationConfigurations != nil {
		input.XFlightId = tempFlightIdAdminIntegrationConfigurations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminIntegrationConfigurations.AdminUpdateStatusIntegrationConfigurationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
