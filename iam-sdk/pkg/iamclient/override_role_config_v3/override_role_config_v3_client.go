// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package override_role_config_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/opentracing/opentracing-go"
)

// New creates a new override role config v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for override role config v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetRoleOverrideConfigV3(params *AdminGetRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleOverrideConfigV3OK, *AdminGetRoleOverrideConfigV3BadRequest, *AdminGetRoleOverrideConfigV3Unauthorized, *AdminGetRoleOverrideConfigV3Forbidden, *AdminGetRoleOverrideConfigV3InternalServerError, error)
	AdminGetRoleOverrideConfigV3Short(params *AdminGetRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleOverrideConfigV3OK, error)
	AdminUpdateRoleOverrideConfigV3(params *AdminUpdateRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleOverrideConfigV3OK, *AdminUpdateRoleOverrideConfigV3BadRequest, *AdminUpdateRoleOverrideConfigV3Unauthorized, *AdminUpdateRoleOverrideConfigV3Forbidden, *AdminUpdateRoleOverrideConfigV3InternalServerError, error)
	AdminUpdateRoleOverrideConfigV3Short(params *AdminUpdateRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleOverrideConfigV3OK, error)
	AdminGetRoleSourceV3(params *AdminGetRoleSourceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleSourceV3OK, *AdminGetRoleSourceV3BadRequest, *AdminGetRoleSourceV3Unauthorized, *AdminGetRoleSourceV3Forbidden, *AdminGetRoleSourceV3NotFound, *AdminGetRoleSourceV3InternalServerError, error)
	AdminGetRoleSourceV3Short(params *AdminGetRoleSourceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleSourceV3OK, error)
	AdminChangeRoleOverrideConfigStatusV3(params *AdminChangeRoleOverrideConfigStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminChangeRoleOverrideConfigStatusV3OK, *AdminChangeRoleOverrideConfigStatusV3Unauthorized, *AdminChangeRoleOverrideConfigStatusV3Forbidden, *AdminChangeRoleOverrideConfigStatusV3InternalServerError, error)
	AdminChangeRoleOverrideConfigStatusV3Short(params *AdminChangeRoleOverrideConfigStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminChangeRoleOverrideConfigStatusV3OK, error)
	AdminGetRoleNamespacePermissionV3(params *AdminGetRoleNamespacePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleNamespacePermissionV3OK, *AdminGetRoleNamespacePermissionV3Unauthorized, *AdminGetRoleNamespacePermissionV3Forbidden, *AdminGetRoleNamespacePermissionV3NotFound, *AdminGetRoleNamespacePermissionV3InternalServerError, error)
	AdminGetRoleNamespacePermissionV3Short(params *AdminGetRoleNamespacePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleNamespacePermissionV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetRoleOverrideConfigV3Short instead.

AdminGetRoleOverrideConfigV3 get role override config
Get role override config.
This API has upsert behavior, if there is no config yet, it will create a new one with inactive status.
*/
func (a *Client) AdminGetRoleOverrideConfigV3(params *AdminGetRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleOverrideConfigV3OK, *AdminGetRoleOverrideConfigV3BadRequest, *AdminGetRoleOverrideConfigV3Unauthorized, *AdminGetRoleOverrideConfigV3Forbidden, *AdminGetRoleOverrideConfigV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleOverrideConfigV3Params()
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
		ID:                 "AdminGetRoleOverrideConfigV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleOverrideConfigV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleOverrideConfigV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetRoleOverrideConfigV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetRoleOverrideConfigV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetRoleOverrideConfigV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetRoleOverrideConfigV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleOverrideConfigV3Short get role override config
Get role override config.
This API has upsert behavior, if there is no config yet, it will create a new one with inactive status.
*/
func (a *Client) AdminGetRoleOverrideConfigV3Short(params *AdminGetRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleOverrideConfigV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleOverrideConfigV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleOverrideConfigV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleOverrideConfigV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleOverrideConfigV3OK:
		return v, nil
	case *AdminGetRoleOverrideConfigV3BadRequest:
		return nil, v
	case *AdminGetRoleOverrideConfigV3Unauthorized:
		return nil, v
	case *AdminGetRoleOverrideConfigV3Forbidden:
		return nil, v
	case *AdminGetRoleOverrideConfigV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateRoleOverrideConfigV3Short instead.

AdminUpdateRoleOverrideConfigV3 update role override config
This API is for updating role override config.
Note:
This API has upsert behavior, if there is no config yet, it will create a new one first.
*/
func (a *Client) AdminUpdateRoleOverrideConfigV3(params *AdminUpdateRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleOverrideConfigV3OK, *AdminUpdateRoleOverrideConfigV3BadRequest, *AdminUpdateRoleOverrideConfigV3Unauthorized, *AdminUpdateRoleOverrideConfigV3Forbidden, *AdminUpdateRoleOverrideConfigV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRoleOverrideConfigV3Params()
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
		ID:                 "AdminUpdateRoleOverrideConfigV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRoleOverrideConfigV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRoleOverrideConfigV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateRoleOverrideConfigV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateRoleOverrideConfigV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateRoleOverrideConfigV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateRoleOverrideConfigV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateRoleOverrideConfigV3Short update role override config
This API is for updating role override config.
Note:
This API has upsert behavior, if there is no config yet, it will create a new one first.
*/
func (a *Client) AdminUpdateRoleOverrideConfigV3Short(params *AdminUpdateRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleOverrideConfigV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRoleOverrideConfigV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateRoleOverrideConfigV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRoleOverrideConfigV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRoleOverrideConfigV3OK:
		return v, nil
	case *AdminUpdateRoleOverrideConfigV3BadRequest:
		return nil, v
	case *AdminUpdateRoleOverrideConfigV3Unauthorized:
		return nil, v
	case *AdminUpdateRoleOverrideConfigV3Forbidden:
		return nil, v
	case *AdminUpdateRoleOverrideConfigV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetRoleSourceV3Short instead.

AdminGetRoleSourceV3 get role source permission set
Get role source permission set.
*/
func (a *Client) AdminGetRoleSourceV3(params *AdminGetRoleSourceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleSourceV3OK, *AdminGetRoleSourceV3BadRequest, *AdminGetRoleSourceV3Unauthorized, *AdminGetRoleSourceV3Forbidden, *AdminGetRoleSourceV3NotFound, *AdminGetRoleSourceV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleSourceV3Params()
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
		ID:                 "AdminGetRoleSourceV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride/source",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleSourceV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleSourceV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetRoleSourceV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetRoleSourceV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetRoleSourceV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetRoleSourceV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetRoleSourceV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleSourceV3Short get role source permission set
Get role source permission set.
*/
func (a *Client) AdminGetRoleSourceV3Short(params *AdminGetRoleSourceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleSourceV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleSourceV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleSourceV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride/source",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleSourceV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleSourceV3OK:
		return v, nil
	case *AdminGetRoleSourceV3BadRequest:
		return nil, v
	case *AdminGetRoleSourceV3Unauthorized:
		return nil, v
	case *AdminGetRoleSourceV3Forbidden:
		return nil, v
	case *AdminGetRoleSourceV3NotFound:
		return nil, v
	case *AdminGetRoleSourceV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminChangeRoleOverrideConfigStatusV3Short instead.

AdminChangeRoleOverrideConfigStatusV3 change role override config active status
Enable or disable the target role override feature in path namespace.
Note:
This API has upsert behavior, if there is no config yet, it will create a new one first.
*/
func (a *Client) AdminChangeRoleOverrideConfigStatusV3(params *AdminChangeRoleOverrideConfigStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminChangeRoleOverrideConfigStatusV3OK, *AdminChangeRoleOverrideConfigStatusV3Unauthorized, *AdminChangeRoleOverrideConfigStatusV3Forbidden, *AdminChangeRoleOverrideConfigStatusV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChangeRoleOverrideConfigStatusV3Params()
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
		ID:                 "AdminChangeRoleOverrideConfigStatusV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChangeRoleOverrideConfigStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminChangeRoleOverrideConfigStatusV3OK:
		return v, nil, nil, nil, nil

	case *AdminChangeRoleOverrideConfigStatusV3Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminChangeRoleOverrideConfigStatusV3Forbidden:
		return nil, nil, v, nil, nil

	case *AdminChangeRoleOverrideConfigStatusV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChangeRoleOverrideConfigStatusV3Short change role override config active status
Enable or disable the target role override feature in path namespace.
Note:
This API has upsert behavior, if there is no config yet, it will create a new one first.
*/
func (a *Client) AdminChangeRoleOverrideConfigStatusV3Short(params *AdminChangeRoleOverrideConfigStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminChangeRoleOverrideConfigStatusV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChangeRoleOverrideConfigStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminChangeRoleOverrideConfigStatusV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChangeRoleOverrideConfigStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChangeRoleOverrideConfigStatusV3OK:
		return v, nil
	case *AdminChangeRoleOverrideConfigStatusV3Unauthorized:
		return nil, v
	case *AdminChangeRoleOverrideConfigStatusV3Forbidden:
		return nil, v
	case *AdminChangeRoleOverrideConfigStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetRoleNamespacePermissionV3Short instead.

AdminGetRoleNamespacePermissionV3 get role namespace permission
Get role namespace permission set.
*/
func (a *Client) AdminGetRoleNamespacePermissionV3(params *AdminGetRoleNamespacePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleNamespacePermissionV3OK, *AdminGetRoleNamespacePermissionV3Unauthorized, *AdminGetRoleNamespacePermissionV3Forbidden, *AdminGetRoleNamespacePermissionV3NotFound, *AdminGetRoleNamespacePermissionV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleNamespacePermissionV3Params()
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
		ID:                 "AdminGetRoleNamespacePermissionV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleNamespacePermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleNamespacePermissionV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetRoleNamespacePermissionV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetRoleNamespacePermissionV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetRoleNamespacePermissionV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetRoleNamespacePermissionV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleNamespacePermissionV3Short get role namespace permission
Get role namespace permission set.
*/
func (a *Client) AdminGetRoleNamespacePermissionV3Short(params *AdminGetRoleNamespacePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleNamespacePermissionV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleNamespacePermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	span, ctx := opentracing.StartSpanFromContext(params.Context, "AdminGetRoleNamespacePermissionV3")
	defer span.Finish()

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRoleNamespacePermissionV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleNamespacePermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            ctx,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleNamespacePermissionV3OK:
		return v, nil
	case *AdminGetRoleNamespacePermissionV3Unauthorized:
		return nil, v
	case *AdminGetRoleNamespacePermissionV3Forbidden:
		return nil, v
	case *AdminGetRoleNamespacePermissionV3NotFound:
		return nil, v
	case *AdminGetRoleNamespacePermissionV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
