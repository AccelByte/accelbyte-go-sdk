// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package notification_subscription_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new notification subscription v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for notification subscription v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetNotificationSubscriberListV3(params *GetNotificationSubscriberListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationSubscriberListV3OK, *GetNotificationSubscriberListV3Unauthorized, *GetNotificationSubscriberListV3Forbidden, *GetNotificationSubscriberListV3NotFound, *GetNotificationSubscriberListV3InternalServerError, error)
	GetNotificationSubscriberListV3Short(params *GetNotificationSubscriberListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationSubscriberListV3OK, error)
	DeleteSubscriptionAppNotificationV3(params *DeleteSubscriptionAppNotificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationV3NoContent, *DeleteSubscriptionAppNotificationV3Unauthorized, *DeleteSubscriptionAppNotificationV3Forbidden, *DeleteSubscriptionAppNotificationV3NotFound, *DeleteSubscriptionAppNotificationV3InternalServerError, error)
	DeleteSubscriptionAppNotificationV3Short(params *DeleteSubscriptionAppNotificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationV3NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetNotificationSubscriberListV3Short instead.

GetNotificationSubscriberListV3 get a list of the app notification subscriber
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [READ]`

Request param:
- notificationType : type of the subscribed app notification
- values:
- all
- app-down
- critical-vulnerability

Get a list of the app notification subscriber
*/
func (a *Client) GetNotificationSubscriberListV3(params *GetNotificationSubscriberListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationSubscriberListV3OK, *GetNotificationSubscriberListV3Unauthorized, *GetNotificationSubscriberListV3Forbidden, *GetNotificationSubscriberListV3NotFound, *GetNotificationSubscriberListV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNotificationSubscriberListV3Params()
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
		ID:                 "GetNotificationSubscriberListV3",
		Method:             "GET",
		PathPattern:        "/csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNotificationSubscriberListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetNotificationSubscriberListV3OK:
		return v, nil, nil, nil, nil, nil

	case *GetNotificationSubscriberListV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetNotificationSubscriberListV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetNotificationSubscriberListV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetNotificationSubscriberListV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNotificationSubscriberListV3Short get a list of the app notification subscriber
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [READ]`

Request param:
- notificationType : type of the subscribed app notification
- values:
- all
- app-down
- critical-vulnerability

Get a list of the app notification subscriber
*/
func (a *Client) GetNotificationSubscriberListV3Short(params *GetNotificationSubscriberListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationSubscriberListV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNotificationSubscriberListV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetNotificationSubscriberListV3",
		Method:             "GET",
		PathPattern:        "/csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNotificationSubscriberListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNotificationSubscriberListV3OK:
		return v, nil
	case *GetNotificationSubscriberListV3Unauthorized:
		return nil, v
	case *GetNotificationSubscriberListV3Forbidden:
		return nil, v
	case *GetNotificationSubscriberListV3NotFound:
		return nil, v
	case *GetNotificationSubscriberListV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteSubscriptionAppNotificationV3Short instead.

DeleteSubscriptionAppNotificationV3 remove other person subscription by user id or email address
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

Remove a user from the notification subscription using either user ID or email address.
Only one of them should be provided.
*/
func (a *Client) DeleteSubscriptionAppNotificationV3(params *DeleteSubscriptionAppNotificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationV3NoContent, *DeleteSubscriptionAppNotificationV3Unauthorized, *DeleteSubscriptionAppNotificationV3Forbidden, *DeleteSubscriptionAppNotificationV3NotFound, *DeleteSubscriptionAppNotificationV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSubscriptionAppNotificationV3Params()
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
		ID:                 "DeleteSubscriptionAppNotificationV3",
		Method:             "DELETE",
		PathPattern:        "/csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSubscriptionAppNotificationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteSubscriptionAppNotificationV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteSubscriptionAppNotificationV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteSubscriptionAppNotificationV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteSubscriptionAppNotificationV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteSubscriptionAppNotificationV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSubscriptionAppNotificationV3Short remove other person subscription by user id or email address
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

Remove a user from the notification subscription using either user ID or email address.
Only one of them should be provided.
*/
func (a *Client) DeleteSubscriptionAppNotificationV3Short(params *DeleteSubscriptionAppNotificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSubscriptionAppNotificationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteSubscriptionAppNotificationV3",
		Method:             "DELETE",
		PathPattern:        "/csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSubscriptionAppNotificationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSubscriptionAppNotificationV3NoContent:
		return v, nil
	case *DeleteSubscriptionAppNotificationV3Unauthorized:
		return nil, v
	case *DeleteSubscriptionAppNotificationV3Forbidden:
		return nil, v
	case *DeleteSubscriptionAppNotificationV3NotFound:
		return nil, v
	case *DeleteSubscriptionAppNotificationV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
