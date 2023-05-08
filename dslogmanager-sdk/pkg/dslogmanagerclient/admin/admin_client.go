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
	GetServerLogs(params *GetServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerLogsOK, *GetServerLogsBadRequest, *GetServerLogsUnauthorized, *GetServerLogsNotFound, *GetServerLogsInternalServerError, error)
	GetServerLogsShort(params *GetServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerLogsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetServerLogsShort instead.

GetServerLogs queries server logs
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint queries a specified dedicated server's logs.
*/
func (a *Client) GetServerLogs(params *GetServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerLogsOK, *GetServerLogsBadRequest, *GetServerLogsUnauthorized, *GetServerLogsNotFound, *GetServerLogsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerLogsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getServerLogs",
		Method:             "GET",
		PathPattern:        "/dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerLogsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetServerLogsOK:
		return v, nil, nil, nil, nil, nil

	case *GetServerLogsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetServerLogsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetServerLogsNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetServerLogsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetServerLogsShort queries server logs
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint queries a specified dedicated server's logs.
*/
func (a *Client) GetServerLogsShort(params *GetServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerLogsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerLogsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getServerLogs",
		Method:             "GET",
		PathPattern:        "/dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerLogsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServerLogsOK:
		return v, nil
	case *GetServerLogsBadRequest:
		return nil, v
	case *GetServerLogsUnauthorized:
		return nil, v
	case *GetServerLogsNotFound:
		return nil, v
	case *GetServerLogsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
