// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsave

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_concurrent_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AdminConcurrentRecordService struct {
	Client                 *cloudsaveclient.JusticeCloudsaveService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (a *AdminConcurrentRecordService) GetAuthSession() auth.Session {
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

// Deprecated: Use AdminPutGameRecordConcurrentHandlerV1Short instead
func (a *AdminConcurrentRecordService) AdminPutGameRecordConcurrentHandlerV1(input *admin_concurrent_record.AdminPutGameRecordConcurrentHandlerV1Params) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, preconditionFailed, internalServerError, err := a.Client.AdminConcurrentRecord.AdminPutGameRecordConcurrentHandlerV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if preconditionFailed != nil {
		return preconditionFailed
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminPutPlayerPublicRecordConcurrentHandlerV1Short instead
func (a *AdminConcurrentRecordService) AdminPutPlayerPublicRecordConcurrentHandlerV1(input *admin_concurrent_record.AdminPutPlayerPublicRecordConcurrentHandlerV1Params) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, preconditionFailed, internalServerError, err := a.Client.AdminConcurrentRecord.AdminPutPlayerPublicRecordConcurrentHandlerV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if preconditionFailed != nil {
		return preconditionFailed
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

func (a *AdminConcurrentRecordService) AdminPutGameRecordConcurrentHandlerV1Short(input *admin_concurrent_record.AdminPutGameRecordConcurrentHandlerV1Params) error {
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

	_, err := a.Client.AdminConcurrentRecord.AdminPutGameRecordConcurrentHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AdminConcurrentRecordService) AdminPutPlayerPublicRecordConcurrentHandlerV1Short(input *admin_concurrent_record.AdminPutPlayerPublicRecordConcurrentHandlerV1Params) error {
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

	_, err := a.Client.AdminConcurrentRecord.AdminPutPlayerPublicRecordConcurrentHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
