// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package event

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new event API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for event API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetEventByNamespaceHandler(params *GetEventByNamespaceHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByNamespaceHandlerOK, *GetEventByNamespaceHandlerBadRequest, *GetEventByNamespaceHandlerUnauthorized, *GetEventByNamespaceHandlerForbidden, *GetEventByNamespaceHandlerNotFound, *GetEventByNamespaceHandlerInternalServerError, error)
	GetEventByNamespaceHandlerShort(params *GetEventByNamespaceHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByNamespaceHandlerOK, error)
	PostEventHandler(params *PostEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*PostEventHandlerNoContent, *PostEventHandlerBadRequest, *PostEventHandlerUnauthorized, *PostEventHandlerForbidden, *PostEventHandlerInternalServerError, error)
	PostEventHandlerShort(params *PostEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*PostEventHandlerNoContent, error)
	GetEventByEventIDHandler(params *GetEventByEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventIDHandlerOK, *GetEventByEventIDHandlerBadRequest, *GetEventByEventIDHandlerUnauthorized, *GetEventByEventIDHandlerForbidden, *GetEventByEventIDHandlerNotFound, *GetEventByEventIDHandlerInternalServerError, error)
	GetEventByEventIDHandlerShort(params *GetEventByEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventIDHandlerOK, error)
	GetEventByEventTypeHandler(params *GetEventByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventTypeHandlerOK, *GetEventByEventTypeHandlerBadRequest, *GetEventByEventTypeHandlerUnauthorized, *GetEventByEventTypeHandlerForbidden, *GetEventByEventTypeHandlerNotFound, *GetEventByEventTypeHandlerInternalServerError, error)
	GetEventByEventTypeHandlerShort(params *GetEventByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventTypeHandlerOK, error)
	GetEventByEventTypeAndEventIDHandler(params *GetEventByEventTypeAndEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventTypeAndEventIDHandlerOK, *GetEventByEventTypeAndEventIDHandlerBadRequest, *GetEventByEventTypeAndEventIDHandlerUnauthorized, *GetEventByEventTypeAndEventIDHandlerForbidden, *GetEventByEventTypeAndEventIDHandlerNotFound, *GetEventByEventTypeAndEventIDHandlerInternalServerError, error)
	GetEventByEventTypeAndEventIDHandlerShort(params *GetEventByEventTypeAndEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventTypeAndEventIDHandlerOK, error)
	GetEventByUserIDHandler(params *GetEventByUserIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDHandlerOK, *GetEventByUserIDHandlerBadRequest, *GetEventByUserIDHandlerUnauthorized, *GetEventByUserIDHandlerForbidden, *GetEventByUserIDHandlerNotFound, *GetEventByUserIDHandlerInternalServerError, error)
	GetEventByUserIDHandlerShort(params *GetEventByUserIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDHandlerOK, error)
	GetEventByUserIDAndEventIDHandler(params *GetEventByUserIDAndEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDAndEventIDHandlerOK, *GetEventByUserIDAndEventIDHandlerBadRequest, *GetEventByUserIDAndEventIDHandlerUnauthorized, *GetEventByUserIDAndEventIDHandlerForbidden, *GetEventByUserIDAndEventIDHandlerNotFound, *GetEventByUserIDAndEventIDHandlerInternalServerError, error)
	GetEventByUserIDAndEventIDHandlerShort(params *GetEventByUserIDAndEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDAndEventIDHandlerOK, error)
	GetEventByUserIDAndEventTypeHandler(params *GetEventByUserIDAndEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDAndEventTypeHandlerOK, *GetEventByUserIDAndEventTypeHandlerBadRequest, *GetEventByUserIDAndEventTypeHandlerUnauthorized, *GetEventByUserIDAndEventTypeHandlerForbidden, *GetEventByUserIDAndEventTypeHandlerNotFound, *GetEventByUserIDAndEventTypeHandlerInternalServerError, error)
	GetEventByUserIDAndEventTypeHandlerShort(params *GetEventByUserIDAndEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDAndEventTypeHandlerOK, error)
	GetEventByUserEventIDAndEventTypeHandler(params *GetEventByUserEventIDAndEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserEventIDAndEventTypeHandlerOK, *GetEventByUserEventIDAndEventTypeHandlerBadRequest, *GetEventByUserEventIDAndEventTypeHandlerUnauthorized, *GetEventByUserEventIDAndEventTypeHandlerForbidden, *GetEventByUserEventIDAndEventTypeHandlerNotFound, *GetEventByUserEventIDAndEventTypeHandlerInternalServerError, error)
	GetEventByUserEventIDAndEventTypeHandlerShort(params *GetEventByUserEventIDAndEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserEventIDAndEventTypeHandlerOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetEventByNamespaceHandlerShort instead.

GetEventByNamespaceHandler get events from all users in a namespace
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]` and scope `analytics`
*/
func (a *Client) GetEventByNamespaceHandler(params *GetEventByNamespaceHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByNamespaceHandlerOK, *GetEventByNamespaceHandlerBadRequest, *GetEventByNamespaceHandlerUnauthorized, *GetEventByNamespaceHandlerForbidden, *GetEventByNamespaceHandlerNotFound, *GetEventByNamespaceHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByNamespaceHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByNamespaceHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByNamespaceHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetEventByNamespaceHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetEventByNamespaceHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetEventByNamespaceHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetEventByNamespaceHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetEventByNamespaceHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetEventByNamespaceHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEventByNamespaceHandlerShort get events from all users in a namespace
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]` and scope `analytics`
*/
func (a *Client) GetEventByNamespaceHandlerShort(params *GetEventByNamespaceHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByNamespaceHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByNamespaceHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByNamespaceHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByNamespaceHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEventByNamespaceHandlerOK:
		return v, nil
	case *GetEventByNamespaceHandlerBadRequest:
		return nil, v
	case *GetEventByNamespaceHandlerUnauthorized:
		return nil, v
	case *GetEventByNamespaceHandlerForbidden:
		return nil, v
	case *GetEventByNamespaceHandlerNotFound:
		return nil, v
	case *GetEventByNamespaceHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PostEventHandlerShort instead.

PostEventHandler post an activity log
Required permission `NAMESPACE:{namespace}:EVENT [CREATE]`and scope `analytics`
*/
func (a *Client) PostEventHandler(params *PostEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*PostEventHandlerNoContent, *PostEventHandlerBadRequest, *PostEventHandlerUnauthorized, *PostEventHandlerForbidden, *PostEventHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostEventHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PostEventHandler",
		Method:             "POST",
		PathPattern:        "/event/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostEventHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PostEventHandlerNoContent:
		return v, nil, nil, nil, nil, nil

	case *PostEventHandlerBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PostEventHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PostEventHandlerForbidden:
		return nil, nil, nil, v, nil, nil

	case *PostEventHandlerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostEventHandlerShort post an activity log
Required permission `NAMESPACE:{namespace}:EVENT [CREATE]`and scope `analytics`
*/
func (a *Client) PostEventHandlerShort(params *PostEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*PostEventHandlerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostEventHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PostEventHandler",
		Method:             "POST",
		PathPattern:        "/event/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostEventHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostEventHandlerNoContent:
		return v, nil
	case *PostEventHandlerBadRequest:
		return nil, v
	case *PostEventHandlerUnauthorized:
		return nil, v
	case *PostEventHandlerForbidden:
		return nil, v
	case *PostEventHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEventByEventIDHandlerShort instead.

GetEventByEventIDHandler get events from all users in a namespace with specific eventid
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]` and scope `analytics`
*/
func (a *Client) GetEventByEventIDHandler(params *GetEventByEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventIDHandlerOK, *GetEventByEventIDHandlerBadRequest, *GetEventByEventIDHandlerUnauthorized, *GetEventByEventIDHandlerForbidden, *GetEventByEventIDHandlerNotFound, *GetEventByEventIDHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByEventIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByEventIDHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/eventId/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetEventByEventIDHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetEventByEventIDHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetEventByEventIDHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetEventByEventIDHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetEventByEventIDHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetEventByEventIDHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEventByEventIDHandlerShort get events from all users in a namespace with specific eventid
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]` and scope `analytics`
*/
func (a *Client) GetEventByEventIDHandlerShort(params *GetEventByEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventIDHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByEventIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByEventIDHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/eventId/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEventByEventIDHandlerOK:
		return v, nil
	case *GetEventByEventIDHandlerBadRequest:
		return nil, v
	case *GetEventByEventIDHandlerUnauthorized:
		return nil, v
	case *GetEventByEventIDHandlerForbidden:
		return nil, v
	case *GetEventByEventIDHandlerNotFound:
		return nil, v
	case *GetEventByEventIDHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEventByEventTypeHandlerShort instead.

GetEventByEventTypeHandler get events from all users in a namespace with specific eventtype
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`
*/
func (a *Client) GetEventByEventTypeHandler(params *GetEventByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventTypeHandlerOK, *GetEventByEventTypeHandlerBadRequest, *GetEventByEventTypeHandlerUnauthorized, *GetEventByEventTypeHandlerForbidden, *GetEventByEventTypeHandlerNotFound, *GetEventByEventTypeHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByEventTypeHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByEventTypeHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/eventType/{eventType}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByEventTypeHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetEventByEventTypeHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetEventByEventTypeHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetEventByEventTypeHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetEventByEventTypeHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetEventByEventTypeHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetEventByEventTypeHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEventByEventTypeHandlerShort get events from all users in a namespace with specific eventtype
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`
*/
func (a *Client) GetEventByEventTypeHandlerShort(params *GetEventByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventTypeHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByEventTypeHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByEventTypeHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/eventType/{eventType}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByEventTypeHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEventByEventTypeHandlerOK:
		return v, nil
	case *GetEventByEventTypeHandlerBadRequest:
		return nil, v
	case *GetEventByEventTypeHandlerUnauthorized:
		return nil, v
	case *GetEventByEventTypeHandlerForbidden:
		return nil, v
	case *GetEventByEventTypeHandlerNotFound:
		return nil, v
	case *GetEventByEventTypeHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEventByEventTypeAndEventIDHandlerShort instead.

GetEventByEventTypeAndEventIDHandler get events from all users in a namespace with specific eventid and eventtype
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`
*/
func (a *Client) GetEventByEventTypeAndEventIDHandler(params *GetEventByEventTypeAndEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventTypeAndEventIDHandlerOK, *GetEventByEventTypeAndEventIDHandlerBadRequest, *GetEventByEventTypeAndEventIDHandlerUnauthorized, *GetEventByEventTypeAndEventIDHandlerForbidden, *GetEventByEventTypeAndEventIDHandlerNotFound, *GetEventByEventTypeAndEventIDHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByEventTypeAndEventIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByEventTypeAndEventIDHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByEventTypeAndEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetEventByEventTypeAndEventIDHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetEventByEventTypeAndEventIDHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetEventByEventTypeAndEventIDHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetEventByEventTypeAndEventIDHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetEventByEventTypeAndEventIDHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetEventByEventTypeAndEventIDHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEventByEventTypeAndEventIDHandlerShort get events from all users in a namespace with specific eventid and eventtype
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`
*/
func (a *Client) GetEventByEventTypeAndEventIDHandlerShort(params *GetEventByEventTypeAndEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByEventTypeAndEventIDHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByEventTypeAndEventIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByEventTypeAndEventIDHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByEventTypeAndEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEventByEventTypeAndEventIDHandlerOK:
		return v, nil
	case *GetEventByEventTypeAndEventIDHandlerBadRequest:
		return nil, v
	case *GetEventByEventTypeAndEventIDHandlerUnauthorized:
		return nil, v
	case *GetEventByEventTypeAndEventIDHandlerForbidden:
		return nil, v
	case *GetEventByEventTypeAndEventIDHandlerNotFound:
		return nil, v
	case *GetEventByEventTypeAndEventIDHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEventByUserIDHandlerShort instead.

GetEventByUserIDHandler get events from specific user
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]` and scope `analytics`
*/
func (a *Client) GetEventByUserIDHandler(params *GetEventByUserIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDHandlerOK, *GetEventByUserIDHandlerBadRequest, *GetEventByUserIDHandlerUnauthorized, *GetEventByUserIDHandlerForbidden, *GetEventByUserIDHandlerNotFound, *GetEventByUserIDHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByUserIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByUserIDHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByUserIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetEventByUserIDHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetEventByUserIDHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetEventByUserIDHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetEventByUserIDHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetEventByUserIDHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetEventByUserIDHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEventByUserIDHandlerShort get events from specific user
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]` and scope `analytics`
*/
func (a *Client) GetEventByUserIDHandlerShort(params *GetEventByUserIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByUserIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByUserIDHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByUserIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEventByUserIDHandlerOK:
		return v, nil
	case *GetEventByUserIDHandlerBadRequest:
		return nil, v
	case *GetEventByUserIDHandlerUnauthorized:
		return nil, v
	case *GetEventByUserIDHandlerForbidden:
		return nil, v
	case *GetEventByUserIDHandlerNotFound:
		return nil, v
	case *GetEventByUserIDHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEventByUserIDAndEventIDHandlerShort instead.

GetEventByUserIDAndEventIDHandler get events from specific user with specific eventid
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]` and scope `analytics`
*/
func (a *Client) GetEventByUserIDAndEventIDHandler(params *GetEventByUserIDAndEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDAndEventIDHandlerOK, *GetEventByUserIDAndEventIDHandlerBadRequest, *GetEventByUserIDAndEventIDHandlerUnauthorized, *GetEventByUserIDAndEventIDHandlerForbidden, *GetEventByUserIDAndEventIDHandlerNotFound, *GetEventByUserIDAndEventIDHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByUserIDAndEventIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByUserIDAndEventIDHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/users/{userId}/eventId/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByUserIDAndEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetEventByUserIDAndEventIDHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetEventByUserIDAndEventIDHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetEventByUserIDAndEventIDHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetEventByUserIDAndEventIDHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetEventByUserIDAndEventIDHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetEventByUserIDAndEventIDHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEventByUserIDAndEventIDHandlerShort get events from specific user with specific eventid
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]` and scope `analytics`
*/
func (a *Client) GetEventByUserIDAndEventIDHandlerShort(params *GetEventByUserIDAndEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDAndEventIDHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByUserIDAndEventIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByUserIDAndEventIDHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/users/{userId}/eventId/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByUserIDAndEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEventByUserIDAndEventIDHandlerOK:
		return v, nil
	case *GetEventByUserIDAndEventIDHandlerBadRequest:
		return nil, v
	case *GetEventByUserIDAndEventIDHandlerUnauthorized:
		return nil, v
	case *GetEventByUserIDAndEventIDHandlerForbidden:
		return nil, v
	case *GetEventByUserIDAndEventIDHandlerNotFound:
		return nil, v
	case *GetEventByUserIDAndEventIDHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEventByUserIDAndEventTypeHandlerShort instead.

GetEventByUserIDAndEventTypeHandler get events from specific user with specific eventtype
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]and scope `analytics`
*/
func (a *Client) GetEventByUserIDAndEventTypeHandler(params *GetEventByUserIDAndEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDAndEventTypeHandlerOK, *GetEventByUserIDAndEventTypeHandlerBadRequest, *GetEventByUserIDAndEventTypeHandlerUnauthorized, *GetEventByUserIDAndEventTypeHandlerForbidden, *GetEventByUserIDAndEventTypeHandlerNotFound, *GetEventByUserIDAndEventTypeHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByUserIDAndEventTypeHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByUserIDAndEventTypeHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/users/{userId}/eventType/{eventType}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByUserIDAndEventTypeHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetEventByUserIDAndEventTypeHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetEventByUserIDAndEventTypeHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetEventByUserIDAndEventTypeHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetEventByUserIDAndEventTypeHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetEventByUserIDAndEventTypeHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetEventByUserIDAndEventTypeHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEventByUserIDAndEventTypeHandlerShort get events from specific user with specific eventtype
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]and scope `analytics`
*/
func (a *Client) GetEventByUserIDAndEventTypeHandlerShort(params *GetEventByUserIDAndEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserIDAndEventTypeHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByUserIDAndEventTypeHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByUserIDAndEventTypeHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/users/{userId}/eventType/{eventType}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByUserIDAndEventTypeHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEventByUserIDAndEventTypeHandlerOK:
		return v, nil
	case *GetEventByUserIDAndEventTypeHandlerBadRequest:
		return nil, v
	case *GetEventByUserIDAndEventTypeHandlerUnauthorized:
		return nil, v
	case *GetEventByUserIDAndEventTypeHandlerForbidden:
		return nil, v
	case *GetEventByUserIDAndEventTypeHandlerNotFound:
		return nil, v
	case *GetEventByUserIDAndEventTypeHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEventByUserEventIDAndEventTypeHandlerShort instead.

GetEventByUserEventIDAndEventTypeHandler get events from specific user with specific eventid and eventtype
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`
*/
func (a *Client) GetEventByUserEventIDAndEventTypeHandler(params *GetEventByUserEventIDAndEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserEventIDAndEventTypeHandlerOK, *GetEventByUserEventIDAndEventTypeHandlerBadRequest, *GetEventByUserEventIDAndEventTypeHandlerUnauthorized, *GetEventByUserEventIDAndEventTypeHandlerForbidden, *GetEventByUserEventIDAndEventTypeHandlerNotFound, *GetEventByUserEventIDAndEventTypeHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByUserEventIDAndEventTypeHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByUserEventIDAndEventTypeHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByUserEventIDAndEventTypeHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetEventByUserEventIDAndEventTypeHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetEventByUserEventIDAndEventTypeHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetEventByUserEventIDAndEventTypeHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetEventByUserEventIDAndEventTypeHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetEventByUserEventIDAndEventTypeHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetEventByUserEventIDAndEventTypeHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEventByUserEventIDAndEventTypeHandlerShort get events from specific user with specific eventid and eventtype
Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`
*/
func (a *Client) GetEventByUserEventIDAndEventTypeHandlerShort(params *GetEventByUserEventIDAndEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventByUserEventIDAndEventTypeHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventByUserEventIDAndEventTypeHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetEventByUserEventIDAndEventTypeHandler",
		Method:             "GET",
		PathPattern:        "/event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventByUserEventIDAndEventTypeHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEventByUserEventIDAndEventTypeHandlerOK:
		return v, nil
	case *GetEventByUserEventIDAndEventTypeHandlerBadRequest:
		return nil, v
	case *GetEventByUserEventIDAndEventTypeHandlerUnauthorized:
		return nil, v
	case *GetEventByUserEventIDAndEventTypeHandlerForbidden:
		return nil, v
	case *GetEventByUserEventIDAndEventTypeHandlerNotFound:
		return nil, v
	case *GetEventByUserEventIDAndEventTypeHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
