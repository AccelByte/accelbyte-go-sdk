// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsave

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AdminPlayerBinaryRecordService struct {
	Client           *cloudsaveclient.JusticeCloudsaveService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdAdminPlayerBinaryRecord *string

func (aaa *AdminPlayerBinaryRecordService) UpdateFlightId(flightId string) {
	tempFlightIdAdminPlayerBinaryRecord = &flightId
}

func (aaa *AdminPlayerBinaryRecordService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use AdminListPlayerBinaryRecordsV1Short instead.
func (aaa *AdminPlayerBinaryRecordService) AdminListPlayerBinaryRecordsV1(input *admin_player_binary_record.AdminListPlayerBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.AdminPlayerBinaryRecord.AdminListPlayerBinaryRecordsV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminPostPlayerBinaryRecordV1Short instead.
func (aaa *AdminPlayerBinaryRecordService) AdminPostPlayerBinaryRecordV1(input *admin_player_binary_record.AdminPostPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := aaa.Client.AdminPlayerBinaryRecord.AdminPostPlayerBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminGetPlayerBinaryRecordV1Short instead.
func (aaa *AdminPlayerBinaryRecordService) AdminGetPlayerBinaryRecordV1(input *admin_player_binary_record.AdminGetPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.AdminPlayerBinaryRecord.AdminGetPlayerBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminPutPlayerBinaryRecordV1Short instead.
func (aaa *AdminPlayerBinaryRecordService) AdminPutPlayerBinaryRecordV1(input *admin_player_binary_record.AdminPutPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.AdminPlayerBinaryRecord.AdminPutPlayerBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminDeletePlayerBinaryRecordV1Short instead.
func (aaa *AdminPlayerBinaryRecordService) AdminDeletePlayerBinaryRecordV1(input *admin_player_binary_record.AdminDeletePlayerBinaryRecordV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.AdminPlayerBinaryRecord.AdminDeletePlayerBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminPutPlayerBinaryRecorMetadataV1Short instead.
func (aaa *AdminPlayerBinaryRecordService) AdminPutPlayerBinaryRecorMetadataV1(input *admin_player_binary_record.AdminPutPlayerBinaryRecorMetadataV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.AdminPlayerBinaryRecord.AdminPutPlayerBinaryRecorMetadataV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminPostPlayerBinaryPresignedURLV1Short instead.
func (aaa *AdminPlayerBinaryRecordService) AdminPostPlayerBinaryPresignedURLV1(input *admin_player_binary_record.AdminPostPlayerBinaryPresignedURLV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.AdminPlayerBinaryRecord.AdminPostPlayerBinaryPresignedURLV1(input, client.BearerToken(*token.AccessToken))
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

	return created.GetPayload(), nil
}

func (aaa *AdminPlayerBinaryRecordService) AdminListPlayerBinaryRecordsV1Short(input *admin_player_binary_record.AdminListPlayerBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse, error) {
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
	if tempFlightIdAdminPlayerBinaryRecord != nil {
		input.XFlightId = tempFlightIdAdminPlayerBinaryRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminPlayerBinaryRecord.AdminListPlayerBinaryRecordsV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminPlayerBinaryRecordService) AdminPostPlayerBinaryRecordV1Short(input *admin_player_binary_record.AdminPostPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
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
	if tempFlightIdAdminPlayerBinaryRecord != nil {
		input.XFlightId = tempFlightIdAdminPlayerBinaryRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.AdminPlayerBinaryRecord.AdminPostPlayerBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AdminPlayerBinaryRecordService) AdminGetPlayerBinaryRecordV1Short(input *admin_player_binary_record.AdminGetPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
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
	if tempFlightIdAdminPlayerBinaryRecord != nil {
		input.XFlightId = tempFlightIdAdminPlayerBinaryRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminPlayerBinaryRecord.AdminGetPlayerBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminPlayerBinaryRecordService) AdminPutPlayerBinaryRecordV1Short(input *admin_player_binary_record.AdminPutPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
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
	if tempFlightIdAdminPlayerBinaryRecord != nil {
		input.XFlightId = tempFlightIdAdminPlayerBinaryRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminPlayerBinaryRecord.AdminPutPlayerBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminPlayerBinaryRecordService) AdminDeletePlayerBinaryRecordV1Short(input *admin_player_binary_record.AdminDeletePlayerBinaryRecordV1Params) error {
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
	if tempFlightIdAdminPlayerBinaryRecord != nil {
		input.XFlightId = tempFlightIdAdminPlayerBinaryRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.AdminPlayerBinaryRecord.AdminDeletePlayerBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminPlayerBinaryRecordService) AdminPutPlayerBinaryRecorMetadataV1Short(input *admin_player_binary_record.AdminPutPlayerBinaryRecorMetadataV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
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
	if tempFlightIdAdminPlayerBinaryRecord != nil {
		input.XFlightId = tempFlightIdAdminPlayerBinaryRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminPlayerBinaryRecord.AdminPutPlayerBinaryRecorMetadataV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminPlayerBinaryRecordService) AdminPostPlayerBinaryPresignedURLV1Short(input *admin_player_binary_record.AdminPostPlayerBinaryPresignedURLV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
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
	if tempFlightIdAdminPlayerBinaryRecord != nil {
		input.XFlightId = tempFlightIdAdminPlayerBinaryRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.AdminPlayerBinaryRecord.AdminPostPlayerBinaryPresignedURLV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}
