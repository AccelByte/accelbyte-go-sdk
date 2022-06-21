// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/d_l_c"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type DLCService struct {
	Client                 *platformclient.JusticePlatformService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (d *DLCService) GetAuthSession() auth.Session {
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

// Deprecated: Use GetDLCItemConfigShort instead
func (d *DLCService) GetDLCItemConfig(input *d_l_c.GetDLCItemConfigParams) (*platformclientmodels.DLCItemConfigInfo, error) {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := d.Client.Dlc.GetDLCItemConfig(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateDLCItemConfigShort instead
func (d *DLCService) UpdateDLCItemConfig(input *d_l_c.UpdateDLCItemConfigParams) (*platformclientmodels.DLCItemConfigInfo, error) {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := d.Client.Dlc.UpdateDLCItemConfig(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteDLCItemConfigShort instead
func (d *DLCService) DeleteDLCItemConfig(input *d_l_c.DeleteDLCItemConfigParams) error {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = d.Client.Dlc.DeleteDLCItemConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetPlatformDLCConfigShort instead
func (d *DLCService) GetPlatformDLCConfig(input *d_l_c.GetPlatformDLCConfigParams) (*platformclientmodels.PlatformDLCConfigInfo, error) {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := d.Client.Dlc.GetPlatformDLCConfig(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdatePlatformDLCConfigShort instead
func (d *DLCService) UpdatePlatformDLCConfig(input *d_l_c.UpdatePlatformDLCConfigParams) (*platformclientmodels.PlatformDLCConfigInfo, error) {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := d.Client.Dlc.UpdatePlatformDLCConfig(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeletePlatformDLCConfigShort instead
func (d *DLCService) DeletePlatformDLCConfig(input *d_l_c.DeletePlatformDLCConfigParams) error {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = d.Client.Dlc.DeletePlatformDLCConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicSyncPsnDlcInventoryShort instead
func (d *DLCService) PublicSyncPsnDlcInventory(input *d_l_c.PublicSyncPsnDlcInventoryParams) error {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = d.Client.Dlc.PublicSyncPsnDlcInventory(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SyncSteamDLCShort instead
func (d *DLCService) SyncSteamDLC(input *d_l_c.SyncSteamDLCParams) error {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := d.Client.Dlc.SyncSteamDLC(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SyncXboxDLCShort instead
func (d *DLCService) SyncXboxDLC(input *d_l_c.SyncXboxDLCParams) error {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = d.Client.Dlc.SyncXboxDLC(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (d *DLCService) GetDLCItemConfigShort(input *d_l_c.GetDLCItemConfigParams) (*platformclientmodels.DLCItemConfigInfo, error) {
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

	ok, err := d.Client.Dlc.GetDLCItemConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DLCService) UpdateDLCItemConfigShort(input *d_l_c.UpdateDLCItemConfigParams) (*platformclientmodels.DLCItemConfigInfo, error) {
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

	ok, err := d.Client.Dlc.UpdateDLCItemConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DLCService) DeleteDLCItemConfigShort(input *d_l_c.DeleteDLCItemConfigParams) error {
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

	_, err := d.Client.Dlc.DeleteDLCItemConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (d *DLCService) GetPlatformDLCConfigShort(input *d_l_c.GetPlatformDLCConfigParams) (*platformclientmodels.PlatformDLCConfigInfo, error) {
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

	ok, err := d.Client.Dlc.GetPlatformDLCConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DLCService) UpdatePlatformDLCConfigShort(input *d_l_c.UpdatePlatformDLCConfigParams) (*platformclientmodels.PlatformDLCConfigInfo, error) {
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

	ok, err := d.Client.Dlc.UpdatePlatformDLCConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DLCService) DeletePlatformDLCConfigShort(input *d_l_c.DeletePlatformDLCConfigParams) error {
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

	_, err := d.Client.Dlc.DeletePlatformDLCConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (d *DLCService) PublicSyncPsnDlcInventoryShort(input *d_l_c.PublicSyncPsnDlcInventoryParams) error {
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

	_, err := d.Client.Dlc.PublicSyncPsnDlcInventoryShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (d *DLCService) SyncSteamDLCShort(input *d_l_c.SyncSteamDLCParams) error {
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

	_, err := d.Client.Dlc.SyncSteamDLCShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (d *DLCService) SyncXboxDLCShort(input *d_l_c.SyncXboxDLCParams) error {
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

	_, err := d.Client.Dlc.SyncXboxDLCShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
