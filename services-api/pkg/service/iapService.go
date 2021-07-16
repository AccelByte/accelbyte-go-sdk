package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type IAPService struct {
	PlatformServiceClient *platformclient.JusticePlatformService
	TokenRepository       repository.TokenRepository
}

func (s *IAPService) UpdateXblBPCertFile(namespace string, password *string, file runtime.NamedReadCloser) (*platformclientmodels.XblIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.UpdateXblBPCertFileParams{
		File:      file,
		Namespace: namespace,
		Password:  password,
	}
	ok, err := s.PlatformServiceClient.Iap.UpdateXblBPCertFile(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdateGoogleP12File(namespace string, file runtime.NamedReadCloser) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.UpdateGoogleP12FileParams{
		File:      file,
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.UpdateGoogleP12File(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) GetEpicGamesIAPConfig(namespace string) (*platformclientmodels.EpicGamesIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.GetEpicGamesIAPConfigParams{
		Namespace: namespace,
	}
	ok, notFound, err := s.PlatformServiceClient.Iap.GetEpicGamesIAPConfig(params, client.BearerToken(*token.AccessToken))
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

func (s *IAPService) UpdateEpicGamesIAPConfig(namespace string, content *platformclientmodels.EpicGamesIAPConfigRequest) (*platformclientmodels.EpicGamesIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.UpdateEpicGamesIAPConfigParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.UpdateEpicGamesIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteEpicGamesIAPConfig(namespace string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.DeleteEpicGamesIAPConfigParams{
		Namespace: namespace,
	}
	_, err = s.PlatformServiceClient.Iap.DeleteEpicGamesIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetXblIAPConfig(namespace string) (*platformclientmodels.XblIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.GetXblIAPConfigParams{
		Namespace: namespace,
	}
	ok, notFound, err := s.PlatformServiceClient.Iap.GetXblIAPConfig(params, client.BearerToken(*token.AccessToken))
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

func (s *IAPService) UpdateXblIAPConfig(namespace string, content *platformclientmodels.XblIAPConfigRequest) (*platformclientmodels.XblIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.UpdateXblIAPConfigParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.UpdateXblIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteXblAPConfig(namespace string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.DeleteXblAPConfigParams{
		Namespace: namespace,
	}
	_, err = s.PlatformServiceClient.Iap.DeleteXblAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetAppleIAPConfig(namespace string) (*platformclientmodels.AppleIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.GetAppleIAPConfigParams{
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.GetAppleIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdateAppleIAPConfig(namespace string, content *platformclientmodels.AppleIAPConfigRequest) (*platformclientmodels.AppleIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.UpdateAppleIAPConfigParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.UpdateAppleIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteAppleIAPConfig(namespace string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.DeleteAppleIAPConfigParams{
		Namespace: namespace,
	}
	_, err = s.PlatformServiceClient.Iap.DeleteAppleIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetPlayStationIAPConfig(namespace string) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.GetPlayStationIAPConfigParams{
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.GetPlayStationIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdatePlaystationIAPConfig(namespace string, content *platformclientmodels.PlaystationIAPConfigRequest) (*platformclientmodels.PlayStationIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.UpdatePlaystationIAPConfigParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.UpdatePlaystationIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeletePlaystationIAPConfig(namespace string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.DeletePlaystationIAPConfigParams{
		Namespace: namespace,
	}
	_, err = s.PlatformServiceClient.Iap.DeletePlaystationIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetGoogleIAPConfig(namespace string) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.GetGoogleIAPConfigParams{
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.GetGoogleIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdateGoogleIAPConfig(namespace string, content *platformclientmodels.GoogleIAPConfigRequest) (*platformclientmodels.GoogleIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.UpdateGoogleIAPConfigParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.UpdateGoogleIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteGoogleIAPConfig(namespace string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.DeleteGoogleIAPConfigParams{
		Namespace: namespace,
	}
	_, err = s.PlatformServiceClient.Iap.DeleteGoogleIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetSteamIAPConfig(namespace string) (*platformclientmodels.SteamIAPConfig, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.GetSteamIAPConfigParams{
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.GetSteamIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) UpdateSteamIAPConfig(namespace string, content *platformclientmodels.SteamIAPConfigRequest) (*platformclientmodels.SteamIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.UpdateSteamIAPConfigParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.UpdateSteamIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteSteamIAPConfig(namespace string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.DeleteSteamIAPConfigParams{
		Namespace: namespace,
	}
	_, err = s.PlatformServiceClient.Iap.DeleteSteamIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) GetStadiaIAPConfig(namespace string) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.GetStadiaIAPConfigParams{
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.GetStadiaIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) DeleteStadiaIAPConfig(namespace string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.DeleteStadiaIAPConfigParams{
		Namespace: namespace,
	}
	_, err = s.PlatformServiceClient.Iap.DeleteStadiaIAPConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) UpdateStadiaJSONConfigFile(namespace string, file runtime.NamedReadCloser) (*platformclientmodels.StadiaIAPConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.UpdateStadiaJSONConfigFileParams{
		File:      file,
		Namespace: namespace,
	}
	ok, err := s.PlatformServiceClient.Iap.UpdateStadiaJSONConfigFile(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) MockFulfillIAPItem(namespace, userId string, content *platformclientmodels.MockIAPReceipt) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.MockFulfillIAPItemParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, notFound, conflict, err := s.PlatformServiceClient.Iap.MockFulfillIAPItem(params, client.BearerToken(*token.AccessToken))
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

func (s *IAPService) QueryUserIAPOrders(namespace, userId string, productId, status, orderType, startTime, endTime *string, limit, offset *int32) (*platformclientmodels.IAPOrderPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.QueryUserIAPOrdersParams{
		EndTime:   endTime,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		ProductID: productId,
		StartTime: startTime,
		Status:    status,
		Type:      orderType,
		UserID:    userId,
	}
	ok, err := s.PlatformServiceClient.Iap.QueryUserIAPOrders(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *IAPService) SyncSteamInventory(namespace, userId string, content *platformclientmodels.SteamSyncRequest) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.SyncSteamInventoryParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	_, err = s.PlatformServiceClient.Iap.SyncSteamInventory(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) SyncXboxInventory(namespace, userId string, content *platformclientmodels.XblReconcileRequest) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.SyncXboxInventoryParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	_, err = s.PlatformServiceClient.Iap.SyncXboxInventory(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) SyncStadiaEntitlement(namespace, userId string, content *platformclientmodels.StadiaSyncRequest) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.SyncStadiaEntitlementParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	_, err = s.PlatformServiceClient.Iap.SyncStadiaEntitlement(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *IAPService) PublicReconcilePlayStationStore(namespace, userId string) ([]*platformclientmodels.PlayStationReconcileResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &i_a_p.PublicReconcilePlayStationStoreParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, err := s.PlatformServiceClient.Iap.PublicReconcilePlayStationStore(params, client.BearerToken(*token.AccessToken))
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

func (s *IAPService) PublicFulfillGoogleIAPItem(namespace, userId string, content *platformclientmodels.GoogleIAPReceipt) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.PublicFulfillGoogleIAPItemParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, notFound, conflict, err := s.PlatformServiceClient.Iap.PublicFulfillGoogleIAPItem(params, client.BearerToken(*token.AccessToken))
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

func (s *IAPService) PublicFulfillAppleIAPItem(namespace, userId string, content *platformclientmodels.AppleIAPReceipt) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.PublicFulfillAppleIAPItemParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, notFound, conflict, err := s.PlatformServiceClient.Iap.PublicFulfillAppleIAPItem(params, client.BearerToken(*token.AccessToken))
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

func (s *IAPService) SyncEpicGamesInventory(namespace, userId string, content *platformclientmodels.EpicGamesReconcileRequest) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &i_a_p.SyncEpicGamesInventoryParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	_, err = s.PlatformServiceClient.Iap.SyncEpicGamesInventory(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}
