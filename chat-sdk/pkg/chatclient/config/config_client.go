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
	AdminGetAllConfigV1(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, *AdminGetAllConfigV1BadRequest, *AdminGetAllConfigV1Unauthorized, *AdminGetAllConfigV1Forbidden, *AdminGetAllConfigV1NotFound, *AdminGetAllConfigV1InternalServerError, error)
	AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, error)
	AdminGetConfigV1(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, *AdminGetConfigV1BadRequest, *AdminGetConfigV1Unauthorized, *AdminGetConfigV1Forbidden, *AdminGetConfigV1NotFound, *AdminGetConfigV1InternalServerError, error)
	AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, error)
	AdminUpdateConfigV1(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1OK, *AdminUpdateConfigV1BadRequest, *AdminUpdateConfigV1Unauthorized, *AdminUpdateConfigV1Forbidden, *AdminUpdateConfigV1NotFound, *AdminUpdateConfigV1PreconditionFailed, *AdminUpdateConfigV1InternalServerError, error)
	AdminUpdateConfigV1Short(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1OK, error)
	ExportConfig(params *ExportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ExportConfigOK, *ExportConfigUnauthorized, *ExportConfigForbidden, *ExportConfigInternalServerError, error)
	ExportConfigShort(params *ExportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ExportConfigOK, error)
	ImportConfig(params *ImportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigOK, *ImportConfigUnauthorized, *ImportConfigForbidden, *ImportConfigInternalServerError, error)
	ImportConfigShort(params *ImportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetAllConfigV1Short instead.

AdminGetAllConfigV1 admin get all namespaces config
Get chat config of all namespaces.
*/
func (a *Client) AdminGetAllConfigV1(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, *AdminGetAllConfigV1BadRequest, *AdminGetAllConfigV1Unauthorized, *AdminGetAllConfigV1Forbidden, *AdminGetAllConfigV1NotFound, *AdminGetAllConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllConfigV1",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetAllConfigV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetAllConfigV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetAllConfigV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetAllConfigV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetAllConfigV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllConfigV1Short admin get all namespaces config
Get chat config of all namespaces.
*/
func (a *Client) AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllConfigV1",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigV1OK:
		return v, nil
	case *AdminGetAllConfigV1BadRequest:
		return nil, v
	case *AdminGetAllConfigV1Unauthorized:
		return nil, v
	case *AdminGetAllConfigV1Forbidden:
		return nil, v
	case *AdminGetAllConfigV1NotFound:
		return nil, v
	case *AdminGetAllConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetConfigV1Short instead.

AdminGetConfigV1 admin get namespace config
Get chat config of a namespace.
*/
func (a *Client) AdminGetConfigV1(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, *AdminGetConfigV1BadRequest, *AdminGetConfigV1Unauthorized, *AdminGetConfigV1Forbidden, *AdminGetConfigV1NotFound, *AdminGetConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigV1",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetConfigV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetConfigV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetConfigV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetConfigV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetConfigV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigV1Short admin get namespace config
Get chat config of a namespace.
*/
func (a *Client) AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigV1",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigV1OK:
		return v, nil
	case *AdminGetConfigV1BadRequest:
		return nil, v
	case *AdminGetConfigV1Unauthorized:
		return nil, v
	case *AdminGetConfigV1Forbidden:
		return nil, v
	case *AdminGetConfigV1NotFound:
		return nil, v
	case *AdminGetConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateConfigV1Short instead.

AdminUpdateConfigV1 admin update namespace config
Update chat config of a namespace.
*/
func (a *Client) AdminUpdateConfigV1(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1OK, *AdminUpdateConfigV1BadRequest, *AdminUpdateConfigV1Unauthorized, *AdminUpdateConfigV1Forbidden, *AdminUpdateConfigV1NotFound, *AdminUpdateConfigV1PreconditionFailed, *AdminUpdateConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfigV1",
		Method:             "PUT",
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigV1OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminUpdateConfigV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateConfigV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateConfigV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateConfigV1NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateConfigV1PreconditionFailed:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateConfigV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigV1Short admin update namespace config
Update chat config of a namespace.
*/
func (a *Client) AdminUpdateConfigV1Short(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfigV1",
		Method:             "PUT",
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigV1OK:
		return v, nil
	case *AdminUpdateConfigV1BadRequest:
		return nil, v
	case *AdminUpdateConfigV1Unauthorized:
		return nil, v
	case *AdminUpdateConfigV1Forbidden:
		return nil, v
	case *AdminUpdateConfigV1NotFound:
		return nil, v
	case *AdminUpdateConfigV1PreconditionFailed:
		return nil, v
	case *AdminUpdateConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExportConfigShort instead.

ExportConfig export chat config to a json file.

Export chat configuration to a json file. The file can then be imported from the /import endpoint.
*/
func (a *Client) ExportConfig(params *ExportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ExportConfigOK, *ExportConfigUnauthorized, *ExportConfigForbidden, *ExportConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ExportConfig",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ExportConfigOK:
		return v, nil, nil, nil, nil

	case *ExportConfigUnauthorized:
		return nil, v, nil, nil, nil

	case *ExportConfigForbidden:
		return nil, nil, v, nil, nil

	case *ExportConfigInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportConfigShort export chat config to a json file.

Export chat configuration to a json file. The file can then be imported from the /import endpoint.
*/
func (a *Client) ExportConfigShort(params *ExportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ExportConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ExportConfig",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportConfigOK:
		return v, nil
	case *ExportConfigUnauthorized:
		return nil, v
	case *ExportConfigForbidden:
		return nil, v
	case *ExportConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImportConfigShort instead.

ImportConfig import chat config from a json file.

Import config configuration from file. The existing configuration will be replaced.
The json file to import can be obtained from the /export endpoint.
*/
func (a *Client) ImportConfig(params *ImportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigOK, *ImportConfigUnauthorized, *ImportConfigForbidden, *ImportConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImportConfig",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImportConfigOK:
		return v, nil, nil, nil, nil

	case *ImportConfigUnauthorized:
		return nil, v, nil, nil, nil

	case *ImportConfigForbidden:
		return nil, nil, v, nil, nil

	case *ImportConfigInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportConfigShort import chat config from a json file.

Import config configuration from file. The existing configuration will be replaced.
The json file to import can be obtained from the /export endpoint.
*/
func (a *Client) ImportConfigShort(params *ImportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImportConfig",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportConfigOK:
		return v, nil
	case *ImportConfigUnauthorized:
		return nil, v
	case *ImportConfigForbidden:
		return nil, v
	case *ImportConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
