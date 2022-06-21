// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsmc

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/dsmc_operations"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type DsmcOperationsService struct {
	Client                 *dsmcclient.JusticeDsmcService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (d *DsmcOperationsService) GetAuthSession() auth.Session {
	if d.RefreshTokenRepository != nil {
		return auth.Session{
			d.TokenRepository,
			d.ConfigRepository,
			d.RefreshTokenRepository,
		}
	}

	return auth.Session{
		d.TokenRepository,
		d.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use PublicGetMessagesShort instead
func (d *DsmcOperationsService) PublicGetMessages(input *dsmc_operations.PublicGetMessagesParams) ([]*dsmcclientmodels.LogAppMessageDeclaration, error) {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := d.Client.DsmcOperations.PublicGetMessages(input, client.BearerToken(*token.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DsmcOperationsService) PublicGetMessagesShort(input *dsmc_operations.PublicGetMessagesParams) ([]*dsmcclientmodels.LogAppMessageDeclaration, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(d.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  d.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := d.Client.DsmcOperations.PublicGetMessagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
