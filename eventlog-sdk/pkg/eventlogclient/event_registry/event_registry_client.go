// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package event_registry

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new event registry API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for event registry API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetRegisteredEventIDHandler(params *GetRegisteredEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventIDHandlerOK, *GetRegisteredEventIDHandlerBadRequest, *GetRegisteredEventIDHandlerUnauthorized, *GetRegisteredEventIDHandlerForbidden, *GetRegisteredEventIDHandlerNotFound, *GetRegisteredEventIDHandlerInternalServerError, error)
	GetRegisteredEventIDHandlerShort(params *GetRegisteredEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventIDHandlerOK, error)
	GetRegisteredEventsByEventTypeHandler(params *GetRegisteredEventsByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsByEventTypeHandlerOK, *GetRegisteredEventsByEventTypeHandlerBadRequest, *GetRegisteredEventsByEventTypeHandlerUnauthorized, *GetRegisteredEventsByEventTypeHandlerForbidden, *GetRegisteredEventsByEventTypeHandlerNotFound, *GetRegisteredEventsByEventTypeHandlerInternalServerError, error)
	GetRegisteredEventsByEventTypeHandlerShort(params *GetRegisteredEventsByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsByEventTypeHandlerOK, error)
	GetRegisteredEventsHandler(params *GetRegisteredEventsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsHandlerOK, *GetRegisteredEventsHandlerUnauthorized, *GetRegisteredEventsHandlerForbidden, *GetRegisteredEventsHandlerInternalServerError, error)
	GetRegisteredEventsHandlerShort(params *GetRegisteredEventsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsHandlerOK, error)
	RegisterEventHandler(params *RegisterEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterEventHandlerCreated, *RegisterEventHandlerBadRequest, *RegisterEventHandlerUnauthorized, *RegisterEventHandlerForbidden, *RegisterEventHandlerConflict, *RegisterEventHandlerInternalServerError, error)
	RegisterEventHandlerShort(params *RegisterEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterEventHandlerCreated, error)
	UnregisterEventIDHandler(params *UnregisterEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnregisterEventIDHandlerNoContent, *UnregisterEventIDHandlerUnauthorized, *UnregisterEventIDHandlerForbidden, *UnregisterEventIDHandlerNotFound, *UnregisterEventIDHandlerInternalServerError, error)
	UnregisterEventIDHandlerShort(params *UnregisterEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnregisterEventIDHandlerNoContent, error)
	UpdateEventRegistryHandler(params *UpdateEventRegistryHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEventRegistryHandlerNoContent, *UpdateEventRegistryHandlerBadRequest, *UpdateEventRegistryHandlerUnauthorized, *UpdateEventRegistryHandlerForbidden, *UpdateEventRegistryHandlerNotFound, *UpdateEventRegistryHandlerInternalServerError, error)
	UpdateEventRegistryHandlerShort(params *UpdateEventRegistryHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEventRegistryHandlerNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: Use GetRegisteredEventIDHandlerShort instead.

  GetRegisteredEventIDHandler gets registered event ID data from the event registry

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [READ]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) GetRegisteredEventIDHandler(params *GetRegisteredEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventIDHandlerOK, *GetRegisteredEventIDHandlerBadRequest, *GetRegisteredEventIDHandlerUnauthorized, *GetRegisteredEventIDHandlerForbidden, *GetRegisteredEventIDHandlerNotFound, *GetRegisteredEventIDHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRegisteredEventIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRegisteredEventIDHandler",
		Method:             "GET",
		PathPattern:        "/event/registry/eventIds/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRegisteredEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetRegisteredEventIDHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetRegisteredEventIDHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetRegisteredEventIDHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetRegisteredEventIDHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetRegisteredEventIDHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetRegisteredEventIDHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetRegisteredEventIDHandlerShort gets registered event ID data from the event registry

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [READ]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) GetRegisteredEventIDHandlerShort(params *GetRegisteredEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventIDHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRegisteredEventIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRegisteredEventIDHandler",
		Method:             "GET",
		PathPattern:        "/event/registry/eventIds/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRegisteredEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRegisteredEventIDHandlerOK:
		return v, nil
	case *GetRegisteredEventIDHandlerBadRequest:
		return nil, v
	case *GetRegisteredEventIDHandlerUnauthorized:
		return nil, v
	case *GetRegisteredEventIDHandlerForbidden:
		return nil, v
	case *GetRegisteredEventIDHandlerNotFound:
		return nil, v
	case *GetRegisteredEventIDHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: Use GetRegisteredEventsByEventTypeHandlerShort instead.

  GetRegisteredEventsByEventTypeHandler gets registered event ID data from the event registry based on the event type

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [READ]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) GetRegisteredEventsByEventTypeHandler(params *GetRegisteredEventsByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsByEventTypeHandlerOK, *GetRegisteredEventsByEventTypeHandlerBadRequest, *GetRegisteredEventsByEventTypeHandlerUnauthorized, *GetRegisteredEventsByEventTypeHandlerForbidden, *GetRegisteredEventsByEventTypeHandlerNotFound, *GetRegisteredEventsByEventTypeHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRegisteredEventsByEventTypeHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRegisteredEventsByEventTypeHandler",
		Method:             "GET",
		PathPattern:        "/event/registry/eventTypes/{eventType}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRegisteredEventsByEventTypeHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetRegisteredEventsByEventTypeHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetRegisteredEventsByEventTypeHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetRegisteredEventsByEventTypeHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetRegisteredEventsByEventTypeHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetRegisteredEventsByEventTypeHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetRegisteredEventsByEventTypeHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetRegisteredEventsByEventTypeHandlerShort gets registered event ID data from the event registry based on the event type

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [READ]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) GetRegisteredEventsByEventTypeHandlerShort(params *GetRegisteredEventsByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsByEventTypeHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRegisteredEventsByEventTypeHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRegisteredEventsByEventTypeHandler",
		Method:             "GET",
		PathPattern:        "/event/registry/eventTypes/{eventType}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRegisteredEventsByEventTypeHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRegisteredEventsByEventTypeHandlerOK:
		return v, nil
	case *GetRegisteredEventsByEventTypeHandlerBadRequest:
		return nil, v
	case *GetRegisteredEventsByEventTypeHandlerUnauthorized:
		return nil, v
	case *GetRegisteredEventsByEventTypeHandlerForbidden:
		return nil, v
	case *GetRegisteredEventsByEventTypeHandlerNotFound:
		return nil, v
	case *GetRegisteredEventsByEventTypeHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: Use GetRegisteredEventsHandlerShort instead.

  GetRegisteredEventsHandler gets registered events in the event registry

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [READ]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) GetRegisteredEventsHandler(params *GetRegisteredEventsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsHandlerOK, *GetRegisteredEventsHandlerUnauthorized, *GetRegisteredEventsHandlerForbidden, *GetRegisteredEventsHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRegisteredEventsHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRegisteredEventsHandler",
		Method:             "GET",
		PathPattern:        "/event/registry/eventIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRegisteredEventsHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetRegisteredEventsHandlerOK:
		return v, nil, nil, nil, nil

	case *GetRegisteredEventsHandlerUnauthorized:
		return nil, v, nil, nil, nil

	case *GetRegisteredEventsHandlerForbidden:
		return nil, nil, v, nil, nil

	case *GetRegisteredEventsHandlerInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetRegisteredEventsHandlerShort gets registered events in the event registry

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [READ]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) GetRegisteredEventsHandlerShort(params *GetRegisteredEventsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRegisteredEventsHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetRegisteredEventsHandler",
		Method:             "GET",
		PathPattern:        "/event/registry/eventIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRegisteredEventsHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRegisteredEventsHandlerOK:
		return v, nil
	case *GetRegisteredEventsHandlerUnauthorized:
		return nil, v
	case *GetRegisteredEventsHandlerForbidden:
		return nil, v
	case *GetRegisteredEventsHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: Use RegisterEventHandlerShort instead.

  RegisterEventHandler registers an event ID to the event registry

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [CREATE]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) RegisterEventHandler(params *RegisterEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterEventHandlerCreated, *RegisterEventHandlerBadRequest, *RegisterEventHandlerUnauthorized, *RegisterEventHandlerForbidden, *RegisterEventHandlerConflict, *RegisterEventHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRegisterEventHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RegisterEventHandler",
		Method:             "POST",
		PathPattern:        "/event/registry/eventIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RegisterEventHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RegisterEventHandlerCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *RegisterEventHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *RegisterEventHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *RegisterEventHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *RegisterEventHandlerConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *RegisterEventHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  RegisterEventHandlerShort registers an event ID to the event registry

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [CREATE]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) RegisterEventHandlerShort(params *RegisterEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterEventHandlerCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRegisterEventHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RegisterEventHandler",
		Method:             "POST",
		PathPattern:        "/event/registry/eventIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RegisterEventHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RegisterEventHandlerCreated:
		return v, nil
	case *RegisterEventHandlerBadRequest:
		return nil, v
	case *RegisterEventHandlerUnauthorized:
		return nil, v
	case *RegisterEventHandlerForbidden:
		return nil, v
	case *RegisterEventHandlerConflict:
		return nil, v
	case *RegisterEventHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: Use UnregisterEventIDHandlerShort instead.

  UnregisterEventIDHandler unregisters event ID from the event registry

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [DELETE]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) UnregisterEventIDHandler(params *UnregisterEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnregisterEventIDHandlerNoContent, *UnregisterEventIDHandlerUnauthorized, *UnregisterEventIDHandlerForbidden, *UnregisterEventIDHandlerNotFound, *UnregisterEventIDHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnregisterEventIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UnregisterEventIDHandler",
		Method:             "DELETE",
		PathPattern:        "/event/registry/eventIds/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnregisterEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UnregisterEventIDHandlerNoContent:
		return v, nil, nil, nil, nil, nil

	case *UnregisterEventIDHandlerUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *UnregisterEventIDHandlerForbidden:
		return nil, nil, v, nil, nil, nil

	case *UnregisterEventIDHandlerNotFound:
		return nil, nil, nil, v, nil, nil

	case *UnregisterEventIDHandlerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  UnregisterEventIDHandlerShort unregisters event ID from the event registry

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [DELETE]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) UnregisterEventIDHandlerShort(params *UnregisterEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnregisterEventIDHandlerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnregisterEventIDHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UnregisterEventIDHandler",
		Method:             "DELETE",
		PathPattern:        "/event/registry/eventIds/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnregisterEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnregisterEventIDHandlerNoContent:
		return v, nil
	case *UnregisterEventIDHandlerUnauthorized:
		return nil, v
	case *UnregisterEventIDHandlerForbidden:
		return nil, v
	case *UnregisterEventIDHandlerNotFound:
		return nil, v
	case *UnregisterEventIDHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: Use UpdateEventRegistryHandlerShort instead.

  UpdateEventRegistryHandler updates an event ID data in the event registry

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [UPDATE]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) UpdateEventRegistryHandler(params *UpdateEventRegistryHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEventRegistryHandlerNoContent, *UpdateEventRegistryHandlerBadRequest, *UpdateEventRegistryHandlerUnauthorized, *UpdateEventRegistryHandlerForbidden, *UpdateEventRegistryHandlerNotFound, *UpdateEventRegistryHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateEventRegistryHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateEventRegistryHandler",
		Method:             "POST",
		PathPattern:        "/event/registry/eventIds/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateEventRegistryHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateEventRegistryHandlerNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateEventRegistryHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateEventRegistryHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateEventRegistryHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateEventRegistryHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateEventRegistryHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  UpdateEventRegistryHandlerShort updates an event ID data in the event registry

  Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:EVENT [UPDATE]&lt;/code&gt;and scope &lt;code&gt;analytics&lt;/code&gt;
*/
func (a *Client) UpdateEventRegistryHandlerShort(params *UpdateEventRegistryHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEventRegistryHandlerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateEventRegistryHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateEventRegistryHandler",
		Method:             "POST",
		PathPattern:        "/event/registry/eventIds/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateEventRegistryHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateEventRegistryHandlerNoContent:
		return v, nil
	case *UpdateEventRegistryHandlerBadRequest:
		return nil, v
	case *UpdateEventRegistryHandlerUnauthorized:
		return nil, v
	case *UpdateEventRegistryHandlerForbidden:
		return nil, v
	case *UpdateEventRegistryHandlerNotFound:
		return nil, v
	case *UpdateEventRegistryHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
