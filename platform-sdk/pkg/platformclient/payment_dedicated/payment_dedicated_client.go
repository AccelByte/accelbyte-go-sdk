// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package payment_dedicated

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new payment dedicated API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for payment dedicated API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreatePaymentOrderByDedicated(params *CreatePaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentOrderByDedicatedCreated, *CreatePaymentOrderByDedicatedBadRequest, *CreatePaymentOrderByDedicatedForbidden, *CreatePaymentOrderByDedicatedNotFound, *CreatePaymentOrderByDedicatedConflict, *CreatePaymentOrderByDedicatedUnprocessableEntity, error)
	CreatePaymentOrderByDedicatedShort(params *CreatePaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentOrderByDedicatedCreated, error)
	RefundPaymentOrderByDedicated(params *RefundPaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*RefundPaymentOrderByDedicatedOK, *RefundPaymentOrderByDedicatedNoContent, *RefundPaymentOrderByDedicatedNotFound, *RefundPaymentOrderByDedicatedConflict, *RefundPaymentOrderByDedicatedUnprocessableEntity, error)
	RefundPaymentOrderByDedicatedShort(params *RefundPaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*RefundPaymentOrderByDedicatedOK, error)
	SyncPaymentOrders(params *SyncPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*SyncPaymentOrdersOK, error)
	SyncPaymentOrdersShort(params *SyncPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*SyncPaymentOrdersOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreatePaymentOrderByDedicatedShort instead.

CreatePaymentOrderByDedicated create payment order by dedicated server
 [Not Supported Yet In Starter]

This API is used to create payment order from non justice service. e.g. from dedicated server, the result contains the payment station url.

 Path Parameter:


     Parameter                                                         | Type   | Required | Description
    -------------------------------------------------------------------|--------|----------|-----------------------------------------------------------------------------------------------------------------
    namespace                                                          | String | Yes      | Namespace that payment order resides in, should be publisher namespace if it's a Steam like platform that share
    payment config cross namespaces, otherwise it's the game namespace



     Request Body Parameters:


     Parameter        | Type    | Required | Description
    ------------------|---------|----------|--------------------------------------------------------------------------------------------------
    extOrderNo        | String  | Yes      | External order number, it should be unique in invoker order system
    sku               | String  | No       | Item identity
    targetNamespace   | String  | Yes      | The game namespace
    targetUserId      | String  | Yes      | User id for the order owner in game namespace
    extUserId         | String  | No       | External user id, can be user character id
    price             | int     | Yes      | price which should be greater than 0
    title             | String  | Yes      | Item title
    description       | String  | Yes      | Item description
    currencyCode      | String  | No       | Currency code, default is USD
    currencyNamespace | String  | No       | Currency namespace, default is publisher namespace
    region            | String  | No       | Country of the user, will get from user info if not present
    language          | String  | No       | Language of the user
    sandbox           | Boolean | No       | set to true will create sandbox order that not real paid for xsolla/alipay and will not validate
    price for wxpay.
    returnUrl         | String  | No       | customized return url for redirect once payment finished, leave unset to use configuration in
    namespace
    notifyUrl         | String  | No       | customized notify url for payment web hook, leave unset to use configuration in namespace
    customParameters  | String  | No       | Custom parameters



 Request Body Example:


    {

               "extOrderNo": "123456789",
               "sku": "sku",
               "targetNamespace": "game1",
               "targetUserId": "94451623768940d58416ca33ca767ec3",
               "extUserId": "678",
               "title": "Frostmourne",
               "description": "Here was power. Here was despair",
               "price": 100,
               "region": "CN",
               "language": "zh-CN",
               "currencyCode": "USD",
               "currencyNamespace": "accelbyte"

    }

`

#### Payment Notification:

After user complete the payment, it will send notification to configured web hook, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

 Payment notification parameter:


     Parameter | Type   | Required | Description
    -----------|--------|----------|------------------------------------------------
    payload    | String | Yes      | Payment notification payload in json string
    sign       | String | Yes      | sha1 hex signature for payload and private key



 Payment notification parameter Example:


    {

           "payload": "{
               "type": "payment",
               "nonceStr": "34c1dcf3eb58455eb161465bbfc0b590",
               "paymentOrderNo": "18081239088",
               "namespace": "accelbyte",
               "targetNamespace": "game1",
               "targetUserId": "94451623768940d58416ca33ca767ec3",
               "extOrderNo": "123456789",
               "sku": "sku",
               "extUserId": "678",
               "price": 100,
               "paymentProvider": "XSOLLA",
               "vat": 0,
               "salesTax": 0,
               "paymentProviderFee": 0,
               "paymentMethodFee": 0,
               "currency": {
                       "currencyCode": "USD",
                       "currencySymbol": "$",
                       "currencyType": "REAL",
                       "namespace": "accelbyte",
                       "decimals": 2
                   },
               "status": "CHARGED",
               "createdTime": "2018-07-28T00:39:16.274Z",
               "chargedTime": "2018-07-28T00:39:16.274Z"
           }",

           "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

    }

`

 Payment notification payload parameter list:


     Parameter         | Type     | Required | Description
    -------------------|----------|----------|--------------------------------------------------------------------------------------
    type               | String   | Yes      | Notification type: 'payment'
    paymentOrderNo     | String   | Yes      | Payment system generated order number
    extOrderNo         | String   | No       | External order number that passed by invoker
    namespace          | String   | Yes      | Namespace that related payment order resides in
    targetNamespace    | String   | Yes      | The game namespace
    targetUserId       | String   | Yes      | The user id in game namespace
    sku                | String   | No       | Item identify, it will return if pass it when create payment
    extUserId          | String   | No       | External user id, can be character id, it will return if pass it when create payment
    price              | int      | Yes      | Price of item
    paymentProvider    | String   | Yes      | Payment provider, allowed values: xsolla/alipay/wxpay/wallet
    vat                | int      | Yes      | Payment order VAT
    salesTax           | int      | Yes      | Payment order sales tax
    paymentProviderFee | int      | Yes      | Payment provider fee
    paymentMethodFee   | int      | Yes      | Payment method fee
    currency           | Map      | Yes      | Payment order currency info
    status             | String   | Yes      | Payment order status
    statusReason       | String   | No       | Payment order status reason
    createdTime        | Datetime | No       | The time of the order created
    chargedTime        | Datetime | No       | The time of the order charged
    customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
    nonceStr           | String   | Yes      | Random string, max length is 32, can be timestamp or uuid



 Currency info parameter list:


     Parameter     | Type   | Required | Description
    ---------------|--------|----------|-----------------------------
    currencyCode   | String | Yes      | Currency Code
    currencySymbol | String | Yes      | Currency Symbol
    currencyType   | String | Yes      | Currency type(REAL/VIRTUAL)
    namespace      | String | Yes      | Currency namespace
    decimals       | int    | Yes      | Currency decimals



#### Encryption Rule:

Concat payload json string and private key and then do sha1Hex.

#### Other detail info:

  * Token type : client token
  *  Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
  * It will be forbidden while the target user is banned: PAYMENT_INITIATE or ORDER_AND_PAYMENT
  *  cross namespace allowed
  *  Returns : created payment order info
*/
func (a *Client) CreatePaymentOrderByDedicated(params *CreatePaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentOrderByDedicatedCreated, *CreatePaymentOrderByDedicatedBadRequest, *CreatePaymentOrderByDedicatedForbidden, *CreatePaymentOrderByDedicatedNotFound, *CreatePaymentOrderByDedicatedConflict, *CreatePaymentOrderByDedicatedUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePaymentOrderByDedicatedParams()
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
		ID:                 "createPaymentOrderByDedicated",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePaymentOrderByDedicatedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreatePaymentOrderByDedicatedCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *CreatePaymentOrderByDedicatedBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreatePaymentOrderByDedicatedForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *CreatePaymentOrderByDedicatedNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *CreatePaymentOrderByDedicatedConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreatePaymentOrderByDedicatedUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePaymentOrderByDedicatedShort create payment order by dedicated server
 [Not Supported Yet In Starter]

This API is used to create payment order from non justice service. e.g. from dedicated server, the result contains the payment station url.

 Path Parameter:


     Parameter                                                         | Type   | Required | Description
    -------------------------------------------------------------------|--------|----------|-----------------------------------------------------------------------------------------------------------------
    namespace                                                          | String | Yes      | Namespace that payment order resides in, should be publisher namespace if it's a Steam like platform that share
    payment config cross namespaces, otherwise it's the game namespace



     Request Body Parameters:


     Parameter        | Type    | Required | Description
    ------------------|---------|----------|--------------------------------------------------------------------------------------------------
    extOrderNo        | String  | Yes      | External order number, it should be unique in invoker order system
    sku               | String  | No       | Item identity
    targetNamespace   | String  | Yes      | The game namespace
    targetUserId      | String  | Yes      | User id for the order owner in game namespace
    extUserId         | String  | No       | External user id, can be user character id
    price             | int     | Yes      | price which should be greater than 0
    title             | String  | Yes      | Item title
    description       | String  | Yes      | Item description
    currencyCode      | String  | No       | Currency code, default is USD
    currencyNamespace | String  | No       | Currency namespace, default is publisher namespace
    region            | String  | No       | Country of the user, will get from user info if not present
    language          | String  | No       | Language of the user
    sandbox           | Boolean | No       | set to true will create sandbox order that not real paid for xsolla/alipay and will not validate
    price for wxpay.
    returnUrl         | String  | No       | customized return url for redirect once payment finished, leave unset to use configuration in
    namespace
    notifyUrl         | String  | No       | customized notify url for payment web hook, leave unset to use configuration in namespace
    customParameters  | String  | No       | Custom parameters



 Request Body Example:


    {

               "extOrderNo": "123456789",
               "sku": "sku",
               "targetNamespace": "game1",
               "targetUserId": "94451623768940d58416ca33ca767ec3",
               "extUserId": "678",
               "title": "Frostmourne",
               "description": "Here was power. Here was despair",
               "price": 100,
               "region": "CN",
               "language": "zh-CN",
               "currencyCode": "USD",
               "currencyNamespace": "accelbyte"

    }

`

#### Payment Notification:

After user complete the payment, it will send notification to configured web hook, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

 Payment notification parameter:


     Parameter | Type   | Required | Description
    -----------|--------|----------|------------------------------------------------
    payload    | String | Yes      | Payment notification payload in json string
    sign       | String | Yes      | sha1 hex signature for payload and private key



 Payment notification parameter Example:


    {

           "payload": "{
               "type": "payment",
               "nonceStr": "34c1dcf3eb58455eb161465bbfc0b590",
               "paymentOrderNo": "18081239088",
               "namespace": "accelbyte",
               "targetNamespace": "game1",
               "targetUserId": "94451623768940d58416ca33ca767ec3",
               "extOrderNo": "123456789",
               "sku": "sku",
               "extUserId": "678",
               "price": 100,
               "paymentProvider": "XSOLLA",
               "vat": 0,
               "salesTax": 0,
               "paymentProviderFee": 0,
               "paymentMethodFee": 0,
               "currency": {
                       "currencyCode": "USD",
                       "currencySymbol": "$",
                       "currencyType": "REAL",
                       "namespace": "accelbyte",
                       "decimals": 2
                   },
               "status": "CHARGED",
               "createdTime": "2018-07-28T00:39:16.274Z",
               "chargedTime": "2018-07-28T00:39:16.274Z"
           }",

           "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

    }

`

 Payment notification payload parameter list:


     Parameter         | Type     | Required | Description
    -------------------|----------|----------|--------------------------------------------------------------------------------------
    type               | String   | Yes      | Notification type: 'payment'
    paymentOrderNo     | String   | Yes      | Payment system generated order number
    extOrderNo         | String   | No       | External order number that passed by invoker
    namespace          | String   | Yes      | Namespace that related payment order resides in
    targetNamespace    | String   | Yes      | The game namespace
    targetUserId       | String   | Yes      | The user id in game namespace
    sku                | String   | No       | Item identify, it will return if pass it when create payment
    extUserId          | String   | No       | External user id, can be character id, it will return if pass it when create payment
    price              | int      | Yes      | Price of item
    paymentProvider    | String   | Yes      | Payment provider, allowed values: xsolla/alipay/wxpay/wallet
    vat                | int      | Yes      | Payment order VAT
    salesTax           | int      | Yes      | Payment order sales tax
    paymentProviderFee | int      | Yes      | Payment provider fee
    paymentMethodFee   | int      | Yes      | Payment method fee
    currency           | Map      | Yes      | Payment order currency info
    status             | String   | Yes      | Payment order status
    statusReason       | String   | No       | Payment order status reason
    createdTime        | Datetime | No       | The time of the order created
    chargedTime        | Datetime | No       | The time of the order charged
    customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
    nonceStr           | String   | Yes      | Random string, max length is 32, can be timestamp or uuid



 Currency info parameter list:


     Parameter     | Type   | Required | Description
    ---------------|--------|----------|-----------------------------
    currencyCode   | String | Yes      | Currency Code
    currencySymbol | String | Yes      | Currency Symbol
    currencyType   | String | Yes      | Currency type(REAL/VIRTUAL)
    namespace      | String | Yes      | Currency namespace
    decimals       | int    | Yes      | Currency decimals



#### Encryption Rule:

Concat payload json string and private key and then do sha1Hex.

#### Other detail info:

  * Token type : client token
  *  Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
  * It will be forbidden while the target user is banned: PAYMENT_INITIATE or ORDER_AND_PAYMENT
  *  cross namespace allowed
  *  Returns : created payment order info
*/
func (a *Client) CreatePaymentOrderByDedicatedShort(params *CreatePaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentOrderByDedicatedCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePaymentOrderByDedicatedParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createPaymentOrderByDedicated",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePaymentOrderByDedicatedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePaymentOrderByDedicatedCreated:
		return v, nil
	case *CreatePaymentOrderByDedicatedBadRequest:
		return nil, v
	case *CreatePaymentOrderByDedicatedForbidden:
		return nil, v
	case *CreatePaymentOrderByDedicatedNotFound:
		return nil, v
	case *CreatePaymentOrderByDedicatedConflict:
		return nil, v
	case *CreatePaymentOrderByDedicatedUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RefundPaymentOrderByDedicatedShort instead.

RefundPaymentOrderByDedicated refund payment order by dedicated server
 [Not Supported Yet In Starter]

This API is used to refund payment order by paymentOrderNo from non justice service. e.g. dedicated server.

  * if the status field of response json is "REFUNDED", usually wallet paid, it indicates payment order already refunded
  * if the status field of response json is "REFUNDING", usually real money paid, platform will send notification to registered notify url once refund successfully



Path Parameter:


     Parameter     | Type   | Required | Description
    ---------------|--------|----------|-----------------------------------------
    namespace      | String | Yes      | Namespace that payment order resides in
    paymentOrderNo | String | Yes      | Payment order number



 Request Body Parameters:


     Parameter  | Type   | Required | Description
    ------------|--------|----------|--------------------
    description | String | Yes      | Refund description



 Request Body Example:


    {

               "description": "Repeated item."

    }

`

#### Refund Notification:

It will send notification to configured web hook after refund successfully, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

 Refund notification parameter:


     Parameter | Type   | Required | Description
    -----------|--------|----------|------------------------------------------------
    payload    | String | Yes      | Refund notification payload in json string
    sign       | String | Yes      | sha1 hex signature for payload and private key



 Refund notification Example:


    {

           "payload": "{
               "type": "payment",
               "nonceStr": "34c1dcf3eb58455eb161465bbfc0b590",
               "paymentOrderNo": "18081239088",
               "namespace": "accelbyte",
               "targetNamespace": "game1",
               "targetUserId": "94451623768940d58416ca33ca767ec3",
               "extOrderNo": "123456789",
               "sku": "sku",
               "extUserId": "678",
               "price": 100,
               "paymentProvider": "XSOLLA",
               "vat": 0,
               "salesTax": 0,
               "paymentProviderFee": 0,
               "paymentMethodFee": 0,
               "currency": {
                       "currencyCode": "USD",
                       "currencySymbol": "$",
                       "currencyType": "REAL",
                       "namespace": "accelbyte",
                       "decimals": 2
                   },
               "status": "REFUNDED",
               "createdTime": "2018-07-28T00:39:16.274Z",
               "chargedTime": "2018-07-28T00:39:16.274Z",
               "refundedTime": "2018-07-28T00:39:16.274Z"
           }",

           "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

    }

`

 Refund notification payload parameter list:


     Parameter         | Type     | Required | Description
    -------------------|----------|----------|--------------------------------------------------------------------------------------
    type               | String   | Yes      | Notification type: 'payment'
    paymentOrderNo     | String   | Yes      | Payment system generated order number
    extOrderNo         | String   | No       | External order number that passed by invoker
    namespace          | String   | Yes      | Namespace that related payment order resides in
    targetNamespace    | String   | Yes      | The game namespace
    targetUserId       | String   | Yes      | The user id in game namespace
    sku                | String   | No       | Item identify, it will return if pass it when create payment
    extUserId          | String   | No       | External user id, can be character id, it will return if pass it when create payment
    price              | int      | Yes      | Price of item
    paymentProvider    | String   | Yes      | Payment provider: xsolla/alipay/wxpay/wallet
    vat                | int      | Yes      | Payment order VAT
    salesTax           | int      | Yes      | Payment order sales tax
    paymentProviderFee | int      | Yes      | Payment provider fee
    paymentMethodFee   | int      | Yes      | Payment method fee
    currency           | Map      | Yes      | Payment order currency info
    status             | String   | Yes      | Payment order status
    statusReason       | String   | No       | Payment order refund status reason
    createdTime        | Datetime | No       | The time of the order created
    chargedTime        | Datetime | No       | The time of the order charged
    refundedTime       | Datetime | No       | The time of the order refunded
    customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
    nonceStr           | String   | Yes      | Random string, max length is 32,



Currency info parameter list:


     Parameter     | Type   | Required | Description
    ---------------|--------|----------|-----------------------------
    currencyCode   | String | Yes      | Currency Code
    currencySymbol | String | Yes      | Currency Symbol
    currencyType   | String | Yes      | Currency type(REAL/VIRTUAL)
    namespace      | String | Yes      | Currency namespace
    decimals       | int    | Yes      | Currency decimals



#### Encryption Rule:

Concat payload json string and private key and then do sha1Hex.

#### Other detail info:

  * Token type : client token
  *  cross namespace allowed
*/
func (a *Client) RefundPaymentOrderByDedicated(params *RefundPaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*RefundPaymentOrderByDedicatedOK, *RefundPaymentOrderByDedicatedNoContent, *RefundPaymentOrderByDedicatedNotFound, *RefundPaymentOrderByDedicatedConflict, *RefundPaymentOrderByDedicatedUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefundPaymentOrderByDedicatedParams()
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
		ID:                 "refundPaymentOrderByDedicated",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefundPaymentOrderByDedicatedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RefundPaymentOrderByDedicatedOK:
		return v, nil, nil, nil, nil, nil

	case *RefundPaymentOrderByDedicatedNoContent:
		return nil, v, nil, nil, nil, nil

	case *RefundPaymentOrderByDedicatedNotFound:
		return nil, nil, v, nil, nil, nil

	case *RefundPaymentOrderByDedicatedConflict:
		return nil, nil, nil, v, nil, nil

	case *RefundPaymentOrderByDedicatedUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RefundPaymentOrderByDedicatedShort refund payment order by dedicated server
 [Not Supported Yet In Starter]

This API is used to refund payment order by paymentOrderNo from non justice service. e.g. dedicated server.

  * if the status field of response json is "REFUNDED", usually wallet paid, it indicates payment order already refunded
  * if the status field of response json is "REFUNDING", usually real money paid, platform will send notification to registered notify url once refund successfully



Path Parameter:


     Parameter     | Type   | Required | Description
    ---------------|--------|----------|-----------------------------------------
    namespace      | String | Yes      | Namespace that payment order resides in
    paymentOrderNo | String | Yes      | Payment order number



 Request Body Parameters:


     Parameter  | Type   | Required | Description
    ------------|--------|----------|--------------------
    description | String | Yes      | Refund description



 Request Body Example:


    {

               "description": "Repeated item."

    }

`

#### Refund Notification:

It will send notification to configured web hook after refund successfully, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

 Refund notification parameter:


     Parameter | Type   | Required | Description
    -----------|--------|----------|------------------------------------------------
    payload    | String | Yes      | Refund notification payload in json string
    sign       | String | Yes      | sha1 hex signature for payload and private key



 Refund notification Example:


    {

           "payload": "{
               "type": "payment",
               "nonceStr": "34c1dcf3eb58455eb161465bbfc0b590",
               "paymentOrderNo": "18081239088",
               "namespace": "accelbyte",
               "targetNamespace": "game1",
               "targetUserId": "94451623768940d58416ca33ca767ec3",
               "extOrderNo": "123456789",
               "sku": "sku",
               "extUserId": "678",
               "price": 100,
               "paymentProvider": "XSOLLA",
               "vat": 0,
               "salesTax": 0,
               "paymentProviderFee": 0,
               "paymentMethodFee": 0,
               "currency": {
                       "currencyCode": "USD",
                       "currencySymbol": "$",
                       "currencyType": "REAL",
                       "namespace": "accelbyte",
                       "decimals": 2
                   },
               "status": "REFUNDED",
               "createdTime": "2018-07-28T00:39:16.274Z",
               "chargedTime": "2018-07-28T00:39:16.274Z",
               "refundedTime": "2018-07-28T00:39:16.274Z"
           }",

           "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

    }

`

 Refund notification payload parameter list:


     Parameter         | Type     | Required | Description
    -------------------|----------|----------|--------------------------------------------------------------------------------------
    type               | String   | Yes      | Notification type: 'payment'
    paymentOrderNo     | String   | Yes      | Payment system generated order number
    extOrderNo         | String   | No       | External order number that passed by invoker
    namespace          | String   | Yes      | Namespace that related payment order resides in
    targetNamespace    | String   | Yes      | The game namespace
    targetUserId       | String   | Yes      | The user id in game namespace
    sku                | String   | No       | Item identify, it will return if pass it when create payment
    extUserId          | String   | No       | External user id, can be character id, it will return if pass it when create payment
    price              | int      | Yes      | Price of item
    paymentProvider    | String   | Yes      | Payment provider: xsolla/alipay/wxpay/wallet
    vat                | int      | Yes      | Payment order VAT
    salesTax           | int      | Yes      | Payment order sales tax
    paymentProviderFee | int      | Yes      | Payment provider fee
    paymentMethodFee   | int      | Yes      | Payment method fee
    currency           | Map      | Yes      | Payment order currency info
    status             | String   | Yes      | Payment order status
    statusReason       | String   | No       | Payment order refund status reason
    createdTime        | Datetime | No       | The time of the order created
    chargedTime        | Datetime | No       | The time of the order charged
    refundedTime       | Datetime | No       | The time of the order refunded
    customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
    nonceStr           | String   | Yes      | Random string, max length is 32,



Currency info parameter list:


     Parameter     | Type   | Required | Description
    ---------------|--------|----------|-----------------------------
    currencyCode   | String | Yes      | Currency Code
    currencySymbol | String | Yes      | Currency Symbol
    currencyType   | String | Yes      | Currency type(REAL/VIRTUAL)
    namespace      | String | Yes      | Currency namespace
    decimals       | int    | Yes      | Currency decimals



#### Encryption Rule:

Concat payload json string and private key and then do sha1Hex.

#### Other detail info:

  * Token type : client token
  *  cross namespace allowed
*/
func (a *Client) RefundPaymentOrderByDedicatedShort(params *RefundPaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*RefundPaymentOrderByDedicatedOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefundPaymentOrderByDedicatedParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "refundPaymentOrderByDedicated",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefundPaymentOrderByDedicatedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RefundPaymentOrderByDedicatedOK:
		return v, nil
	case *RefundPaymentOrderByDedicatedNoContent:
		return nil, v
	case *RefundPaymentOrderByDedicatedNotFound:
		return nil, v
	case *RefundPaymentOrderByDedicatedConflict:
		return nil, v
	case *RefundPaymentOrderByDedicatedUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncPaymentOrdersShort instead.

SyncPaymentOrders sync payment orders
 [Not Supported Yet In Starter] Sync payment orders. If response contains nextEvaluatedKey, please use it as query param in the next call to fetch the next batch, a batch has 1000 elements or less.
Other detail info:

  * Returns : sync payment orders
*/
func (a *Client) SyncPaymentOrders(params *SyncPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*SyncPaymentOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncPaymentOrdersParams()
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
		ID:                 "syncPaymentOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncPaymentOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncPaymentOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncPaymentOrdersShort sync payment orders
 [Not Supported Yet In Starter] Sync payment orders. If response contains nextEvaluatedKey, please use it as query param in the next call to fetch the next batch, a batch has 1000 elements or less.
Other detail info:

  * Returns : sync payment orders
*/
func (a *Client) SyncPaymentOrdersShort(params *SyncPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*SyncPaymentOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncPaymentOrdersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncPaymentOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncPaymentOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncPaymentOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
