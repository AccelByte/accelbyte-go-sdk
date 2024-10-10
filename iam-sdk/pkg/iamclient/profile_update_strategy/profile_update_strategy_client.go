// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package profile_update_strategy

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new profile update strategy API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for profile update strategy API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetProfileUpdateStrategyV3(params *AdminGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfileUpdateStrategyV3OK, *AdminGetProfileUpdateStrategyV3BadRequest, *AdminGetProfileUpdateStrategyV3Unauthorized, *AdminGetProfileUpdateStrategyV3Forbidden, *AdminGetProfileUpdateStrategyV3InternalServerError, error)
	AdminGetProfileUpdateStrategyV3Short(params *AdminGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfileUpdateStrategyV3OK, error)
	AdminUpdateProfileUpdateStrategyV3(params *AdminUpdateProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfileUpdateStrategyV3OK, *AdminUpdateProfileUpdateStrategyV3BadRequest, *AdminUpdateProfileUpdateStrategyV3Unauthorized, *AdminUpdateProfileUpdateStrategyV3Forbidden, *AdminUpdateProfileUpdateStrategyV3InternalServerError, error)
	AdminUpdateProfileUpdateStrategyV3Short(params *AdminUpdateProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfileUpdateStrategyV3OK, error)
	PublicGetProfileUpdateStrategyV3(params *PublicGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileUpdateStrategyV3OK, *PublicGetProfileUpdateStrategyV3BadRequest, *PublicGetProfileUpdateStrategyV3Unauthorized, *PublicGetProfileUpdateStrategyV3Forbidden, *PublicGetProfileUpdateStrategyV3InternalServerError, error)
	PublicGetProfileUpdateStrategyV3Short(params *PublicGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileUpdateStrategyV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetProfileUpdateStrategyV3Short instead.

AdminGetProfileUpdateStrategyV3 admin get profile update strategy by namespace and field.
This API is for admin to get profile update strategy by namespace and field.
Note: If the config is not found, this API will return a config with unlimited.
*/
func (a *Client) AdminGetProfileUpdateStrategyV3(params *AdminGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfileUpdateStrategyV3OK, *AdminGetProfileUpdateStrategyV3BadRequest, *AdminGetProfileUpdateStrategyV3Unauthorized, *AdminGetProfileUpdateStrategyV3Forbidden, *AdminGetProfileUpdateStrategyV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfileUpdateStrategyV3Params()
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
		ID:                 "AdminGetProfileUpdateStrategyV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfileUpdateStrategyV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfileUpdateStrategyV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetProfileUpdateStrategyV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetProfileUpdateStrategyV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetProfileUpdateStrategyV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetProfileUpdateStrategyV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetProfileUpdateStrategyV3Short admin get profile update strategy by namespace and field.
This API is for admin to get profile update strategy by namespace and field.
Note: If the config is not found, this API will return a config with unlimited.
*/
func (a *Client) AdminGetProfileUpdateStrategyV3Short(params *AdminGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfileUpdateStrategyV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfileUpdateStrategyV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetProfileUpdateStrategyV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfileUpdateStrategyV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfileUpdateStrategyV3OK:
		return v, nil
	case *AdminGetProfileUpdateStrategyV3BadRequest:
		return nil, v
	case *AdminGetProfileUpdateStrategyV3Unauthorized:
		return nil, v
	case *AdminGetProfileUpdateStrategyV3Forbidden:
		return nil, v
	case *AdminGetProfileUpdateStrategyV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateProfileUpdateStrategyV3Short instead.

AdminUpdateProfileUpdateStrategyV3 admin update profile update strategy by namespace and field.
This API includes upsert behavior.
Note:
1. field 'config'' in request body will only work when type is limited
*/
func (a *Client) AdminUpdateProfileUpdateStrategyV3(params *AdminUpdateProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfileUpdateStrategyV3OK, *AdminUpdateProfileUpdateStrategyV3BadRequest, *AdminUpdateProfileUpdateStrategyV3Unauthorized, *AdminUpdateProfileUpdateStrategyV3Forbidden, *AdminUpdateProfileUpdateStrategyV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateProfileUpdateStrategyV3Params()
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
		ID:                 "AdminUpdateProfileUpdateStrategyV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateProfileUpdateStrategyV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateProfileUpdateStrategyV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateProfileUpdateStrategyV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateProfileUpdateStrategyV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateProfileUpdateStrategyV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateProfileUpdateStrategyV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateProfileUpdateStrategyV3Short admin update profile update strategy by namespace and field.
This API includes upsert behavior.
Note:
1. field 'config'' in request body will only work when type is limited
*/
func (a *Client) AdminUpdateProfileUpdateStrategyV3Short(params *AdminUpdateProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfileUpdateStrategyV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateProfileUpdateStrategyV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateProfileUpdateStrategyV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateProfileUpdateStrategyV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateProfileUpdateStrategyV3OK:
		return v, nil
	case *AdminUpdateProfileUpdateStrategyV3BadRequest:
		return nil, v
	case *AdminUpdateProfileUpdateStrategyV3Unauthorized:
		return nil, v
	case *AdminUpdateProfileUpdateStrategyV3Forbidden:
		return nil, v
	case *AdminUpdateProfileUpdateStrategyV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetProfileUpdateStrategyV3Short instead.

PublicGetProfileUpdateStrategyV3 public get profile update strategy by namespace and field.
This API is for public user to get profile update strategy by namespace and field.
Note: If the config is not found, this API will return a config with unlimited.
*/
func (a *Client) PublicGetProfileUpdateStrategyV3(params *PublicGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileUpdateStrategyV3OK, *PublicGetProfileUpdateStrategyV3BadRequest, *PublicGetProfileUpdateStrategyV3Unauthorized, *PublicGetProfileUpdateStrategyV3Forbidden, *PublicGetProfileUpdateStrategyV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetProfileUpdateStrategyV3Params()
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
		ID:                 "PublicGetProfileUpdateStrategyV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/profileUpdateStrategies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetProfileUpdateStrategyV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetProfileUpdateStrategyV3OK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetProfileUpdateStrategyV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetProfileUpdateStrategyV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetProfileUpdateStrategyV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicGetProfileUpdateStrategyV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetProfileUpdateStrategyV3Short public get profile update strategy by namespace and field.
This API is for public user to get profile update strategy by namespace and field.
Note: If the config is not found, this API will return a config with unlimited.
*/
func (a *Client) PublicGetProfileUpdateStrategyV3Short(params *PublicGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileUpdateStrategyV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetProfileUpdateStrategyV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetProfileUpdateStrategyV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/profileUpdateStrategies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetProfileUpdateStrategyV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetProfileUpdateStrategyV3OK:
		return v, nil
	case *PublicGetProfileUpdateStrategyV3BadRequest:
		return nil, v
	case *PublicGetProfileUpdateStrategyV3Unauthorized:
		return nil, v
	case *PublicGetProfileUpdateStrategyV3Forbidden:
		return nil, v
	case *PublicGetProfileUpdateStrategyV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
