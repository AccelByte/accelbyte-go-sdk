// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package public_download_count

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public download count API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public download count API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AddDownloadCount(params *AddDownloadCountParams, authInfo runtime.ClientAuthInfoWriter) (*AddDownloadCountOK, *AddDownloadCountBadRequest, *AddDownloadCountUnauthorized, *AddDownloadCountNotFound, *AddDownloadCountInternalServerError, error)
	AddDownloadCountShort(params *AddDownloadCountParams, authInfo runtime.ClientAuthInfoWriter) (*AddDownloadCountOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AddDownloadCountShort instead.

AddDownloadCount add unique download count to a content
Requires valid user token
*/
func (a *Client) AddDownloadCount(params *AddDownloadCountParams, authInfo runtime.ClientAuthInfoWriter) (*AddDownloadCountOK, *AddDownloadCountBadRequest, *AddDownloadCountUnauthorized, *AddDownloadCountNotFound, *AddDownloadCountInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddDownloadCountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddDownloadCount",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/{contentId}/downloadcount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddDownloadCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddDownloadCountOK:
		return v, nil, nil, nil, nil, nil

	case *AddDownloadCountBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AddDownloadCountUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AddDownloadCountNotFound:
		return nil, nil, nil, v, nil, nil

	case *AddDownloadCountInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddDownloadCountShort add unique download count to a content
Requires valid user token
*/
func (a *Client) AddDownloadCountShort(params *AddDownloadCountParams, authInfo runtime.ClientAuthInfoWriter) (*AddDownloadCountOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddDownloadCountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddDownloadCount",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/{contentId}/downloadcount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddDownloadCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddDownloadCountOK:
		return v, nil
	case *AddDownloadCountBadRequest:
		return nil, v
	case *AddDownloadCountUnauthorized:
		return nil, v
	case *AddDownloadCountNotFound:
		return nil, v
	case *AddDownloadCountInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
