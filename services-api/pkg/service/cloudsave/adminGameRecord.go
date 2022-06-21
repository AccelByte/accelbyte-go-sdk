// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsave

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AdminGameRecordService struct {
	Client                 *cloudsaveclient.JusticeCloudsaveService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (a *AdminGameRecordService) GetAuthSession() auth.Session {
	if a.RefreshTokenRepository != nil {
		return auth.Session{
			a.TokenRepository,
			a.ConfigRepository,
			a.RefreshTokenRepository,
		}
	}

	return auth.Session{
		a.TokenRepository,
		a.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use ListGameRecordsHandlerV1Short instead
func (a *AdminGameRecordService) ListGameRecordsHandlerV1(input *admin_game_record.ListGameRecordsHandlerV1Params) (*cloudsaveclientmodels.ModelsListGameRecordKeysResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.AdminGameRecord.ListGameRecordsHandlerV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminGetGameRecordHandlerV1Short instead
func (a *AdminGameRecordService) AdminGetGameRecordHandlerV1(input *admin_game_record.AdminGetGameRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsGameRecordResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminGameRecord.AdminGetGameRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use AdminPutGameRecordHandlerV1Short instead
func (a *AdminGameRecordService) AdminPutGameRecordHandlerV1(input *admin_game_record.AdminPutGameRecordHandlerV1Params) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := a.Client.AdminGameRecord.AdminPutGameRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminPostGameRecordHandlerV1Short instead
func (a *AdminGameRecordService) AdminPostGameRecordHandlerV1(input *admin_game_record.AdminPostGameRecordHandlerV1Params) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := a.Client.AdminGameRecord.AdminPostGameRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminDeleteGameRecordHandlerV1Short instead
func (a *AdminGameRecordService) AdminDeleteGameRecordHandlerV1(input *admin_game_record.AdminDeleteGameRecordHandlerV1Params) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := a.Client.AdminGameRecord.AdminDeleteGameRecordHandlerV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

func (a *AdminGameRecordService) ListGameRecordsHandlerV1Short(input *admin_game_record.ListGameRecordsHandlerV1Params) (*cloudsaveclientmodels.ModelsListGameRecordKeysResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := a.Client.AdminGameRecord.ListGameRecordsHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminGameRecordService) AdminGetGameRecordHandlerV1Short(input *admin_game_record.AdminGetGameRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsGameRecordResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := a.Client.AdminGameRecord.AdminGetGameRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AdminGameRecordService) AdminPutGameRecordHandlerV1Short(input *admin_game_record.AdminPutGameRecordHandlerV1Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.AdminGameRecord.AdminPutGameRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AdminGameRecordService) AdminPostGameRecordHandlerV1Short(input *admin_game_record.AdminPostGameRecordHandlerV1Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.AdminGameRecord.AdminPostGameRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AdminGameRecordService) AdminDeleteGameRecordHandlerV1Short(input *admin_game_record.AdminDeleteGameRecordHandlerV1Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.AdminGameRecord.AdminDeleteGameRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
