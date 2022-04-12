// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dsmc

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/dsmc_operations"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type DsmcOperationsService struct {
	Client          *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use PublicGetMessagesShort instead
func (d *DsmcOperationsService) PublicGetMessages(input *dsmc_operations.PublicGetMessagesParams) ([]*dsmcclientmodels.LogAppMessageDeclaration, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := d.Client.DsmcOperations.PublicGetMessages(input, client.BearerToken(*accessToken.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DsmcOperationsService) PublicGetMessagesShort(input *dsmc_operations.PublicGetMessagesParams) ([]*dsmcclientmodels.LogAppMessageDeclaration, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DsmcOperations.PublicGetMessagesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
