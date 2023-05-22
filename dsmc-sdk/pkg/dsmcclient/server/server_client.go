// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package server

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new server API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for server API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListServerClient(params *ListServerClientParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerClientOK, *ListServerClientUnauthorized, *ListServerClientInternalServerError, error)
	ListServerClientShort(params *ListServerClientParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerClientOK, error)
	ServerHeartbeat(params *ServerHeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHeartbeatAccepted, *ServerHeartbeatBadRequest, *ServerHeartbeatUnauthorized, *ServerHeartbeatNotFound, *ServerHeartbeatInternalServerError, error)
	ServerHeartbeatShort(params *ServerHeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHeartbeatAccepted, error)
	DeregisterLocalServer(params *DeregisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeregisterLocalServerNoContent, *DeregisterLocalServerBadRequest, *DeregisterLocalServerUnauthorized, *DeregisterLocalServerInternalServerError, error)
	DeregisterLocalServerShort(params *DeregisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeregisterLocalServerNoContent, error)
	RegisterLocalServer(params *RegisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterLocalServerOK, *RegisterLocalServerBadRequest, *RegisterLocalServerUnauthorized, *RegisterLocalServerConflict, *RegisterLocalServerInternalServerError, error)
	RegisterLocalServerShort(params *RegisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterLocalServerOK, error)
	RegisterServer(params *RegisterServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterServerOK, *RegisterServerBadRequest, *RegisterServerUnauthorized, *RegisterServerNotFound, *RegisterServerConflict, *RegisterServerInternalServerError, error)
	RegisterServerShort(params *RegisterServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterServerOK, error)
	ShutdownServer(params *ShutdownServerParams, authInfo runtime.ClientAuthInfoWriter) (*ShutdownServerNoContent, *ShutdownServerBadRequest, *ShutdownServerUnauthorized, *ShutdownServerNotFound, *ShutdownServerInternalServerError, error)
	ShutdownServerShort(params *ShutdownServerParams, authInfo runtime.ClientAuthInfoWriter) (*ShutdownServerNoContent, error)
	GetServerSessionTimeout(params *GetServerSessionTimeoutParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionTimeoutOK, *GetServerSessionTimeoutBadRequest, *GetServerSessionTimeoutUnauthorized, *GetServerSessionTimeoutNotFound, *GetServerSessionTimeoutInternalServerError, error)
	GetServerSessionTimeoutShort(params *GetServerSessionTimeoutParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionTimeoutOK, error)
	GetServerSession(params *GetServerSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionOK, *GetServerSessionBadRequest, *GetServerSessionUnauthorized, *GetServerSessionNotFound, *GetServerSessionInternalServerError, error)
	GetServerSessionShort(params *GetServerSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListServerClientShort instead.

ListServerClient list all managed servers in a region for client
Required permission: NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint lists all of dedicated servers in a namespace managed by this service.

Parameter Offset and Count is Required
*/
func (a *Client) ListServerClient(params *ListServerClientParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerClientOK, *ListServerClientUnauthorized, *ListServerClientInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListServerClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListServerClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListServerClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListServerClientOK:
		return v, nil, nil, nil

	case *ListServerClientUnauthorized:
		return nil, v, nil, nil

	case *ListServerClientInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListServerClientShort list all managed servers in a region for client
Required permission: NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint lists all of dedicated servers in a namespace managed by this service.

Parameter Offset and Count is Required
*/
func (a *Client) ListServerClientShort(params *ListServerClientParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerClientOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListServerClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListServerClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListServerClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListServerClientOK:
		return v, nil
	case *ListServerClientUnauthorized:
		return nil, v
	case *ListServerClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ServerHeartbeatShort instead.

ServerHeartbeat server heartbeat
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by dedicated server
which already has claimed to extend its lifetime.
DS should call this periodically after it claimed.
The timeframe between 2 heartbeat call should be smaller than
the session timout in the deployment configuration.
If the last heartbeat is longer than the session timout, the server.
will be considered as expired and will be terminated by DSMC.```
*/
func (a *Client) ServerHeartbeat(params *ServerHeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHeartbeatAccepted, *ServerHeartbeatBadRequest, *ServerHeartbeatUnauthorized, *ServerHeartbeatNotFound, *ServerHeartbeatInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewServerHeartbeatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ServerHeartbeat",
		Method:             "PUT",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/heartbeat",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ServerHeartbeatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ServerHeartbeatAccepted:
		return v, nil, nil, nil, nil, nil

	case *ServerHeartbeatBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ServerHeartbeatUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *ServerHeartbeatNotFound:
		return nil, nil, nil, v, nil, nil

	case *ServerHeartbeatInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ServerHeartbeatShort server heartbeat
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by dedicated server
which already has claimed to extend its lifetime.
DS should call this periodically after it claimed.
The timeframe between 2 heartbeat call should be smaller than
the session timout in the deployment configuration.
If the last heartbeat is longer than the session timout, the server.
will be considered as expired and will be terminated by DSMC.```
*/
func (a *Client) ServerHeartbeatShort(params *ServerHeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHeartbeatAccepted, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewServerHeartbeatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ServerHeartbeat",
		Method:             "PUT",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/heartbeat",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ServerHeartbeatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ServerHeartbeatAccepted:
		return v, nil
	case *ServerHeartbeatBadRequest:
		return nil, v
	case *ServerHeartbeatUnauthorized:
		return nil, v
	case *ServerHeartbeatNotFound:
		return nil, v
	case *ServerHeartbeatInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeregisterLocalServerShort instead.

DeregisterLocalServer deregister local ds
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by local dedicated server
to let DSM know that it is shutting down.

Calling this will remove the server records from DB.```
*/
func (a *Client) DeregisterLocalServer(params *DeregisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeregisterLocalServerNoContent, *DeregisterLocalServerBadRequest, *DeregisterLocalServerUnauthorized, *DeregisterLocalServerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeregisterLocalServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeregisterLocalServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/local/deregister",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeregisterLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeregisterLocalServerNoContent:
		return v, nil, nil, nil, nil

	case *DeregisterLocalServerBadRequest:
		return nil, v, nil, nil, nil

	case *DeregisterLocalServerUnauthorized:
		return nil, nil, v, nil, nil

	case *DeregisterLocalServerInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeregisterLocalServerShort deregister local ds
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by local dedicated server
to let DSM know that it is shutting down.

Calling this will remove the server records from DB.```
*/
func (a *Client) DeregisterLocalServerShort(params *DeregisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeregisterLocalServerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeregisterLocalServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeregisterLocalServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/local/deregister",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeregisterLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeregisterLocalServerNoContent:
		return v, nil
	case *DeregisterLocalServerBadRequest:
		return nil, v
	case *DeregisterLocalServerUnauthorized:
		return nil, v
	case *DeregisterLocalServerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RegisterLocalServerShort instead.

RegisterLocalServer register a local ds
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

Use the alternative GET of the same endpoint to upgrade DS connection to DSM via websocket.

This endpoint is intended to be called by local dedicated server to let DSM know that it is ready for use.
Use local DS only for development purposes since DSM wouldn't be able to properly manage local DS in production.
This MUST be called by DS after it is ready to accept match data and incoming client connections.

Upon successfully calling this endpoint, the dedicated
server is listed under READY local servers.```
*/
func (a *Client) RegisterLocalServer(params *RegisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterLocalServerOK, *RegisterLocalServerBadRequest, *RegisterLocalServerUnauthorized, *RegisterLocalServerConflict, *RegisterLocalServerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRegisterLocalServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RegisterLocalServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/local/register",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RegisterLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RegisterLocalServerOK:
		return v, nil, nil, nil, nil, nil

	case *RegisterLocalServerBadRequest:
		return nil, v, nil, nil, nil, nil

	case *RegisterLocalServerUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *RegisterLocalServerConflict:
		return nil, nil, nil, v, nil, nil

	case *RegisterLocalServerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RegisterLocalServerShort register a local ds
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

Use the alternative GET of the same endpoint to upgrade DS connection to DSM via websocket.

This endpoint is intended to be called by local dedicated server to let DSM know that it is ready for use.
Use local DS only for development purposes since DSM wouldn't be able to properly manage local DS in production.
This MUST be called by DS after it is ready to accept match data and incoming client connections.

Upon successfully calling this endpoint, the dedicated
server is listed under READY local servers.```
*/
func (a *Client) RegisterLocalServerShort(params *RegisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterLocalServerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRegisterLocalServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RegisterLocalServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/local/register",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RegisterLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RegisterLocalServerOK:
		return v, nil
	case *RegisterLocalServerBadRequest:
		return nil, v
	case *RegisterLocalServerUnauthorized:
		return nil, v
	case *RegisterLocalServerConflict:
		return nil, v
	case *RegisterLocalServerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RegisterServerShort instead.

RegisterServer register a ds
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by dedicated server to let DSM know that it is ready for use.
This MUST be called by DS after it is ready to accept match data and incoming client connections.

Upon successfully calling this endpoint, the dedicated
server is listed under READY servers.```
*/
func (a *Client) RegisterServer(params *RegisterServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterServerOK, *RegisterServerBadRequest, *RegisterServerUnauthorized, *RegisterServerNotFound, *RegisterServerConflict, *RegisterServerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRegisterServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RegisterServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/register",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RegisterServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RegisterServerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *RegisterServerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *RegisterServerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *RegisterServerNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *RegisterServerConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *RegisterServerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RegisterServerShort register a ds
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by dedicated server to let DSM know that it is ready for use.
This MUST be called by DS after it is ready to accept match data and incoming client connections.

Upon successfully calling this endpoint, the dedicated
server is listed under READY servers.```
*/
func (a *Client) RegisterServerShort(params *RegisterServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterServerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRegisterServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RegisterServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/register",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RegisterServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RegisterServerOK:
		return v, nil
	case *RegisterServerBadRequest:
		return nil, v
	case *RegisterServerUnauthorized:
		return nil, v
	case *RegisterServerNotFound:
		return nil, v
	case *RegisterServerConflict:
		return nil, v
	case *RegisterServerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ShutdownServerShort instead.

ShutdownServer mark a ds is shutting down
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

Required scope: social

This endpoint is intended to be called by dedicated server to let DSM know that it is shutting down. Calling this will remove the server and session records from DB.Set 'kill_me' in request to 'true' if the DS cannot shut itself down.
*/
func (a *Client) ShutdownServer(params *ShutdownServerParams, authInfo runtime.ClientAuthInfoWriter) (*ShutdownServerNoContent, *ShutdownServerBadRequest, *ShutdownServerUnauthorized, *ShutdownServerNotFound, *ShutdownServerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewShutdownServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ShutdownServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/shutdown",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ShutdownServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ShutdownServerNoContent:
		return v, nil, nil, nil, nil, nil

	case *ShutdownServerBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ShutdownServerUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *ShutdownServerNotFound:
		return nil, nil, nil, v, nil, nil

	case *ShutdownServerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ShutdownServerShort mark a ds is shutting down
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

Required scope: social

This endpoint is intended to be called by dedicated server to let DSM know that it is shutting down. Calling this will remove the server and session records from DB.Set 'kill_me' in request to 'true' if the DS cannot shut itself down.
*/
func (a *Client) ShutdownServerShort(params *ShutdownServerParams, authInfo runtime.ClientAuthInfoWriter) (*ShutdownServerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewShutdownServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ShutdownServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/shutdown",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ShutdownServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ShutdownServerNoContent:
		return v, nil
	case *ShutdownServerBadRequest:
		return nil, v
	case *ShutdownServerUnauthorized:
		return nil, v
	case *ShutdownServerNotFound:
		return nil, v
	case *ShutdownServerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetServerSessionTimeoutShort instead.

GetServerSessionTimeout get the session timeout that will be used for the server
```
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]
Required scope: social

This endpoint is intended to be called by dedicated server
to get the session timeout that will be used for the DS.
DS will use this session timeout to make sure it regularly make heartbeat
call to the DSMC, before the session timeout.```
*/
func (a *Client) GetServerSessionTimeout(params *GetServerSessionTimeoutParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionTimeoutOK, *GetServerSessionTimeoutBadRequest, *GetServerSessionTimeoutUnauthorized, *GetServerSessionTimeoutNotFound, *GetServerSessionTimeoutInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerSessionTimeoutParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetServerSessionTimeout",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerSessionTimeoutReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetServerSessionTimeoutOK:
		return v, nil, nil, nil, nil, nil

	case *GetServerSessionTimeoutBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetServerSessionTimeoutUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetServerSessionTimeoutNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetServerSessionTimeoutInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetServerSessionTimeoutShort get the session timeout that will be used for the server
```
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]
Required scope: social

This endpoint is intended to be called by dedicated server
to get the session timeout that will be used for the DS.
DS will use this session timeout to make sure it regularly make heartbeat
call to the DSMC, before the session timeout.```
*/
func (a *Client) GetServerSessionTimeoutShort(params *GetServerSessionTimeoutParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionTimeoutOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerSessionTimeoutParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetServerSessionTimeout",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerSessionTimeoutReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServerSessionTimeoutOK:
		return v, nil
	case *GetServerSessionTimeoutBadRequest:
		return nil, v
	case *GetServerSessionTimeoutUnauthorized:
		return nil, v
	case *GetServerSessionTimeoutNotFound:
		return nil, v
	case *GetServerSessionTimeoutInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetServerSessionShort instead.

GetServerSession get session id
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by dedicated server
to query its session ID.
DS should call this when it first receive player connection,
to see if it is actually claimed```
*/
func (a *Client) GetServerSession(params *GetServerSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionOK, *GetServerSessionBadRequest, *GetServerSessionUnauthorized, *GetServerSessionNotFound, *GetServerSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetServerSession",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/{podName}/session",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetServerSessionOK:
		return v, nil, nil, nil, nil, nil

	case *GetServerSessionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetServerSessionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetServerSessionNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetServerSessionInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetServerSessionShort get session id
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by dedicated server
to query its session ID.
DS should call this when it first receive player connection,
to see if it is actually claimed```
*/
func (a *Client) GetServerSessionShort(params *GetServerSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetServerSession",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/{podName}/session",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServerSessionOK:
		return v, nil
	case *GetServerSessionBadRequest:
		return nil, v
	case *GetServerSessionUnauthorized:
		return nil, v
	case *GetServerSessionNotFound:
		return nil, v
	case *GetServerSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
