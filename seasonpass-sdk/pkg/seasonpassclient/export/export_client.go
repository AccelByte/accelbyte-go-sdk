// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package export

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new export API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for export API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ExportSeason(params *ExportSeasonParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportSeasonOK, *ExportSeasonBadRequest, error)
	ExportSeasonShort(params *ExportSeasonParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportSeasonOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ExportSeasonShort instead.

ExportSeason export season service data
This API is used to export all of season service data files with csv format.
*/
func (a *Client) ExportSeason(params *ExportSeasonParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportSeasonOK, *ExportSeasonBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespace/{namespace}/export",
		ProducesMediaTypes: []string{"application/octet-stream"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportSeasonReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ExportSeasonOK:
		return v, nil, nil

	case *ExportSeasonBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportSeasonShort export season service data
This API is used to export all of season service data files with csv format.
*/
func (a *Client) ExportSeasonShort(params *ExportSeasonParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespace/{namespace}/export",
		ProducesMediaTypes: []string{"application/octet-stream"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportSeasonReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportSeasonOK:
		return v, nil
	case *ExportSeasonBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
