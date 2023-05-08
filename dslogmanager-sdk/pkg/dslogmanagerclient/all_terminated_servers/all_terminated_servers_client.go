// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package all_terminated_servers

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new all terminated servers API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for all terminated servers API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	BatchDownloadServerLogs(params *BatchDownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*BatchDownloadServerLogsOK, *BatchDownloadServerLogsBadRequest, *BatchDownloadServerLogsInternalServerError, error)
	BatchDownloadServerLogsShort(params *BatchDownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*BatchDownloadServerLogsOK, error)
	ListAllTerminatedServers(params *ListAllTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllTerminatedServersOK, *ListAllTerminatedServersBadRequest, *ListAllTerminatedServersUnauthorized, *ListAllTerminatedServersInternalServerError, error)
	ListAllTerminatedServersShort(params *ListAllTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllTerminatedServersOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use BatchDownloadServerLogsShort instead.

BatchDownloadServerLogs batch download dedicated server log files
Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

Required scope: social

This endpoint will download dedicated server's log file (.zip).
*/
func (a *Client) BatchDownloadServerLogs(params *BatchDownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*BatchDownloadServerLogsOK, *BatchDownloadServerLogsBadRequest, *BatchDownloadServerLogsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBatchDownloadServerLogsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "batchDownloadServerLogs",
		Method:             "POST",
		PathPattern:        "/dslogmanager/servers/logs/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BatchDownloadServerLogsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BatchDownloadServerLogsOK:
		return v, nil, nil, nil

	case *BatchDownloadServerLogsBadRequest:
		return nil, v, nil, nil

	case *BatchDownloadServerLogsInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BatchDownloadServerLogsShort batch download dedicated server log files
Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

Required scope: social

This endpoint will download dedicated server's log file (.zip).
*/
func (a *Client) BatchDownloadServerLogsShort(params *BatchDownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*BatchDownloadServerLogsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBatchDownloadServerLogsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "batchDownloadServerLogs",
		Method:             "POST",
		PathPattern:        "/dslogmanager/servers/logs/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BatchDownloadServerLogsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BatchDownloadServerLogsOK:
		return v, nil
	case *BatchDownloadServerLogsBadRequest:
		return nil, v
	case *BatchDownloadServerLogsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListAllTerminatedServersShort instead.

ListAllTerminatedServers retrieve all terminated servers
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

This endpoint used to retrieve terminated servers in all namespace
```
*/
func (a *Client) ListAllTerminatedServers(params *ListAllTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllTerminatedServersOK, *ListAllTerminatedServersBadRequest, *ListAllTerminatedServersUnauthorized, *ListAllTerminatedServersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAllTerminatedServersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listAllTerminatedServers",
		Method:             "GET",
		PathPattern:        "/dslogmanager/servers/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAllTerminatedServersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListAllTerminatedServersOK:
		return v, nil, nil, nil, nil

	case *ListAllTerminatedServersBadRequest:
		return nil, v, nil, nil, nil

	case *ListAllTerminatedServersUnauthorized:
		return nil, nil, v, nil, nil

	case *ListAllTerminatedServersInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListAllTerminatedServersShort retrieve all terminated servers
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

This endpoint used to retrieve terminated servers in all namespace
```
*/
func (a *Client) ListAllTerminatedServersShort(params *ListAllTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllTerminatedServersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAllTerminatedServersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listAllTerminatedServers",
		Method:             "GET",
		PathPattern:        "/dslogmanager/servers/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAllTerminatedServersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListAllTerminatedServersOK:
		return v, nil
	case *ListAllTerminatedServersBadRequest:
		return nil, v
	case *ListAllTerminatedServersUnauthorized:
		return nil, v
	case *ListAllTerminatedServersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
