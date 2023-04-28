// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package third_party

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new third party API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for third party API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetThirdPartyConfig(params *AdminGetThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyConfigOK, *AdminGetThirdPartyConfigBadRequest, *AdminGetThirdPartyConfigUnauthorized, *AdminGetThirdPartyConfigForbidden, *AdminGetThirdPartyConfigInternalServerError, error)
	AdminGetThirdPartyConfigShort(params *AdminGetThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyConfigOK, error)
	AdminUpdateThirdPartyConfig(params *AdminUpdateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateThirdPartyConfigOK, *AdminUpdateThirdPartyConfigBadRequest, *AdminUpdateThirdPartyConfigUnauthorized, *AdminUpdateThirdPartyConfigForbidden, *AdminUpdateThirdPartyConfigInternalServerError, error)
	AdminUpdateThirdPartyConfigShort(params *AdminUpdateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateThirdPartyConfigOK, error)
	AdminCreateThirdPartyConfig(params *AdminCreateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateThirdPartyConfigCreated, *AdminCreateThirdPartyConfigBadRequest, *AdminCreateThirdPartyConfigUnauthorized, *AdminCreateThirdPartyConfigForbidden, *AdminCreateThirdPartyConfigConflict, *AdminCreateThirdPartyConfigInternalServerError, error)
	AdminCreateThirdPartyConfigShort(params *AdminCreateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateThirdPartyConfigCreated, error)
	AdminDeleteThirdPartyConfig(params *AdminDeleteThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteThirdPartyConfigNoContent, *AdminDeleteThirdPartyConfigBadRequest, *AdminDeleteThirdPartyConfigUnauthorized, *AdminDeleteThirdPartyConfigForbidden, *AdminDeleteThirdPartyConfigInternalServerError, error)
	AdminDeleteThirdPartyConfigShort(params *AdminDeleteThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteThirdPartyConfigNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetThirdPartyConfigShort instead.

AdminGetThirdPartyConfig get third party steam config
Required permission : `ADMIN:NAMESPACE:{namespace}:THIRDPARTY:CONFIG [READ]` with scope `social`

get third party config for specified namespace.
*/
func (a *Client) AdminGetThirdPartyConfig(params *AdminGetThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyConfigOK, *AdminGetThirdPartyConfigBadRequest, *AdminGetThirdPartyConfigUnauthorized, *AdminGetThirdPartyConfigForbidden, *AdminGetThirdPartyConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetThirdPartyConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetThirdPartyConfig",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetThirdPartyConfigOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetThirdPartyConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetThirdPartyConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetThirdPartyConfigForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetThirdPartyConfigInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetThirdPartyConfigShort get third party steam config
Required permission : `ADMIN:NAMESPACE:{namespace}:THIRDPARTY:CONFIG [READ]` with scope `social`

get third party config for specified namespace.
*/
func (a *Client) AdminGetThirdPartyConfigShort(params *AdminGetThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetThirdPartyConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetThirdPartyConfig",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetThirdPartyConfigOK:
		return v, nil
	case *AdminGetThirdPartyConfigBadRequest:
		return nil, v
	case *AdminGetThirdPartyConfigUnauthorized:
		return nil, v
	case *AdminGetThirdPartyConfigForbidden:
		return nil, v
	case *AdminGetThirdPartyConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateThirdPartyConfigShort instead.

AdminUpdateThirdPartyConfig update third party steam config
Required permission : `ADMIN:NAMESPACE:{namespace}:THIRDPARTY:CONFIG [UPDATE]` with scope `social`

Update third party config in a namespace.
*/
func (a *Client) AdminUpdateThirdPartyConfig(params *AdminUpdateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateThirdPartyConfigOK, *AdminUpdateThirdPartyConfigBadRequest, *AdminUpdateThirdPartyConfigUnauthorized, *AdminUpdateThirdPartyConfigForbidden, *AdminUpdateThirdPartyConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateThirdPartyConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateThirdPartyConfig",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateThirdPartyConfigOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateThirdPartyConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateThirdPartyConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateThirdPartyConfigForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateThirdPartyConfigInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateThirdPartyConfigShort update third party steam config
Required permission : `ADMIN:NAMESPACE:{namespace}:THIRDPARTY:CONFIG [UPDATE]` with scope `social`

Update third party config in a namespace.
*/
func (a *Client) AdminUpdateThirdPartyConfigShort(params *AdminUpdateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateThirdPartyConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateThirdPartyConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateThirdPartyConfig",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateThirdPartyConfigOK:
		return v, nil
	case *AdminUpdateThirdPartyConfigBadRequest:
		return nil, v
	case *AdminUpdateThirdPartyConfigUnauthorized:
		return nil, v
	case *AdminUpdateThirdPartyConfigForbidden:
		return nil, v
	case *AdminUpdateThirdPartyConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateThirdPartyConfigShort instead.

AdminCreateThirdPartyConfig create third party steam config
Required permission : `ADMIN:NAMESPACE:{namespace}:THIRDPARTY:CONFIG [CREATE]` with scope `social`

create third party config in a namespace.
*/
func (a *Client) AdminCreateThirdPartyConfig(params *AdminCreateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateThirdPartyConfigCreated, *AdminCreateThirdPartyConfigBadRequest, *AdminCreateThirdPartyConfigUnauthorized, *AdminCreateThirdPartyConfigForbidden, *AdminCreateThirdPartyConfigConflict, *AdminCreateThirdPartyConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateThirdPartyConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateThirdPartyConfig",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateThirdPartyConfigCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminCreateThirdPartyConfigBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminCreateThirdPartyConfigUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminCreateThirdPartyConfigForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminCreateThirdPartyConfigConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminCreateThirdPartyConfigInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateThirdPartyConfigShort create third party steam config
Required permission : `ADMIN:NAMESPACE:{namespace}:THIRDPARTY:CONFIG [CREATE]` with scope `social`

create third party config in a namespace.
*/
func (a *Client) AdminCreateThirdPartyConfigShort(params *AdminCreateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateThirdPartyConfigCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateThirdPartyConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateThirdPartyConfig",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateThirdPartyConfigCreated:
		return v, nil
	case *AdminCreateThirdPartyConfigBadRequest:
		return nil, v
	case *AdminCreateThirdPartyConfigUnauthorized:
		return nil, v
	case *AdminCreateThirdPartyConfigForbidden:
		return nil, v
	case *AdminCreateThirdPartyConfigConflict:
		return nil, v
	case *AdminCreateThirdPartyConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteThirdPartyConfigShort instead.

AdminDeleteThirdPartyConfig delete third party steam config
Required permission : `ADMIN:NAMESPACE:{namespace}:THIRDPARTY:CONFIG [DELETE]` with scope `social`

delete third party config in a namespace.
*/
func (a *Client) AdminDeleteThirdPartyConfig(params *AdminDeleteThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteThirdPartyConfigNoContent, *AdminDeleteThirdPartyConfigBadRequest, *AdminDeleteThirdPartyConfigUnauthorized, *AdminDeleteThirdPartyConfigForbidden, *AdminDeleteThirdPartyConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteThirdPartyConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteThirdPartyConfig",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteThirdPartyConfigNoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteThirdPartyConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteThirdPartyConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteThirdPartyConfigForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteThirdPartyConfigInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteThirdPartyConfigShort delete third party steam config
Required permission : `ADMIN:NAMESPACE:{namespace}:THIRDPARTY:CONFIG [DELETE]` with scope `social`

delete third party config in a namespace.
*/
func (a *Client) AdminDeleteThirdPartyConfigShort(params *AdminDeleteThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteThirdPartyConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteThirdPartyConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteThirdPartyConfig",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteThirdPartyConfigNoContent:
		return v, nil
	case *AdminDeleteThirdPartyConfigBadRequest:
		return nil, v
	case *AdminDeleteThirdPartyConfigUnauthorized:
		return nil, v
	case *AdminDeleteThirdPartyConfigForbidden:
		return nil, v
	case *AdminDeleteThirdPartyConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
