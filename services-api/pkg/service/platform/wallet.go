// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type WalletService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (w *WalletService) CheckWallet(input *wallet.CheckWalletParams) error {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, conflict, unprocessableEntity, err := w.Client.Wallet.CheckWallet(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if conflict != nil {
		return conflict
	}
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}
	return nil
}

func (w *WalletService) CreditUserWallet(input *wallet.CreditUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, conflict, unprocessableEntity, err := w.Client.Wallet.CreditUserWallet(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
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
		return nil, badRequest
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
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
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) DebitUserWallet(input *wallet.DebitUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := w.Client.Wallet.DebitUserWallet(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) DisableUserWallet(input *wallet.DisableUserWalletParams) error {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := w.Client.Wallet.DisableUserWallet(input, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) EnableUserWallet(input *wallet.EnableUserWalletParams) error {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := w.Client.Wallet.EnableUserWallet(input, client.BearerToken(*accessToken.AccessToken))
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

func (w *WalletService) ListUserWalletTransactions(input *wallet.ListUserWalletTransactionsParams) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := w.Client.Wallet.ListUserWalletTransactions(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
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
		return nil, notFound
	}
	if err != nil {
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
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) CheckWalletShort(input *wallet.CheckWalletParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := w.Client.Wallet.CheckWalletShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (w *WalletService) CreditUserWalletShort(input *wallet.CreditUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	ok, err := w.Client.Wallet.CreditUserWalletShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PayWithUserWalletShort(input *wallet.PayWithUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	ok, err := w.Client.Wallet.PayWithUserWalletShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) GetUserWalletShort(input *wallet.GetUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	ok, err := w.Client.Wallet.GetUserWalletShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) DebitUserWalletShort(input *wallet.DebitUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	ok, err := w.Client.Wallet.DebitUserWalletShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) DisableUserWalletShort(input *wallet.DisableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := w.Client.Wallet.DisableUserWalletShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (w *WalletService) EnableUserWalletShort(input *wallet.EnableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := w.Client.Wallet.EnableUserWalletShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (w *WalletService) ListUserWalletTransactionsShort(input *wallet.ListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	ok, err := w.Client.Wallet.ListUserWalletTransactionsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) QueryWalletsShort(input *wallet.QueryWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletPagingSlicedResult, error) {
	ok, err := w.Client.Wallet.QueryWalletsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) GetWalletShort(input *wallet.GetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	ok, err := w.Client.Wallet.GetWalletShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PublicGetMyWalletShort(input *wallet.PublicGetMyWalletParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	ok, err := w.Client.Wallet.PublicGetMyWalletShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PublicGetWalletShort(input *wallet.PublicGetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	ok, err := w.Client.Wallet.PublicGetWalletShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PublicListUserWalletTransactionsShort(input *wallet.PublicListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	ok, err := w.Client.Wallet.PublicListUserWalletTransactionsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
