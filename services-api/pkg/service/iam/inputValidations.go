// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/input_validations"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type InputValidationsService struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetInputValidationsShort instead
func (i *InputValidationsService) AdminGetInputValidations(input *input_validations.AdminGetInputValidationsParams) (*iamclientmodels.ModelInputValidationsResponse, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := i.Client.InputValidations.AdminGetInputValidations(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminUpdateInputValidationsShort instead
func (i *InputValidationsService) AdminUpdateInputValidations(input *input_validations.AdminUpdateInputValidationsParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := i.Client.InputValidations.AdminUpdateInputValidations(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminResetInputValidationsShort instead
func (i *InputValidationsService) AdminResetInputValidations(input *input_validations.AdminResetInputValidationsParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := i.Client.InputValidations.AdminResetInputValidations(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicGetInputValidationsShort instead
func (i *InputValidationsService) PublicGetInputValidations(input *input_validations.PublicGetInputValidationsParams) (*iamclientmodels.ModelInputValidationsPublicResponse, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := i.Client.InputValidations.PublicGetInputValidations(input, client.BearerToken(*token.AccessToken))
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

// [{'HasPermission': ['ADMIN:CONFIGURATION [READ]'], 'authorization': []}]
func (i *InputValidationsService) AdminGetInputValidationsShort(input *input_validations.AdminGetInputValidationsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelInputValidationsResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.InputValidations.AdminGetInputValidationsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:CONFIGURATION [UPDATE]'], 'authorization': []}]
func (i *InputValidationsService) AdminUpdateInputValidationsShort(input *input_validations.AdminUpdateInputValidationsParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	_, err := i.Client.InputValidations.AdminUpdateInputValidationsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:CONFIGURATION [DELETE]'], 'authorization': []}]
func (i *InputValidationsService) AdminResetInputValidationsShort(input *input_validations.AdminResetInputValidationsParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	_, err := i.Client.InputValidations.AdminResetInputValidationsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (i *InputValidationsService) PublicGetInputValidationsShort(input *input_validations.PublicGetInputValidationsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelInputValidationsPublicResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.InputValidations.PublicGetInputValidationsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
