// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetConfigs(params *AdminGetConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigsOK, *AdminGetConfigsBadRequest, *AdminGetConfigsUnauthorized, *AdminGetConfigsForbidden, *AdminGetConfigsInternalServerError, error)
	AdminGetConfigsShort(params *AdminGetConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigsOK, error)
	AdminUpdateConfig(params *AdminUpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigCreated, *AdminUpdateConfigBadRequest, *AdminUpdateConfigUnauthorized, *AdminUpdateConfigForbidden, *AdminUpdateConfigInternalServerError, error)
	AdminUpdateConfigShort(params *AdminUpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigCreated, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetConfigsShort instead.

AdminGetConfigs get configs
Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [READ]
*/
func (a *Client) AdminGetConfigs(params *AdminGetConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigsOK, *AdminGetConfigsBadRequest, *AdminGetConfigsUnauthorized, *AdminGetConfigsForbidden, *AdminGetConfigsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigsParams()
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
		ID:                 "AdminGetConfigs",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetConfigsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetConfigsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetConfigsForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetConfigsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigsShort get configs
Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [READ]
*/
func (a *Client) AdminGetConfigsShort(params *AdminGetConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetConfigs",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigsOK:
		return v, nil
	case *AdminGetConfigsBadRequest:
		return nil, v
	case *AdminGetConfigsUnauthorized:
		return nil, v
	case *AdminGetConfigsForbidden:
		return nil, v
	case *AdminGetConfigsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateConfigShort instead.

AdminUpdateConfig update config
Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [UPDATE].
It will create a new config if the key doesn't exist.
Allowed key value:
- contentReview : enabled , disabled
*/
func (a *Client) AdminUpdateConfig(params *AdminUpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigCreated, *AdminUpdateConfigBadRequest, *AdminUpdateConfigUnauthorized, *AdminUpdateConfigForbidden, *AdminUpdateConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigParams()
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
		ID:                 "AdminUpdateConfig",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/configs/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigCreated:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateConfigForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateConfigInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigShort update config
Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [UPDATE].
It will create a new config if the key doesn't exist.
Allowed key value:
- contentReview : enabled , disabled
*/
func (a *Client) AdminUpdateConfigShort(params *AdminUpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateConfig",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/configs/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigCreated:
		return v, nil
	case *AdminUpdateConfigBadRequest:
		return nil, v
	case *AdminUpdateConfigUnauthorized:
		return nil, v
	case *AdminUpdateConfigForbidden:
		return nil, v
	case *AdminUpdateConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
