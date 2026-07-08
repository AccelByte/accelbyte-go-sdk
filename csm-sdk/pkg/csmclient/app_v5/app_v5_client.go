// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package app_v5

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new app v5 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for app v5 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateAppV5(params *CreateAppV5Params, authInfo runtime.ClientAuthInfoWriter) (*CreateAppV5OK, *CreateAppV5BadRequest, *CreateAppV5Unauthorized, *CreateAppV5Forbidden, *CreateAppV5Conflict, *CreateAppV5InternalServerError, error)
	CreateAppV5Short(params *CreateAppV5Params, authInfo runtime.ClientAuthInfoWriter) (*CreateAppV5OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateAppV5Short instead.

CreateAppV5 create new extend app (v5)
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [CREATE]`

Create new extend app with name provided by {app} path parameter and specified scenario type

Available scenario:
- scenario 2: `service-extension`
- scenario 3: `event-handler`
- scenario 1: `function-override`


Available app status:
- `app-creating`
- `app-creation-failed`
- `app-creation-timeout`
- `app-undeployed`
- `deployment-in-progress`
- `deployment-failed`
- `deployment-timeout`
- `deployment-running`
- `deployment-down`
- `app-stopping`
- `app-stop-failed`
- `app-stop-timeout`
- `app-stopped`
- `app-removing`
- `app-removed`
- `app-remove-timeout`
*/
func (a *Client) CreateAppV5(params *CreateAppV5Params, authInfo runtime.ClientAuthInfoWriter) (*CreateAppV5OK, *CreateAppV5BadRequest, *CreateAppV5Unauthorized, *CreateAppV5Forbidden, *CreateAppV5Conflict, *CreateAppV5InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateAppV5Params()
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
		ID:                 "CreateAppV5",
		Method:             "POST",
		PathPattern:        "/csm/v5/admin/namespaces/{namespace}/apps/{app}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateAppV5Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateAppV5OK:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateAppV5BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateAppV5Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateAppV5Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateAppV5Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateAppV5InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateAppV5Short create new extend app (v5)
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [CREATE]`

Create new extend app with name provided by {app} path parameter and specified scenario type

Available scenario:
- scenario 2: `service-extension`
- scenario 3: `event-handler`
- scenario 1: `function-override`


Available app status:
- `app-creating`
- `app-creation-failed`
- `app-creation-timeout`
- `app-undeployed`
- `deployment-in-progress`
- `deployment-failed`
- `deployment-timeout`
- `deployment-running`
- `deployment-down`
- `app-stopping`
- `app-stop-failed`
- `app-stop-timeout`
- `app-stopped`
- `app-removing`
- `app-removed`
- `app-remove-timeout`
*/
func (a *Client) CreateAppV5Short(params *CreateAppV5Params, authInfo runtime.ClientAuthInfoWriter) (*CreateAppV5OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateAppV5Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateAppV5",
		Method:             "POST",
		PathPattern:        "/csm/v5/admin/namespaces/{namespace}/apps/{app}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateAppV5Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateAppV5OK:
		return v, nil
	case *CreateAppV5BadRequest:
		return nil, v
	case *CreateAppV5Unauthorized:
		return nil, v
	case *CreateAppV5Forbidden:
		return nil, v
	case *CreateAppV5Conflict:
		return nil, v
	case *CreateAppV5InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
