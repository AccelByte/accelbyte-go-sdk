// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dslogmanager

import (
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/dslogmanager_operations"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type DslogmanagerOperationsService struct {
	Client          *dslogmanagerclient.JusticeDslogmanagerService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use PublicGetMessagesShort instead
func (d *DslogmanagerOperationsService) PublicGetMessages(input *dslogmanager_operations.PublicGetMessagesParams) ([]*dslogmanagerclientmodels.LogAppMessageDeclaration, error) {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := d.Client.DslogmanagerOperations.PublicGetMessages(input, client.BearerToken(*token.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DslogmanagerOperationsService) PublicGetMessagesShort(input *dslogmanager_operations.PublicGetMessagesParams) ([]*dslogmanagerclientmodels.LogAppMessageDeclaration, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(d.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  d.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := d.Client.DslogmanagerOperations.PublicGetMessagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
