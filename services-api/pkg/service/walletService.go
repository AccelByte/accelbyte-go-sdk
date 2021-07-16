package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type WalletService struct {
	PlatformServiceClient *platformclient.JusticePlatformService
	TokenRepository       repository.TokenRepository
}

func (w *WalletService) ListUserWalletTransactions(namespace, userId, walletId string, limit, offset *int32) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &wallet.ListUserWalletTransactionsParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		UserID:    userId,
		WalletID:  walletId,
	}
	ok, notFound, err := w.PlatformServiceClient.Wallet.ListUserWalletTransactions(params, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) CheckTransactionCreditLimit(namespace, userId, currencyCode string, content *platformclientmodels.CreditRequest) error {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &wallet.CheckTransactionCreditLimitParams{
		Body:         content,
		CurrencyCode: currencyCode,
		Namespace:    namespace,
		UserID:       userId,
	}
	_, badRequest, conflict, unprocessableEntity, err := w.PlatformServiceClient.Wallet.CheckTransactionCreditLimit(params, client.BearerToken(*accessToken.AccessToken))
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
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (w *WalletService) EnableUserWallet(namespace, userId, walletId string) error {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &wallet.EnableUserWalletParams{
		Namespace: namespace,
		UserID:    userId,
		WalletID:  walletId,
	}
	notFound, conflict, err := w.PlatformServiceClient.Wallet.EnableUserWallet(params, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) DebitUserWallet(namespace, userId, walletId string, content *platformclientmodels.DebitRequest) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &wallet.DebitUserWalletParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
		WalletID:  walletId,
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := w.PlatformServiceClient.Wallet.DebitUserWallet(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) GetUserWallet(namespace, userId, walletId string) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &wallet.GetUserWalletParams{
		Namespace: namespace,
		UserID:    userId,
		WalletID:  walletId,
	}
	ok, notFound, err := w.PlatformServiceClient.Wallet.GetUserWallet(params, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) DisableUserWallet(namespace, userId, walletId string) (*platformclientmodels.ErrorEntity, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &wallet.DisableUserWalletParams{
		Namespace: namespace,
		UserID:    userId,
		WalletID:  walletId,
	}
	ok, notFound, err := w.PlatformServiceClient.Wallet.DisableUserWallet(params, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) CreditUserWallet(namespace, userId, currencyCode string, content *platformclientmodels.CreditRequest) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &wallet.CreditUserWalletParams{
		Body:         content,
		CurrencyCode: currencyCode,
		Namespace:    namespace,
		UserID:       userId,
	}
	ok, badRequest, conflict, unprocessableEntity, err := w.PlatformServiceClient.Wallet.CreditUserWallet(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PayWithUserWallet(namespace, userId, currencyCode string, content *platformclientmodels.PaymentRequest) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &wallet.PayWithUserWalletParams{
		Body:         content,
		CurrencyCode: currencyCode,
		Namespace:    namespace,
		UserID:       userId,
	}
	ok, badRequest, conflict, unprocessableEntity, err := w.PlatformServiceClient.Wallet.PayWithUserWallet(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) QueryWallets(namespace string, currencyCode, userId *string) (*platformclientmodels.WalletPagingSlicedResult, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &wallet.QueryWalletsParams{
		CurrencyCode: currencyCode,
		Namespace:    namespace,
		UserID:       userId,
	}
	ok, err := w.PlatformServiceClient.Wallet.QueryWallets(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) GetWallet(namespace, walletId string) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &wallet.GetWalletParams{
		Namespace: namespace,
		WalletID:  walletId,
	}
	ok, notFound, err := w.PlatformServiceClient.Wallet.GetWallet(params, client.BearerToken(*accessToken.AccessToken))

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

func (w *WalletService) PublicGetMyWallet(namespace, currencyCode string) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &wallet.PublicGetMyWalletParams{
		CurrencyCode: currencyCode,
		Namespace:    namespace,
	}
	ok, err := w.PlatformServiceClient.Wallet.PublicGetMyWallet(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PublicListUserWalletTransactions(namespace, userId, currencyCode string, limit, offset *int32) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &wallet.PublicListUserWalletTransactionsParams{
		CurrencyCode: currencyCode,
		Limit:        limit,
		Namespace:    namespace,
		Offset:       offset,
		UserID:       userId,
	}
	ok, err := w.PlatformServiceClient.Wallet.PublicListUserWalletTransactions(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PublicGetWallet(namespace, userId, currencyCode string) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &wallet.PublicGetWalletParams{
		CurrencyCode: currencyCode,
		Namespace:    namespace,
		UserID:       userId,
	}
	ok, err := w.PlatformServiceClient.Wallet.PublicGetWallet(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
