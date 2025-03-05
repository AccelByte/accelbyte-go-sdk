// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetEnvConfig(params *AdminGetEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetEnvConfigOK, *AdminGetEnvConfigUnauthorized, *AdminGetEnvConfigForbidden, error)
	AdminGetEnvConfigShort(params *AdminGetEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetEnvConfigOK, error)
	AdminPatchUpdateEnvConfig(params *AdminPatchUpdateEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateEnvConfigOK, *AdminPatchUpdateEnvConfigUnauthorized, *AdminPatchUpdateEnvConfigForbidden, error)
	AdminPatchUpdateEnvConfigShort(params *AdminPatchUpdateEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateEnvConfigOK, error)
	AdminGetLogConfig(params *AdminGetLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLogConfigOK, *AdminGetLogConfigUnauthorized, *AdminGetLogConfigForbidden, error)
	AdminGetLogConfigShort(params *AdminGetLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLogConfigOK, error)
	AdminPatchUpdateLogConfig(params *AdminPatchUpdateLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateLogConfigOK, *AdminPatchUpdateLogConfigUnauthorized, *AdminPatchUpdateLogConfigForbidden, error)
	AdminPatchUpdateLogConfigShort(params *AdminPatchUpdateLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateLogConfigOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetEnvConfigShort instead.

AdminGetEnvConfig get runtime environment variable configuration
Get Runtime Environment Configuration.
*/
func (a *Client) AdminGetEnvConfig(params *AdminGetEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetEnvConfigOK, *AdminGetEnvConfigUnauthorized, *AdminGetEnvConfigForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetEnvConfigParams()
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
		ID:                 "adminGetEnvConfig",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/config/env",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetEnvConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetEnvConfigOK:
		return v, nil, nil, nil

	case *AdminGetEnvConfigUnauthorized:
		return nil, v, nil, nil

	case *AdminGetEnvConfigForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetEnvConfigShort get runtime environment variable configuration
Get Runtime Environment Configuration.
*/
func (a *Client) AdminGetEnvConfigShort(params *AdminGetEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetEnvConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetEnvConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetEnvConfig",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/config/env",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetEnvConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetEnvConfigOK:
		return v, nil
	case *AdminGetEnvConfigUnauthorized:
		return nil, v
	case *AdminGetEnvConfigForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPatchUpdateEnvConfigShort instead.

AdminPatchUpdateEnvConfig patch update runtime environment variable configuration
Update Runtime Environment Variable Configuration.
*/
func (a *Client) AdminPatchUpdateEnvConfig(params *AdminPatchUpdateEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateEnvConfigOK, *AdminPatchUpdateEnvConfigUnauthorized, *AdminPatchUpdateEnvConfigForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPatchUpdateEnvConfigParams()
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
		ID:                 "adminPatchUpdateEnvConfig",
		Method:             "PATCH",
		PathPattern:        "/sessionhistory/v1/admin/config/env",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPatchUpdateEnvConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPatchUpdateEnvConfigOK:
		return v, nil, nil, nil

	case *AdminPatchUpdateEnvConfigUnauthorized:
		return nil, v, nil, nil

	case *AdminPatchUpdateEnvConfigForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPatchUpdateEnvConfigShort patch update runtime environment variable configuration
Update Runtime Environment Variable Configuration.
*/
func (a *Client) AdminPatchUpdateEnvConfigShort(params *AdminPatchUpdateEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateEnvConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPatchUpdateEnvConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPatchUpdateEnvConfig",
		Method:             "PATCH",
		PathPattern:        "/sessionhistory/v1/admin/config/env",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPatchUpdateEnvConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPatchUpdateEnvConfigOK:
		return v, nil
	case *AdminPatchUpdateEnvConfigUnauthorized:
		return nil, v
	case *AdminPatchUpdateEnvConfigForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetLogConfigShort instead.

AdminGetLogConfig get log configuration
Get Log Configuration.
*/
func (a *Client) AdminGetLogConfig(params *AdminGetLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLogConfigOK, *AdminGetLogConfigUnauthorized, *AdminGetLogConfigForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetLogConfigParams()
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
		ID:                 "adminGetLogConfig",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/config/log",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetLogConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetLogConfigOK:
		return v, nil, nil, nil

	case *AdminGetLogConfigUnauthorized:
		return nil, v, nil, nil

	case *AdminGetLogConfigForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetLogConfigShort get log configuration
Get Log Configuration.
*/
func (a *Client) AdminGetLogConfigShort(params *AdminGetLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLogConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetLogConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetLogConfig",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/config/log",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetLogConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetLogConfigOK:
		return v, nil
	case *AdminGetLogConfigUnauthorized:
		return nil, v
	case *AdminGetLogConfigForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPatchUpdateLogConfigShort instead.

AdminPatchUpdateLogConfig patch update log configuration
Update Log Configuration.
*/
func (a *Client) AdminPatchUpdateLogConfig(params *AdminPatchUpdateLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateLogConfigOK, *AdminPatchUpdateLogConfigUnauthorized, *AdminPatchUpdateLogConfigForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPatchUpdateLogConfigParams()
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
		ID:                 "adminPatchUpdateLogConfig",
		Method:             "PATCH",
		PathPattern:        "/sessionhistory/v1/admin/config/log",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPatchUpdateLogConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPatchUpdateLogConfigOK:
		return v, nil, nil, nil

	case *AdminPatchUpdateLogConfigUnauthorized:
		return nil, v, nil, nil

	case *AdminPatchUpdateLogConfigForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPatchUpdateLogConfigShort patch update log configuration
Update Log Configuration.
*/
func (a *Client) AdminPatchUpdateLogConfigShort(params *AdminPatchUpdateLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateLogConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPatchUpdateLogConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPatchUpdateLogConfig",
		Method:             "PATCH",
		PathPattern:        "/sessionhistory/v1/admin/config/log",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPatchUpdateLogConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPatchUpdateLogConfigOK:
		return v, nil
	case *AdminPatchUpdateLogConfigUnauthorized:
		return nil, v
	case *AdminPatchUpdateLogConfigForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
