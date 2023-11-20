// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsave

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type PublicPlayerRecordService struct {
	Client           *cloudsaveclient.JusticeCloudsaveService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *PublicPlayerRecordService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use BulkGetPlayerPublicRecordHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) BulkGetPlayerPublicRecordHandlerV1(input *public_player_record.BulkGetPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerRecord.BulkGetPlayerPublicRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use RetrievePlayerRecordsShort instead.
func (aaa *PublicPlayerRecordService) RetrievePlayerRecords(input *public_player_record.RetrievePlayerRecordsParams) (*cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerRecord.RetrievePlayerRecords(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetPlayerRecordsBulkHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) GetPlayerRecordsBulkHandlerV1(input *public_player_record.GetPlayerRecordsBulkHandlerV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerRecord.GetPlayerRecordsBulkHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicDeletePlayerPublicRecordHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) PublicDeletePlayerPublicRecordHandlerV1(input *public_player_record.PublicDeletePlayerPublicRecordHandlerV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicPlayerRecord.PublicDeletePlayerPublicRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetOtherPlayerPublicRecordKeyHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) GetOtherPlayerPublicRecordKeyHandlerV1(input *public_player_record.GetOtherPlayerPublicRecordKeyHandlerV1Params) (*cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerRecord.GetOtherPlayerPublicRecordKeyHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetOtherPlayerPublicRecordHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) GetOtherPlayerPublicRecordHandlerV1(input *public_player_record.GetOtherPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerRecord.GetOtherPlayerPublicRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetPlayerRecordHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) GetPlayerRecordHandlerV1(input *public_player_record.GetPlayerRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicPlayerRecord.GetPlayerRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PutPlayerRecordHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) PutPlayerRecordHandlerV1(input *public_player_record.PutPlayerRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerRecord.PutPlayerRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PostPlayerRecordHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) PostPlayerRecordHandlerV1(input *public_player_record.PostPlayerRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerRecord.PostPlayerRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
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

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use DeletePlayerRecordHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) DeletePlayerRecordHandlerV1(input *public_player_record.DeletePlayerRecordHandlerV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerRecord.DeletePlayerRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use GetPlayerPublicRecordHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) GetPlayerPublicRecordHandlerV1(input *public_player_record.GetPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicPlayerRecord.GetPlayerPublicRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PutPlayerPublicRecordHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) PutPlayerPublicRecordHandlerV1(input *public_player_record.PutPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerRecord.PutPlayerPublicRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PostPlayerPublicRecordHandlerV1Short instead.
func (aaa *PublicPlayerRecordService) PostPlayerPublicRecordHandlerV1(input *public_player_record.PostPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicPlayerRecord.PostPlayerPublicRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
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

	return created.GetPayload(), nil
}

func (aaa *PublicPlayerRecordService) BulkGetPlayerPublicRecordHandlerV1Short(input *public_player_record.BulkGetPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerRecord.BulkGetPlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerRecordService) RetrievePlayerRecordsShort(input *public_player_record.RetrievePlayerRecordsParams) (*cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerRecord.RetrievePlayerRecordsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerRecordService) GetPlayerRecordsBulkHandlerV1Short(input *public_player_record.GetPlayerRecordsBulkHandlerV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerRecord.GetPlayerRecordsBulkHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerRecordService) PublicDeletePlayerPublicRecordHandlerV1Short(input *public_player_record.PublicDeletePlayerPublicRecordHandlerV1Params) error {
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

	_, err := aaa.Client.PublicPlayerRecord.PublicDeletePlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PublicPlayerRecordService) GetOtherPlayerPublicRecordKeyHandlerV1Short(input *public_player_record.GetOtherPlayerPublicRecordKeyHandlerV1Params) (*cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerRecord.GetOtherPlayerPublicRecordKeyHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerRecordService) GetOtherPlayerPublicRecordHandlerV1Short(input *public_player_record.GetOtherPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerRecord.GetOtherPlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerRecordService) GetPlayerRecordHandlerV1Short(input *public_player_record.GetPlayerRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerRecord.GetPlayerRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerRecordService) PutPlayerRecordHandlerV1Short(input *public_player_record.PutPlayerRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerRecord.PutPlayerRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerRecordService) PostPlayerRecordHandlerV1Short(input *public_player_record.PostPlayerRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
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

	created, err := aaa.Client.PublicPlayerRecord.PostPlayerRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *PublicPlayerRecordService) DeletePlayerRecordHandlerV1Short(input *public_player_record.DeletePlayerRecordHandlerV1Params) error {
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

	_, err := aaa.Client.PublicPlayerRecord.DeletePlayerRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PublicPlayerRecordService) GetPlayerPublicRecordHandlerV1Short(input *public_player_record.GetPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerRecord.GetPlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerRecordService) PutPlayerPublicRecordHandlerV1Short(input *public_player_record.PutPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
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

	ok, err := aaa.Client.PublicPlayerRecord.PutPlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicPlayerRecordService) PostPlayerPublicRecordHandlerV1Short(input *public_player_record.PostPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecordResponse, error) {
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

	created, err := aaa.Client.PublicPlayerRecord.PostPlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}
