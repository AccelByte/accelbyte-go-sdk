// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package anonymization

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new anonymization API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for anonymization API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AnonymizeCampaign(params *AnonymizeCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeCampaignNoContent, error)
	AnonymizeCampaignShort(params *AnonymizeCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeCampaignNoContent, error)
	AnonymizeEntitlement(params *AnonymizeEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeEntitlementNoContent, error)
	AnonymizeEntitlementShort(params *AnonymizeEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeEntitlementNoContent, error)
	AnonymizeFulfillment(params *AnonymizeFulfillmentParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeFulfillmentNoContent, error)
	AnonymizeFulfillmentShort(params *AnonymizeFulfillmentParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeFulfillmentNoContent, error)
	AnonymizeIntegration(params *AnonymizeIntegrationParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeIntegrationNoContent, error)
	AnonymizeIntegrationShort(params *AnonymizeIntegrationParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeIntegrationNoContent, error)
	AnonymizeOrder(params *AnonymizeOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeOrderNoContent, error)
	AnonymizeOrderShort(params *AnonymizeOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeOrderNoContent, error)
	AnonymizePayment(params *AnonymizePaymentParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizePaymentNoContent, error)
	AnonymizePaymentShort(params *AnonymizePaymentParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizePaymentNoContent, error)
	AnonymizeRevocation(params *AnonymizeRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeRevocationNoContent, error)
	AnonymizeRevocationShort(params *AnonymizeRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeRevocationNoContent, error)
	AnonymizeSubscription(params *AnonymizeSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeSubscriptionNoContent, error)
	AnonymizeSubscriptionShort(params *AnonymizeSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeSubscriptionNoContent, error)
	AnonymizeWallet(params *AnonymizeWalletParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeWalletNoContent, error)
	AnonymizeWalletShort(params *AnonymizeWalletParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeWalletNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AnonymizeCampaignShort instead.

AnonymizeCampaign anonymize campaign
Anonymize campaign. At current it will only anonymize redeem history.
*/
func (a *Client) AnonymizeCampaign(params *AnonymizeCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeCampaignNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeCampaignParams()
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
		ID:                 "anonymizeCampaign",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/campaign",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeCampaignReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeCampaignNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AnonymizeCampaignShort anonymize campaign
Anonymize campaign. At current it will only anonymize redeem history.
*/
func (a *Client) AnonymizeCampaignShort(params *AnonymizeCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeCampaignNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeCampaignParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "anonymizeCampaign",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/campaign",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeCampaignReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeCampaignNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AnonymizeEntitlementShort instead.

AnonymizeEntitlement anonymize entitlement
Anonymize entitlement. At current it will only anonymize entitlement, entitlement history.
*/
func (a *Client) AnonymizeEntitlement(params *AnonymizeEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeEntitlementNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeEntitlementParams()
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
		ID:                 "anonymizeEntitlement",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeEntitlementNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AnonymizeEntitlementShort anonymize entitlement
Anonymize entitlement. At current it will only anonymize entitlement, entitlement history.
*/
func (a *Client) AnonymizeEntitlementShort(params *AnonymizeEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeEntitlementNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeEntitlementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "anonymizeEntitlement",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeEntitlementNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AnonymizeFulfillmentShort instead.

AnonymizeFulfillment anonymize fulfillment
Anonymize fulfillment. At current it will only anonymize fulfillment history.
*/
func (a *Client) AnonymizeFulfillment(params *AnonymizeFulfillmentParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeFulfillmentNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeFulfillmentParams()
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
		ID:                 "anonymizeFulfillment",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/fulfillment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeFulfillmentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeFulfillmentNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AnonymizeFulfillmentShort anonymize fulfillment
Anonymize fulfillment. At current it will only anonymize fulfillment history.
*/
func (a *Client) AnonymizeFulfillmentShort(params *AnonymizeFulfillmentParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeFulfillmentNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeFulfillmentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "anonymizeFulfillment",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/fulfillment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeFulfillmentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeFulfillmentNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AnonymizeIntegrationShort instead.

AnonymizeIntegration anonymize integrations
Anonymize integrations. At current it will only anonymize iap histories.
*/
func (a *Client) AnonymizeIntegration(params *AnonymizeIntegrationParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeIntegrationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeIntegrationParams()
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
		ID:                 "anonymizeIntegration",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeIntegrationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeIntegrationNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AnonymizeIntegrationShort anonymize integrations
Anonymize integrations. At current it will only anonymize iap histories.
*/
func (a *Client) AnonymizeIntegrationShort(params *AnonymizeIntegrationParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeIntegrationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeIntegrationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "anonymizeIntegration",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeIntegrationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeIntegrationNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AnonymizeOrderShort instead.

AnonymizeOrder anonymize order
Anonymize order. At current it will only anonymize order, order history.
*/
func (a *Client) AnonymizeOrder(params *AnonymizeOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeOrderNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeOrderParams()
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
		ID:                 "anonymizeOrder",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeOrderNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AnonymizeOrderShort anonymize order
Anonymize order. At current it will only anonymize order, order history.
*/
func (a *Client) AnonymizeOrderShort(params *AnonymizeOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeOrderNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "anonymizeOrder",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeOrderNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AnonymizePaymentShort instead.

AnonymizePayment anonymize payment
Anonymize payment. At current it will only anonymize payment order, payment order history.
*/
func (a *Client) AnonymizePayment(params *AnonymizePaymentParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizePaymentNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizePaymentParams()
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
		ID:                 "anonymizePayment",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/payment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizePaymentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizePaymentNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AnonymizePaymentShort anonymize payment
Anonymize payment. At current it will only anonymize payment order, payment order history.
*/
func (a *Client) AnonymizePaymentShort(params *AnonymizePaymentParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizePaymentNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizePaymentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "anonymizePayment",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/payment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizePaymentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizePaymentNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AnonymizeRevocationShort instead.

AnonymizeRevocation anonymize revocation
Anonymize revocation. At current it will only anonymize revocation history.
*/
func (a *Client) AnonymizeRevocation(params *AnonymizeRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeRevocationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeRevocationParams()
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
		ID:                 "anonymizeRevocation",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeRevocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeRevocationNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AnonymizeRevocationShort anonymize revocation
Anonymize revocation. At current it will only anonymize revocation history.
*/
func (a *Client) AnonymizeRevocationShort(params *AnonymizeRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeRevocationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeRevocationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "anonymizeRevocation",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeRevocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeRevocationNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AnonymizeSubscriptionShort instead.

AnonymizeSubscription anonymize subscription
Anonymize subscription. At current it will anonymize subscription, billing history and subscription activity.
*/
func (a *Client) AnonymizeSubscription(params *AnonymizeSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeSubscriptionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeSubscriptionParams()
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
		ID:                 "anonymizeSubscription",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeSubscriptionNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AnonymizeSubscriptionShort anonymize subscription
Anonymize subscription. At current it will anonymize subscription, billing history and subscription activity.
*/
func (a *Client) AnonymizeSubscriptionShort(params *AnonymizeSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeSubscriptionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeSubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "anonymizeSubscription",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeSubscriptionNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AnonymizeWalletShort instead.

AnonymizeWallet anonymize wallet
Anonymize wallet. At current it will only anonymize wallet, wallet transaction.
*/
func (a *Client) AnonymizeWallet(params *AnonymizeWalletParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeWalletNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeWalletParams()
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
		ID:                 "anonymizeWallet",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/wallets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeWalletNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AnonymizeWalletShort anonymize wallet
Anonymize wallet. At current it will only anonymize wallet, wallet transaction.
*/
func (a *Client) AnonymizeWalletShort(params *AnonymizeWalletParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeWalletNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeWalletParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "anonymizeWallet",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/anonymization/wallets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeWalletNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
