// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package iap_subscription

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new iap subscription API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for iap subscription API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryThirdPartySubscription(params *QueryThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryThirdPartySubscriptionOK, error)
	QueryThirdPartySubscriptionShort(params *QueryThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryThirdPartySubscriptionOK, error)
	QueryUserThirdPartySubscription(params *QueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionOK, error)
	QueryUserThirdPartySubscriptionShort(params *QueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionOK, error)
	GetThirdPartyPlatformSubscriptionOwnershipByGroupID(params *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByGroupIDOK, error)
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDShort(params *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByGroupIDOK, error)
	GetThirdPartyPlatformSubscriptionOwnershipByProductID(params *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByProductIDOK, error)
	GetThirdPartyPlatformSubscriptionOwnershipByProductIDShort(params *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByProductIDOK, error)
	QueryUserThirdPartySubscriptionTransactions(params *QueryUserThirdPartySubscriptionTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionTransactionsOK, error)
	QueryUserThirdPartySubscriptionTransactionsShort(params *QueryUserThirdPartySubscriptionTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionTransactionsOK, error)
	GetThirdPartySubscriptionDetails(params *GetThirdPartySubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartySubscriptionDetailsOK, *GetThirdPartySubscriptionDetailsNotFound, error)
	GetThirdPartySubscriptionDetailsShort(params *GetThirdPartySubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartySubscriptionDetailsOK, error)
	GetSubscriptionHistory(params *GetSubscriptionHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetSubscriptionHistoryOK, error)
	GetSubscriptionHistoryShort(params *GetSubscriptionHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetSubscriptionHistoryOK, error)
	SyncSubscriptionTransaction(params *SyncSubscriptionTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionTransactionOK, *SyncSubscriptionTransactionBadRequest, *SyncSubscriptionTransactionNotFound, error)
	SyncSubscriptionTransactionShort(params *SyncSubscriptionTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionTransactionOK, error)
	GetThirdPartyUserSubscriptionDetails(params *GetThirdPartyUserSubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyUserSubscriptionDetailsOK, *GetThirdPartyUserSubscriptionDetailsNotFound, error)
	GetThirdPartyUserSubscriptionDetailsShort(params *GetThirdPartyUserSubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyUserSubscriptionDetailsOK, error)
	SyncSubscription(params *SyncSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionOK, *SyncSubscriptionBadRequest, *SyncSubscriptionNotFound, error)
	SyncSubscriptionShort(params *SyncSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionOK, error)
	PublicQueryUserThirdPartySubscription(params *PublicQueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserThirdPartySubscriptionOK, error)
	PublicQueryUserThirdPartySubscriptionShort(params *PublicQueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserThirdPartySubscriptionOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryThirdPartySubscriptionShort instead.

QueryThirdPartySubscription query subscriptions.
Query subscriptions, default sort by updatedAt Other detail info:
                          * Returns :
*/
func (a *Client) QueryThirdPartySubscription(params *QueryThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryThirdPartySubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryThirdPartySubscriptionParams()
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
		ID:                 "queryThirdPartySubscription",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryThirdPartySubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryThirdPartySubscriptionOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryThirdPartySubscriptionShort query subscriptions.
Query subscriptions, default sort by updatedAt Other detail info:
                          * Returns :
*/
func (a *Client) QueryThirdPartySubscriptionShort(params *QueryThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryThirdPartySubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryThirdPartySubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryThirdPartySubscription",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryThirdPartySubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryThirdPartySubscriptionOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryUserThirdPartySubscriptionShort instead.

QueryUserThirdPartySubscription query user subscription.
Query user subscription, default sort by updatedAtOther detail info:
                          * Returns :
*/
func (a *Client) QueryUserThirdPartySubscription(params *QueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserThirdPartySubscriptionParams()
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
		ID:                 "queryUserThirdPartySubscription",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserThirdPartySubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserThirdPartySubscriptionOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserThirdPartySubscriptionShort query user subscription.
Query user subscription, default sort by updatedAtOther detail info:
                          * Returns :
*/
func (a *Client) QueryUserThirdPartySubscriptionShort(params *QueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserThirdPartySubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserThirdPartySubscription",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserThirdPartySubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserThirdPartySubscriptionOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetThirdPartyPlatformSubscriptionOwnershipByGroupIDShort instead.

GetThirdPartyPlatformSubscriptionOwnershipByGroupID get user third party platform subscription ownership by subscription group id
Get user third party subscription by subscription group id.
*/
func (a *Client) GetThirdPartyPlatformSubscriptionOwnershipByGroupID(params *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByGroupIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams()
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
		ID:                 "getThirdPartyPlatformSubscriptionOwnershipByGroupId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}/ownership/byGroupId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartyPlatformSubscriptionOwnershipByGroupIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetThirdPartyPlatformSubscriptionOwnershipByGroupIDShort get user third party platform subscription ownership by subscription group id
Get user third party subscription by subscription group id.
*/
func (a *Client) GetThirdPartyPlatformSubscriptionOwnershipByGroupIDShort(params *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByGroupIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getThirdPartyPlatformSubscriptionOwnershipByGroupId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}/ownership/byGroupId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartyPlatformSubscriptionOwnershipByGroupIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetThirdPartyPlatformSubscriptionOwnershipByProductIDShort instead.

GetThirdPartyPlatformSubscriptionOwnershipByProductID get user third party platform subscription ownership by subscription product id
Get user third party subscription by subscription product id.
*/
func (a *Client) GetThirdPartyPlatformSubscriptionOwnershipByProductID(params *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByProductIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartyPlatformSubscriptionOwnershipByProductIDParams()
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
		ID:                 "getThirdPartyPlatformSubscriptionOwnershipByProductId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}/ownership/byProductId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartyPlatformSubscriptionOwnershipByProductIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartyPlatformSubscriptionOwnershipByProductIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetThirdPartyPlatformSubscriptionOwnershipByProductIDShort get user third party platform subscription ownership by subscription product id
Get user third party subscription by subscription product id.
*/
func (a *Client) GetThirdPartyPlatformSubscriptionOwnershipByProductIDShort(params *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByProductIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartyPlatformSubscriptionOwnershipByProductIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getThirdPartyPlatformSubscriptionOwnershipByProductId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}/ownership/byProductId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartyPlatformSubscriptionOwnershipByProductIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartyPlatformSubscriptionOwnershipByProductIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryUserThirdPartySubscriptionTransactionsShort instead.

QueryUserThirdPartySubscriptionTransactions admin query user subscription transactions.
Admin query user subscription transactions, default sort by startAt timeOther detail info:
                          * Returns :
*/
func (a *Client) QueryUserThirdPartySubscriptionTransactions(params *QueryUserThirdPartySubscriptionTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionTransactionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserThirdPartySubscriptionTransactionsParams()
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
		ID:                 "queryUserThirdPartySubscriptionTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserThirdPartySubscriptionTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserThirdPartySubscriptionTransactionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserThirdPartySubscriptionTransactionsShort admin query user subscription transactions.
Admin query user subscription transactions, default sort by startAt timeOther detail info:
                          * Returns :
*/
func (a *Client) QueryUserThirdPartySubscriptionTransactionsShort(params *QueryUserThirdPartySubscriptionTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionTransactionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserThirdPartySubscriptionTransactionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserThirdPartySubscriptionTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserThirdPartySubscriptionTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserThirdPartySubscriptionTransactionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetThirdPartySubscriptionDetailsShort instead.

GetThirdPartySubscriptionDetails admin get user subscription transaction details.
Admin get user subscription details.Other detail info:
                          * Returns :
*/
func (a *Client) GetThirdPartySubscriptionDetails(params *GetThirdPartySubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartySubscriptionDetailsOK, *GetThirdPartySubscriptionDetailsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartySubscriptionDetailsParams()
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
		ID:                 "getThirdPartySubscriptionDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartySubscriptionDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartySubscriptionDetailsOK:
		return v, nil, nil

	case *GetThirdPartySubscriptionDetailsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetThirdPartySubscriptionDetailsShort admin get user subscription transaction details.
Admin get user subscription details.Other detail info:
                          * Returns :
*/
func (a *Client) GetThirdPartySubscriptionDetailsShort(params *GetThirdPartySubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartySubscriptionDetailsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartySubscriptionDetailsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getThirdPartySubscriptionDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartySubscriptionDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartySubscriptionDetailsOK:
		return v, nil
	case *GetThirdPartySubscriptionDetailsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSubscriptionHistoryShort instead.

GetSubscriptionHistory get user subscription transaction update history
Get Subscription Transaction Update History
*/
func (a *Client) GetSubscriptionHistory(params *GetSubscriptionHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetSubscriptionHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSubscriptionHistoryParams()
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
		ID:                 "getSubscriptionHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSubscriptionHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSubscriptionHistoryOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSubscriptionHistoryShort get user subscription transaction update history
Get Subscription Transaction Update History
*/
func (a *Client) GetSubscriptionHistoryShort(params *GetSubscriptionHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetSubscriptionHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSubscriptionHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSubscriptionHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSubscriptionHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSubscriptionHistoryOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncSubscriptionTransactionShort instead.

SyncSubscriptionTransaction sync subscription transaction
Sync Subscription Status
*/
func (a *Client) SyncSubscriptionTransaction(params *SyncSubscriptionTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionTransactionOK, *SyncSubscriptionTransactionBadRequest, *SyncSubscriptionTransactionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSubscriptionTransactionParams()
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
		ID:                 "syncSubscriptionTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSubscriptionTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncSubscriptionTransactionOK:
		return v, nil, nil, nil

	case *SyncSubscriptionTransactionBadRequest:
		return nil, v, nil, nil

	case *SyncSubscriptionTransactionNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSubscriptionTransactionShort sync subscription transaction
Sync Subscription Status
*/
func (a *Client) SyncSubscriptionTransactionShort(params *SyncSubscriptionTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionTransactionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSubscriptionTransactionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncSubscriptionTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSubscriptionTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSubscriptionTransactionOK:
		return v, nil
	case *SyncSubscriptionTransactionBadRequest:
		return nil, v
	case *SyncSubscriptionTransactionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetThirdPartyUserSubscriptionDetailsShort instead.

GetThirdPartyUserSubscriptionDetails admin get user subscription details.
Admin get user subscription details.Other detail info:
                          * Returns :
*/
func (a *Client) GetThirdPartyUserSubscriptionDetails(params *GetThirdPartyUserSubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyUserSubscriptionDetailsOK, *GetThirdPartyUserSubscriptionDetailsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartyUserSubscriptionDetailsParams()
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
		ID:                 "getThirdPartyUserSubscriptionDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartyUserSubscriptionDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartyUserSubscriptionDetailsOK:
		return v, nil, nil

	case *GetThirdPartyUserSubscriptionDetailsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetThirdPartyUserSubscriptionDetailsShort admin get user subscription details.
Admin get user subscription details.Other detail info:
                          * Returns :
*/
func (a *Client) GetThirdPartyUserSubscriptionDetailsShort(params *GetThirdPartyUserSubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyUserSubscriptionDetailsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartyUserSubscriptionDetailsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getThirdPartyUserSubscriptionDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartyUserSubscriptionDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartyUserSubscriptionDetailsOK:
		return v, nil
	case *GetThirdPartyUserSubscriptionDetailsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncSubscriptionShort instead.

SyncSubscription sync subscription status
Sync Subscription Status
*/
func (a *Client) SyncSubscription(params *SyncSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionOK, *SyncSubscriptionBadRequest, *SyncSubscriptionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSubscriptionParams()
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
		ID:                 "syncSubscription",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncSubscriptionOK:
		return v, nil, nil, nil

	case *SyncSubscriptionBadRequest:
		return nil, v, nil, nil

	case *SyncSubscriptionNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSubscriptionShort sync subscription status
Sync Subscription Status
*/
func (a *Client) SyncSubscriptionShort(params *SyncSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncSubscription",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSubscriptionOK:
		return v, nil
	case *SyncSubscriptionBadRequest:
		return nil, v
	case *SyncSubscriptionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicQueryUserThirdPartySubscriptionShort instead.

PublicQueryUserThirdPartySubscription query user subscription.
Query user subscription, default sort by updatedAtOther detail info:
                          * Returns :
*/
func (a *Client) PublicQueryUserThirdPartySubscription(params *PublicQueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserThirdPartySubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserThirdPartySubscriptionParams()
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
		ID:                 "publicQueryUserThirdPartySubscription",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserThirdPartySubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserThirdPartySubscriptionOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserThirdPartySubscriptionShort query user subscription.
Query user subscription, default sort by updatedAtOther detail info:
                          * Returns :
*/
func (a *Client) PublicQueryUserThirdPartySubscriptionShort(params *PublicQueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserThirdPartySubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserThirdPartySubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryUserThirdPartySubscription",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserThirdPartySubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserThirdPartySubscriptionOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
