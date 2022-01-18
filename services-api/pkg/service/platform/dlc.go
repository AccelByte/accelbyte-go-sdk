// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/d_l_c"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type DLCService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetDLCItemConfigShort instead
func (d *DLCService) GetDLCItemConfig(input *d_l_c.GetDLCItemConfigParams) (*platformclientmodels.DLCItemConfigInfo, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := d.Client.Dlc.GetDLCItemConfig(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := d.Client.Dlc.UpdateDLCItemConfig(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = d.Client.Dlc.DeleteDLCItemConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use GetPlatformDLCConfigShort instead
func (d *DLCService) GetPlatformDLCConfig(input *d_l_c.GetPlatformDLCConfigParams) (*platformclientmodels.PlatformDLCConfigInfo, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := d.Client.Dlc.GetPlatformDLCConfig(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := d.Client.Dlc.UpdatePlatformDLCConfig(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = d.Client.Dlc.DeletePlatformDLCConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use PublicSyncPsnDlcInventoryShort instead
func (d *DLCService) PublicSyncPsnDlcInventory(input *d_l_c.PublicSyncPsnDlcInventoryParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := d.Client.Dlc.PublicSyncPsnDlcInventory(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use SyncSteamDLCShort instead
func (d *DLCService) SyncSteamDLC(input *d_l_c.SyncSteamDLCParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = d.Client.Dlc.SyncSteamDLC(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use SyncXboxDLCShort instead
func (d *DLCService) SyncXboxDLC(input *d_l_c.SyncXboxDLCParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = d.Client.Dlc.SyncXboxDLC(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (d *DLCService) GetDLCItemConfigShort(input *d_l_c.GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.DLCItemConfigInfo, error) {
	ok, err := d.Client.Dlc.GetDLCItemConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DLCService) UpdateDLCItemConfigShort(input *d_l_c.UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.DLCItemConfigInfo, error) {
	ok, err := d.Client.Dlc.UpdateDLCItemConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DLCService) DeleteDLCItemConfigShort(input *d_l_c.DeleteDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := d.Client.Dlc.DeleteDLCItemConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (d *DLCService) GetPlatformDLCConfigShort(input *d_l_c.GetPlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.PlatformDLCConfigInfo, error) {
	ok, err := d.Client.Dlc.GetPlatformDLCConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DLCService) UpdatePlatformDLCConfigShort(input *d_l_c.UpdatePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.PlatformDLCConfigInfo, error) {
	ok, err := d.Client.Dlc.UpdatePlatformDLCConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (d *DLCService) DeletePlatformDLCConfigShort(input *d_l_c.DeletePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := d.Client.Dlc.DeletePlatformDLCConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (d *DLCService) PublicSyncPsnDlcInventoryShort(input *d_l_c.PublicSyncPsnDlcInventoryParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := d.Client.Dlc.PublicSyncPsnDlcInventoryShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (d *DLCService) SyncSteamDLCShort(input *d_l_c.SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := d.Client.Dlc.SyncSteamDLCShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (d *DLCService) SyncXboxDLCShort(input *d_l_c.SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := d.Client.Dlc.SyncXboxDLCShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}
