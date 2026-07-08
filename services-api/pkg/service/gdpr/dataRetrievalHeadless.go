// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gdpr

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval_headless"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type DataRetrievalHeadlessService struct {
	Client           *gdprclient.JusticeGdprService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdDataRetrievalHeadless *string

func (aaa *DataRetrievalHeadlessService) UpdateFlightId(flightId string) {
	tempFlightIdDataRetrievalHeadless = &flightId
}

func (aaa *DataRetrievalHeadlessService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use PublicSubmitMyHeadlessPersonalDataRequestShort instead.
func (aaa *DataRetrievalHeadlessService) PublicSubmitMyHeadlessPersonalDataRequest(input *data_retrieval_headless.PublicSubmitMyHeadlessPersonalDataRequestParams) (*gdprclientmodels.ModelsDataRetrievalResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, tooManyRequests, internalServerError, err := aaa.Client.DataRetrievalHeadless.PublicSubmitMyHeadlessPersonalDataRequest(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if tooManyRequests != nil {
		return nil, tooManyRequests
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicGenerateMyHeadlessPersonalDataURLShort instead.
func (aaa *DataRetrievalHeadlessService) PublicGenerateMyHeadlessPersonalDataURL(input *data_retrieval_headless.PublicGenerateMyHeadlessPersonalDataURLParams) (*gdprclientmodels.ModelsUserDataURL, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, tooManyRequests, internalServerError, err := aaa.Client.DataRetrievalHeadless.PublicGenerateMyHeadlessPersonalDataURL(input, client.BearerToken(*token.AccessToken))
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
	if tooManyRequests != nil {
		return nil, tooManyRequests
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicGetMyPersonalDataRequestsShort instead.
func (aaa *DataRetrievalHeadlessService) PublicGetMyPersonalDataRequests(input *data_retrieval_headless.PublicGetMyPersonalDataRequestsParams) (*gdprclientmodels.ModelsUserPersonalDataResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := aaa.Client.DataRetrievalHeadless.PublicGetMyPersonalDataRequests(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicSubmitMyPersonalDataRequestShort instead.
func (aaa *DataRetrievalHeadlessService) PublicSubmitMyPersonalDataRequest(input *data_retrieval_headless.PublicSubmitMyPersonalDataRequestParams) (*gdprclientmodels.ModelsDataRetrievalResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, tooManyRequests, internalServerError, err := aaa.Client.DataRetrievalHeadless.PublicSubmitMyPersonalDataRequest(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if tooManyRequests != nil {
		return nil, tooManyRequests
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicCancelMyPersonalDataRequestShort instead.
func (aaa *DataRetrievalHeadlessService) PublicCancelMyPersonalDataRequest(input *data_retrieval_headless.PublicCancelMyPersonalDataRequestParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.DataRetrievalHeadless.PublicCancelMyPersonalDataRequest(input, client.BearerToken(*token.AccessToken))
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

func (aaa *DataRetrievalHeadlessService) PublicSubmitMyHeadlessPersonalDataRequestShort(input *data_retrieval_headless.PublicSubmitMyHeadlessPersonalDataRequestParams) (*gdprclientmodels.ModelsDataRetrievalResponse, error) {
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
	if tempFlightIdDataRetrievalHeadless != nil {
		input.XFlightId = tempFlightIdDataRetrievalHeadless
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.DataRetrievalHeadless.PublicSubmitMyHeadlessPersonalDataRequestShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if created == nil {
		return nil, nil
	}

	return created.GetPayload(), nil
}

func (aaa *DataRetrievalHeadlessService) PublicGenerateMyHeadlessPersonalDataURLShort(input *data_retrieval_headless.PublicGenerateMyHeadlessPersonalDataURLParams) (*gdprclientmodels.ModelsUserDataURL, error) {
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
	if tempFlightIdDataRetrievalHeadless != nil {
		input.XFlightId = tempFlightIdDataRetrievalHeadless
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DataRetrievalHeadless.PublicGenerateMyHeadlessPersonalDataURLShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if ok == nil {
		return nil, nil
	}

	return ok.GetPayload(), nil
}

func (aaa *DataRetrievalHeadlessService) PublicGetMyPersonalDataRequestsShort(input *data_retrieval_headless.PublicGetMyPersonalDataRequestsParams) (*gdprclientmodels.ModelsUserPersonalDataResponse, error) {
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
	if tempFlightIdDataRetrievalHeadless != nil {
		input.XFlightId = tempFlightIdDataRetrievalHeadless
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DataRetrievalHeadless.PublicGetMyPersonalDataRequestsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if ok == nil {
		return nil, nil
	}

	return ok.GetPayload(), nil
}

func (aaa *DataRetrievalHeadlessService) PublicSubmitMyPersonalDataRequestShort(input *data_retrieval_headless.PublicSubmitMyPersonalDataRequestParams) (*gdprclientmodels.ModelsDataRetrievalResponse, error) {
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
	if tempFlightIdDataRetrievalHeadless != nil {
		input.XFlightId = tempFlightIdDataRetrievalHeadless
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.DataRetrievalHeadless.PublicSubmitMyPersonalDataRequestShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if created == nil {
		return nil, nil
	}

	return created.GetPayload(), nil
}

func (aaa *DataRetrievalHeadlessService) PublicCancelMyPersonalDataRequestShort(input *data_retrieval_headless.PublicCancelMyPersonalDataRequestParams) error {
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
	if tempFlightIdDataRetrievalHeadless != nil {
		input.XFlightId = tempFlightIdDataRetrievalHeadless
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DataRetrievalHeadless.PublicCancelMyPersonalDataRequestShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
