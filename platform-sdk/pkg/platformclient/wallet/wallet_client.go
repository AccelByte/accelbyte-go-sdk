// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package wallet

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new wallet API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for wallet API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetPlatformWalletConfig(params *GetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformWalletConfigOK, error)
	GetPlatformWalletConfigShort(params *GetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformWalletConfigOK, error)
	UpdatePlatformWalletConfig(params *UpdatePlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformWalletConfigOK, error)
	UpdatePlatformWalletConfigShort(params *UpdatePlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformWalletConfigOK, error)
	ResetPlatformWalletConfig(params *ResetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPlatformWalletConfigOK, error)
	ResetPlatformWalletConfigShort(params *ResetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPlatformWalletConfigOK, error)
	QueryUserCurrencyWallets(params *QueryUserCurrencyWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserCurrencyWalletsOK, error)
	QueryUserCurrencyWalletsShort(params *QueryUserCurrencyWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserCurrencyWalletsOK, error)
	DebitUserWalletByCurrencyCode(params *DebitUserWalletByCurrencyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletByCurrencyCodeOK, *DebitUserWalletByCurrencyCodeBadRequest, *DebitUserWalletByCurrencyCodeConflict, *DebitUserWalletByCurrencyCodeUnprocessableEntity, error)
	DebitUserWalletByCurrencyCodeShort(params *DebitUserWalletByCurrencyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletByCurrencyCodeOK, error)
	ListUserCurrencyTransactions(params *ListUserCurrencyTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserCurrencyTransactionsOK, *ListUserCurrencyTransactionsNotFound, error)
	ListUserCurrencyTransactionsShort(params *ListUserCurrencyTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserCurrencyTransactionsOK, error)
	CheckBalance(params *CheckBalanceParams, authInfo runtime.ClientAuthInfoWriter) (*CheckBalanceOK, *CheckBalanceBadRequest, error)
	CheckBalanceShort(params *CheckBalanceParams, authInfo runtime.ClientAuthInfoWriter) (*CheckBalanceOK, error)
	CheckWallet(params *CheckWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CheckWalletNoContent, *CheckWalletBadRequest, *CheckWalletConflict, *CheckWalletUnprocessableEntity, error)
	CheckWalletShort(params *CheckWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CheckWalletNoContent, error)
	CreditUserWallet(params *CreditUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CreditUserWalletOK, *CreditUserWalletBadRequest, *CreditUserWalletUnprocessableEntity, error)
	CreditUserWalletShort(params *CreditUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CreditUserWalletOK, error)
	DebitByWalletPlatform(params *DebitByWalletPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*DebitByWalletPlatformOK, *DebitByWalletPlatformBadRequest, *DebitByWalletPlatformUnprocessableEntity, error)
	DebitByWalletPlatformShort(params *DebitByWalletPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*DebitByWalletPlatformOK, error)
	PayWithUserWallet(params *PayWithUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PayWithUserWalletOK, *PayWithUserWalletBadRequest, *PayWithUserWalletUnprocessableEntity, error)
	PayWithUserWalletShort(params *PayWithUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PayWithUserWalletOK, error)
	GetUserWallet(params *GetUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserWalletOK, *GetUserWalletNotFound, error)
	GetUserWalletShort(params *GetUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserWalletOK, error)
	DebitUserWallet(params *DebitUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletOK, *DebitUserWalletBadRequest, *DebitUserWalletNotFound, *DebitUserWalletConflict, *DebitUserWalletUnprocessableEntity, error)
	DebitUserWalletShort(params *DebitUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletOK, error)
	DisableUserWallet(params *DisableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserWalletNoContent, *DisableUserWalletNotFound, *DisableUserWalletConflict, error)
	DisableUserWalletShort(params *DisableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserWalletNoContent, error)
	EnableUserWallet(params *EnableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserWalletNoContent, *EnableUserWalletNotFound, *EnableUserWalletConflict, error)
	EnableUserWalletShort(params *EnableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserWalletNoContent, error)
	ListUserWalletTransactions(params *ListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserWalletTransactionsOK, *ListUserWalletTransactionsNotFound, error)
	ListUserWalletTransactionsShort(params *ListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserWalletTransactionsOK, error)
	QueryWallets(params *QueryWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryWalletsOK, error)
	QueryWalletsShort(params *QueryWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryWalletsOK, error)
	BulkCredit(params *BulkCreditParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreditOK, *BulkCreditUnprocessableEntity, error)
	BulkCreditShort(params *BulkCreditParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreditOK, error)
	BulkDebit(params *BulkDebitParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDebitOK, *BulkDebitUnprocessableEntity, error)
	BulkDebitShort(params *BulkDebitParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDebitOK, error)
	GetWallet(params *GetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetWalletOK, *GetWalletNotFound, error)
	GetWalletShort(params *GetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetWalletOK, error)
	PublicGetMyWallet(params *PublicGetMyWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyWalletOK, error)
	PublicGetMyWalletShort(params *PublicGetMyWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyWalletOK, error)
	PublicGetWallet(params *PublicGetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetWalletOK, error)
	PublicGetWalletShort(params *PublicGetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetWalletOK, error)
	PublicListUserWalletTransactions(params *PublicListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserWalletTransactionsOK, error)
	PublicListUserWalletTransactionsShort(params *PublicListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserWalletTransactionsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetPlatformWalletConfigShort instead.

GetPlatformWalletConfig get platform wallet config list
Get platform wallet config list.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET:CONFIG", action=2 (READ)
  *  Returns : wallet info
*/
func (a *Client) GetPlatformWalletConfig(params *GetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformWalletConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlatformWalletConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlatformWalletConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlatformWalletConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlatformWalletConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlatformWalletConfigShort get platform wallet config list
Get platform wallet config list.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET:CONFIG", action=2 (READ)
  *  Returns : wallet info
*/
func (a *Client) GetPlatformWalletConfigShort(params *GetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformWalletConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlatformWalletConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlatformWalletConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlatformWalletConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlatformWalletConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePlatformWalletConfigShort instead.

UpdatePlatformWalletConfig update platform wallet config
Update platform wallet config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET:CONFIG", action=4 (UPDATE)
  *  Returns : platform wallet config
*/
func (a *Client) UpdatePlatformWalletConfig(params *UpdatePlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformWalletConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlatformWalletConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePlatformWalletConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlatformWalletConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePlatformWalletConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePlatformWalletConfigShort update platform wallet config
Update platform wallet config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET:CONFIG", action=4 (UPDATE)
  *  Returns : platform wallet config
*/
func (a *Client) UpdatePlatformWalletConfigShort(params *UpdatePlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformWalletConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlatformWalletConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePlatformWalletConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlatformWalletConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePlatformWalletConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ResetPlatformWalletConfigShort instead.

ResetPlatformWalletConfig reset platform wallet config
Reset platform wallet config to default config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET:CONFIG", action=4 (UPDATE)
  *  Returns : platform wallet config
*/
func (a *Client) ResetPlatformWalletConfig(params *ResetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPlatformWalletConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetPlatformWalletConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "resetPlatformWalletConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetPlatformWalletConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetPlatformWalletConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetPlatformWalletConfigShort reset platform wallet config
Reset platform wallet config to default config.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET:CONFIG", action=4 (UPDATE)
  *  Returns : platform wallet config
*/
func (a *Client) ResetPlatformWalletConfigShort(params *ResetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPlatformWalletConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetPlatformWalletConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "resetPlatformWalletConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetPlatformWalletConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetPlatformWalletConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryUserCurrencyWalletsShort instead.

QueryUserCurrencyWallets get user currency wallet summary
Get user currency wallet summary.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : currency wallet summary
*/
func (a *Client) QueryUserCurrencyWallets(params *QueryUserCurrencyWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserCurrencyWalletsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserCurrencyWalletsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserCurrencyWallets",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/summary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserCurrencyWalletsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserCurrencyWalletsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserCurrencyWalletsShort get user currency wallet summary
Get user currency wallet summary.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : currency wallet summary
*/
func (a *Client) QueryUserCurrencyWalletsShort(params *QueryUserCurrencyWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserCurrencyWalletsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserCurrencyWalletsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserCurrencyWallets",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/summary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserCurrencyWalletsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserCurrencyWalletsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DebitUserWalletByCurrencyCodeShort instead.

DebitUserWalletByCurrencyCode debit a user wallet by currency code
Debit a user wallet by currency code, default is debit system wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) DebitUserWalletByCurrencyCode(params *DebitUserWalletByCurrencyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletByCurrencyCodeOK, *DebitUserWalletByCurrencyCodeBadRequest, *DebitUserWalletByCurrencyCodeConflict, *DebitUserWalletByCurrencyCodeUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebitUserWalletByCurrencyCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debitUserWalletByCurrencyCode",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/debit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebitUserWalletByCurrencyCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DebitUserWalletByCurrencyCodeOK:
		return v, nil, nil, nil, nil

	case *DebitUserWalletByCurrencyCodeBadRequest:
		return nil, v, nil, nil, nil

	case *DebitUserWalletByCurrencyCodeConflict:
		return nil, nil, v, nil, nil

	case *DebitUserWalletByCurrencyCodeUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DebitUserWalletByCurrencyCodeShort debit a user wallet by currency code
Debit a user wallet by currency code, default is debit system wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) DebitUserWalletByCurrencyCodeShort(params *DebitUserWalletByCurrencyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletByCurrencyCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebitUserWalletByCurrencyCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debitUserWalletByCurrencyCode",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/debit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebitUserWalletByCurrencyCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DebitUserWalletByCurrencyCodeOK:
		return v, nil
	case *DebitUserWalletByCurrencyCodeBadRequest:
		return nil, v
	case *DebitUserWalletByCurrencyCodeConflict:
		return nil, v
	case *DebitUserWalletByCurrencyCodeUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListUserCurrencyTransactionsShort instead.

ListUserCurrencyTransactions list user currency transactions
List user currency transactions ordered by create time desc.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : currency transaction info
*/
func (a *Client) ListUserCurrencyTransactions(params *ListUserCurrencyTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserCurrencyTransactionsOK, *ListUserCurrencyTransactionsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListUserCurrencyTransactionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listUserCurrencyTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListUserCurrencyTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ListUserCurrencyTransactionsOK:
		return v, nil, nil

	case *ListUserCurrencyTransactionsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListUserCurrencyTransactionsShort list user currency transactions
List user currency transactions ordered by create time desc.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : currency transaction info
*/
func (a *Client) ListUserCurrencyTransactionsShort(params *ListUserCurrencyTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserCurrencyTransactionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListUserCurrencyTransactionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listUserCurrencyTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListUserCurrencyTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListUserCurrencyTransactionsOK:
		return v, nil
	case *ListUserCurrencyTransactionsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CheckBalanceShort instead.

CheckBalance check if a user has enough balance
Checks if the user has enough balance based on the provided criteria.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : boolean value indicating if the user has enough balance
*/
func (a *Client) CheckBalance(params *CheckBalanceParams, authInfo runtime.ClientAuthInfoWriter) (*CheckBalanceOK, *CheckBalanceBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckBalanceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "checkBalance",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/balanceCheck",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckBalanceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *CheckBalanceOK:
		return v, nil, nil

	case *CheckBalanceBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckBalanceShort check if a user has enough balance
Checks if the user has enough balance based on the provided criteria.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : boolean value indicating if the user has enough balance
*/
func (a *Client) CheckBalanceShort(params *CheckBalanceParams, authInfo runtime.ClientAuthInfoWriter) (*CheckBalanceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckBalanceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "checkBalance",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/balanceCheck",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckBalanceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckBalanceOK:
		return v, nil
	case *CheckBalanceBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CheckWalletShort instead.

CheckWallet check wallet by balance origin and currency code
 [SERVICE COMMUNICATION ONLY] Check wallet by balance origin and currency code whether it's inactive.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
*/
func (a *Client) CheckWallet(params *CheckWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CheckWalletNoContent, *CheckWalletBadRequest, *CheckWalletConflict, *CheckWalletUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "checkWallet",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/check",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CheckWalletNoContent:
		return v, nil, nil, nil, nil

	case *CheckWalletBadRequest:
		return nil, v, nil, nil, nil

	case *CheckWalletConflict:
		return nil, nil, v, nil, nil

	case *CheckWalletUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckWalletShort check wallet by balance origin and currency code
 [SERVICE COMMUNICATION ONLY] Check wallet by balance origin and currency code whether it's inactive.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
*/
func (a *Client) CheckWalletShort(params *CheckWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CheckWalletNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "checkWallet",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/check",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckWalletNoContent:
		return v, nil
	case *CheckWalletBadRequest:
		return nil, v
	case *CheckWalletConflict:
		return nil, v
	case *CheckWalletUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreditUserWalletShort instead.

CreditUserWallet credit a user wallet by currency code and balance origin
Credit a user wallet by currency code and balance origin, if wallet not exists, it will create a new wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) CreditUserWallet(params *CreditUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CreditUserWalletOK, *CreditUserWalletBadRequest, *CreditUserWalletUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreditUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "creditUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/credit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreditUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreditUserWalletOK:
		return v, nil, nil, nil

	case *CreditUserWalletBadRequest:
		return nil, v, nil, nil

	case *CreditUserWalletUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreditUserWalletShort credit a user wallet by currency code and balance origin
Credit a user wallet by currency code and balance origin, if wallet not exists, it will create a new wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) CreditUserWalletShort(params *CreditUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CreditUserWalletOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreditUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "creditUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/credit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreditUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreditUserWalletOK:
		return v, nil
	case *CreditUserWalletBadRequest:
		return nil, v
	case *CreditUserWalletUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DebitByWalletPlatformShort instead.

DebitByWalletPlatform pay with user wallet by currency code and client platform
Pay with user wallet by currency code and client platform.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)



## Restrictions for metadata


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) DebitByWalletPlatform(params *DebitByWalletPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*DebitByWalletPlatformOK, *DebitByWalletPlatformBadRequest, *DebitByWalletPlatformUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebitByWalletPlatformParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debitByWalletPlatform",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/debitByWalletPlatform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebitByWalletPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DebitByWalletPlatformOK:
		return v, nil, nil, nil

	case *DebitByWalletPlatformBadRequest:
		return nil, v, nil, nil

	case *DebitByWalletPlatformUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DebitByWalletPlatformShort pay with user wallet by currency code and client platform
Pay with user wallet by currency code and client platform.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)



## Restrictions for metadata


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) DebitByWalletPlatformShort(params *DebitByWalletPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*DebitByWalletPlatformOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebitByWalletPlatformParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debitByWalletPlatform",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/debitByWalletPlatform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebitByWalletPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DebitByWalletPlatformOK:
		return v, nil
	case *DebitByWalletPlatformBadRequest:
		return nil, v
	case *DebitByWalletPlatformUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PayWithUserWalletShort instead.

PayWithUserWallet pay with user wallet by currency code and client platform
Pay with user wallet by currency code and client platform.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) PayWithUserWallet(params *PayWithUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PayWithUserWalletOK, *PayWithUserWalletBadRequest, *PayWithUserWalletUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPayWithUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "payWithUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/payment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PayWithUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PayWithUserWalletOK:
		return v, nil, nil, nil

	case *PayWithUserWalletBadRequest:
		return nil, v, nil, nil

	case *PayWithUserWalletUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PayWithUserWalletShort pay with user wallet by currency code and client platform
Pay with user wallet by currency code and client platform.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) PayWithUserWalletShort(params *PayWithUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PayWithUserWalletOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPayWithUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "payWithUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/payment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PayWithUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PayWithUserWalletOK:
		return v, nil
	case *PayWithUserWalletBadRequest:
		return nil, v
	case *PayWithUserWalletUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserWalletShort instead.

GetUserWallet get a user wallet
get a user wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : wallet info
*/
func (a *Client) GetUserWallet(params *GetUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserWalletOK, *GetUserWalletNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserWallet",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserWalletOK:
		return v, nil, nil

	case *GetUserWalletNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserWalletShort get a user wallet
get a user wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : wallet info
*/
func (a *Client) GetUserWalletShort(params *GetUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserWalletOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserWallet",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserWalletOK:
		return v, nil
	case *GetUserWalletNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DebitUserWalletShort instead.

DebitUserWallet debit a user wallet
Debit a user wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) DebitUserWallet(params *DebitUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletOK, *DebitUserWalletBadRequest, *DebitUserWalletNotFound, *DebitUserWalletConflict, *DebitUserWalletUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebitUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debitUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebitUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DebitUserWalletOK:
		return v, nil, nil, nil, nil, nil

	case *DebitUserWalletBadRequest:
		return nil, v, nil, nil, nil, nil

	case *DebitUserWalletNotFound:
		return nil, nil, v, nil, nil, nil

	case *DebitUserWalletConflict:
		return nil, nil, nil, v, nil, nil

	case *DebitUserWalletUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DebitUserWalletShort debit a user wallet
Debit a user wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) DebitUserWalletShort(params *DebitUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebitUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debitUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebitUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DebitUserWalletOK:
		return v, nil
	case *DebitUserWalletBadRequest:
		return nil, v
	case *DebitUserWalletNotFound:
		return nil, v
	case *DebitUserWalletConflict:
		return nil, v
	case *DebitUserWalletUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DisableUserWalletShort instead.

DisableUserWallet disable a user wallet
disable a user wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) DisableUserWallet(params *DisableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserWalletNoContent, *DisableUserWalletNotFound, *DisableUserWalletConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "disableUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DisableUserWalletNoContent:
		return v, nil, nil, nil

	case *DisableUserWalletNotFound:
		return nil, v, nil, nil

	case *DisableUserWalletConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableUserWalletShort disable a user wallet
disable a user wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) DisableUserWalletShort(params *DisableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserWalletNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "disableUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableUserWalletNoContent:
		return v, nil
	case *DisableUserWalletNotFound:
		return nil, v
	case *DisableUserWalletConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use EnableUserWalletShort instead.

EnableUserWallet enable a user wallet
enable a user wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) EnableUserWallet(params *EnableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserWalletNoContent, *EnableUserWalletNotFound, *EnableUserWalletConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "enableUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *EnableUserWalletNoContent:
		return v, nil, nil, nil

	case *EnableUserWalletNotFound:
		return nil, v, nil, nil

	case *EnableUserWalletConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableUserWalletShort enable a user wallet
enable a user wallet.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=4 (UPDATE)
*/
func (a *Client) EnableUserWalletShort(params *EnableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserWalletNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "enableUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableUserWalletNoContent:
		return v, nil
	case *EnableUserWalletNotFound:
		return nil, v
	case *EnableUserWalletConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListUserWalletTransactionsShort instead.

ListUserWalletTransactions list user wallet transactions
List user wallet transactions ordered by create time desc.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : wallet transaction info
*/
func (a *Client) ListUserWalletTransactions(params *ListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserWalletTransactionsOK, *ListUserWalletTransactionsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListUserWalletTransactionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listUserWalletTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListUserWalletTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ListUserWalletTransactionsOK:
		return v, nil, nil

	case *ListUserWalletTransactionsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListUserWalletTransactionsShort list user wallet transactions
List user wallet transactions ordered by create time desc.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : wallet transaction info
*/
func (a *Client) ListUserWalletTransactionsShort(params *ListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserWalletTransactionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListUserWalletTransactionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listUserWalletTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListUserWalletTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListUserWalletTransactionsOK:
		return v, nil
	case *ListUserWalletTransactionsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryWalletsShort instead.

QueryWallets query wallets
Query wallets.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET", action=2 (READ)
  *  Returns : paginated wallets info
*/
func (a *Client) QueryWallets(params *QueryWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryWalletsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryWalletsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryWallets",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryWalletsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryWalletsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryWalletsShort query wallets
Query wallets.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET", action=2 (READ)
  *  Returns : paginated wallets info
*/
func (a *Client) QueryWalletsShort(params *QueryWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryWalletsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryWalletsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryWallets",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryWalletsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryWalletsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkCreditShort instead.

BulkCredit credit different users' wallets
Credit different users' wallets.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET", action=4 (UPDATE)
  *  Returns : bulk credit result
*/
func (a *Client) BulkCredit(params *BulkCreditParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreditOK, *BulkCreditUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkCreditParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkCredit",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets/credit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkCreditReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkCreditOK:
		return v, nil, nil

	case *BulkCreditUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkCreditShort credit different users' wallets
Credit different users' wallets.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET", action=4 (UPDATE)
  *  Returns : bulk credit result
*/
func (a *Client) BulkCreditShort(params *BulkCreditParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreditOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkCreditParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkCredit",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets/credit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkCreditReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkCreditOK:
		return v, nil
	case *BulkCreditUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkDebitShort instead.

BulkDebit debit different users' wallets
Debit different users' wallets.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET", action=4 (UPDATE)
  *  Returns : bulk credit result
*/
func (a *Client) BulkDebit(params *BulkDebitParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDebitOK, *BulkDebitUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkDebitParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkDebit",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets/debit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkDebitReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkDebitOK:
		return v, nil, nil

	case *BulkDebitUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkDebitShort debit different users' wallets
Debit different users' wallets.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET", action=4 (UPDATE)
  *  Returns : bulk credit result
*/
func (a *Client) BulkDebitShort(params *BulkDebitParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDebitOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkDebitParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkDebit",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets/debit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkDebitReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkDebitOK:
		return v, nil
	case *BulkDebitUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetWalletShort instead.

GetWallet get a wallet by wallet id
get a wallet by wallet id.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET", action=2 (READ)
  *  Returns : wallet info
*/
func (a *Client) GetWallet(params *GetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetWalletOK, *GetWalletNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getWallet",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets/{walletId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetWalletOK:
		return v, nil, nil

	case *GetWalletNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetWalletShort get a wallet by wallet id
get a wallet by wallet id.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET", action=2 (READ)
  *  Returns : wallet info
*/
func (a *Client) GetWalletShort(params *GetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetWalletOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getWallet",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets/{walletId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetWalletOK:
		return v, nil
	case *GetWalletNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMyWalletShort instead.

PublicGetMyWallet get my wallet by currency code and namespace
get my wallet by currency code and namespace.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:WALLET", action=2 (READ)
  *  Returns : wallet info
  *  Path's namespace :
    * can be filled with publisher namespace in order to get publisher user wallet
    * can be filled with game namespace in order to get game user wallet
*/
func (a *Client) PublicGetMyWallet(params *PublicGetMyWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyWalletOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMyWallet",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/wallets/{currencyCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyWalletOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyWalletShort get my wallet by currency code and namespace
get my wallet by currency code and namespace.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:WALLET", action=2 (READ)
  *  Returns : wallet info
  *  Path's namespace :
    * can be filled with publisher namespace in order to get publisher user wallet
    * can be filled with game namespace in order to get game user wallet
*/
func (a *Client) PublicGetMyWalletShort(params *PublicGetMyWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyWalletOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMyWallet",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/wallets/{currencyCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyWalletOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetWalletShort instead.

PublicGetWallet get a wallet by currency code
get a wallet by currency code.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : wallet info
*/
func (a *Client) PublicGetWallet(params *PublicGetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetWalletOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetWallet",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetWalletOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetWalletShort get a wallet by currency code
get a wallet by currency code.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : wallet info
*/
func (a *Client) PublicGetWalletShort(params *PublicGetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetWalletOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetWallet",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetWalletOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListUserWalletTransactionsShort instead.

PublicListUserWalletTransactions list wallet transactions by currency code
List wallet transactions by currency code ordered by create time desc.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : currency transaction info
*/
func (a *Client) PublicListUserWalletTransactions(params *PublicListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserWalletTransactionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListUserWalletTransactionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListUserWalletTransactions",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListUserWalletTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListUserWalletTransactionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListUserWalletTransactionsShort list wallet transactions by currency code
List wallet transactions by currency code ordered by create time desc.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:WALLET", action=2 (READ)
  *  Returns : currency transaction info
*/
func (a *Client) PublicListUserWalletTransactionsShort(params *PublicListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserWalletTransactionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListUserWalletTransactionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListUserWalletTransactions",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListUserWalletTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListUserWalletTransactionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
