package platform

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
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (w *WalletService) ListUserWalletTransactions(input *wallet.ListUserWalletTransactionsParams) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := w.Client.Wallet.ListUserWalletTransactions(input, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) CheckTransactionCreditLimit(input *wallet.CheckTransactionCreditLimitParams) error {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, conflict, unprocessableEntity, err := w.Client.Wallet.CheckTransactionCreditLimit(input, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) EnableUserWallet(input *wallet.EnableUserWalletParams) error {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	notFound, conflict, err := w.Client.Wallet.EnableUserWallet(input, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) DebitUserWallet(input *wallet.DebitUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := w.Client.Wallet.DebitUserWallet(input, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) GetUserWallet(input *wallet.GetUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := w.Client.Wallet.GetUserWallet(input, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) DisableUserWallet(input *wallet.DisableUserWalletParams) (*platformclientmodels.ErrorEntity, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := w.Client.Wallet.DisableUserWallet(input, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) CreditUserWallet(input *wallet.CreditUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, conflict, unprocessableEntity, err := w.Client.Wallet.CreditUserWallet(input, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) PayWithUserWallet(input *wallet.PayWithUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, conflict, unprocessableEntity, err := w.Client.Wallet.PayWithUserWallet(input, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) QueryWallets(input *wallet.QueryWalletsParams) (*platformclientmodels.WalletPagingSlicedResult, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.QueryWallets(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) GetWallet(input *wallet.GetWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := w.Client.Wallet.GetWallet(input, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) PublicGetMyWallet(input *wallet.PublicGetMyWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.PublicGetMyWallet(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PublicListUserWalletTransactions(input *wallet.PublicListUserWalletTransactionsParams) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.PublicListUserWalletTransactions(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PublicGetWallet(input *wallet.PublicGetWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.PublicGetWallet(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
