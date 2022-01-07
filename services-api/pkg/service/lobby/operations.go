// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type OperationsService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminUpdatePartyAttributesV1Short instead
func (o *OperationsService) AdminUpdatePartyAttributesV1(input *operations.AdminUpdatePartyAttributesV1Params) (*lobbyclientmodels.ModelsPartyData, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, preconditionFailed, internalServerError, err := o.Client.Operations.AdminUpdatePartyAttributesV1(input, client.BearerToken(*accessToken.AccessToken))
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
	if preconditionFailed != nil {
		return nil, preconditionFailed
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetMessagesShort instead
func (o *OperationsService) PublicGetMessages(input *operations.PublicGetMessagesParams) ([]*lobbyclientmodels.LogAppMessageDeclaration, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := o.Client.Operations.PublicGetMessages(input, client.BearerToken(*accessToken.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OperationsService) AdminUpdatePartyAttributesV1Short(input *operations.AdminUpdatePartyAttributesV1Params, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsPartyData, error) {
	ok, err := o.Client.Operations.AdminUpdatePartyAttributesV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OperationsService) PublicGetMessagesShort(input *operations.PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.LogAppMessageDeclaration, error) {
	ok, err := o.Client.Operations.PublicGetMessagesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
