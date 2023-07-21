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
	Client           *cloudsaveclient.JusticeCloudsaveService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *AdminConcurrentRecordService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use AdminPutAdminGameRecordConcurrentHandlerV1Short instead.
func (aaa *AdminConcurrentRecordService) AdminPutAdminGameRecordConcurrentHandlerV1(input *admin_concurrent_record.AdminPutAdminGameRecordConcurrentHandlerV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, preconditionFailed, internalServerError, err := aaa.Client.AdminConcurrentRecord.AdminPutAdminGameRecordConcurrentHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminPutGameRecordConcurrentHandlerV1Short instead.
func (aaa *AdminConcurrentRecordService) AdminPutGameRecordConcurrentHandlerV1(input *admin_concurrent_record.AdminPutGameRecordConcurrentHandlerV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, preconditionFailed, internalServerError, err := aaa.Client.AdminConcurrentRecord.AdminPutGameRecordConcurrentHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminPutAdminPlayerRecordConcurrentHandlerV1Short instead.
func (aaa *AdminConcurrentRecordService) AdminPutAdminPlayerRecordConcurrentHandlerV1(input *admin_concurrent_record.AdminPutAdminPlayerRecordConcurrentHandlerV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, preconditionFailed, internalServerError, err := aaa.Client.AdminConcurrentRecord.AdminPutAdminPlayerRecordConcurrentHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminPutPlayerRecordConcurrentHandlerV1Short instead.
func (aaa *AdminConcurrentRecordService) AdminPutPlayerRecordConcurrentHandlerV1(input *admin_concurrent_record.AdminPutPlayerRecordConcurrentHandlerV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, preconditionFailed, internalServerError, err := aaa.Client.AdminConcurrentRecord.AdminPutPlayerRecordConcurrentHandlerV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminPutPlayerPublicRecordConcurrentHandlerV1Short instead.
func (aaa *AdminConcurrentRecordService) AdminPutPlayerPublicRecordConcurrentHandlerV1(input *admin_concurrent_record.AdminPutPlayerPublicRecordConcurrentHandlerV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, preconditionFailed, internalServerError, err := aaa.Client.AdminConcurrentRecord.AdminPutPlayerPublicRecordConcurrentHandlerV1(input, client.BearerToken(*token.AccessToken))
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

func (aaa *AdminConcurrentRecordService) AdminPutAdminGameRecordConcurrentHandlerV1Short(input *admin_concurrent_record.AdminPutAdminGameRecordConcurrentHandlerV1Params) error {
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

	_, err := aaa.Client.AdminConcurrentRecord.AdminPutAdminGameRecordConcurrentHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminConcurrentRecordService) AdminPutGameRecordConcurrentHandlerV1Short(input *admin_concurrent_record.AdminPutGameRecordConcurrentHandlerV1Params) error {
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

	_, err := aaa.Client.AdminConcurrentRecord.AdminPutGameRecordConcurrentHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminConcurrentRecordService) AdminPutAdminPlayerRecordConcurrentHandlerV1Short(input *admin_concurrent_record.AdminPutAdminPlayerRecordConcurrentHandlerV1Params) error {
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

	_, err := aaa.Client.AdminConcurrentRecord.AdminPutAdminPlayerRecordConcurrentHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminConcurrentRecordService) AdminPutPlayerRecordConcurrentHandlerV1Short(input *admin_concurrent_record.AdminPutPlayerRecordConcurrentHandlerV1Params) error {
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

	_, err := aaa.Client.AdminConcurrentRecord.AdminPutPlayerRecordConcurrentHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminConcurrentRecordService) AdminPutPlayerPublicRecordConcurrentHandlerV1Short(input *admin_concurrent_record.AdminPutPlayerPublicRecordConcurrentHandlerV1Params) error {
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

	_, err := aaa.Client.AdminConcurrentRecord.AdminPutPlayerPublicRecordConcurrentHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
