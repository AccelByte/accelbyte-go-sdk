// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type IAPService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetAppleIAPConfigShort instead
func (i *IAPService) GetAppleIAPConfig(input *i_a_p.GetAppleIAPConfigParams) (*platformclientmodels.AppleIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.GetAppleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateAppleIAPConfigShort instead
func (i *IAPService) UpdateAppleIAPConfig(input *i_a_p.UpdateAppleIAPConfigParams) (*platformclientmodels.AppleIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateAppleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteAppleIAPConfigShort instead
func (i *IAPService) DeleteAppleIAPConfig(input *i_a_p.DeleteAppleIAPConfigParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteAppleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetEpicGamesIAPConfigShort instead
func (i *IAPService) GetEpicGamesIAPConfig(input *i_a_p.GetEpicGamesIAPConfigParams) (*platformclientmodels.EpicGamesIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Iap.GetEpicGamesIAPConfig(input, client.BearerToken(*token.AccessToken))
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
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateEpicGamesIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteEpicGamesIAPConfigShort instead
func (i *IAPService) DeleteEpicGamesIAPConfig(input *i_a_p.DeleteEpicGamesIAPConfigParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteEpicGamesIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetGoogleIAPConfigShort instead
func (i *IAPService) GetGoogleIAPConfig(input *i_a_p.GetGoogleIAPConfigParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.GetGoogleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateGoogleIAPConfigShort instead
func (i *IAPService) UpdateGoogleIAPConfig(input *i_a_p.UpdateGoogleIAPConfigParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateGoogleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteGoogleIAPConfigShort instead
func (i *IAPService) DeleteGoogleIAPConfig(input *i_a_p.DeleteGoogleIAPConfigParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteGoogleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateGoogleP12FileShort instead
func (i *IAPService) UpdateGoogleP12File(input *i_a_p.UpdateGoogleP12FileParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateGoogleP12File(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetIAPItemConfigShort instead
func (i *IAPService) GetIAPItemConfig(input *i_a_p.GetIAPItemConfigParams) (*platformclientmodels.IAPItemConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Iap.GetIAPItemConfig(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateIAPItemConfigShort instead
func (i *IAPService) UpdateIAPItemConfig(input *i_a_p.UpdateIAPItemConfigParams) (*platformclientmodels.IAPItemConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := i.Client.Iap.UpdateIAPItemConfig(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteIAPItemConfigShort instead
func (i *IAPService) DeleteIAPItemConfig(input *i_a_p.DeleteIAPItemConfigParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteIAPItemConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetPlayStationIAPConfigShort instead
func (i *IAPService) GetPlayStationIAPConfig(input *i_a_p.GetPlayStationIAPConfigParams) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.GetPlayStationIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdatePlaystationIAPConfigShort instead
func (i *IAPService) UpdatePlaystationIAPConfig(input *i_a_p.UpdatePlaystationIAPConfigParams) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdatePlaystationIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeletePlaystationIAPConfigShort instead
func (i *IAPService) DeletePlaystationIAPConfig(input *i_a_p.DeletePlaystationIAPConfigParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeletePlaystationIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetStadiaIAPConfigShort instead
func (i *IAPService) GetStadiaIAPConfig(input *i_a_p.GetStadiaIAPConfigParams) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.GetStadiaIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteStadiaIAPConfigShort instead
func (i *IAPService) DeleteStadiaIAPConfig(input *i_a_p.DeleteStadiaIAPConfigParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteStadiaIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateStadiaJSONConfigFileShort instead
func (i *IAPService) UpdateStadiaJSONConfigFile(input *i_a_p.UpdateStadiaJSONConfigFileParams) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateStadiaJSONConfigFile(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetSteamIAPConfigShort instead
func (i *IAPService) GetSteamIAPConfig(input *i_a_p.GetSteamIAPConfigParams) (*platformclientmodels.SteamIAPConfig, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.GetSteamIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateSteamIAPConfigShort instead
func (i *IAPService) UpdateSteamIAPConfig(input *i_a_p.UpdateSteamIAPConfigParams) (*platformclientmodels.SteamIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateSteamIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteSteamIAPConfigShort instead
func (i *IAPService) DeleteSteamIAPConfig(input *i_a_p.DeleteSteamIAPConfigParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteSteamIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetTwitchIAPConfigShort instead
func (i *IAPService) GetTwitchIAPConfig(input *i_a_p.GetTwitchIAPConfigParams) (*platformclientmodels.TwitchIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.GetTwitchIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateTwitchIAPConfigShort instead
func (i *IAPService) UpdateTwitchIAPConfig(input *i_a_p.UpdateTwitchIAPConfigParams) (*platformclientmodels.TwitchIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateTwitchIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteTwitchIAPConfigShort instead
func (i *IAPService) DeleteTwitchIAPConfig(input *i_a_p.DeleteTwitchIAPConfigParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteTwitchIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetXblIAPConfigShort instead
func (i *IAPService) GetXblIAPConfig(input *i_a_p.GetXblIAPConfigParams) (*platformclientmodels.XblIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Iap.GetXblIAPConfig(input, client.BearerToken(*token.AccessToken))
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
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateXblIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteXblAPConfigShort instead
func (i *IAPService) DeleteXblAPConfig(input *i_a_p.DeleteXblAPConfigParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.DeleteXblAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateXblBPCertFileShort instead
func (i *IAPService) UpdateXblBPCertFile(input *i_a_p.UpdateXblBPCertFileParams) (*platformclientmodels.XblIAPConfigInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.UpdateXblBPCertFile(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use QueryUserIAPOrdersShort instead
func (i *IAPService) QueryUserIAPOrders(input *i_a_p.QueryUserIAPOrdersParams) (*platformclientmodels.IAPOrderPagingSlicedResult, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.QueryUserIAPOrders(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use QueryAllUserIAPOrdersShort instead
func (i *IAPService) QueryAllUserIAPOrders(input *i_a_p.QueryAllUserIAPOrdersParams) (*platformclientmodels.IAPOrderPagingSlicedResult, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.QueryAllUserIAPOrders(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use MockFulfillIAPItemShort instead
func (i *IAPService) MockFulfillIAPItem(input *i_a_p.MockFulfillIAPItemParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, conflict, err := i.Client.Iap.MockFulfillIAPItem(input, client.BearerToken(*token.AccessToken))
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
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, conflict, err := i.Client.Iap.PublicFulfillAppleIAPItem(input, client.BearerToken(*token.AccessToken))
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
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.SyncEpicGamesInventory(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicFulfillGoogleIAPItemShort instead
func (i *IAPService) PublicFulfillGoogleIAPItem(input *i_a_p.PublicFulfillGoogleIAPItemParams) (*platformclientmodels.GoogleReceiptResolveResult, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := i.Client.Iap.PublicFulfillGoogleIAPItem(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicReconcilePlayStationStoreShort instead
func (i *IAPService) PublicReconcilePlayStationStore(input *i_a_p.PublicReconcilePlayStationStoreParams) ([]*platformclientmodels.PlayStationReconcileResult, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := i.Client.Iap.PublicReconcilePlayStationStore(input, client.BearerToken(*token.AccessToken))
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
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.SyncStadiaEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SyncSteamInventoryShort instead
func (i *IAPService) SyncSteamInventory(input *i_a_p.SyncSteamInventoryParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.SyncSteamInventory(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SyncTwitchDropsEntitlementShort instead
func (i *IAPService) SyncTwitchDropsEntitlement(input *i_a_p.SyncTwitchDropsEntitlementParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.Iap.SyncTwitchDropsEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SyncXboxInventoryShort instead
func (i *IAPService) SyncXboxInventory(input *i_a_p.SyncXboxInventoryParams) ([]*platformclientmodels.XblReconcileResult, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Iap.SyncXboxInventory(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) GetAppleIAPConfigShort(input *i_a_p.GetAppleIAPConfigParams) (*platformclientmodels.AppleIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.GetAppleIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateAppleIAPConfigShort(input *i_a_p.UpdateAppleIAPConfigParams) (*platformclientmodels.AppleIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.UpdateAppleIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteAppleIAPConfigShort(input *i_a_p.DeleteAppleIAPConfigParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.DeleteAppleIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) GetEpicGamesIAPConfigShort(input *i_a_p.GetEpicGamesIAPConfigParams) (*platformclientmodels.EpicGamesIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.GetEpicGamesIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateEpicGamesIAPConfigShort(input *i_a_p.UpdateEpicGamesIAPConfigParams) (*platformclientmodels.EpicGamesIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.UpdateEpicGamesIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteEpicGamesIAPConfigShort(input *i_a_p.DeleteEpicGamesIAPConfigParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.DeleteEpicGamesIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) GetGoogleIAPConfigShort(input *i_a_p.GetGoogleIAPConfigParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.GetGoogleIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateGoogleIAPConfigShort(input *i_a_p.UpdateGoogleIAPConfigParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.UpdateGoogleIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteGoogleIAPConfigShort(input *i_a_p.DeleteGoogleIAPConfigParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.DeleteGoogleIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) UpdateGoogleP12FileShort(input *i_a_p.UpdateGoogleP12FileParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.UpdateGoogleP12FileShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) GetIAPItemConfigShort(input *i_a_p.GetIAPItemConfigParams) (*platformclientmodels.IAPItemConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.GetIAPItemConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateIAPItemConfigShort(input *i_a_p.UpdateIAPItemConfigParams) (*platformclientmodels.IAPItemConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.UpdateIAPItemConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteIAPItemConfigShort(input *i_a_p.DeleteIAPItemConfigParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.DeleteIAPItemConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) GetPlayStationIAPConfigShort(input *i_a_p.GetPlayStationIAPConfigParams) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.GetPlayStationIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) UpdatePlaystationIAPConfigShort(input *i_a_p.UpdatePlaystationIAPConfigParams) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.UpdatePlaystationIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) DeletePlaystationIAPConfigShort(input *i_a_p.DeletePlaystationIAPConfigParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.DeletePlaystationIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) GetStadiaIAPConfigShort(input *i_a_p.GetStadiaIAPConfigParams) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.GetStadiaIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteStadiaIAPConfigShort(input *i_a_p.DeleteStadiaIAPConfigParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.DeleteStadiaIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) UpdateStadiaJSONConfigFileShort(input *i_a_p.UpdateStadiaJSONConfigFileParams) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.UpdateStadiaJSONConfigFileShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) GetSteamIAPConfigShort(input *i_a_p.GetSteamIAPConfigParams) (*platformclientmodels.SteamIAPConfig, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.GetSteamIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateSteamIAPConfigShort(input *i_a_p.UpdateSteamIAPConfigParams) (*platformclientmodels.SteamIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.UpdateSteamIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteSteamIAPConfigShort(input *i_a_p.DeleteSteamIAPConfigParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.DeleteSteamIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) GetTwitchIAPConfigShort(input *i_a_p.GetTwitchIAPConfigParams) (*platformclientmodels.TwitchIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.GetTwitchIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateTwitchIAPConfigShort(input *i_a_p.UpdateTwitchIAPConfigParams) (*platformclientmodels.TwitchIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.UpdateTwitchIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteTwitchIAPConfigShort(input *i_a_p.DeleteTwitchIAPConfigParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.DeleteTwitchIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) GetXblIAPConfigShort(input *i_a_p.GetXblIAPConfigParams) (*platformclientmodels.XblIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.GetXblIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) UpdateXblIAPConfigShort(input *i_a_p.UpdateXblIAPConfigParams) (*platformclientmodels.XblIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.UpdateXblIAPConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) DeleteXblAPConfigShort(input *i_a_p.DeleteXblAPConfigParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.DeleteXblAPConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) UpdateXblBPCertFileShort(input *i_a_p.UpdateXblBPCertFileParams) (*platformclientmodels.XblIAPConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.UpdateXblBPCertFileShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) QueryUserIAPOrdersShort(input *i_a_p.QueryUserIAPOrdersParams) (*platformclientmodels.IAPOrderPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.QueryUserIAPOrdersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) QueryAllUserIAPOrdersShort(input *i_a_p.QueryAllUserIAPOrdersParams) (*platformclientmodels.IAPOrderPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.QueryAllUserIAPOrdersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) MockFulfillIAPItemShort(input *i_a_p.MockFulfillIAPItemParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.MockFulfillIAPItemShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) PublicFulfillAppleIAPItemShort(input *i_a_p.PublicFulfillAppleIAPItemParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.PublicFulfillAppleIAPItemShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) SyncEpicGamesInventoryShort(input *i_a_p.SyncEpicGamesInventoryParams) ([]*platformclientmodels.EpicGamesReconcileResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.SyncEpicGamesInventoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) PublicFulfillGoogleIAPItemShort(input *i_a_p.PublicFulfillGoogleIAPItemParams) (*platformclientmodels.GoogleReceiptResolveResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.PublicFulfillGoogleIAPItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) PublicReconcilePlayStationStoreShort(input *i_a_p.PublicReconcilePlayStationStoreParams) ([]*platformclientmodels.PlayStationReconcileResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.PublicReconcilePlayStationStoreShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *IAPService) SyncStadiaEntitlementShort(input *i_a_p.SyncStadiaEntitlementParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.SyncStadiaEntitlementShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) SyncSteamInventoryShort(input *i_a_p.SyncSteamInventoryParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.SyncSteamInventoryShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) SyncTwitchDropsEntitlementShort(input *i_a_p.SyncTwitchDropsEntitlementParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Iap.SyncTwitchDropsEntitlementShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *IAPService) SyncXboxInventoryShort(input *i_a_p.SyncXboxInventoryParams) ([]*platformclientmodels.XblReconcileResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Iap.SyncXboxInventoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
