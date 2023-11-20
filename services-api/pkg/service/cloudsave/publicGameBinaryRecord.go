// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsave

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type PublicGameBinaryRecordService struct {
	Client           *cloudsaveclient.JusticeCloudsaveService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *PublicGameBinaryRecordService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use ListGameBinaryRecordsV1Short instead.
func (aaa *PublicGameBinaryRecordService) ListGameBinaryRecordsV1(input *public_game_binary_record.ListGameBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsListGameBinaryRecordsResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicGameBinaryRecord.ListGameBinaryRecordsV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PostGameBinaryRecordV1Short instead.
func (aaa *PublicGameBinaryRecordService) PostGameBinaryRecordV1(input *public_game_binary_record.PostGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := aaa.Client.PublicGameBinaryRecord.PostGameBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use BulkGetGameBinaryRecordV1Short instead.
func (aaa *PublicGameBinaryRecordService) BulkGetGameBinaryRecordV1(input *public_game_binary_record.BulkGetGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsBulkGetGameBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.PublicGameBinaryRecord.BulkGetGameBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetGameBinaryRecordV1Short instead.
func (aaa *PublicGameBinaryRecordService) GetGameBinaryRecordV1(input *public_game_binary_record.GetGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsGameBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicGameBinaryRecord.GetGameBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PutGameBinaryRecordV1Short instead.
func (aaa *PublicGameBinaryRecordService) PutGameBinaryRecordV1(input *public_game_binary_record.PutGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsGameBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicGameBinaryRecord.PutGameBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use DeleteGameBinaryRecordV1Short instead.
func (aaa *PublicGameBinaryRecordService) DeleteGameBinaryRecordV1(input *public_game_binary_record.DeleteGameBinaryRecordV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicGameBinaryRecord.DeleteGameBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PostGameBinaryPresignedURLV1Short instead.
func (aaa *PublicGameBinaryRecordService) PostGameBinaryPresignedURLV1(input *public_game_binary_record.PostGameBinaryPresignedURLV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicGameBinaryRecord.PostGameBinaryPresignedURLV1(input, client.BearerToken(*token.AccessToken))
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

func (aaa *PublicGameBinaryRecordService) ListGameBinaryRecordsV1Short(input *public_game_binary_record.ListGameBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsListGameBinaryRecordsResponse, error) {
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

	ok, err := aaa.Client.PublicGameBinaryRecord.ListGameBinaryRecordsV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicGameBinaryRecordService) PostGameBinaryRecordV1Short(input *public_game_binary_record.PostGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
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

	created, err := aaa.Client.PublicGameBinaryRecord.PostGameBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *PublicGameBinaryRecordService) BulkGetGameBinaryRecordV1Short(input *public_game_binary_record.BulkGetGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsBulkGetGameBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.PublicGameBinaryRecord.BulkGetGameBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicGameBinaryRecordService) GetGameBinaryRecordV1Short(input *public_game_binary_record.GetGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsGameBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.PublicGameBinaryRecord.GetGameBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicGameBinaryRecordService) PutGameBinaryRecordV1Short(input *public_game_binary_record.PutGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsGameBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.PublicGameBinaryRecord.PutGameBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicGameBinaryRecordService) DeleteGameBinaryRecordV1Short(input *public_game_binary_record.DeleteGameBinaryRecordV1Params) error {
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

	_, err := aaa.Client.PublicGameBinaryRecord.DeleteGameBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PublicGameBinaryRecordService) PostGameBinaryPresignedURLV1Short(input *public_game_binary_record.PostGameBinaryPresignedURLV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
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

	created, err := aaa.Client.PublicGameBinaryRecord.PostGameBinaryPresignedURLV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}
