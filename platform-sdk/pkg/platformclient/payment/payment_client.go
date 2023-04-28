// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package payment

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new payment API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for payment API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryPaymentNotifications(params *QueryPaymentNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentNotificationsOK, error)
	QueryPaymentNotificationsShort(params *QueryPaymentNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentNotificationsOK, error)
	QueryPaymentOrders(params *QueryPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentOrdersOK, error)
	QueryPaymentOrdersShort(params *QueryPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentOrdersOK, error)
	ListExtOrderNoByExtTxID(params *ListExtOrderNoByExtTxIDParams, authInfo runtime.ClientAuthInfoWriter) (*ListExtOrderNoByExtTxIDOK, error)
	ListExtOrderNoByExtTxIDShort(params *ListExtOrderNoByExtTxIDParams, authInfo runtime.ClientAuthInfoWriter) (*ListExtOrderNoByExtTxIDOK, error)
	GetPaymentOrder(params *GetPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderOK, *GetPaymentOrderNotFound, error)
	GetPaymentOrderShort(params *GetPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderOK, error)
	ChargePaymentOrder(params *ChargePaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*ChargePaymentOrderOK, *ChargePaymentOrderBadRequest, *ChargePaymentOrderNotFound, *ChargePaymentOrderConflict, error)
	ChargePaymentOrderShort(params *ChargePaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*ChargePaymentOrderOK, error)
	SimulatePaymentOrderNotification(params *SimulatePaymentOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*SimulatePaymentOrderNotificationOK, *SimulatePaymentOrderNotificationBadRequest, *SimulatePaymentOrderNotificationNotFound, error)
	SimulatePaymentOrderNotificationShort(params *SimulatePaymentOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*SimulatePaymentOrderNotificationOK, error)
	GetPaymentOrderChargeStatus(params *GetPaymentOrderChargeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderChargeStatusOK, *GetPaymentOrderChargeStatusNotFound, error)
	GetPaymentOrderChargeStatusShort(params *GetPaymentOrderChargeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderChargeStatusOK, error)
	CreateUserPaymentOrder(params *CreateUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserPaymentOrderCreated, *CreateUserPaymentOrderBadRequest, *CreateUserPaymentOrderForbidden, *CreateUserPaymentOrderNotFound, *CreateUserPaymentOrderConflict, *CreateUserPaymentOrderUnprocessableEntity, error)
	CreateUserPaymentOrderShort(params *CreateUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserPaymentOrderCreated, error)
	RefundUserPaymentOrder(params *RefundUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundUserPaymentOrderOK, *RefundUserPaymentOrderNotFound, *RefundUserPaymentOrderConflict, *RefundUserPaymentOrderUnprocessableEntity, error)
	RefundUserPaymentOrderShort(params *RefundUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundUserPaymentOrderOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryPaymentNotificationsShort instead.

QueryPaymentNotifications query payment notifications
Query payment notifications.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT:NOTIFICATION", action=2 (READ)
  *  Returns : Payment notifications
*/
func (a *Client) QueryPaymentNotifications(params *QueryPaymentNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentNotificationsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPaymentNotificationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryPaymentNotifications",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/notifications",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPaymentNotificationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryPaymentNotificationsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryPaymentNotificationsShort query payment notifications
Query payment notifications.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT:NOTIFICATION", action=2 (READ)
  *  Returns : Payment notifications
*/
func (a *Client) QueryPaymentNotificationsShort(params *QueryPaymentNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentNotificationsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPaymentNotificationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryPaymentNotifications",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/notifications",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPaymentNotificationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryPaymentNotificationsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryPaymentOrdersShort instead.

QueryPaymentOrders query payment orders
Query payment orders.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
  *  Returns : query payment orders
*/
func (a *Client) QueryPaymentOrders(params *QueryPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPaymentOrdersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryPaymentOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPaymentOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryPaymentOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryPaymentOrdersShort query payment orders
Query payment orders.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
  *  Returns : query payment orders
*/
func (a *Client) QueryPaymentOrdersShort(params *QueryPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentOrdersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPaymentOrdersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryPaymentOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPaymentOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryPaymentOrdersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListExtOrderNoByExtTxIDShort instead.

ListExtOrderNoByExtTxID list external order no by external transaction id
List external order No by external transaction id.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
  *  Returns : payment orders
*/
func (a *Client) ListExtOrderNoByExtTxID(params *ListExtOrderNoByExtTxIDParams, authInfo runtime.ClientAuthInfoWriter) (*ListExtOrderNoByExtTxIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListExtOrderNoByExtTxIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listExtOrderNoByExtTxId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/byExtTxId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListExtOrderNoByExtTxIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListExtOrderNoByExtTxIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListExtOrderNoByExtTxIDShort list external order no by external transaction id
List external order No by external transaction id.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
  *  Returns : payment orders
*/
func (a *Client) ListExtOrderNoByExtTxIDShort(params *ListExtOrderNoByExtTxIDParams, authInfo runtime.ClientAuthInfoWriter) (*ListExtOrderNoByExtTxIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListExtOrderNoByExtTxIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listExtOrderNoByExtTxId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/byExtTxId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListExtOrderNoByExtTxIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListExtOrderNoByExtTxIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPaymentOrderShort instead.

GetPaymentOrder get payment order
Get payment order by paymentOrderNo.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
  *  Returns : payment order instance
*/
func (a *Client) GetPaymentOrder(params *GetPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderOK, *GetPaymentOrderNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentOrder",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetPaymentOrderOK:
		return v, nil, nil

	case *GetPaymentOrderNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentOrderShort get payment order
Get payment order by paymentOrderNo.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
  *  Returns : payment order instance
*/
func (a *Client) GetPaymentOrderShort(params *GetPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentOrder",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentOrderOK:
		return v, nil
	case *GetPaymentOrderNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ChargePaymentOrderShort instead.

ChargePaymentOrder charge payment order without payment flow
 [TEST FACILITY ONLY] Forbidden in live environment. Charge payment order without payment flow for unpaid payment order, usually for test usage to simulate real currency payment process.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=4 (UPDATE)
  *  Returns : payment order instance
*/
func (a *Client) ChargePaymentOrder(params *ChargePaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*ChargePaymentOrderOK, *ChargePaymentOrderBadRequest, *ChargePaymentOrderNotFound, *ChargePaymentOrderConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChargePaymentOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "chargePaymentOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChargePaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ChargePaymentOrderOK:
		return v, nil, nil, nil, nil

	case *ChargePaymentOrderBadRequest:
		return nil, v, nil, nil, nil

	case *ChargePaymentOrderNotFound:
		return nil, nil, v, nil, nil

	case *ChargePaymentOrderConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ChargePaymentOrderShort charge payment order without payment flow
 [TEST FACILITY ONLY] Forbidden in live environment. Charge payment order without payment flow for unpaid payment order, usually for test usage to simulate real currency payment process.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=4 (UPDATE)
  *  Returns : payment order instance
*/
func (a *Client) ChargePaymentOrderShort(params *ChargePaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*ChargePaymentOrderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChargePaymentOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "chargePaymentOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChargePaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ChargePaymentOrderOK:
		return v, nil
	case *ChargePaymentOrderBadRequest:
		return nil, v
	case *ChargePaymentOrderNotFound:
		return nil, v
	case *ChargePaymentOrderConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SimulatePaymentOrderNotificationShort instead.

SimulatePaymentOrderNotification simulate payment notification
 [TEST FACILITY ONLY] Forbidden in live environment. Simulate payment notification on sandbox payment order, usually for test usage to simulate real currency payment notification.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=4 (UPDATE)
  *  Returns : notification process result
*/
func (a *Client) SimulatePaymentOrderNotification(params *SimulatePaymentOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*SimulatePaymentOrderNotificationOK, *SimulatePaymentOrderNotificationBadRequest, *SimulatePaymentOrderNotificationNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSimulatePaymentOrderNotificationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "simulatePaymentOrderNotification",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SimulatePaymentOrderNotificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SimulatePaymentOrderNotificationOK:
		return v, nil, nil, nil

	case *SimulatePaymentOrderNotificationBadRequest:
		return nil, v, nil, nil

	case *SimulatePaymentOrderNotificationNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SimulatePaymentOrderNotificationShort simulate payment notification
 [TEST FACILITY ONLY] Forbidden in live environment. Simulate payment notification on sandbox payment order, usually for test usage to simulate real currency payment notification.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=4 (UPDATE)
  *  Returns : notification process result
*/
func (a *Client) SimulatePaymentOrderNotificationShort(params *SimulatePaymentOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*SimulatePaymentOrderNotificationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSimulatePaymentOrderNotificationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "simulatePaymentOrderNotification",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SimulatePaymentOrderNotificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SimulatePaymentOrderNotificationOK:
		return v, nil
	case *SimulatePaymentOrderNotificationBadRequest:
		return nil, v
	case *SimulatePaymentOrderNotificationNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPaymentOrderChargeStatusShort instead.

GetPaymentOrderChargeStatus get payment order charge status
Get payment order charge status.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
  *  Returns : payment order charge status
*/
func (a *Client) GetPaymentOrderChargeStatus(params *GetPaymentOrderChargeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderChargeStatusOK, *GetPaymentOrderChargeStatusNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentOrderChargeStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentOrderChargeStatus",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentOrderChargeStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetPaymentOrderChargeStatusOK:
		return v, nil, nil

	case *GetPaymentOrderChargeStatusNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentOrderChargeStatusShort get payment order charge status
Get payment order charge status.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
  *  Returns : payment order charge status
*/
func (a *Client) GetPaymentOrderChargeStatusShort(params *GetPaymentOrderChargeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderChargeStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentOrderChargeStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentOrderChargeStatus",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentOrderChargeStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentOrderChargeStatusOK:
		return v, nil
	case *GetPaymentOrderChargeStatusNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateUserPaymentOrderShort instead.

CreateUserPaymentOrder create payment order
 [SERVICE COMMUNICATION ONLY] This API is used to create payment order from justice service. The result contains the payment station url.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT", action=1 (CREATE)
  * It will be forbidden while the user is banned: PAYMENT_INITIATE or ORDER_AND_PAYMENT
  *  Returns : created order
*/
func (a *Client) CreateUserPaymentOrder(params *CreateUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserPaymentOrderCreated, *CreateUserPaymentOrderBadRequest, *CreateUserPaymentOrderForbidden, *CreateUserPaymentOrderNotFound, *CreateUserPaymentOrderConflict, *CreateUserPaymentOrderUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserPaymentOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createUserPaymentOrder",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserPaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateUserPaymentOrderCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateUserPaymentOrderBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateUserPaymentOrderForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateUserPaymentOrderNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateUserPaymentOrderConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateUserPaymentOrderUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateUserPaymentOrderShort create payment order
 [SERVICE COMMUNICATION ONLY] This API is used to create payment order from justice service. The result contains the payment station url.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT", action=1 (CREATE)
  * It will be forbidden while the user is banned: PAYMENT_INITIATE or ORDER_AND_PAYMENT
  *  Returns : created order
*/
func (a *Client) CreateUserPaymentOrderShort(params *CreateUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserPaymentOrderCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserPaymentOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createUserPaymentOrder",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserPaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateUserPaymentOrderCreated:
		return v, nil
	case *CreateUserPaymentOrderBadRequest:
		return nil, v
	case *CreateUserPaymentOrderForbidden:
		return nil, v
	case *CreateUserPaymentOrderNotFound:
		return nil, v
	case *CreateUserPaymentOrderConflict:
		return nil, v
	case *CreateUserPaymentOrderUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RefundUserPaymentOrderShort instead.

RefundUserPaymentOrder refund payment order
 [SERVICE COMMUNICATION ONLY] This API is used to refund order by paymentOrderNo from justice service.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT", action=4 (UPDATE)
*/
func (a *Client) RefundUserPaymentOrder(params *RefundUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundUserPaymentOrderOK, *RefundUserPaymentOrderNotFound, *RefundUserPaymentOrderConflict, *RefundUserPaymentOrderUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefundUserPaymentOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "refundUserPaymentOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefundUserPaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RefundUserPaymentOrderOK:
		return v, nil, nil, nil, nil

	case *RefundUserPaymentOrderNotFound:
		return nil, v, nil, nil, nil

	case *RefundUserPaymentOrderConflict:
		return nil, nil, v, nil, nil

	case *RefundUserPaymentOrderUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RefundUserPaymentOrderShort refund payment order
 [SERVICE COMMUNICATION ONLY] This API is used to refund order by paymentOrderNo from justice service.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT", action=4 (UPDATE)
*/
func (a *Client) RefundUserPaymentOrderShort(params *RefundUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundUserPaymentOrderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefundUserPaymentOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "refundUserPaymentOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefundUserPaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RefundUserPaymentOrderOK:
		return v, nil
	case *RefundUserPaymentOrderNotFound:
		return nil, v
	case *RefundUserPaymentOrderConflict:
		return nil, v
	case *RefundUserPaymentOrderUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
