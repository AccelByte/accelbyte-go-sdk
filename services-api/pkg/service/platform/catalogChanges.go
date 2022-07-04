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
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type CatalogChangesService struct {
	Client                 *platformclient.JusticePlatformService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (c *CatalogChangesService) GetAuthSession() auth.Session {
	if c.RefreshTokenRepository != nil {
		return auth.Session{
			c.TokenRepository,
			c.ConfigRepository,
			c.RefreshTokenRepository,
		}
	}

	return auth.Session{
		c.TokenRepository,
		c.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
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

// Deprecated: Use PublishSelectedShort instead
func (c *CatalogChangesService) PublishSelected(input *catalog_changes.PublishSelectedParams) (*platformclientmodels.StoreInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := c.Client.CatalogChanges.PublishSelected(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use SelectAllRecordsShort instead
func (c *CatalogChangesService) SelectAllRecords(input *catalog_changes.SelectAllRecordsParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := c.Client.CatalogChanges.SelectAllRecords(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetStatisticShort instead
func (c *CatalogChangesService) GetStatistic(input *catalog_changes.GetStatisticParams) (*platformclientmodels.CatalogChangeStatistics, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.CatalogChanges.GetStatistic(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UnselectAllRecordsShort instead
func (c *CatalogChangesService) UnselectAllRecords(input *catalog_changes.UnselectAllRecordsParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := c.Client.CatalogChanges.UnselectAllRecords(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SelectRecordShort instead
func (c *CatalogChangesService) SelectRecord(input *catalog_changes.SelectRecordParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := c.Client.CatalogChanges.SelectRecord(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UnselectRecordShort instead
func (c *CatalogChangesService) UnselectRecord(input *catalog_changes.UnselectRecordParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := c.Client.CatalogChanges.UnselectRecord(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

func (c *CatalogChangesService) QueryChangesShort(input *catalog_changes.QueryChangesParams) ([]*platformclientmodels.CatalogChangePagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
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
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := c.Client.CatalogChanges.PublishAllShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CatalogChangesService) PublishSelectedShort(input *catalog_changes.PublishSelectedParams) (*platformclientmodels.StoreInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := c.Client.CatalogChanges.PublishSelectedShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CatalogChangesService) SelectAllRecordsShort(input *catalog_changes.SelectAllRecordsParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := c.Client.CatalogChanges.SelectAllRecordsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (c *CatalogChangesService) GetStatisticShort(input *catalog_changes.GetStatisticParams) (*platformclientmodels.CatalogChangeStatistics, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := c.Client.CatalogChanges.GetStatisticShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CatalogChangesService) UnselectAllRecordsShort(input *catalog_changes.UnselectAllRecordsParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := c.Client.CatalogChanges.UnselectAllRecordsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (c *CatalogChangesService) SelectRecordShort(input *catalog_changes.SelectRecordParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := c.Client.CatalogChanges.SelectRecordShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (c *CatalogChangesService) UnselectRecordShort(input *catalog_changes.UnselectRecordParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := c.Client.CatalogChanges.UnselectRecordShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
