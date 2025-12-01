// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package async_messaging

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new async messaging API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for async messaging API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateSubscriptionHandler(params *CreateSubscriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSubscriptionHandlerOK, *CreateSubscriptionHandlerBadRequest, *CreateSubscriptionHandlerUnauthorized, *CreateSubscriptionHandlerForbidden, *CreateSubscriptionHandlerNotFound, *CreateSubscriptionHandlerInternalServerError, error)
	CreateSubscriptionHandlerShort(params *CreateSubscriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSubscriptionHandlerOK, error)
	UnsubscribeTopicHandler(params *UnsubscribeTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnsubscribeTopicHandlerOK, *UnsubscribeTopicHandlerUnauthorized, *UnsubscribeTopicHandlerForbidden, *UnsubscribeTopicHandlerNotFound, *UnsubscribeTopicHandlerInternalServerError, error)
	UnsubscribeTopicHandlerShort(params *UnsubscribeTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnsubscribeTopicHandlerOK, error)
	ListTopicsHandler(params *ListTopicsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*ListTopicsHandlerOK, *ListTopicsHandlerBadRequest, *ListTopicsHandlerUnauthorized, *ListTopicsHandlerForbidden, *ListTopicsHandlerInternalServerError, error)
	ListTopicsHandlerShort(params *ListTopicsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*ListTopicsHandlerOK, error)
	CreateTopicHandler(params *CreateTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicHandlerOK, *CreateTopicHandlerBadRequest, *CreateTopicHandlerUnauthorized, *CreateTopicHandlerForbidden, *CreateTopicHandlerConflict, *CreateTopicHandlerInternalServerError, error)
	CreateTopicHandlerShort(params *CreateTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicHandlerOK, error)
	DeleteTopicHandler(params *DeleteTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicHandlerOK, *DeleteTopicHandlerUnauthorized, *DeleteTopicHandlerForbidden, *DeleteTopicHandlerNotFound, *DeleteTopicHandlerInternalServerError, error)
	DeleteTopicHandlerShort(params *DeleteTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicHandlerOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateSubscriptionHandlerShort instead.

CreateSubscriptionHandler subscribe to topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:SUBSCRIPTIONS [CREATE]`

Subscribe App queue to given Topic name list inside a game namespace.
*/
func (a *Client) CreateSubscriptionHandler(params *CreateSubscriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSubscriptionHandlerOK, *CreateSubscriptionHandlerBadRequest, *CreateSubscriptionHandlerUnauthorized, *CreateSubscriptionHandlerForbidden, *CreateSubscriptionHandlerNotFound, *CreateSubscriptionHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSubscriptionHandlerParams()
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
		ID:                 "CreateSubscriptionHandler",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSubscriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateSubscriptionHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateSubscriptionHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateSubscriptionHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateSubscriptionHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateSubscriptionHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateSubscriptionHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSubscriptionHandlerShort subscribe to topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:SUBSCRIPTIONS [CREATE]`

Subscribe App queue to given Topic name list inside a game namespace.
*/
func (a *Client) CreateSubscriptionHandlerShort(params *CreateSubscriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSubscriptionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSubscriptionHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateSubscriptionHandler",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSubscriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSubscriptionHandlerOK:
		return v, nil
	case *CreateSubscriptionHandlerBadRequest:
		return nil, v
	case *CreateSubscriptionHandlerUnauthorized:
		return nil, v
	case *CreateSubscriptionHandlerForbidden:
		return nil, v
	case *CreateSubscriptionHandlerNotFound:
		return nil, v
	case *CreateSubscriptionHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UnsubscribeTopicHandlerShort instead.

UnsubscribeTopicHandler unsubscribe from topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:SUBSCRIPTIONS [DELETE]`

Unsubscribe App queue from a topic by Topic Name.
*/
func (a *Client) UnsubscribeTopicHandler(params *UnsubscribeTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnsubscribeTopicHandlerOK, *UnsubscribeTopicHandlerUnauthorized, *UnsubscribeTopicHandlerForbidden, *UnsubscribeTopicHandlerNotFound, *UnsubscribeTopicHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnsubscribeTopicHandlerParams()
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
		ID:                 "UnsubscribeTopicHandler",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnsubscribeTopicHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UnsubscribeTopicHandlerOK:
		return v, nil, nil, nil, nil, nil

	case *UnsubscribeTopicHandlerUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *UnsubscribeTopicHandlerForbidden:
		return nil, nil, v, nil, nil, nil

	case *UnsubscribeTopicHandlerNotFound:
		return nil, nil, nil, v, nil, nil

	case *UnsubscribeTopicHandlerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnsubscribeTopicHandlerShort unsubscribe from topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:SUBSCRIPTIONS [DELETE]`

Unsubscribe App queue from a topic by Topic Name.
*/
func (a *Client) UnsubscribeTopicHandlerShort(params *UnsubscribeTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnsubscribeTopicHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnsubscribeTopicHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UnsubscribeTopicHandler",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnsubscribeTopicHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnsubscribeTopicHandlerOK:
		return v, nil
	case *UnsubscribeTopicHandlerUnauthorized:
		return nil, v
	case *UnsubscribeTopicHandlerForbidden:
		return nil, v
	case *UnsubscribeTopicHandlerNotFound:
		return nil, v
	case *UnsubscribeTopicHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListTopicsHandlerShort instead.

ListTopicsHandler list async messaging topics
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [READ]`

List all Async Messaging Topics inside a game namespace.
*/
func (a *Client) ListTopicsHandler(params *ListTopicsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*ListTopicsHandlerOK, *ListTopicsHandlerBadRequest, *ListTopicsHandlerUnauthorized, *ListTopicsHandlerForbidden, *ListTopicsHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListTopicsHandlerParams()
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
		ID:                 "ListTopicsHandler",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListTopicsHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListTopicsHandlerOK:
		return v, nil, nil, nil, nil, nil

	case *ListTopicsHandlerBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ListTopicsHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *ListTopicsHandlerForbidden:
		return nil, nil, nil, v, nil, nil

	case *ListTopicsHandlerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListTopicsHandlerShort list async messaging topics
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [READ]`

List all Async Messaging Topics inside a game namespace.
*/
func (a *Client) ListTopicsHandlerShort(params *ListTopicsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*ListTopicsHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListTopicsHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListTopicsHandler",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListTopicsHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListTopicsHandlerOK:
		return v, nil
	case *ListTopicsHandlerBadRequest:
		return nil, v
	case *ListTopicsHandlerUnauthorized:
		return nil, v
	case *ListTopicsHandlerForbidden:
		return nil, v
	case *ListTopicsHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateTopicHandlerShort instead.

CreateTopicHandler create async messaging topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [CREATE]`

Create New Async Messaging Topic, the topic name is unique inside a game namespace.
*/
func (a *Client) CreateTopicHandler(params *CreateTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicHandlerOK, *CreateTopicHandlerBadRequest, *CreateTopicHandlerUnauthorized, *CreateTopicHandlerForbidden, *CreateTopicHandlerConflict, *CreateTopicHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTopicHandlerParams()
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
		ID:                 "CreateTopicHandler",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTopicHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateTopicHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateTopicHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateTopicHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateTopicHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateTopicHandlerConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateTopicHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateTopicHandlerShort create async messaging topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [CREATE]`

Create New Async Messaging Topic, the topic name is unique inside a game namespace.
*/
func (a *Client) CreateTopicHandlerShort(params *CreateTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTopicHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateTopicHandler",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTopicHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateTopicHandlerOK:
		return v, nil
	case *CreateTopicHandlerBadRequest:
		return nil, v
	case *CreateTopicHandlerUnauthorized:
		return nil, v
	case *CreateTopicHandlerForbidden:
		return nil, v
	case *CreateTopicHandlerConflict:
		return nil, v
	case *CreateTopicHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteTopicHandlerShort instead.

DeleteTopicHandler delete async messaging topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [DELETE]`

Delete Async Messaging Topic inside a game namespace given its topic name.
*/
func (a *Client) DeleteTopicHandler(params *DeleteTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicHandlerOK, *DeleteTopicHandlerUnauthorized, *DeleteTopicHandlerForbidden, *DeleteTopicHandlerNotFound, *DeleteTopicHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTopicHandlerParams()
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
		ID:                 "DeleteTopicHandler",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTopicHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteTopicHandlerOK:
		return v, nil, nil, nil, nil, nil

	case *DeleteTopicHandlerUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteTopicHandlerForbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteTopicHandlerNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteTopicHandlerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTopicHandlerShort delete async messaging topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [DELETE]`

Delete Async Messaging Topic inside a game namespace given its topic name.
*/
func (a *Client) DeleteTopicHandlerShort(params *DeleteTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTopicHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteTopicHandler",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTopicHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTopicHandlerOK:
		return v, nil
	case *DeleteTopicHandlerUnauthorized:
		return nil, v
	case *DeleteTopicHandlerForbidden:
		return nil, v
	case *DeleteTopicHandlerNotFound:
		return nil, v
	case *DeleteTopicHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
