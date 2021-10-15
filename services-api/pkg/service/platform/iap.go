package platform

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type IAPService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (s *IAPService) UpdateXblBPCertFile(input *i_a_p.UpdateXblBPCertFileParams) (*platformclientmodels.XblIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.UpdateXblBPCertFile(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdateGoogleP12File(input *i_a_p.UpdateGoogleP12FileParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.UpdateGoogleP12File(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) GetEpicGamesIAPConfig(input *i_a_p.GetEpicGamesIAPConfigParams) (*platformclientmodels.EpicGamesIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := s.Client.Iap.GetEpicGamesIAPConfig(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdateEpicGamesIAPConfig(input *i_a_p.UpdateEpicGamesIAPConfigParams) (*platformclientmodels.EpicGamesIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.UpdateEpicGamesIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteEpicGamesIAPConfig(input *i_a_p.DeleteEpicGamesIAPConfigParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.Iap.DeleteEpicGamesIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetXblIAPConfig(input *i_a_p.GetXblIAPConfigParams) (*platformclientmodels.XblIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := s.Client.Iap.GetXblIAPConfig(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdateXblIAPConfig(input *i_a_p.UpdateXblIAPConfigParams) (*platformclientmodels.XblIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.UpdateXblIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteXblAPConfig(input *i_a_p.DeleteXblAPConfigParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.Iap.DeleteXblAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetAppleIAPConfig(input *i_a_p.GetAppleIAPConfigParams) (*platformclientmodels.AppleIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.GetAppleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdateAppleIAPConfig(input *i_a_p.UpdateAppleIAPConfigParams) (*platformclientmodels.AppleIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.UpdateAppleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteAppleIAPConfig(input *i_a_p.DeleteAppleIAPConfigParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.Iap.DeleteAppleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetPlayStationIAPConfig(input *i_a_p.GetPlayStationIAPConfigParams) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.GetPlayStationIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdatePlaystationIAPConfig(input *i_a_p.UpdatePlaystationIAPConfigParams) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.UpdatePlaystationIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeletePlaystationIAPConfig(input *i_a_p.DeletePlaystationIAPConfigParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.Iap.DeletePlaystationIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetGoogleIAPConfig(input *i_a_p.GetGoogleIAPConfigParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.GetGoogleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdateGoogleIAPConfig(input *i_a_p.UpdateGoogleIAPConfigParams) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.UpdateGoogleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteGoogleIAPConfig(input *i_a_p.DeleteGoogleIAPConfigParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.Iap.DeleteGoogleIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetSteamIAPConfig(input *i_a_p.GetSteamIAPConfigParams) (*platformclientmodels.SteamIAPConfig, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.GetSteamIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdateSteamIAPConfig(input *i_a_p.UpdateSteamIAPConfigParams) (*platformclientmodels.SteamIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.UpdateSteamIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteSteamIAPConfig(input *i_a_p.DeleteSteamIAPConfigParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.Iap.DeleteSteamIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetStadiaIAPConfig(input *i_a_p.GetStadiaIAPConfigParams) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.GetStadiaIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteStadiaIAPConfig(input *i_a_p.DeleteStadiaIAPConfigParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.Iap.DeleteStadiaIAPConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) UpdateStadiaJSONConfigFile(input *i_a_p.UpdateStadiaJSONConfigFileParams) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.UpdateStadiaJSONConfigFile(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) MockFulfillIAPItem(input *i_a_p.MockFulfillIAPItemParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, badRequest, notFound, conflict, err := s.Client.Iap.MockFulfillIAPItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) QueryUserIAPOrders(input *i_a_p.QueryUserIAPOrdersParams) (*platformclientmodels.IAPOrderPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.Iap.QueryUserIAPOrders(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) SyncSteamInventory(input *i_a_p.SyncSteamInventoryParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.Iap.SyncSteamInventory(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) SyncXboxInventory(input *i_a_p.SyncXboxInventoryParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.Iap.SyncXboxInventory(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) SyncStadiaEntitlement(input *i_a_p.SyncStadiaEntitlementParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.Iap.SyncStadiaEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) PublicReconcilePlayStationStore(input *i_a_p.PublicReconcilePlayStationStoreParams) ([]*platformclientmodels.PlayStationReconcileResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, err := s.Client.Iap.PublicReconcilePlayStationStore(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) PublicFulfillGoogleIAPItem(input *i_a_p.PublicFulfillGoogleIAPItemParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, badRequest, notFound, conflict, err := s.Client.Iap.PublicFulfillGoogleIAPItem(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) PublicFulfillAppleIAPItem(input *i_a_p.PublicFulfillAppleIAPItemParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, badRequest, notFound, conflict, err := s.Client.Iap.PublicFulfillAppleIAPItem(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) SyncEpicGamesInventory(input *i_a_p.SyncEpicGamesInventoryParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.Iap.SyncEpicGamesInventory(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}
