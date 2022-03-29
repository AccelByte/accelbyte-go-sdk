// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type WalletService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use CheckWalletShort instead
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

// Deprecated: Use CreditUserWalletShort instead
func (w *WalletService) CreditUserWallet(input *wallet.CreditUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unprocessableEntity, err := w.Client.Wallet.CreditUserWallet(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PayWithUserWalletShort instead
func (w *WalletService) PayWithUserWallet(input *wallet.PayWithUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unprocessableEntity, err := w.Client.Wallet.PayWithUserWallet(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserWalletShort instead
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

// Deprecated: Use DebitUserWalletShort instead
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

// Deprecated: Use DisableUserWalletShort instead
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

// Deprecated: Use EnableUserWalletShort instead
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

// Deprecated: Use ListUserWalletTransactionsShort instead
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

// Deprecated: Use QueryWalletsShort instead
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

// Deprecated: Use GetWalletShort instead
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

// Deprecated: Use PublicGetMyWalletShort instead
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

// Deprecated: Use PublicGetWalletShort instead
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

// Deprecated: Use PublicListUserWalletTransactionsShort instead
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

func (w *WalletService) CheckWalletShort(input *wallet.CheckWalletParams) error {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = w.Client.Wallet.CheckWalletShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (w *WalletService) CreditUserWalletShort(input *wallet.CreditUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.CreditUserWalletShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PayWithUserWalletShort(input *wallet.PayWithUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.PayWithUserWalletShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) GetUserWalletShort(input *wallet.GetUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.GetUserWalletShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) DebitUserWalletShort(input *wallet.DebitUserWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.DebitUserWalletShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) DisableUserWalletShort(input *wallet.DisableUserWalletParams) error {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = w.Client.Wallet.DisableUserWalletShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (w *WalletService) EnableUserWalletShort(input *wallet.EnableUserWalletParams) error {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = w.Client.Wallet.EnableUserWalletShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (w *WalletService) ListUserWalletTransactionsShort(input *wallet.ListUserWalletTransactionsParams) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.ListUserWalletTransactionsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) QueryWalletsShort(input *wallet.QueryWalletsParams) (*platformclientmodels.WalletPagingSlicedResult, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.QueryWalletsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) GetWalletShort(input *wallet.GetWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.GetWalletShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PublicGetMyWalletShort(input *wallet.PublicGetMyWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.PublicGetMyWalletShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PublicGetWalletShort(input *wallet.PublicGetWalletParams) (*platformclientmodels.WalletInfo, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.PublicGetWalletShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (w *WalletService) PublicListUserWalletTransactionsShort(input *wallet.PublicListUserWalletTransactionsParams) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	accessToken, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.PublicListUserWalletTransactionsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
