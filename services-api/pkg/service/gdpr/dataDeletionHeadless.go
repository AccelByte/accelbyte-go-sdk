// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gdpr

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion_headless"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type DataDeletionHeadlessService struct {
	Client           *gdprclient.JusticeGdprService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdDataDeletionHeadless *string

func (aaa *DataDeletionHeadlessService) UpdateFlightId(flightId string) {
	tempFlightIdDataDeletionHeadless = &flightId
}

func (aaa *DataDeletionHeadlessService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use PublicSubmitMyAccountDeletionRequestShort instead.
func (aaa *DataDeletionHeadlessService) PublicSubmitMyAccountDeletionRequest(input *data_deletion_headless.PublicSubmitMyAccountDeletionRequestParams) (*gdprclientmodels.ModelsRequestDeleteResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := aaa.Client.DataDeletionHeadless.PublicSubmitMyAccountDeletionRequest(input, client.BearerToken(*token.AccessToken))
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

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicCancelMyAccountDeletionRequestShort instead.
func (aaa *DataDeletionHeadlessService) PublicCancelMyAccountDeletionRequest(input *data_deletion_headless.PublicCancelMyAccountDeletionRequestParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.DataDeletionHeadless.PublicCancelMyAccountDeletionRequest(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicGetMyAccountDeletionStatusShort instead.
func (aaa *DataDeletionHeadlessService) PublicGetMyAccountDeletionStatus(input *data_deletion_headless.PublicGetMyAccountDeletionStatusParams) (*gdprclientmodels.ModelsDeletionStatus, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := aaa.Client.DataDeletionHeadless.PublicGetMyAccountDeletionStatus(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicSubmitMyHeadlessDeletionRequestShort instead.
func (aaa *DataDeletionHeadlessService) PublicSubmitMyHeadlessDeletionRequest(input *data_deletion_headless.PublicSubmitMyHeadlessDeletionRequestParams) (*gdprclientmodels.ModelsRequestDeleteResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, unauthorized, forbidden, conflict, internalServerError, err := aaa.Client.DataDeletionHeadless.PublicSubmitMyHeadlessDeletionRequest(input, client.BearerToken(*token.AccessToken))
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

func (aaa *DataDeletionHeadlessService) PublicSubmitMyAccountDeletionRequestShort(input *data_deletion_headless.PublicSubmitMyAccountDeletionRequestParams) (*gdprclientmodels.ModelsRequestDeleteResponse, error) {
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
	if tempFlightIdDataDeletionHeadless != nil {
		input.XFlightId = tempFlightIdDataDeletionHeadless
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.DataDeletionHeadless.PublicSubmitMyAccountDeletionRequestShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if created == nil {
		return nil, nil
	}

	return created.GetPayload(), nil
}

func (aaa *DataDeletionHeadlessService) PublicCancelMyAccountDeletionRequestShort(input *data_deletion_headless.PublicCancelMyAccountDeletionRequestParams) error {
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
	if tempFlightIdDataDeletionHeadless != nil {
		input.XFlightId = tempFlightIdDataDeletionHeadless
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DataDeletionHeadless.PublicCancelMyAccountDeletionRequestShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DataDeletionHeadlessService) PublicGetMyAccountDeletionStatusShort(input *data_deletion_headless.PublicGetMyAccountDeletionStatusParams) (*gdprclientmodels.ModelsDeletionStatus, error) {
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
	if tempFlightIdDataDeletionHeadless != nil {
		input.XFlightId = tempFlightIdDataDeletionHeadless
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DataDeletionHeadless.PublicGetMyAccountDeletionStatusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if ok == nil {
		return nil, nil
	}

	return ok.GetPayload(), nil
}

func (aaa *DataDeletionHeadlessService) PublicSubmitMyHeadlessDeletionRequestShort(input *data_deletion_headless.PublicSubmitMyHeadlessDeletionRequestParams) (*gdprclientmodels.ModelsRequestDeleteResponse, error) {
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
	if tempFlightIdDataDeletionHeadless != nil {
		input.XFlightId = tempFlightIdDataDeletionHeadless
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.DataDeletionHeadless.PublicSubmitMyHeadlessDeletionRequestShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if created == nil {
		return nil, nil
	}

	return created.GetPayload(), nil
}
