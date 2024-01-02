// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package trade_action

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new trade action API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for trade action API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	Commit(params *CommitParams, authInfo runtime.ClientAuthInfoWriter) (*CommitOK, error)
	CommitShort(params *CommitParams, authInfo runtime.ClientAuthInfoWriter) (*CommitOK, error)
	GetTradeHistoryByCriteria(params *GetTradeHistoryByCriteriaParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByCriteriaOK, error)
	GetTradeHistoryByCriteriaShort(params *GetTradeHistoryByCriteriaParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByCriteriaOK, error)
	GetTradeHistoryByTransactionID(params *GetTradeHistoryByTransactionIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByTransactionIDOK, error)
	GetTradeHistoryByTransactionIDShort(params *GetTradeHistoryByTransactionIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByTransactionIDOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CommitShort instead.

Commit commit a chain of actions or operations
This API is used to create a chained operations

Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:TRADE, action=1 (CREATE)
  *  Returns : chain action history
  *  FULFILL_ITEM operation supported item type : INGAMEITEM,LOOTBOX,OPTIONBOX



## Restrictions for metadata


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) Commit(params *CommitParams, authInfo runtime.ClientAuthInfoWriter) (*CommitOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCommitParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "commit",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/trade/commit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CommitReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CommitOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CommitShort commit a chain of actions or operations
This API is used to create a chained operations

Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:TRADE, action=1 (CREATE)
  *  Returns : chain action history
  *  FULFILL_ITEM operation supported item type : INGAMEITEM,LOOTBOX,OPTIONBOX



## Restrictions for metadata


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) CommitShort(params *CommitParams, authInfo runtime.ClientAuthInfoWriter) (*CommitOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCommitParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "commit",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/trade/commit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CommitReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CommitOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetTradeHistoryByCriteriaShort instead.

GetTradeHistoryByCriteria retrieve trade history by criteria
This API is used to fetch trade history based on the provided criteria

Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:TRADE, action=2 (REDA)
  *  Returns : trade history list based on criteria
*/
func (a *Client) GetTradeHistoryByCriteria(params *GetTradeHistoryByCriteriaParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByCriteriaOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTradeHistoryByCriteriaParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTradeHistoryByCriteria",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/trade/history/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTradeHistoryByCriteriaReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTradeHistoryByCriteriaOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTradeHistoryByCriteriaShort retrieve trade history by criteria
This API is used to fetch trade history based on the provided criteria

Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:TRADE, action=2 (REDA)
  *  Returns : trade history list based on criteria
*/
func (a *Client) GetTradeHistoryByCriteriaShort(params *GetTradeHistoryByCriteriaParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByCriteriaOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTradeHistoryByCriteriaParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTradeHistoryByCriteria",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/trade/history/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTradeHistoryByCriteriaReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTradeHistoryByCriteriaOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetTradeHistoryByTransactionIDShort instead.

GetTradeHistoryByTransactionID retrieve trade history by transaction id
This API is used to fetch a specific trade history using transaction ID

Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:TRADE, action=2 (REDA)
  *  Returns : trade history based on transaction ID
*/
func (a *Client) GetTradeHistoryByTransactionID(params *GetTradeHistoryByTransactionIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByTransactionIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTradeHistoryByTransactionIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTradeHistoryByTransactionId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/trade/{transactionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTradeHistoryByTransactionIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTradeHistoryByTransactionIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTradeHistoryByTransactionIDShort retrieve trade history by transaction id
This API is used to fetch a specific trade history using transaction ID

Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:TRADE, action=2 (REDA)
  *  Returns : trade history based on transaction ID
*/
func (a *Client) GetTradeHistoryByTransactionIDShort(params *GetTradeHistoryByTransactionIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByTransactionIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTradeHistoryByTransactionIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTradeHistoryByTransactionId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/trade/{transactionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTradeHistoryByTransactionIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTradeHistoryByTransactionIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
