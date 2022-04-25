// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type WalletService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use CheckWalletShort instead
func (w *WalletService) CheckWallet(input *wallet.CheckWalletParams) error {
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, conflict, unprocessableEntity, err := w.Client.Wallet.CheckWallet(input, client.BearerToken(*token.AccessToken))
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
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unprocessableEntity, err := w.Client.Wallet.CreditUserWallet(input, client.BearerToken(*token.AccessToken))
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
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unprocessableEntity, err := w.Client.Wallet.PayWithUserWallet(input, client.BearerToken(*token.AccessToken))
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
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := w.Client.Wallet.GetUserWallet(input, client.BearerToken(*token.AccessToken))
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
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := w.Client.Wallet.DebitUserWallet(input, client.BearerToken(*token.AccessToken))
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
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := w.Client.Wallet.DisableUserWallet(input, client.BearerToken(*token.AccessToken))
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
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := w.Client.Wallet.EnableUserWallet(input, client.BearerToken(*token.AccessToken))
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
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := w.Client.Wallet.ListUserWalletTransactions(input, client.BearerToken(*token.AccessToken))
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
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.QueryWallets(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetWalletShort instead
func (w *WalletService) GetWallet(input *wallet.GetWalletParams) (*platformclientmodels.WalletInfo, error) {
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := w.Client.Wallet.GetWallet(input, client.BearerToken(*token.AccessToken))
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
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.PublicGetMyWallet(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetWalletShort instead
func (w *WalletService) PublicGetWallet(input *wallet.PublicGetWalletParams) (*platformclientmodels.WalletInfo, error) {
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.PublicGetWallet(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicListUserWalletTransactionsShort instead
func (w *WalletService) PublicListUserWalletTransactions(input *wallet.PublicListUserWalletTransactionsParams) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	token, err := w.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := w.Client.Wallet.PublicListUserWalletTransactions(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET [READ]'], 'authorization': []}]
func (w *WalletService) CheckWalletShort(input *wallet.CheckWalletParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	_, err := w.Client.Wallet.CheckWalletShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET [UPDATE]'], 'authorization': []}]
func (w *WalletService) CreditUserWalletShort(input *wallet.CreditUserWalletParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	ok, err := w.Client.Wallet.CreditUserWalletShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET [UPDATE]'], 'authorization': []}]
func (w *WalletService) PayWithUserWalletShort(input *wallet.PayWithUserWalletParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	ok, err := w.Client.Wallet.PayWithUserWalletShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET [READ]'], 'authorization': []}]
func (w *WalletService) GetUserWalletShort(input *wallet.GetUserWalletParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	ok, err := w.Client.Wallet.GetUserWalletShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET [UPDATE]'], 'authorization': []}]
func (w *WalletService) DebitUserWalletShort(input *wallet.DebitUserWalletParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	ok, err := w.Client.Wallet.DebitUserWalletShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET [UPDATE]'], 'authorization': []}]
func (w *WalletService) DisableUserWalletShort(input *wallet.DisableUserWalletParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	_, err := w.Client.Wallet.DisableUserWalletShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET [UPDATE]'], 'authorization': []}]
func (w *WalletService) EnableUserWalletShort(input *wallet.EnableUserWalletParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	_, err := w.Client.Wallet.EnableUserWalletShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET [READ]'], 'authorization': []}]
func (w *WalletService) ListUserWalletTransactionsShort(input *wallet.ListUserWalletTransactionsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	ok, err := w.Client.Wallet.ListUserWalletTransactionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:WALLET [READ]'], 'authorization': []}]
func (w *WalletService) QueryWalletsShort(input *wallet.QueryWalletsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	ok, err := w.Client.Wallet.QueryWalletsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:WALLET [READ]'], 'authorization': []}]
func (w *WalletService) GetWalletShort(input *wallet.GetWalletParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	ok, err := w.Client.Wallet.GetWalletShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['NAMESPACE:{namespace}:WALLET [READ]'], 'authorization': []}]
func (w *WalletService) PublicGetMyWalletShort(input *wallet.PublicGetMyWalletParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	ok, err := w.Client.Wallet.PublicGetMyWalletShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['NAMESPACE:{namespace}:USER:{userId}:WALLET [READ]'], 'authorization': []}]
func (w *WalletService) PublicGetWalletShort(input *wallet.PublicGetWalletParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	ok, err := w.Client.Wallet.PublicGetWalletShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['NAMESPACE:{namespace}:USER:{userId}:WALLET [READ]'], 'authorization': []}]
func (w *WalletService) PublicListUserWalletTransactionsShort(input *wallet.PublicListUserWalletTransactionsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.WalletTransactionPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(w.TokenRepository, nil, security, "")
	}
	ok, err := w.Client.Wallet.PublicListUserWalletTransactionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
