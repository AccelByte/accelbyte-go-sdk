// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/input_validations"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type InputValidationsService struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetInputValidationsShort instead
func (i *InputValidationsService) AdminGetInputValidations(input *input_validations.AdminGetInputValidationsParams) (*iamclientmodels.ModelInputValidationsResponse, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := i.Client.InputValidations.AdminGetInputValidations(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := i.Client.InputValidations.AdminUpdateInputValidations(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := i.Client.InputValidations.AdminResetInputValidations(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := i.Client.InputValidations.PublicGetInputValidations(input, client.BearerToken(*accessToken.AccessToken))
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

func (i *InputValidationsService) AdminGetInputValidationsShort(input *input_validations.AdminGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelInputValidationsResponse, error) {
	ok, err := i.Client.InputValidations.AdminGetInputValidationsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *InputValidationsService) AdminUpdateInputValidationsShort(input *input_validations.AdminUpdateInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.InputValidations.AdminUpdateInputValidationsShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *InputValidationsService) AdminResetInputValidationsShort(input *input_validations.AdminResetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.InputValidations.AdminResetInputValidationsShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *InputValidationsService) PublicGetInputValidationsShort(input *input_validations.PublicGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelInputValidationsPublicResponse, error) {
	ok, err := i.Client.InputValidations.PublicGetInputValidationsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
