// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsave

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type PublicPlayerBinaryRecordService struct {
	Client           *cloudsaveclient.JusticeCloudsaveService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *PublicPlayerBinaryRecordService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use BulkGetPlayerPublicBinaryRecordsV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) BulkGetPlayerPublicBinaryRecordsV1(input *public_player_binary_record.BulkGetPlayerPublicBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.BulkGetPlayerPublicBinaryRecordsV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use ListMyBinaryRecordsV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) ListMyBinaryRecordsV1(input *public_player_binary_record.ListMyBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.ListMyBinaryRecordsV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use BulkGetMyBinaryRecordV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) BulkGetMyBinaryRecordV1(input *public_player_binary_record.BulkGetMyBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.BulkGetMyBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PostPlayerBinaryRecordV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) PostPlayerBinaryRecordV1(input *public_player_binary_record.PostPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.PostPlayerBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use ListOtherPlayerPublicBinaryRecordsV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) ListOtherPlayerPublicBinaryRecordsV1(input *public_player_binary_record.ListOtherPlayerPublicBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.ListOtherPlayerPublicBinaryRecordsV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use BulkGetOtherPlayerPublicBinaryRecordsV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) BulkGetOtherPlayerPublicBinaryRecordsV1(input *public_player_binary_record.BulkGetOtherPlayerPublicBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.BulkGetOtherPlayerPublicBinaryRecordsV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetPlayerBinaryRecordV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) GetPlayerBinaryRecordV1(input *public_player_binary_record.GetPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.GetPlayerBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PutPlayerBinaryRecordV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) PutPlayerBinaryRecordV1(input *public_player_binary_record.PutPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.PutPlayerBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use DeletePlayerBinaryRecordV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) DeletePlayerBinaryRecordV1(input *public_player_binary_record.DeletePlayerBinaryRecordV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.DeletePlayerBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PutPlayerBinaryRecorMetadataV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) PutPlayerBinaryRecorMetadataV1(input *public_player_binary_record.PutPlayerBinaryRecorMetadataV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.PutPlayerBinaryRecorMetadataV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PostPlayerBinaryPresignedURLV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) PostPlayerBinaryPresignedURLV1(input *public_player_binary_record.PostPlayerBinaryPresignedURLV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.PostPlayerBinaryPresignedURLV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetPlayerPublicBinaryRecordsV1Short instead.
func (aaa *PublicPlayerBinaryRecordService) GetPlayerPublicBinaryRecordsV1(input *public_player_binary_record.GetPlayerPublicBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicPlayerBinaryRecord.GetPlayerPublicBinaryRecordsV1(input, client.BearerToken(*token.AccessToken))
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

func (aaa *PublicPlayerBinaryRecordService) BulkGetPlayerPublicBinaryRecordsV1Short(input *public_player_binary_record.BulkGetPlayerPublicBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerBinaryRecord.BulkGetPlayerPublicBinaryRecordsV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerBinaryRecordService) ListMyBinaryRecordsV1Short(input *public_player_binary_record.ListMyBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerBinaryRecord.ListMyBinaryRecordsV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerBinaryRecordService) BulkGetMyBinaryRecordV1Short(input *public_player_binary_record.BulkGetMyBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerBinaryRecord.BulkGetMyBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerBinaryRecordService) PostPlayerBinaryRecordV1Short(input *public_player_binary_record.PostPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
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

	created, err := aaa.Client.PublicPlayerBinaryRecord.PostPlayerBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *PublicPlayerBinaryRecordService) ListOtherPlayerPublicBinaryRecordsV1Short(input *public_player_binary_record.ListOtherPlayerPublicBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerBinaryRecord.ListOtherPlayerPublicBinaryRecordsV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerBinaryRecordService) BulkGetOtherPlayerPublicBinaryRecordsV1Short(input *public_player_binary_record.BulkGetOtherPlayerPublicBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerBinaryRecord.BulkGetOtherPlayerPublicBinaryRecordsV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerBinaryRecordService) GetPlayerBinaryRecordV1Short(input *public_player_binary_record.GetPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerBinaryRecord.GetPlayerBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerBinaryRecordService) PutPlayerBinaryRecordV1Short(input *public_player_binary_record.PutPlayerBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerBinaryRecord.PutPlayerBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerBinaryRecordService) DeletePlayerBinaryRecordV1Short(input *public_player_binary_record.DeletePlayerBinaryRecordV1Params) error {
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

	_, err := aaa.Client.PublicPlayerBinaryRecord.DeletePlayerBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PublicPlayerBinaryRecordService) PutPlayerBinaryRecorMetadataV1Short(input *public_player_binary_record.PutPlayerBinaryRecorMetadataV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerBinaryRecord.PutPlayerBinaryRecorMetadataV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerBinaryRecordService) PostPlayerBinaryPresignedURLV1Short(input *public_player_binary_record.PostPlayerBinaryPresignedURLV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
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

	created, err := aaa.Client.PublicPlayerBinaryRecord.PostPlayerBinaryPresignedURLV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *PublicPlayerBinaryRecordService) GetPlayerPublicBinaryRecordsV1Short(input *public_player_binary_record.GetPlayerPublicBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerBinaryRecord.GetPlayerPublicBinaryRecordsV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
