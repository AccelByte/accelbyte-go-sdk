// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListServer(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerOK, *ListServerUnauthorized, *ListServerInternalServerError, error)
	ListServerShort(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerOK, error)
	CountServer(params *CountServerParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerOK, *CountServerUnauthorized, *CountServerInternalServerError, error)
	CountServerShort(params *CountServerParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerOK, error)
	CountServerDetailed(params *CountServerDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerDetailedOK, *CountServerDetailedUnauthorized, *CountServerDetailedInternalServerError, error)
	CountServerDetailedShort(params *CountServerDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerDetailedOK, error)
	ListLocalServer(params *ListLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListLocalServerOK, *ListLocalServerUnauthorized, *ListLocalServerInternalServerError, error)
	ListLocalServerShort(params *ListLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListLocalServerOK, error)
	DeleteLocalServer(params *DeleteLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalServerNoContent, *DeleteLocalServerUnauthorized, *DeleteLocalServerInternalServerError, error)
	DeleteLocalServerShort(params *DeleteLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalServerNoContent, error)
	GetServer(params *GetServerParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerOK, *GetServerUnauthorized, *GetServerNotFound, *GetServerInternalServerError, error)
	GetServerShort(params *GetServerParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerOK, error)
	DeleteServer(params *DeleteServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServerNoContent, *DeleteServerUnauthorized, *DeleteServerNotFound, *DeleteServerInternalServerError, error)
	DeleteServerShort(params *DeleteServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServerNoContent, error)
	ListSession(params *ListSessionParams, authInfo runtime.ClientAuthInfoWriter) (*ListSessionOK, *ListSessionUnauthorized, *ListSessionInternalServerError, error)
	ListSessionShort(params *ListSessionParams, authInfo runtime.ClientAuthInfoWriter) (*ListSessionOK, error)
	CountSession(params *CountSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CountSessionOK, *CountSessionUnauthorized, *CountSessionInternalServerError, error)
	CountSessionShort(params *CountSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CountSessionOK, error)
	DeleteSession(params *DeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionNoContent, *DeleteSessionUnauthorized, *DeleteSessionInternalServerError, error)
	DeleteSessionShort(params *DeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListServerShort instead.

ListServer list all managed servers in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint lists all of dedicated servers in a namespace managed by this service.

Parameter Offset and Count is Required
*/
func (a *Client) ListServer(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerOK, *ListServerUnauthorized, *ListServerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListServerOK:
		return v, nil, nil, nil

	case *ListServerUnauthorized:
		return nil, v, nil, nil

	case *ListServerInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListServerShort list all managed servers in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint lists all of dedicated servers in a namespace managed by this service.

Parameter Offset and Count is Required
*/
func (a *Client) ListServerShort(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListServerOK:
		return v, nil
	case *ListServerUnauthorized:
		return nil, v
	case *ListServerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CountServerShort instead.

CountServer count all managed servers
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint counts all of dedicated servers in a namespace managed by this service.
*/
func (a *Client) CountServer(params *CountServerParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerOK, *CountServerUnauthorized, *CountServerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CountServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/count",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CountServerOK:
		return v, nil, nil, nil

	case *CountServerUnauthorized:
		return nil, v, nil, nil

	case *CountServerInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CountServerShort count all managed servers
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint counts all of dedicated servers in a namespace managed by this service.
*/
func (a *Client) CountServerShort(params *CountServerParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CountServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/count",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CountServerOK:
		return v, nil
	case *CountServerUnauthorized:
		return nil, v
	case *CountServerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CountServerDetailedShort instead.

CountServerDetailed get detailed count of managed servers in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint counts all of dedicated servers in a region managed by this service.
*/
func (a *Client) CountServerDetailed(params *CountServerDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerDetailedOK, *CountServerDetailedUnauthorized, *CountServerDetailedInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountServerDetailedParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CountServerDetailed",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountServerDetailedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CountServerDetailedOK:
		return v, nil, nil, nil

	case *CountServerDetailedUnauthorized:
		return nil, v, nil, nil

	case *CountServerDetailedInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CountServerDetailedShort get detailed count of managed servers in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint counts all of dedicated servers in a region managed by this service.
*/
func (a *Client) CountServerDetailedShort(params *CountServerDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerDetailedOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountServerDetailedParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CountServerDetailed",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountServerDetailedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CountServerDetailedOK:
		return v, nil
	case *CountServerDetailedUnauthorized:
		return nil, v
	case *CountServerDetailedInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListLocalServerShort instead.

ListLocalServer list all managed local servers
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint lists all of local dedicated servers in a namespace managed by this service.
*/
func (a *Client) ListLocalServer(params *ListLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListLocalServerOK, *ListLocalServerUnauthorized, *ListLocalServerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListLocalServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListLocalServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/local",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListLocalServerOK:
		return v, nil, nil, nil

	case *ListLocalServerUnauthorized:
		return nil, v, nil, nil

	case *ListLocalServerInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListLocalServerShort list all managed local servers
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint lists all of local dedicated servers in a namespace managed by this service.
*/
func (a *Client) ListLocalServerShort(params *ListLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListLocalServerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListLocalServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListLocalServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/local",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListLocalServerOK:
		return v, nil
	case *ListLocalServerUnauthorized:
		return nil, v
	case *ListLocalServerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteLocalServerShort instead.

DeleteLocalServer delete a local server
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

Required scope: social

This endpoint deletes a specified local dedicated server from DB.
Note that DSM has no ability to shutdown local DS.
*/
func (a *Client) DeleteLocalServer(params *DeleteLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalServerNoContent, *DeleteLocalServerUnauthorized, *DeleteLocalServerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLocalServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteLocalServer",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/local/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteLocalServerNoContent:
		return v, nil, nil, nil

	case *DeleteLocalServerUnauthorized:
		return nil, v, nil, nil

	case *DeleteLocalServerInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteLocalServerShort delete a local server
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

Required scope: social

This endpoint deletes a specified local dedicated server from DB.
Note that DSM has no ability to shutdown local DS.
*/
func (a *Client) DeleteLocalServerShort(params *DeleteLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalServerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLocalServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteLocalServer",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/local/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteLocalServerNoContent:
		return v, nil
	case *DeleteLocalServerUnauthorized:
		return nil, v
	case *DeleteLocalServerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetServerShort instead.

GetServer query a server in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint queries a specified dedicated server from DB.
*/
func (a *Client) GetServer(params *GetServerParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerOK, *GetServerUnauthorized, *GetServerNotFound, *GetServerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/{podName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetServerOK:
		return v, nil, nil, nil, nil

	case *GetServerUnauthorized:
		return nil, v, nil, nil, nil

	case *GetServerNotFound:
		return nil, nil, v, nil, nil

	case *GetServerInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetServerShort query a server in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint queries a specified dedicated server from DB.
*/
func (a *Client) GetServerShort(params *GetServerParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/{podName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServerOK:
		return v, nil
	case *GetServerUnauthorized:
		return nil, v
	case *GetServerNotFound:
		return nil, v
	case *GetServerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteServerShort instead.

DeleteServer delete a server in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

Required scope: social

This endpoint deletes a specified dedicated server from DB and terminates the DS pod.
*/
func (a *Client) DeleteServer(params *DeleteServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServerNoContent, *DeleteServerUnauthorized, *DeleteServerNotFound, *DeleteServerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteServer",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/{podName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteServerNoContent:
		return v, nil, nil, nil, nil

	case *DeleteServerUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteServerNotFound:
		return nil, nil, v, nil, nil

	case *DeleteServerInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteServerShort delete a server in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

Required scope: social

This endpoint deletes a specified dedicated server from DB and terminates the DS pod.
*/
func (a *Client) DeleteServerShort(params *DeleteServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteServerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteServer",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/{podName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteServerNoContent:
		return v, nil
	case *DeleteServerUnauthorized:
		return nil, v
	case *DeleteServerNotFound:
		return nil, v
	case *DeleteServerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListSessionShort instead.

ListSession list all managed sessions in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

Required scope: social

This endpoint lists all of sessions in a namespace managed by this service.

Parameter Offset and Count is Required
*/
func (a *Client) ListSession(params *ListSessionParams, authInfo runtime.ClientAuthInfoWriter) (*ListSessionOK, *ListSessionUnauthorized, *ListSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListSession",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/sessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListSessionOK:
		return v, nil, nil, nil

	case *ListSessionUnauthorized:
		return nil, v, nil, nil

	case *ListSessionInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListSessionShort list all managed sessions in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

Required scope: social

This endpoint lists all of sessions in a namespace managed by this service.

Parameter Offset and Count is Required
*/
func (a *Client) ListSessionShort(params *ListSessionParams, authInfo runtime.ClientAuthInfoWriter) (*ListSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListSession",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/sessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListSessionOK:
		return v, nil
	case *ListSessionUnauthorized:
		return nil, v
	case *ListSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CountSessionShort instead.

CountSession count all sessions
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

Required scope: social

This endpoint count all of sessions in a namespace managed by this service.
*/
func (a *Client) CountSession(params *CountSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CountSessionOK, *CountSessionUnauthorized, *CountSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CountSession",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/sessions/count",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CountSessionOK:
		return v, nil, nil, nil

	case *CountSessionUnauthorized:
		return nil, v, nil, nil

	case *CountSessionInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CountSessionShort count all sessions
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

Required scope: social

This endpoint count all of sessions in a namespace managed by this service.
*/
func (a *Client) CountSessionShort(params *CountSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CountSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CountSession",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/sessions/count",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CountSessionOK:
		return v, nil
	case *CountSessionUnauthorized:
		return nil, v
	case *CountSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteSessionShort instead.

DeleteSession delete a session in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [DELETE]

Required scope: social

This endpoint deletes a specified session and its corresponding match result from DB.
*/
func (a *Client) DeleteSession(params *DeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionNoContent, *DeleteSessionUnauthorized, *DeleteSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteSession",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteSessionNoContent:
		return v, nil, nil, nil

	case *DeleteSessionUnauthorized:
		return nil, v, nil, nil

	case *DeleteSessionInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSessionShort delete a session in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [DELETE]

Required scope: social

This endpoint deletes a specified session and its corresponding match result from DB.
*/
func (a *Client) DeleteSessionShort(params *DeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteSession",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSessionNoContent:
		return v, nil
	case *DeleteSessionUnauthorized:
		return nil, v
	case *DeleteSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
