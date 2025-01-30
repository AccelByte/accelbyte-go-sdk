// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_v1

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin v1 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin v1 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetConfiguration(params *AdminGetConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationOK, *AdminGetConfigurationUnauthorized, *AdminGetConfigurationForbidden, *AdminGetConfigurationInternalServerError, error)
	AdminGetConfigurationShort(params *AdminGetConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationOK, error)
	AdminUpdateConfiguration(params *AdminUpdateConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationOK, *AdminUpdateConfigurationBadRequest, *AdminUpdateConfigurationUnauthorized, *AdminUpdateConfigurationForbidden, *AdminUpdateConfigurationInternalServerError, error)
	AdminUpdateConfigurationShort(params *AdminUpdateConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationOK, error)
	AdminGetStatus(params *AdminGetStatusParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetStatusOK, *AdminGetStatusUnauthorized, *AdminGetStatusForbidden, *AdminGetStatusInternalServerError, error)
	AdminGetStatusShort(params *AdminGetStatusParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetStatusOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetConfigurationShort instead.

AdminGetConfiguration get configuration
This API is used to get log queue configuration of a namespace.
Calling this endpoint with namespace which has not set up configuration will return a valid configuration with default value
*/
func (a *Client) AdminGetConfiguration(params *AdminGetConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationOK, *AdminGetConfigurationUnauthorized, *AdminGetConfigurationForbidden, *AdminGetConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigurationParams()
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
		ID:                 "adminGetConfiguration",
		Method:             "GET",
		PathPattern:        "/login-queue/v1/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigurationOK:
		return v, nil, nil, nil, nil

	case *AdminGetConfigurationUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetConfigurationForbidden:
		return nil, nil, v, nil, nil

	case *AdminGetConfigurationInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigurationShort get configuration
This API is used to get log queue configuration of a namespace.
Calling this endpoint with namespace which has not set up configuration will return a valid configuration with default value
*/
func (a *Client) AdminGetConfigurationShort(params *AdminGetConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfiguration",
		Method:             "GET",
		PathPattern:        "/login-queue/v1/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigurationOK:
		return v, nil
	case *AdminGetConfigurationUnauthorized:
		return nil, v
	case *AdminGetConfigurationForbidden:
		return nil, v
	case *AdminGetConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateConfigurationShort instead.

AdminUpdateConfiguration update configuration
This API is used to set/update log queue configuration of a namespace.
This endpoint has upsert behavior. Calling the endpoint to a namespace with no configuration will make the service to create a new configuration.
When creating new configuration, empty field will have default value:
* enabled = false
* maxConcurrency = 1000000
* maxLoginRate = 500
* safetyMarginPercentage = 5
* minActivationPeriodInSecond = 600
* playerReconnectGracePeriodInSecond = 300
* queueReconnectGracePeriodInSecond = 60
* playerPollingTimeInSecond = 20

Calling this endpoint with namespace that has configuration will replace the old configuration.

Input validation:
* maxConcurrency must be > 0 and <= 10000000 (0 < x <= 10000000)
* maxLoginRate must be > 0 and <= 100000 (0 < x <= 100000)
* minActivationPeriodInSecond, playerReconnectGracePeriodInSecond, playerPollingTimeInSecond and queueReconnectGracePeriodInSecond must be > 0 and <= 21600 (0 < x <= 21600)
* playerPollingTimeInSecond must be smaller than queueReconnectGracePeriodInSecond
* safetyMarginPercentage must be >= 0 and < 100 (0 <= x < 100)
*/
func (a *Client) AdminUpdateConfiguration(params *AdminUpdateConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationOK, *AdminUpdateConfigurationBadRequest, *AdminUpdateConfigurationUnauthorized, *AdminUpdateConfigurationForbidden, *AdminUpdateConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigurationParams()
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
		ID:                 "adminUpdateConfiguration",
		Method:             "PUT",
		PathPattern:        "/login-queue/v1/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigurationOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateConfigurationBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateConfigurationUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateConfigurationForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateConfigurationInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigurationShort update configuration
This API is used to set/update log queue configuration of a namespace.
This endpoint has upsert behavior. Calling the endpoint to a namespace with no configuration will make the service to create a new configuration.
When creating new configuration, empty field will have default value:
* enabled = false
* maxConcurrency = 1000000
* maxLoginRate = 500
* safetyMarginPercentage = 5
* minActivationPeriodInSecond = 600
* playerReconnectGracePeriodInSecond = 300
* queueReconnectGracePeriodInSecond = 60
* playerPollingTimeInSecond = 20

Calling this endpoint with namespace that has configuration will replace the old configuration.

Input validation:
* maxConcurrency must be > 0 and <= 10000000 (0 < x <= 10000000)
* maxLoginRate must be > 0 and <= 100000 (0 < x <= 100000)
* minActivationPeriodInSecond, playerReconnectGracePeriodInSecond, playerPollingTimeInSecond and queueReconnectGracePeriodInSecond must be > 0 and <= 21600 (0 < x <= 21600)
* playerPollingTimeInSecond must be smaller than queueReconnectGracePeriodInSecond
* safetyMarginPercentage must be >= 0 and < 100 (0 <= x < 100)
*/
func (a *Client) AdminUpdateConfigurationShort(params *AdminUpdateConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfiguration",
		Method:             "PUT",
		PathPattern:        "/login-queue/v1/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigurationOK:
		return v, nil
	case *AdminUpdateConfigurationBadRequest:
		return nil, v
	case *AdminUpdateConfigurationUnauthorized:
		return nil, v
	case *AdminUpdateConfigurationForbidden:
		return nil, v
	case *AdminUpdateConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetStatusShort instead.

AdminGetStatus get login queue status
Get login queue status
*/
func (a *Client) AdminGetStatus(params *AdminGetStatusParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetStatusOK, *AdminGetStatusUnauthorized, *AdminGetStatusForbidden, *AdminGetStatusInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetStatusParams()
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
		ID:                 "adminGetStatus",
		Method:             "GET",
		PathPattern:        "/login-queue/v1/admin/namespaces/{namespace}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetStatusOK:
		return v, nil, nil, nil, nil

	case *AdminGetStatusUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetStatusForbidden:
		return nil, nil, v, nil, nil

	case *AdminGetStatusInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetStatusShort get login queue status
Get login queue status
*/
func (a *Client) AdminGetStatusShort(params *AdminGetStatusParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetStatus",
		Method:             "GET",
		PathPattern:        "/login-queue/v1/admin/namespaces/{namespace}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetStatusOK:
		return v, nil
	case *AdminGetStatusUnauthorized:
		return nil, v
	case *AdminGetStatusForbidden:
		return nil, v
	case *AdminGetStatusInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
