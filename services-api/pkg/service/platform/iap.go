// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type IAPService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetAppleIAPConfigShort instead
func (i *IAPService) GetAppleIAPConfig(input *i_a_p.GetAppleIAPConfigParams) (*platformclientmodels.AppleIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.GetAppleIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateAppleIAPConfigShort instead
func (i *IAPService) UpdateAppleIAPConfig(input *i_a_p.UpdateAppleIAPConfigParams) (*platformclientmodels.AppleIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateAppleIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteAppleIAPConfigShort instead
func (i *IAPService) DeleteAppleIAPConfig(input *i_a_p.DeleteAppleIAPConfigParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteAppleIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use GetEpicGamesIAPConfigShort instead
func (i *IAPService) GetEpicGamesIAPConfig(input *i_a_p.GetEpicGamesIAPConfigParams) (*platformclientmodels.EpicGamesIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Iap.GetEpicGamesIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateEpicGamesIAPConfigShort instead
func (i *IAPService) UpdateEpicGamesIAPConfig(input *i_a_p.UpdateEpicGamesIAPConfigParams) (*platformclientmodels.EpicGamesIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateEpicGamesIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteEpicGamesIAPConfigShort instead
func (i *IAPService) DeleteEpicGamesIAPConfig(input *i_a_p.DeleteEpicGamesIAPConfigParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteEpicGamesIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use GetGoogleIAPConfigShort instead
func (i *IAPService) GetGoogleIAPConfig(input *i_a_p.GetGoogleIAPConfigParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.GetGoogleIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateGoogleIAPConfigShort instead
func (i *IAPService) UpdateGoogleIAPConfig(input *i_a_p.UpdateGoogleIAPConfigParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateGoogleIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteGoogleIAPConfigShort instead
func (i *IAPService) DeleteGoogleIAPConfig(input *i_a_p.DeleteGoogleIAPConfigParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteGoogleIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use UpdateGoogleP12FileShort instead
func (i *IAPService) UpdateGoogleP12File(input *i_a_p.UpdateGoogleP12FileParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateGoogleP12File(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetPlayStationIAPConfigShort instead
func (i *IAPService) GetPlayStationIAPConfig(input *i_a_p.GetPlayStationIAPConfigParams) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.GetPlayStationIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdatePlaystationIAPConfigShort instead
func (i *IAPService) UpdatePlaystationIAPConfig(input *i_a_p.UpdatePlaystationIAPConfigParams) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdatePlaystationIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use DeletePlaystationIAPConfigShort instead
func (i *IAPService) DeletePlaystationIAPConfig(input *i_a_p.DeletePlaystationIAPConfigParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeletePlaystationIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use GetStadiaIAPConfigShort instead
func (i *IAPService) GetStadiaIAPConfig(input *i_a_p.GetStadiaIAPConfigParams) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.GetStadiaIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteStadiaIAPConfigShort instead
func (i *IAPService) DeleteStadiaIAPConfig(input *i_a_p.DeleteStadiaIAPConfigParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteStadiaIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use UpdateStadiaJSONConfigFileShort instead
func (i *IAPService) UpdateStadiaJSONConfigFile(input *i_a_p.UpdateStadiaJSONConfigFileParams) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateStadiaJSONConfigFile(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetSteamIAPConfigShort instead
func (i *IAPService) GetSteamIAPConfig(input *i_a_p.GetSteamIAPConfigParams) (*platformclientmodels.SteamIAPConfig, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.GetSteamIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateSteamIAPConfigShort instead
func (i *IAPService) UpdateSteamIAPConfig(input *i_a_p.UpdateSteamIAPConfigParams) (*platformclientmodels.SteamIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateSteamIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteSteamIAPConfigShort instead
func (i *IAPService) DeleteSteamIAPConfig(input *i_a_p.DeleteSteamIAPConfigParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteSteamIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use GetXblIAPConfigShort instead
func (i *IAPService) GetXblIAPConfig(input *i_a_p.GetXblIAPConfigParams) (*platformclientmodels.XblIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Iap.GetXblIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateXblIAPConfigShort instead
func (i *IAPService) UpdateXblIAPConfig(input *i_a_p.UpdateXblIAPConfigParams) (*platformclientmodels.XblIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateXblIAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteXblAPConfigShort instead
func (i *IAPService) DeleteXblAPConfig(input *i_a_p.DeleteXblAPConfigParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteXblAPConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use UpdateXblBPCertFileShort instead
func (i *IAPService) UpdateXblBPCertFile(input *i_a_p.UpdateXblBPCertFileParams) (*platformclientmodels.XblIAPConfigInfo, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateXblBPCertFile(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use QueryUserIAPOrdersShort instead
func (i *IAPService) QueryUserIAPOrders(input *i_a_p.QueryUserIAPOrdersParams) (*platformclientmodels.IAPOrderPagingSlicedResult, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.QueryUserIAPOrders(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use MockFulfillIAPItemShort instead
func (i *IAPService) MockFulfillIAPItem(input *i_a_p.MockFulfillIAPItemParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, conflict, err := i.Client.Iap.MockFulfillIAPItem(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
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

// Deprecated: Use PublicFulfillAppleIAPItemShort instead
func (i *IAPService) PublicFulfillAppleIAPItem(input *i_a_p.PublicFulfillAppleIAPItemParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, conflict, err := i.Client.Iap.PublicFulfillAppleIAPItem(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
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

// Deprecated: Use SyncEpicGamesInventoryShort instead
func (i *IAPService) SyncEpicGamesInventory(input *i_a_p.SyncEpicGamesInventoryParams) ([]*platformclientmodels.EpicGamesReconcileResult, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.SyncEpicGamesInventory(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicFulfillGoogleIAPItemShort instead
func (i *IAPService) PublicFulfillGoogleIAPItem(input *i_a_p.PublicFulfillGoogleIAPItemParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, conflict, err := i.Client.Iap.PublicFulfillGoogleIAPItem(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
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

// Deprecated: Use PublicReconcilePlayStationStoreShort instead
func (i *IAPService) PublicReconcilePlayStationStore(input *i_a_p.PublicReconcilePlayStationStoreParams) ([]*platformclientmodels.PlayStationReconcileResult, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := i.Client.Iap.PublicReconcilePlayStationStore(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use SyncStadiaEntitlementShort instead
func (i *IAPService) SyncStadiaEntitlement(input *i_a_p.SyncStadiaEntitlementParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.SyncStadiaEntitlement(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use SyncSteamInventoryShort instead
func (i *IAPService) SyncSteamInventory(input *i_a_p.SyncSteamInventoryParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.SyncSteamInventory(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use SyncXboxInventoryShort instead
func (i *IAPService) SyncXboxInventory(input *i_a_p.SyncXboxInventoryParams) ([]*platformclientmodels.XblReconcileResult, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.SyncXboxInventory(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) GetAppleIAPConfigShort(input *i_a_p.GetAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.AppleIAPConfigInfo, error) {
	ok, err := i.Client.Iap.GetAppleIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateAppleIAPConfigShort(input *i_a_p.UpdateAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.AppleIAPConfigInfo, error) {
	ok, err := i.Client.Iap.UpdateAppleIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteAppleIAPConfigShort(input *i_a_p.DeleteAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.DeleteAppleIAPConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) GetEpicGamesIAPConfigShort(input *i_a_p.GetEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.EpicGamesIAPConfigInfo, error) {
	ok, err := i.Client.Iap.GetEpicGamesIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateEpicGamesIAPConfigShort(input *i_a_p.UpdateEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.EpicGamesIAPConfigInfo, error) {
	ok, err := i.Client.Iap.UpdateEpicGamesIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteEpicGamesIAPConfigShort(input *i_a_p.DeleteEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.DeleteEpicGamesIAPConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) GetGoogleIAPConfigShort(input *i_a_p.GetGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	ok, err := i.Client.Iap.GetGoogleIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateGoogleIAPConfigShort(input *i_a_p.UpdateGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	ok, err := i.Client.Iap.UpdateGoogleIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteGoogleIAPConfigShort(input *i_a_p.DeleteGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.DeleteGoogleIAPConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) UpdateGoogleP12FileShort(input *i_a_p.UpdateGoogleP12FileParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	ok, err := i.Client.Iap.UpdateGoogleP12FileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) GetPlayStationIAPConfigShort(input *i_a_p.GetPlayStationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	ok, err := i.Client.Iap.GetPlayStationIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) UpdatePlaystationIAPConfigShort(input *i_a_p.UpdatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	ok, err := i.Client.Iap.UpdatePlaystationIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) DeletePlaystationIAPConfigShort(input *i_a_p.DeletePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.DeletePlaystationIAPConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) GetStadiaIAPConfigShort(input *i_a_p.GetStadiaIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	ok, err := i.Client.Iap.GetStadiaIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteStadiaIAPConfigShort(input *i_a_p.DeleteStadiaIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.DeleteStadiaIAPConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) UpdateStadiaJSONConfigFileShort(input *i_a_p.UpdateStadiaJSONConfigFileParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	ok, err := i.Client.Iap.UpdateStadiaJSONConfigFileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) GetSteamIAPConfigShort(input *i_a_p.GetSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.SteamIAPConfig, error) {
	ok, err := i.Client.Iap.GetSteamIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateSteamIAPConfigShort(input *i_a_p.UpdateSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.SteamIAPConfigInfo, error) {
	ok, err := i.Client.Iap.UpdateSteamIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteSteamIAPConfigShort(input *i_a_p.DeleteSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.DeleteSteamIAPConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) GetXblIAPConfigShort(input *i_a_p.GetXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.XblIAPConfigInfo, error) {
	ok, err := i.Client.Iap.GetXblIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateXblIAPConfigShort(input *i_a_p.UpdateXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.XblIAPConfigInfo, error) {
	ok, err := i.Client.Iap.UpdateXblIAPConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteXblAPConfigShort(input *i_a_p.DeleteXblAPConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.DeleteXblAPConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) UpdateXblBPCertFileShort(input *i_a_p.UpdateXblBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.XblIAPConfigInfo, error) {
	ok, err := i.Client.Iap.UpdateXblBPCertFileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) QueryUserIAPOrdersShort(input *i_a_p.QueryUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.IAPOrderPagingSlicedResult, error) {
	ok, err := i.Client.Iap.QueryUserIAPOrdersShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) MockFulfillIAPItemShort(input *i_a_p.MockFulfillIAPItemParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.MockFulfillIAPItemShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) PublicFulfillAppleIAPItemShort(input *i_a_p.PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.PublicFulfillAppleIAPItemShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) SyncEpicGamesInventoryShort(input *i_a_p.SyncEpicGamesInventoryParams, authInfo runtime.ClientAuthInfoWriter) ([]*platformclientmodels.EpicGamesReconcileResult, error) {
	ok, err := i.Client.Iap.SyncEpicGamesInventoryShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) PublicFulfillGoogleIAPItemShort(input *i_a_p.PublicFulfillGoogleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.PublicFulfillGoogleIAPItemShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) PublicReconcilePlayStationStoreShort(input *i_a_p.PublicReconcilePlayStationStoreParams, authInfo runtime.ClientAuthInfoWriter) ([]*platformclientmodels.PlayStationReconcileResult, error) {
	ok, err := i.Client.Iap.PublicReconcilePlayStationStoreShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *IAPService) SyncStadiaEntitlementShort(input *i_a_p.SyncStadiaEntitlementParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.SyncStadiaEntitlementShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) SyncSteamInventoryShort(input *i_a_p.SyncSteamInventoryParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := i.Client.Iap.SyncSteamInventoryShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (i *IAPService) SyncXboxInventoryShort(input *i_a_p.SyncXboxInventoryParams, authInfo runtime.ClientAuthInfoWriter) ([]*platformclientmodels.XblReconcileResult, error) {
	ok, err := i.Client.Iap.SyncXboxInventoryShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
