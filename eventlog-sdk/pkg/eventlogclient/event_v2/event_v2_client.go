// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package event_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new event v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for event v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryEventStreamHandler(params *QueryEventStreamHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEventStreamHandlerOK, *QueryEventStreamHandlerBadRequest, *QueryEventStreamHandlerUnauthorized, *QueryEventStreamHandlerForbidden, *QueryEventStreamHandlerNotFound, *QueryEventStreamHandlerInternalServerError, *QueryEventStreamHandlerNotImplemented, error)
	QueryEventStreamHandlerShort(params *QueryEventStreamHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEventStreamHandlerOK, error)
	GetEventSpecificUserV2Handler(params *GetEventSpecificUserV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventSpecificUserV2HandlerOK, *GetEventSpecificUserV2HandlerBadRequest, *GetEventSpecificUserV2HandlerUnauthorized, *GetEventSpecificUserV2HandlerForbidden, *GetEventSpecificUserV2HandlerNotFound, *GetEventSpecificUserV2HandlerInternalServerError, *GetEventSpecificUserV2HandlerNotImplemented, error)
	GetEventSpecificUserV2HandlerShort(params *GetEventSpecificUserV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventSpecificUserV2HandlerOK, error)
	GetPublicEditHistory(params *GetPublicEditHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicEditHistoryOK, *GetPublicEditHistoryBadRequest, *GetPublicEditHistoryUnauthorized, *GetPublicEditHistoryForbidden, *GetPublicEditHistoryNotFound, *GetPublicEditHistoryInternalServerError, *GetPublicEditHistoryNotImplemented, error)
	GetPublicEditHistoryShort(params *GetPublicEditHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicEditHistoryOK, error)
	GetUserEventsV2Public(params *GetUserEventsV2PublicParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEventsV2PublicOK, *GetUserEventsV2PublicBadRequest, *GetUserEventsV2PublicUnauthorized, *GetUserEventsV2PublicForbidden, *GetUserEventsV2PublicNotFound, *GetUserEventsV2PublicInternalServerError, *GetUserEventsV2PublicNotImplemented, error)
	GetUserEventsV2PublicShort(params *GetUserEventsV2PublicParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEventsV2PublicOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryEventStreamHandlerShort instead.

QueryEventStreamHandler a generic query to get a set of events based on the provided filters


This endpoint is using POST which is somewhat unfamiliar,
but it's logical that we have to send/post a filter (search term) in order to get the data.




This endpoint will not return anything if you give it an empty filters in the request body.




Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]` and scope `"+scope+"`
*/
func (a *Client) QueryEventStreamHandler(params *QueryEventStreamHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEventStreamHandlerOK, *QueryEventStreamHandlerBadRequest, *QueryEventStreamHandlerUnauthorized, *QueryEventStreamHandlerForbidden, *QueryEventStreamHandlerNotFound, *QueryEventStreamHandlerInternalServerError, *QueryEventStreamHandlerNotImplemented, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryEventStreamHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "QueryEventStreamHandler",
		Method:             "POST",
		PathPattern:        "/event/v2/admin/namespaces/{namespace}/query",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryEventStreamHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryEventStreamHandlerOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *QueryEventStreamHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *QueryEventStreamHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *QueryEventStreamHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *QueryEventStreamHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *QueryEventStreamHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *QueryEventStreamHandlerNotImplemented:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryEventStreamHandlerShort a generic query to get a set of events based on the provided filters


This endpoint is using POST which is somewhat unfamiliar,
but it's logical that we have to send/post a filter (search term) in order to get the data.




This endpoint will not return anything if you give it an empty filters in the request body.




Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]` and scope `"+scope+"`
*/
func (a *Client) QueryEventStreamHandlerShort(params *QueryEventStreamHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEventStreamHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryEventStreamHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "QueryEventStreamHandler",
		Method:             "POST",
		PathPattern:        "/event/v2/admin/namespaces/{namespace}/query",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryEventStreamHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryEventStreamHandlerOK:
		return v, nil
	case *QueryEventStreamHandlerBadRequest:
		return nil, v
	case *QueryEventStreamHandlerUnauthorized:
		return nil, v
	case *QueryEventStreamHandlerForbidden:
		return nil, v
	case *QueryEventStreamHandlerNotFound:
		return nil, v
	case *QueryEventStreamHandlerInternalServerError:
		return nil, v
	case *QueryEventStreamHandlerNotImplemented:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEventSpecificUserV2HandlerShort instead.

GetEventSpecificUserV2Handler get events from a specific user
Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`
*/
func (a *Client) GetEventSpecificUserV2Handler(params *GetEventSpecificUserV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventSpecificUserV2HandlerOK, *GetEventSpecificUserV2HandlerBadRequest, *GetEventSpecificUserV2HandlerUnauthorized, *GetEventSpecificUserV2HandlerForbidden, *GetEventSpecificUserV2HandlerNotFound, *GetEventSpecificUserV2HandlerInternalServerError, *GetEventSpecificUserV2HandlerNotImplemented, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventSpecificUserV2HandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventSpecificUserV2Handler",
		Method:             "GET",
		PathPattern:        "/event/v2/admin/namespaces/{namespace}/users/{userId}/event",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventSpecificUserV2HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetEventSpecificUserV2HandlerOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *GetEventSpecificUserV2HandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *GetEventSpecificUserV2HandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *GetEventSpecificUserV2HandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *GetEventSpecificUserV2HandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *GetEventSpecificUserV2HandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *GetEventSpecificUserV2HandlerNotImplemented:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEventSpecificUserV2HandlerShort get events from a specific user
Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`
*/
func (a *Client) GetEventSpecificUserV2HandlerShort(params *GetEventSpecificUserV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventSpecificUserV2HandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventSpecificUserV2HandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventSpecificUserV2Handler",
		Method:             "GET",
		PathPattern:        "/event/v2/admin/namespaces/{namespace}/users/{userId}/event",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventSpecificUserV2HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEventSpecificUserV2HandlerOK:
		return v, nil
	case *GetEventSpecificUserV2HandlerBadRequest:
		return nil, v
	case *GetEventSpecificUserV2HandlerUnauthorized:
		return nil, v
	case *GetEventSpecificUserV2HandlerForbidden:
		return nil, v
	case *GetEventSpecificUserV2HandlerNotFound:
		return nil, v
	case *GetEventSpecificUserV2HandlerInternalServerError:
		return nil, v
	case *GetEventSpecificUserV2HandlerNotImplemented:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPublicEditHistoryShort instead.

GetPublicEditHistory get a user edit history based on the provided type


Available Type:






  * email


  * password


  * displayname


  * dateofbirth


  * country


  * language





Requires a valid user access token
*/
func (a *Client) GetPublicEditHistory(params *GetPublicEditHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicEditHistoryOK, *GetPublicEditHistoryBadRequest, *GetPublicEditHistoryUnauthorized, *GetPublicEditHistoryForbidden, *GetPublicEditHistoryNotFound, *GetPublicEditHistoryInternalServerError, *GetPublicEditHistoryNotImplemented, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublicEditHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetPublicEditHistory",
		Method:             "GET",
		PathPattern:        "/event/v2/public/namespaces/{namespace}/users/{userId}/edithistory",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublicEditHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPublicEditHistoryOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *GetPublicEditHistoryBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *GetPublicEditHistoryUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *GetPublicEditHistoryForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *GetPublicEditHistoryNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *GetPublicEditHistoryInternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *GetPublicEditHistoryNotImplemented:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublicEditHistoryShort get a user edit history based on the provided type


Available Type:






  * email


  * password


  * displayname


  * dateofbirth


  * country


  * language





Requires a valid user access token
*/
func (a *Client) GetPublicEditHistoryShort(params *GetPublicEditHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicEditHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublicEditHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetPublicEditHistory",
		Method:             "GET",
		PathPattern:        "/event/v2/public/namespaces/{namespace}/users/{userId}/edithistory",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublicEditHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublicEditHistoryOK:
		return v, nil
	case *GetPublicEditHistoryBadRequest:
		return nil, v
	case *GetPublicEditHistoryUnauthorized:
		return nil, v
	case *GetPublicEditHistoryForbidden:
		return nil, v
	case *GetPublicEditHistoryNotFound:
		return nil, v
	case *GetPublicEditHistoryInternalServerError:
		return nil, v
	case *GetPublicEditHistoryNotImplemented:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserEventsV2PublicShort instead.

GetUserEventsV2Public get events from a specific user


Requires valid user access token
*/
func (a *Client) GetUserEventsV2Public(params *GetUserEventsV2PublicParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEventsV2PublicOK, *GetUserEventsV2PublicBadRequest, *GetUserEventsV2PublicUnauthorized, *GetUserEventsV2PublicForbidden, *GetUserEventsV2PublicNotFound, *GetUserEventsV2PublicInternalServerError, *GetUserEventsV2PublicNotImplemented, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEventsV2PublicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserEventsV2Public",
		Method:             "GET",
		PathPattern:        "/event/v2/public/namespaces/{namespace}/users/{userId}/event",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEventsV2PublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserEventsV2PublicOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *GetUserEventsV2PublicBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *GetUserEventsV2PublicUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *GetUserEventsV2PublicForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *GetUserEventsV2PublicNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *GetUserEventsV2PublicInternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *GetUserEventsV2PublicNotImplemented:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEventsV2PublicShort get events from a specific user


Requires valid user access token
*/
func (a *Client) GetUserEventsV2PublicShort(params *GetUserEventsV2PublicParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEventsV2PublicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEventsV2PublicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserEventsV2Public",
		Method:             "GET",
		PathPattern:        "/event/v2/public/namespaces/{namespace}/users/{userId}/event",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEventsV2PublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEventsV2PublicOK:
		return v, nil
	case *GetUserEventsV2PublicBadRequest:
		return nil, v
	case *GetUserEventsV2PublicUnauthorized:
		return nil, v
	case *GetUserEventsV2PublicForbidden:
		return nil, v
	case *GetUserEventsV2PublicNotFound:
		return nil, v
	case *GetUserEventsV2PublicInternalServerError:
		return nil, v
	case *GetUserEventsV2PublicNotImplemented:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
