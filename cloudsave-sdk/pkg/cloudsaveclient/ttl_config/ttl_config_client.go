// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package ttl_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new ttl config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for ttl config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DeleteGameBinaryRecordTTLConfig(params *DeleteGameBinaryRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordTTLConfigNoContent, *DeleteGameBinaryRecordTTLConfigBadRequest, *DeleteGameBinaryRecordTTLConfigUnauthorized, *DeleteGameBinaryRecordTTLConfigForbidden, *DeleteGameBinaryRecordTTLConfigNotFound, *DeleteGameBinaryRecordTTLConfigInternalServerError, error)
	DeleteGameBinaryRecordTTLConfigShort(params *DeleteGameBinaryRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordTTLConfigNoContent, error)
	DeleteGameRecordTTLConfig(params *DeleteGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordTTLConfigNoContent, *DeleteGameRecordTTLConfigBadRequest, *DeleteGameRecordTTLConfigUnauthorized, *DeleteGameRecordTTLConfigForbidden, *DeleteGameRecordTTLConfigNotFound, *DeleteGameRecordTTLConfigInternalServerError, error)
	DeleteGameRecordTTLConfigShort(params *DeleteGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordTTLConfigNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use DeleteGameBinaryRecordTTLConfigShort instead.

DeleteGameBinaryRecordTTLConfig delete game binary record ttl config
## Description

This endpoints will delete the ttl config of the game binary record
*/
func (a *Client) DeleteGameBinaryRecordTTLConfig(params *DeleteGameBinaryRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordTTLConfigNoContent, *DeleteGameBinaryRecordTTLConfigBadRequest, *DeleteGameBinaryRecordTTLConfigUnauthorized, *DeleteGameBinaryRecordTTLConfigForbidden, *DeleteGameBinaryRecordTTLConfigNotFound, *DeleteGameBinaryRecordTTLConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameBinaryRecordTTLConfigParams()
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
		ID:                 "deleteGameBinaryRecordTTLConfig",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameBinaryRecordTTLConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGameBinaryRecordTTLConfigNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteGameBinaryRecordTTLConfigBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteGameBinaryRecordTTLConfigUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteGameBinaryRecordTTLConfigForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteGameBinaryRecordTTLConfigNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteGameBinaryRecordTTLConfigInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameBinaryRecordTTLConfigShort delete game binary record ttl config
## Description

This endpoints will delete the ttl config of the game binary record
*/
func (a *Client) DeleteGameBinaryRecordTTLConfigShort(params *DeleteGameBinaryRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordTTLConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameBinaryRecordTTLConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGameBinaryRecordTTLConfig",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameBinaryRecordTTLConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGameBinaryRecordTTLConfigNoContent:
		return v, nil
	case *DeleteGameBinaryRecordTTLConfigBadRequest:
		return nil, v
	case *DeleteGameBinaryRecordTTLConfigUnauthorized:
		return nil, v
	case *DeleteGameBinaryRecordTTLConfigForbidden:
		return nil, v
	case *DeleteGameBinaryRecordTTLConfigNotFound:
		return nil, v
	case *DeleteGameBinaryRecordTTLConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGameRecordTTLConfigShort instead.

DeleteGameRecordTTLConfig delete game record ttl config
## Description

This endpoints will delete the ttl config of the game record
*/
func (a *Client) DeleteGameRecordTTLConfig(params *DeleteGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordTTLConfigNoContent, *DeleteGameRecordTTLConfigBadRequest, *DeleteGameRecordTTLConfigUnauthorized, *DeleteGameRecordTTLConfigForbidden, *DeleteGameRecordTTLConfigNotFound, *DeleteGameRecordTTLConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameRecordTTLConfigParams()
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
		ID:                 "deleteGameRecordTTLConfig",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameRecordTTLConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGameRecordTTLConfigNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteGameRecordTTLConfigBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteGameRecordTTLConfigUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteGameRecordTTLConfigForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteGameRecordTTLConfigNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteGameRecordTTLConfigInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameRecordTTLConfigShort delete game record ttl config
## Description

This endpoints will delete the ttl config of the game record
*/
func (a *Client) DeleteGameRecordTTLConfigShort(params *DeleteGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordTTLConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameRecordTTLConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGameRecordTTLConfig",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameRecordTTLConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGameRecordTTLConfigNoContent:
		return v, nil
	case *DeleteGameRecordTTLConfigBadRequest:
		return nil, v
	case *DeleteGameRecordTTLConfigUnauthorized:
		return nil, v
	case *DeleteGameRecordTTLConfigForbidden:
		return nil, v
	case *DeleteGameRecordTTLConfigNotFound:
		return nil, v
	case *DeleteGameRecordTTLConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
