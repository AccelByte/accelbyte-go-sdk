// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package extend_files

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new extend files API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for extend files API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetExtendFile(params *GetExtendFileParams, authInfo runtime.ClientAuthInfoWriter) (*GetExtendFileOK, *GetExtendFileBadRequest, *GetExtendFileNotFound, *GetExtendFileBadGateway, error)
	GetExtendFileShort(params *GetExtendFileParams, authInfo runtime.ClientAuthInfoWriter) (*GetExtendFileOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetExtendFileShort instead.

GetExtendFile retrieve extend hosted static files
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:FILES [READ]`

Serves static files provided for extend features, for example: serving App UI files. Files are served with immutable caching headers.
*/
func (a *Client) GetExtendFile(params *GetExtendFileParams, authInfo runtime.ClientAuthInfoWriter) (*GetExtendFileOK, *GetExtendFileBadRequest, *GetExtendFileNotFound, *GetExtendFileBadGateway, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetExtendFileParams()
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
		ID:                 "GetExtendFile",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/files/{filePath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetExtendFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetExtendFileOK:
		return v, nil, nil, nil, nil

	case *GetExtendFileBadRequest:
		return nil, v, nil, nil, nil

	case *GetExtendFileNotFound:
		return nil, nil, v, nil, nil

	case *GetExtendFileBadGateway:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetExtendFileShort retrieve extend hosted static files
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:FILES [READ]`

Serves static files provided for extend features, for example: serving App UI files. Files are served with immutable caching headers.
*/
func (a *Client) GetExtendFileShort(params *GetExtendFileParams, authInfo runtime.ClientAuthInfoWriter) (*GetExtendFileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetExtendFileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetExtendFile",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/files/{filePath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetExtendFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetExtendFileOK:
		return v, nil
	case *GetExtendFileBadRequest:
		return nil, v
	case *GetExtendFileNotFound:
		return nil, v
	case *GetExtendFileBadGateway:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
