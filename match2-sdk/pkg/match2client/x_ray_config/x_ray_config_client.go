// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package x_ray_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new x ray config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for x ray config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetXRayConfig(params *AdminGetXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetXRayConfigOK, *AdminGetXRayConfigUnauthorized, *AdminGetXRayConfigForbidden, *AdminGetXRayConfigInternalServerError, error)
	AdminGetXRayConfigShort(params *AdminGetXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetXRayConfigOK, error)
	AdminUpdateXRayConfig(params *AdminUpdateXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateXRayConfigNoContent, *AdminUpdateXRayConfigBadRequest, *AdminUpdateXRayConfigUnauthorized, *AdminUpdateXRayConfigForbidden, *AdminUpdateXRayConfigInternalServerError, error)
	AdminUpdateXRayConfigShort(params *AdminUpdateXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateXRayConfigNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetXRayConfigShort instead.

AdminGetXRayConfig admin get xray config
Get XRay config
*/
func (a *Client) AdminGetXRayConfig(params *AdminGetXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetXRayConfigOK, *AdminGetXRayConfigUnauthorized, *AdminGetXRayConfigForbidden, *AdminGetXRayConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetXRayConfigParams()
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
		ID:                 "adminGetXRayConfig",
		Method:             "GET",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/xray/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetXRayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetXRayConfigOK:
		return v, nil, nil, nil, nil

	case *AdminGetXRayConfigUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetXRayConfigForbidden:
		return nil, nil, v, nil, nil

	case *AdminGetXRayConfigInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetXRayConfigShort admin get xray config
Get XRay config
*/
func (a *Client) AdminGetXRayConfigShort(params *AdminGetXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetXRayConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetXRayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetXRayConfig",
		Method:             "GET",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/xray/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetXRayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetXRayConfigOK:
		return v, nil
	case *AdminGetXRayConfigUnauthorized:
		return nil, v
	case *AdminGetXRayConfigForbidden:
		return nil, v
	case *AdminGetXRayConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateXRayConfigShort instead.

AdminUpdateXRayConfig admin update xray config
Admin update XRay config
*/
func (a *Client) AdminUpdateXRayConfig(params *AdminUpdateXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateXRayConfigNoContent, *AdminUpdateXRayConfigBadRequest, *AdminUpdateXRayConfigUnauthorized, *AdminUpdateXRayConfigForbidden, *AdminUpdateXRayConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateXRayConfigParams()
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
		ID:                 "adminUpdateXRayConfig",
		Method:             "POST",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/xray/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateXRayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateXRayConfigNoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateXRayConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateXRayConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateXRayConfigForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateXRayConfigInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateXRayConfigShort admin update xray config
Admin update XRay config
*/
func (a *Client) AdminUpdateXRayConfigShort(params *AdminUpdateXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateXRayConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateXRayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateXRayConfig",
		Method:             "POST",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/xray/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateXRayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateXRayConfigNoContent:
		return v, nil
	case *AdminUpdateXRayConfigBadRequest:
		return nil, v
	case *AdminUpdateXRayConfigUnauthorized:
		return nil, v
	case *AdminUpdateXRayConfigForbidden:
		return nil, v
	case *AdminUpdateXRayConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
