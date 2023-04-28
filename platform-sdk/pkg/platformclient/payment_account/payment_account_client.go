// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package payment_account

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new payment account API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for payment account API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicGetPaymentAccounts(params *PublicGetPaymentAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPaymentAccountsOK, error)
	PublicGetPaymentAccountsShort(params *PublicGetPaymentAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPaymentAccountsOK, error)
	PublicDeletePaymentAccount(params *PublicDeletePaymentAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePaymentAccountNoContent, error)
	PublicDeletePaymentAccountShort(params *PublicDeletePaymentAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePaymentAccountNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use PublicGetPaymentAccountsShort instead.

PublicGetPaymentAccounts get payment accounts
Get payment accounts.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:PAYMENT:ACCOUNT", action=2 (READ)
  *  Returns : Payment account list
*/
func (a *Client) PublicGetPaymentAccounts(params *PublicGetPaymentAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPaymentAccountsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPaymentAccountsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPaymentAccounts",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/payment/accounts",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPaymentAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPaymentAccountsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPaymentAccountsShort get payment accounts
Get payment accounts.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:PAYMENT:ACCOUNT", action=2 (READ)
  *  Returns : Payment account list
*/
func (a *Client) PublicGetPaymentAccountsShort(params *PublicGetPaymentAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPaymentAccountsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPaymentAccountsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPaymentAccounts",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/payment/accounts",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPaymentAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPaymentAccountsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicDeletePaymentAccountShort instead.

PublicDeletePaymentAccount delete payment account
Delete payment account.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:PAYMENT:ACCOUNT", action=8 (DELETE)
  *  Returns :
*/
func (a *Client) PublicDeletePaymentAccount(params *PublicDeletePaymentAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePaymentAccountNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePaymentAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeletePaymentAccount",
		Method:             "DELETE",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/payment/accounts/{type}/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePaymentAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePaymentAccountNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeletePaymentAccountShort delete payment account
Delete payment account.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:PAYMENT:ACCOUNT", action=8 (DELETE)
  *  Returns :
*/
func (a *Client) PublicDeletePaymentAccountShort(params *PublicDeletePaymentAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePaymentAccountNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePaymentAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeletePaymentAccount",
		Method:             "DELETE",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/payment/accounts/{type}/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePaymentAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePaymentAccountNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
