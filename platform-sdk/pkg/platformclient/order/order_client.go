// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package order

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new order API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for order API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryOrders(params *QueryOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryOrdersOK, *QueryOrdersUnprocessableEntity, error)
	QueryOrdersShort(params *QueryOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryOrdersOK, error)
	GetOrderStatistics(params *GetOrderStatisticsParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderStatisticsOK, error)
	GetOrderStatisticsShort(params *GetOrderStatisticsParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderStatisticsOK, error)
	GetOrder(params *GetOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderOK, *GetOrderNotFound, error)
	GetOrderShort(params *GetOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderOK, error)
	RefundOrder(params *RefundOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundOrderOK, *RefundOrderNotFound, *RefundOrderConflict, *RefundOrderUnprocessableEntity, error)
	RefundOrderShort(params *RefundOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundOrderOK, error)
	QueryUserOrders(params *QueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserOrdersOK, error)
	QueryUserOrdersShort(params *QueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserOrdersOK, error)
	AdminCreateUserOrder(params *AdminCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserOrderCreated, *AdminCreateUserOrderBadRequest, *AdminCreateUserOrderForbidden, *AdminCreateUserOrderNotFound, *AdminCreateUserOrderConflict, *AdminCreateUserOrderUnprocessableEntity, error)
	AdminCreateUserOrderShort(params *AdminCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserOrderCreated, error)
	CountOfPurchasedItem(params *CountOfPurchasedItemParams, authInfo runtime.ClientAuthInfoWriter) (*CountOfPurchasedItemOK, error)
	CountOfPurchasedItemShort(params *CountOfPurchasedItemParams, authInfo runtime.ClientAuthInfoWriter) (*CountOfPurchasedItemOK, error)
	GetUserOrder(params *GetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderOK, *GetUserOrderNotFound, error)
	GetUserOrderShort(params *GetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderOK, error)
	UpdateUserOrderStatus(params *UpdateUserOrderStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOrderStatusOK, *UpdateUserOrderStatusNotFound, *UpdateUserOrderStatusConflict, *UpdateUserOrderStatusUnprocessableEntity, error)
	UpdateUserOrderStatusShort(params *UpdateUserOrderStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOrderStatusOK, error)
	FulfillUserOrder(params *FulfillUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillUserOrderOK, *FulfillUserOrderBadRequest, *FulfillUserOrderNotFound, *FulfillUserOrderConflict, error)
	FulfillUserOrderShort(params *FulfillUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillUserOrderOK, error)
	GetUserOrderGrant(params *GetUserOrderGrantParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderGrantOK, error)
	GetUserOrderGrantShort(params *GetUserOrderGrantParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderGrantOK, error)
	GetUserOrderHistories(params *GetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderHistoriesOK, error)
	GetUserOrderHistoriesShort(params *GetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderHistoriesOK, error)
	ProcessUserOrderNotification(params *ProcessUserOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*ProcessUserOrderNotificationNoContent, *ProcessUserOrderNotificationBadRequest, error)
	ProcessUserOrderNotificationShort(params *ProcessUserOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*ProcessUserOrderNotificationNoContent, error)
	DownloadUserOrderReceipt(params *DownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadUserOrderReceiptOK, *DownloadUserOrderReceiptNotFound, *DownloadUserOrderReceiptConflict, error)
	DownloadUserOrderReceiptShort(params *DownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadUserOrderReceiptOK, error)
	PublicQueryUserOrders(params *PublicQueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserOrdersOK, error)
	PublicQueryUserOrdersShort(params *PublicQueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserOrdersOK, error)
	PublicCreateUserOrder(params *PublicCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserOrderCreated, *PublicCreateUserOrderBadRequest, *PublicCreateUserOrderForbidden, *PublicCreateUserOrderNotFound, *PublicCreateUserOrderConflict, *PublicCreateUserOrderUnprocessableEntity, error)
	PublicCreateUserOrderShort(params *PublicCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserOrderCreated, error)
	PublicPreviewOrderPrice(params *PublicPreviewOrderPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPreviewOrderPriceOK, *PublicPreviewOrderPriceBadRequest, *PublicPreviewOrderPriceForbidden, *PublicPreviewOrderPriceNotFound, *PublicPreviewOrderPriceConflict, *PublicPreviewOrderPriceUnprocessableEntity, error)
	PublicPreviewOrderPriceShort(params *PublicPreviewOrderPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPreviewOrderPriceOK, error)
	PublicGetUserOrder(params *PublicGetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderOK, *PublicGetUserOrderNotFound, error)
	PublicGetUserOrderShort(params *PublicGetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderOK, error)
	PublicCancelUserOrder(params *PublicCancelUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserOrderOK, *PublicCancelUserOrderNotFound, *PublicCancelUserOrderConflict, error)
	PublicCancelUserOrderShort(params *PublicCancelUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserOrderOK, error)
	PublicGetUserOrderHistories(params *PublicGetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderHistoriesOK, error)
	PublicGetUserOrderHistoriesShort(params *PublicGetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderHistoriesOK, error)
	PublicDownloadUserOrderReceipt(params *PublicDownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadUserOrderReceiptOK, *PublicDownloadUserOrderReceiptNotFound, *PublicDownloadUserOrderReceiptConflict, error)
	PublicDownloadUserOrderReceiptShort(params *PublicDownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadUserOrderReceiptOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryOrdersShort instead.

QueryOrders query orders
Query orders.
Other detail info:

  * Returns : query orders
*/
func (a *Client) QueryOrders(params *QueryOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryOrdersOK, *QueryOrdersUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryOrdersParams()
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
		ID:                 "queryOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *QueryOrdersOK:
		return v, nil, nil

	case *QueryOrdersUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryOrdersShort query orders
Query orders.
Other detail info:

  * Returns : query orders
*/
func (a *Client) QueryOrdersShort(params *QueryOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryOrdersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryOrdersOK:
		return v, nil
	case *QueryOrdersUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetOrderStatisticsShort instead.

GetOrderStatistics get order statistics
Get Order Statistics.
Other detail info:

  * Returns : order statistics
*/
func (a *Client) GetOrderStatistics(params *GetOrderStatisticsParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderStatisticsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOrderStatisticsParams()
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
		ID:                 "getOrderStatistics",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOrderStatisticsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOrderStatisticsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOrderStatisticsShort get order statistics
Get Order Statistics.
Other detail info:

  * Returns : order statistics
*/
func (a *Client) GetOrderStatisticsShort(params *GetOrderStatisticsParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderStatisticsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOrderStatisticsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getOrderStatistics",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOrderStatisticsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOrderStatisticsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetOrderShort instead.

GetOrder get order
Get order by orderNo.
Other detail info:

  * Returns : order instance
*/
func (a *Client) GetOrder(params *GetOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderOK, *GetOrderNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOrderParams()
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
		ID:                 "getOrder",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetOrderOK:
		return v, nil, nil

	case *GetOrderNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOrderShort get order
Get order by orderNo.
Other detail info:

  * Returns : order instance
*/
func (a *Client) GetOrderShort(params *GetOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getOrder",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOrderOK:
		return v, nil
	case *GetOrderNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RefundOrderShort instead.

RefundOrder refund order
Refund order by orderNo.
*/
func (a *Client) RefundOrder(params *RefundOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundOrderOK, *RefundOrderNotFound, *RefundOrderConflict, *RefundOrderUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefundOrderParams()
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
		ID:                 "refundOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders/{orderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefundOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RefundOrderOK:
		return v, nil, nil, nil, nil

	case *RefundOrderNotFound:
		return nil, v, nil, nil, nil

	case *RefundOrderConflict:
		return nil, nil, v, nil, nil

	case *RefundOrderUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RefundOrderShort refund order
Refund order by orderNo.
*/
func (a *Client) RefundOrderShort(params *RefundOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundOrderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefundOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "refundOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders/{orderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefundOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RefundOrderOK:
		return v, nil
	case *RefundOrderNotFound:
		return nil, v
	case *RefundOrderConflict:
		return nil, v
	case *RefundOrderUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryUserOrdersShort instead.

QueryUserOrders query user orders
Query user orders.
Other detail info:

  * Returns : get order
*/
func (a *Client) QueryUserOrders(params *QueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserOrdersParams()
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
		ID:                 "queryUserOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserOrdersShort query user orders
Query user orders.
Other detail info:

  * Returns : get order
*/
func (a *Client) QueryUserOrdersShort(params *QueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserOrdersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateUserOrderShort instead.

AdminCreateUserOrder admin create an order
Admin Create an order. The result contains the checkout link and payment token. User with permission SANDBOX will create sandbox order that not real paid for xsolla/alipay and not validate price for wxpay.
Other detail info:

  * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
  * sandbox default value is false
  * platform default value is Other
  *  Returns : created order



## Restrictions for ext field


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) AdminCreateUserOrder(params *AdminCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserOrderCreated, *AdminCreateUserOrderBadRequest, *AdminCreateUserOrderForbidden, *AdminCreateUserOrderNotFound, *AdminCreateUserOrderConflict, *AdminCreateUserOrderUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateUserOrderParams()
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
		ID:                 "adminCreateUserOrder",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateUserOrderCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminCreateUserOrderBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminCreateUserOrderForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminCreateUserOrderNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminCreateUserOrderConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminCreateUserOrderUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateUserOrderShort admin create an order
Admin Create an order. The result contains the checkout link and payment token. User with permission SANDBOX will create sandbox order that not real paid for xsolla/alipay and not validate price for wxpay.
Other detail info:

  * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
  * sandbox default value is false
  * platform default value is Other
  *  Returns : created order



## Restrictions for ext field


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) AdminCreateUserOrderShort(params *AdminCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserOrderCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateUserOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateUserOrder",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateUserOrderCreated:
		return v, nil
	case *AdminCreateUserOrderBadRequest:
		return nil, v
	case *AdminCreateUserOrderForbidden:
		return nil, v
	case *AdminCreateUserOrderNotFound:
		return nil, v
	case *AdminCreateUserOrderConflict:
		return nil, v
	case *AdminCreateUserOrderUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CountOfPurchasedItemShort instead.

CountOfPurchasedItem get the count of purchased item
This API is used to get the count of purchased item which is the order target.
Other detail info:

  * Returns : Item purchased count
*/
func (a *Client) CountOfPurchasedItem(params *CountOfPurchasedItemParams, authInfo runtime.ClientAuthInfoWriter) (*CountOfPurchasedItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountOfPurchasedItemParams()
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
		ID:                 "countOfPurchasedItem",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/countOfItem",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountOfPurchasedItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CountOfPurchasedItemOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CountOfPurchasedItemShort get the count of purchased item
This API is used to get the count of purchased item which is the order target.
Other detail info:

  * Returns : Item purchased count
*/
func (a *Client) CountOfPurchasedItemShort(params *CountOfPurchasedItemParams, authInfo runtime.ClientAuthInfoWriter) (*CountOfPurchasedItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountOfPurchasedItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "countOfPurchasedItem",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/countOfItem",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountOfPurchasedItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CountOfPurchasedItemOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserOrderShort instead.

GetUserOrder get an order
Get an order.
Other detail info:

  * Returns : get order
*/
func (a *Client) GetUserOrder(params *GetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderOK, *GetUserOrderNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserOrderParams()
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
		ID:                 "getUserOrder",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserOrderOK:
		return v, nil, nil

	case *GetUserOrderNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserOrderShort get an order
Get an order.
Other detail info:

  * Returns : get order
*/
func (a *Client) GetUserOrderShort(params *GetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserOrder",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserOrderOK:
		return v, nil
	case *GetUserOrderNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateUserOrderStatusShort instead.

UpdateUserOrderStatus update order status
Update order status.
Other detail info:

  * Returns : updated order
*/
func (a *Client) UpdateUserOrderStatus(params *UpdateUserOrderStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOrderStatusOK, *UpdateUserOrderStatusNotFound, *UpdateUserOrderStatusConflict, *UpdateUserOrderStatusUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserOrderStatusParams()
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
		ID:                 "updateUserOrderStatus",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserOrderStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserOrderStatusOK:
		return v, nil, nil, nil, nil

	case *UpdateUserOrderStatusNotFound:
		return nil, v, nil, nil, nil

	case *UpdateUserOrderStatusConflict:
		return nil, nil, v, nil, nil

	case *UpdateUserOrderStatusUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserOrderStatusShort update order status
Update order status.
Other detail info:

  * Returns : updated order
*/
func (a *Client) UpdateUserOrderStatusShort(params *UpdateUserOrderStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOrderStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserOrderStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateUserOrderStatus",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserOrderStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserOrderStatusOK:
		return v, nil
	case *UpdateUserOrderStatusNotFound:
		return nil, v
	case *UpdateUserOrderStatusConflict:
		return nil, v
	case *UpdateUserOrderStatusUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use FulfillUserOrderShort instead.

FulfillUserOrder fulfill an order
Fulfill an order if the order is charged but fulfill failed.
Other detail info:

  * Returns : fulfilled order
*/
func (a *Client) FulfillUserOrder(params *FulfillUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillUserOrderOK, *FulfillUserOrderBadRequest, *FulfillUserOrderNotFound, *FulfillUserOrderConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillUserOrderParams()
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
		ID:                 "fulfillUserOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *FulfillUserOrderOK:
		return v, nil, nil, nil, nil

	case *FulfillUserOrderBadRequest:
		return nil, v, nil, nil, nil

	case *FulfillUserOrderNotFound:
		return nil, nil, v, nil, nil

	case *FulfillUserOrderConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FulfillUserOrderShort fulfill an order
Fulfill an order if the order is charged but fulfill failed.
Other detail info:

  * Returns : fulfilled order
*/
func (a *Client) FulfillUserOrderShort(params *FulfillUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillUserOrderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillUserOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "fulfillUserOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FulfillUserOrderOK:
		return v, nil
	case *FulfillUserOrderBadRequest:
		return nil, v
	case *FulfillUserOrderNotFound:
		return nil, v
	case *FulfillUserOrderConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserOrderGrantShort instead.

GetUserOrderGrant get user order grant
Get user order grant that fulfilled by this order.
Other detail info:

  * Returns : get order grant
*/
func (a *Client) GetUserOrderGrant(params *GetUserOrderGrantParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderGrantOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserOrderGrantParams()
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
		ID:                 "getUserOrderGrant",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/grant",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserOrderGrantReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserOrderGrantOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserOrderGrantShort get user order grant
Get user order grant that fulfilled by this order.
Other detail info:

  * Returns : get order grant
*/
func (a *Client) GetUserOrderGrantShort(params *GetUserOrderGrantParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderGrantOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserOrderGrantParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserOrderGrant",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/grant",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserOrderGrantReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserOrderGrantOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserOrderHistoriesShort instead.

GetUserOrderHistories get user order histories
Get user order history.
Other detail info:

  * Returns : get order history
*/
func (a *Client) GetUserOrderHistories(params *GetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserOrderHistoriesParams()
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
		ID:                 "getUserOrderHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserOrderHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserOrderHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserOrderHistoriesShort get user order histories
Get user order history.
Other detail info:

  * Returns : get order history
*/
func (a *Client) GetUserOrderHistoriesShort(params *GetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserOrderHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserOrderHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserOrderHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserOrderHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ProcessUserOrderNotificationShort instead.

ProcessUserOrderNotification web hook for payment notification
 [SERVICE COMMUNICATION ONLY] This API is used as a web hook for payment notification from justice payment service.
Other detail info:

  * Returns : Process result
*/
func (a *Client) ProcessUserOrderNotification(params *ProcessUserOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*ProcessUserOrderNotificationNoContent, *ProcessUserOrderNotificationBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProcessUserOrderNotificationParams()
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
		ID:                 "processUserOrderNotification",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/notifications",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProcessUserOrderNotificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ProcessUserOrderNotificationNoContent:
		return v, nil, nil

	case *ProcessUserOrderNotificationBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ProcessUserOrderNotificationShort web hook for payment notification
 [SERVICE COMMUNICATION ONLY] This API is used as a web hook for payment notification from justice payment service.
Other detail info:

  * Returns : Process result
*/
func (a *Client) ProcessUserOrderNotificationShort(params *ProcessUserOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*ProcessUserOrderNotificationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProcessUserOrderNotificationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "processUserOrderNotification",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/notifications",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProcessUserOrderNotificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ProcessUserOrderNotificationNoContent:
		return v, nil
	case *ProcessUserOrderNotificationBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DownloadUserOrderReceiptShort instead.

DownloadUserOrderReceipt download user order receipt
Download user order receipt by orderNo.
Other detail info:

  * Returns : order receipt pdf
*/
func (a *Client) DownloadUserOrderReceipt(params *DownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadUserOrderReceiptOK, *DownloadUserOrderReceiptNotFound, *DownloadUserOrderReceiptConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadUserOrderReceiptParams()
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
		ID:                 "downloadUserOrderReceipt",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf",
		ProducesMediaTypes: []string{"application/pdf"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadUserOrderReceiptReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DownloadUserOrderReceiptOK:
		return v, nil, nil, nil

	case *DownloadUserOrderReceiptNotFound:
		return nil, v, nil, nil

	case *DownloadUserOrderReceiptConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DownloadUserOrderReceiptShort download user order receipt
Download user order receipt by orderNo.
Other detail info:

  * Returns : order receipt pdf
*/
func (a *Client) DownloadUserOrderReceiptShort(params *DownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadUserOrderReceiptOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadUserOrderReceiptParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "downloadUserOrderReceipt",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf",
		ProducesMediaTypes: []string{"application/pdf"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadUserOrderReceiptReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadUserOrderReceiptOK:
		return v, nil
	case *DownloadUserOrderReceiptNotFound:
		return nil, v
	case *DownloadUserOrderReceiptConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicQueryUserOrdersShort instead.

PublicQueryUserOrders query user orders
Query user orders.
Other detail info:

  * Returns : get order
*/
func (a *Client) PublicQueryUserOrders(params *PublicQueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserOrdersParams()
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
		ID:                 "publicQueryUserOrders",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserOrdersShort query user orders
Query user orders.
Other detail info:

  * Returns : get order
*/
func (a *Client) PublicQueryUserOrdersShort(params *PublicQueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserOrdersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryUserOrders",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCreateUserOrderShort instead.

PublicCreateUserOrder create an order
Create an order. The result contains the checkout link and payment token. User with permission SANDBOX will create sandbox order that not real paid for xsolla/alipay and not validate price for wxpay.
Other detail info:

  * Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
  * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
  *  Returns : created order



## Restrictions for ext field


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) PublicCreateUserOrder(params *PublicCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserOrderCreated, *PublicCreateUserOrderBadRequest, *PublicCreateUserOrderForbidden, *PublicCreateUserOrderNotFound, *PublicCreateUserOrderConflict, *PublicCreateUserOrderUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserOrderParams()
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
		ID:                 "publicCreateUserOrder",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserOrderCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicCreateUserOrderBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicCreateUserOrderForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicCreateUserOrderNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicCreateUserOrderConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicCreateUserOrderUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserOrderShort create an order
Create an order. The result contains the checkout link and payment token. User with permission SANDBOX will create sandbox order that not real paid for xsolla/alipay and not validate price for wxpay.
Other detail info:

  * Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
  * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
  *  Returns : created order



## Restrictions for ext field


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) PublicCreateUserOrderShort(params *PublicCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserOrderCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCreateUserOrder",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserOrderCreated:
		return v, nil
	case *PublicCreateUserOrderBadRequest:
		return nil, v
	case *PublicCreateUserOrderForbidden:
		return nil, v
	case *PublicCreateUserOrderNotFound:
		return nil, v
	case *PublicCreateUserOrderConflict:
		return nil, v
	case *PublicCreateUserOrderUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPreviewOrderPriceShort instead.

PublicPreviewOrderPrice preview order price with discount code.
Preview order price with discount code, this api is used to auto calc order price with discount code.Notes: this api don't do full order validation, only check discount code and calc final order price.Other detail info:

  * Returns : previewed order
*/
func (a *Client) PublicPreviewOrderPrice(params *PublicPreviewOrderPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPreviewOrderPriceOK, *PublicPreviewOrderPriceBadRequest, *PublicPreviewOrderPriceForbidden, *PublicPreviewOrderPriceNotFound, *PublicPreviewOrderPriceConflict, *PublicPreviewOrderPriceUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPreviewOrderPriceParams()
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
		ID:                 "publicPreviewOrderPrice",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPreviewOrderPriceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPreviewOrderPriceOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicPreviewOrderPriceBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicPreviewOrderPriceForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicPreviewOrderPriceNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicPreviewOrderPriceConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicPreviewOrderPriceUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPreviewOrderPriceShort preview order price with discount code.
Preview order price with discount code, this api is used to auto calc order price with discount code.Notes: this api don't do full order validation, only check discount code and calc final order price.Other detail info:
  * Returns : previewed order
*/
func (a *Client) PublicPreviewOrderPriceShort(params *PublicPreviewOrderPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPreviewOrderPriceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPreviewOrderPriceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPreviewOrderPrice",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPreviewOrderPriceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPreviewOrderPriceOK:
		return v, nil
	case *PublicPreviewOrderPriceBadRequest:
		return nil, v
	case *PublicPreviewOrderPriceForbidden:
		return nil, v
	case *PublicPreviewOrderPriceNotFound:
		return nil, v
	case *PublicPreviewOrderPriceConflict:
		return nil, v
	case *PublicPreviewOrderPriceUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserOrderShort instead.

PublicGetUserOrder get user order
Get user order.
Other detail info:

  * Returns : get order
*/
func (a *Client) PublicGetUserOrder(params *PublicGetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderOK, *PublicGetUserOrderNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserOrderParams()
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
		ID:                 "publicGetUserOrder",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserOrderOK:
		return v, nil, nil

	case *PublicGetUserOrderNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserOrderShort get user order
Get user order.
Other detail info:

  * Returns : get order
*/
func (a *Client) PublicGetUserOrderShort(params *PublicGetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserOrder",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserOrderOK:
		return v, nil
	case *PublicGetUserOrderNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCancelUserOrderShort instead.

PublicCancelUserOrder cancel user order
Cancel user order.
Other detail info:

  * Returns : cancelled order
*/
func (a *Client) PublicCancelUserOrder(params *PublicCancelUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserOrderOK, *PublicCancelUserOrderNotFound, *PublicCancelUserOrderConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelUserOrderParams()
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
		ID:                 "publicCancelUserOrder",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCancelUserOrderOK:
		return v, nil, nil, nil

	case *PublicCancelUserOrderNotFound:
		return nil, v, nil, nil

	case *PublicCancelUserOrderConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCancelUserOrderShort cancel user order
Cancel user order.
Other detail info:

  * Returns : cancelled order
*/
func (a *Client) PublicCancelUserOrderShort(params *PublicCancelUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserOrderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelUserOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCancelUserOrder",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCancelUserOrderOK:
		return v, nil
	case *PublicCancelUserOrderNotFound:
		return nil, v
	case *PublicCancelUserOrderConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserOrderHistoriesShort instead.

PublicGetUserOrderHistories get user order histories
Get user order histories.
Other detail info:

  * Returns : get order history
*/
func (a *Client) PublicGetUserOrderHistories(params *PublicGetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserOrderHistoriesParams()
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
		ID:                 "publicGetUserOrderHistories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserOrderHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserOrderHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserOrderHistoriesShort get user order histories
Get user order histories.
Other detail info:

  * Returns : get order history
*/
func (a *Client) PublicGetUserOrderHistoriesShort(params *PublicGetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserOrderHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserOrderHistories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserOrderHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserOrderHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicDownloadUserOrderReceiptShort instead.

PublicDownloadUserOrderReceipt download user order receipt
Download user order receipt by orderNo.
Other detail info:

  * Returns : order receipt pdf
*/
func (a *Client) PublicDownloadUserOrderReceipt(params *PublicDownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadUserOrderReceiptOK, *PublicDownloadUserOrderReceiptNotFound, *PublicDownloadUserOrderReceiptConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDownloadUserOrderReceiptParams()
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
		ID:                 "publicDownloadUserOrderReceipt",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf",
		ProducesMediaTypes: []string{"application/pdf"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDownloadUserOrderReceiptReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDownloadUserOrderReceiptOK:
		return v, nil, nil, nil

	case *PublicDownloadUserOrderReceiptNotFound:
		return nil, v, nil, nil

	case *PublicDownloadUserOrderReceiptConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDownloadUserOrderReceiptShort download user order receipt
Download user order receipt by orderNo.
Other detail info:

  * Returns : order receipt pdf
*/
func (a *Client) PublicDownloadUserOrderReceiptShort(params *PublicDownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadUserOrderReceiptOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDownloadUserOrderReceiptParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDownloadUserOrderReceipt",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf",
		ProducesMediaTypes: []string{"application/pdf"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDownloadUserOrderReceiptReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDownloadUserOrderReceiptOK:
		return v, nil
	case *PublicDownloadUserOrderReceiptNotFound:
		return nil, v
	case *PublicDownloadUserOrderReceiptConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
