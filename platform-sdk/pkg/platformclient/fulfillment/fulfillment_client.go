// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package fulfillment

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new fulfillment API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for fulfillment API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryFulfillmentHistories(params *QueryFulfillmentHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryFulfillmentHistoriesOK, error)
	QueryFulfillmentHistoriesShort(params *QueryFulfillmentHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryFulfillmentHistoriesOK, error)
	FulfillItem(params *FulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillItemOK, *FulfillItemBadRequest, *FulfillItemNotFound, *FulfillItemConflict, error)
	FulfillItemShort(params *FulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillItemOK, error)
	RedeemCode(params *RedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*RedeemCodeOK, *RedeemCodeBadRequest, *RedeemCodeNotFound, *RedeemCodeConflict, error)
	RedeemCodeShort(params *RedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*RedeemCodeOK, error)
	PreCheckFulfillItem(params *PreCheckFulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckFulfillItemOK, *PreCheckFulfillItemBadRequest, *PreCheckFulfillItemNotFound, error)
	PreCheckFulfillItemShort(params *PreCheckFulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckFulfillItemOK, error)
	FulfillRewards(params *FulfillRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsNoContent, *FulfillRewardsBadRequest, *FulfillRewardsNotFound, *FulfillRewardsConflict, error)
	FulfillRewardsShort(params *FulfillRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsNoContent, error)
	PublicRedeemCode(params *PublicRedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRedeemCodeOK, *PublicRedeemCodeBadRequest, *PublicRedeemCodeNotFound, *PublicRedeemCodeConflict, *PublicRedeemCodeTooManyRequests, error)
	PublicRedeemCodeShort(params *PublicRedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRedeemCodeOK, error)
	FulfillRewardsV2(params *FulfillRewardsV2Params, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsV2OK, *FulfillRewardsV2BadRequest, *FulfillRewardsV2NotFound, *FulfillRewardsV2Conflict, error)
	FulfillRewardsV2Short(params *FulfillRewardsV2Params, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryFulfillmentHistoriesShort instead.

QueryFulfillmentHistories query fulfillment histories
Query fulfillment histories in a namespace.
Other detail info:

  * Returns : query fulfillment history
*/
func (a *Client) QueryFulfillmentHistories(params *QueryFulfillmentHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryFulfillmentHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryFulfillmentHistoriesParams()
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
		ID:                 "queryFulfillmentHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/fulfillment/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryFulfillmentHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryFulfillmentHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryFulfillmentHistoriesShort query fulfillment histories
Query fulfillment histories in a namespace.
Other detail info:

  * Returns : query fulfillment history
*/
func (a *Client) QueryFulfillmentHistoriesShort(params *QueryFulfillmentHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryFulfillmentHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryFulfillmentHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryFulfillmentHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/fulfillment/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryFulfillmentHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryFulfillmentHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use FulfillItemShort instead.

FulfillItem fulfill item
Fulfill item.
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) FulfillItem(params *FulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillItemOK, *FulfillItemBadRequest, *FulfillItemNotFound, *FulfillItemConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillItemParams()
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
		ID:                 "fulfillItem",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *FulfillItemOK:
		return v, nil, nil, nil, nil

	case *FulfillItemBadRequest:
		return nil, v, nil, nil, nil

	case *FulfillItemNotFound:
		return nil, nil, v, nil, nil

	case *FulfillItemConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FulfillItemShort fulfill item
Fulfill item.
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) FulfillItemShort(params *FulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "fulfillItem",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FulfillItemOK:
		return v, nil
	case *FulfillItemBadRequest:
		return nil, v
	case *FulfillItemNotFound:
		return nil, v
	case *FulfillItemConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RedeemCodeShort instead.

RedeemCode redeem campaign code
Redeem campaign code.
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) RedeemCode(params *RedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*RedeemCodeOK, *RedeemCodeBadRequest, *RedeemCodeNotFound, *RedeemCodeConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRedeemCodeParams()
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
		ID:                 "redeemCode",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RedeemCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RedeemCodeOK:
		return v, nil, nil, nil, nil

	case *RedeemCodeBadRequest:
		return nil, v, nil, nil, nil

	case *RedeemCodeNotFound:
		return nil, nil, v, nil, nil

	case *RedeemCodeConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RedeemCodeShort redeem campaign code
Redeem campaign code.
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) RedeemCodeShort(params *RedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*RedeemCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRedeemCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "redeemCode",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RedeemCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RedeemCodeOK:
		return v, nil
	case *RedeemCodeBadRequest:
		return nil, v
	case *RedeemCodeNotFound:
		return nil, v
	case *RedeemCodeConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PreCheckFulfillItemShort instead.

PreCheckFulfillItem pre check fulfillment items
Retrieve and check fulfillment items based on the provided request.
Other detail info:

  * Returns : list of fulfillment items
*/
func (a *Client) PreCheckFulfillItem(params *PreCheckFulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckFulfillItemOK, *PreCheckFulfillItemBadRequest, *PreCheckFulfillItemNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPreCheckFulfillItemParams()
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
		ID:                 "preCheckFulfillItem",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/preCheck",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PreCheckFulfillItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PreCheckFulfillItemOK:
		return v, nil, nil, nil

	case *PreCheckFulfillItemBadRequest:
		return nil, v, nil, nil

	case *PreCheckFulfillItemNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PreCheckFulfillItemShort pre check fulfillment items
Retrieve and check fulfillment items based on the provided request.
Other detail info:

  * Returns : list of fulfillment items
*/
func (a *Client) PreCheckFulfillItemShort(params *PreCheckFulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckFulfillItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPreCheckFulfillItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "preCheckFulfillItem",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/preCheck",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PreCheckFulfillItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PreCheckFulfillItemOK:
		return v, nil
	case *PreCheckFulfillItemBadRequest:
		return nil, v
	case *PreCheckFulfillItemNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use FulfillRewardsShort instead.

FulfillRewards fulfill rewards without content
 [SERVICE COMMUNICATION ONLY] Fulfill rewards.
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) FulfillRewards(params *FulfillRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsNoContent, *FulfillRewardsBadRequest, *FulfillRewardsNotFound, *FulfillRewardsConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillRewardsParams()
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
		ID:                 "fulfillRewards",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *FulfillRewardsNoContent:
		return v, nil, nil, nil, nil

	case *FulfillRewardsBadRequest:
		return nil, v, nil, nil, nil

	case *FulfillRewardsNotFound:
		return nil, nil, v, nil, nil

	case *FulfillRewardsConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FulfillRewardsShort fulfill rewards without content
 [SERVICE COMMUNICATION ONLY] Fulfill rewards.
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) FulfillRewardsShort(params *FulfillRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillRewardsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "fulfillRewards",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FulfillRewardsNoContent:
		return v, nil
	case *FulfillRewardsBadRequest:
		return nil, v
	case *FulfillRewardsNotFound:
		return nil, v
	case *FulfillRewardsConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicRedeemCodeShort instead.

PublicRedeemCode redeem campaign code
Redeem campaign code, this api have rate limit, default: only allow request once per user in 2 seconds
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) PublicRedeemCode(params *PublicRedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRedeemCodeOK, *PublicRedeemCodeBadRequest, *PublicRedeemCodeNotFound, *PublicRedeemCodeConflict, *PublicRedeemCodeTooManyRequests, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRedeemCodeParams()
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
		ID:                 "publicRedeemCode",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/fulfillment/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRedeemCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicRedeemCodeOK:
		return v, nil, nil, nil, nil, nil

	case *PublicRedeemCodeBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicRedeemCodeNotFound:
		return nil, nil, v, nil, nil, nil

	case *PublicRedeemCodeConflict:
		return nil, nil, nil, v, nil, nil

	case *PublicRedeemCodeTooManyRequests:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicRedeemCodeShort redeem campaign code
Redeem campaign code, this api have rate limit, default: only allow request once per user in 2 seconds
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) PublicRedeemCodeShort(params *PublicRedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRedeemCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRedeemCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicRedeemCode",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/fulfillment/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRedeemCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicRedeemCodeOK:
		return v, nil
	case *PublicRedeemCodeBadRequest:
		return nil, v
	case *PublicRedeemCodeNotFound:
		return nil, v
	case *PublicRedeemCodeConflict:
		return nil, v
	case *PublicRedeemCodeTooManyRequests:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use FulfillRewardsV2Short instead.

FulfillRewardsV2 fulfill rewards
 [SERVICE COMMUNICATION ONLY] Fulfill rewards.
Other detail info:

  * Returns : fulfillment result
  *  rewards Item unsupported Type : SUBSCRIPTION
*/
func (a *Client) FulfillRewardsV2(params *FulfillRewardsV2Params, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsV2OK, *FulfillRewardsV2BadRequest, *FulfillRewardsV2NotFound, *FulfillRewardsV2Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillRewardsV2Params()
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
		ID:                 "fulfillRewardsV2",
		Method:             "POST",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillRewardsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *FulfillRewardsV2OK:
		return v, nil, nil, nil, nil

	case *FulfillRewardsV2BadRequest:
		return nil, v, nil, nil, nil

	case *FulfillRewardsV2NotFound:
		return nil, nil, v, nil, nil

	case *FulfillRewardsV2Conflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FulfillRewardsV2Short fulfill rewards
 [SERVICE COMMUNICATION ONLY] Fulfill rewards.
Other detail info:

  * Returns : fulfillment result
  *  rewards Item unsupported Type : SUBSCRIPTION
*/
func (a *Client) FulfillRewardsV2Short(params *FulfillRewardsV2Params, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillRewardsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "fulfillRewardsV2",
		Method:             "POST",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillRewardsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FulfillRewardsV2OK:
		return v, nil
	case *FulfillRewardsV2BadRequest:
		return nil, v
	case *FulfillRewardsV2NotFound:
		return nil, v
	case *FulfillRewardsV2Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
