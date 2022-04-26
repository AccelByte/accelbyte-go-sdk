// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/catalog_changes"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type CatalogChangesService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryChangesShort instead
func (c *CatalogChangesService) QueryChanges(input *catalog_changes.QueryChangesParams) ([]*platformclientmodels.CatalogChangePagingSlicedResult, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.CatalogChanges.QueryChanges(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublishAllShort instead
func (c *CatalogChangesService) PublishAll(input *catalog_changes.PublishAllParams) (*platformclientmodels.StoreInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := c.Client.CatalogChanges.PublishAll(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CatalogChangesService) QueryChangesShort(input *catalog_changes.QueryChangesParams) ([]*platformclientmodels.CatalogChangePagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.CatalogChanges.QueryChangesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CatalogChangesService) PublishAllShort(input *catalog_changes.PublishAllParams) (*platformclientmodels.StoreInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.CatalogChanges.PublishAllShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
