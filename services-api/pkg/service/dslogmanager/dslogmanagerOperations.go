// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dslogmanager

import (
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/dslogmanager_operations"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type DslogmanagerOperationsService struct {
	Client          *dslogmanagerclient.JusticeDslogmanagerService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use PublicGetMessagesShort instead
func (d *DslogmanagerOperationsService) PublicGetMessages(input *dslogmanager_operations.PublicGetMessagesParams) ([]*dslogmanagerclientmodels.LogAppMessageDeclaration, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := d.Client.DslogmanagerOperations.PublicGetMessages(input, client.BearerToken(*accessToken.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DslogmanagerOperationsService) PublicGetMessagesShort(input *dslogmanager_operations.PublicGetMessagesParams) ([]*dslogmanagerclientmodels.LogAppMessageDeclaration, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DslogmanagerOperations.PublicGetMessagesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
