// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_channel

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin channel API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin channel API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	SingleAdminGetChannel(params *SingleAdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetChannelOK, *SingleAdminGetChannelUnauthorized, *SingleAdminGetChannelNotFound, *SingleAdminGetChannelInternalServerError, error)
	SingleAdminGetChannelShort(params *SingleAdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetChannelOK, error)
	AdminCreateChannel(params *AdminCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChannelCreated, *AdminCreateChannelBadRequest, *AdminCreateChannelUnauthorized, *AdminCreateChannelConflict, *AdminCreateChannelInternalServerError, error)
	AdminCreateChannelShort(params *AdminCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChannelCreated, error)
	SingleAdminUpdateChannel(params *SingleAdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateChannelOK, *SingleAdminUpdateChannelBadRequest, *SingleAdminUpdateChannelUnauthorized, *SingleAdminUpdateChannelNotFound, *SingleAdminUpdateChannelInternalServerError, error)
	SingleAdminUpdateChannelShort(params *SingleAdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateChannelOK, error)
	SingleAdminDeleteChannel(params *SingleAdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteChannelNoContent, *SingleAdminDeleteChannelUnauthorized, *SingleAdminDeleteChannelNotFound, *SingleAdminDeleteChannelInternalServerError, error)
	SingleAdminDeleteChannelShort(params *SingleAdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteChannelNoContent, error)
	AdminGetChannel(params *AdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChannelOK, *AdminGetChannelUnauthorized, *AdminGetChannelNotFound, *AdminGetChannelInternalServerError, error)
	AdminGetChannelShort(params *AdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChannelOK, error)
	AdminUpdateChannel(params *AdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChannelOK, *AdminUpdateChannelBadRequest, *AdminUpdateChannelUnauthorized, *AdminUpdateChannelNotFound, *AdminUpdateChannelInternalServerError, error)
	AdminUpdateChannelShort(params *AdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChannelOK, error)
	AdminDeleteChannel(params *AdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChannelNoContent, *AdminDeleteChannelUnauthorized, *AdminDeleteChannelNotFound, *AdminDeleteChannelInternalServerError, error)
	AdminDeleteChannelShort(params *AdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChannelNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use SingleAdminGetChannelShort instead.

SingleAdminGetChannel get channels
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]
*/
func (a *Client) SingleAdminGetChannel(params *SingleAdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetChannelOK, *SingleAdminGetChannelUnauthorized, *SingleAdminGetChannelNotFound, *SingleAdminGetChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminGetChannel",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetChannelOK:
		return v, nil, nil, nil, nil

	case *SingleAdminGetChannelUnauthorized:
		return nil, v, nil, nil, nil

	case *SingleAdminGetChannelNotFound:
		return nil, nil, v, nil, nil

	case *SingleAdminGetChannelInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminGetChannelShort get channels
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]
*/
func (a *Client) SingleAdminGetChannelShort(params *SingleAdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminGetChannel",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetChannelOK:
		return v, nil
	case *SingleAdminGetChannelUnauthorized:
		return nil, v
	case *SingleAdminGetChannelNotFound:
		return nil, v
	case *SingleAdminGetChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateChannelShort instead.

AdminCreateChannel create channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]
*/
func (a *Client) AdminCreateChannel(params *AdminCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChannelCreated, *AdminCreateChannelBadRequest, *AdminCreateChannelUnauthorized, *AdminCreateChannelConflict, *AdminCreateChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateChannel",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateChannelCreated:
		return v, nil, nil, nil, nil, nil

	case *AdminCreateChannelBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminCreateChannelUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminCreateChannelConflict:
		return nil, nil, nil, v, nil, nil

	case *AdminCreateChannelInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateChannelShort create channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]
*/
func (a *Client) AdminCreateChannelShort(params *AdminCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChannelCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateChannel",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateChannelCreated:
		return v, nil
	case *AdminCreateChannelBadRequest:
		return nil, v
	case *AdminCreateChannelUnauthorized:
		return nil, v
	case *AdminCreateChannelConflict:
		return nil, v
	case *AdminCreateChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SingleAdminUpdateChannelShort instead.

SingleAdminUpdateChannel update channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]
*/
func (a *Client) SingleAdminUpdateChannel(params *SingleAdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateChannelOK, *SingleAdminUpdateChannelBadRequest, *SingleAdminUpdateChannelUnauthorized, *SingleAdminUpdateChannelNotFound, *SingleAdminUpdateChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminUpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateChannelOK:
		return v, nil, nil, nil, nil, nil

	case *SingleAdminUpdateChannelBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SingleAdminUpdateChannelUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SingleAdminUpdateChannelNotFound:
		return nil, nil, nil, v, nil, nil

	case *SingleAdminUpdateChannelInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminUpdateChannelShort update channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]
*/
func (a *Client) SingleAdminUpdateChannelShort(params *SingleAdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminUpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateChannelOK:
		return v, nil
	case *SingleAdminUpdateChannelBadRequest:
		return nil, v
	case *SingleAdminUpdateChannelUnauthorized:
		return nil, v
	case *SingleAdminUpdateChannelNotFound:
		return nil, v
	case *SingleAdminUpdateChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SingleAdminDeleteChannelShort instead.

SingleAdminDeleteChannel delete channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]
*/
func (a *Client) SingleAdminDeleteChannel(params *SingleAdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteChannelNoContent, *SingleAdminDeleteChannelUnauthorized, *SingleAdminDeleteChannelNotFound, *SingleAdminDeleteChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminDeleteChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminDeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminDeleteChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminDeleteChannelNoContent:
		return v, nil, nil, nil, nil

	case *SingleAdminDeleteChannelUnauthorized:
		return nil, v, nil, nil, nil

	case *SingleAdminDeleteChannelNotFound:
		return nil, nil, v, nil, nil

	case *SingleAdminDeleteChannelInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminDeleteChannelShort delete channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]
*/
func (a *Client) SingleAdminDeleteChannelShort(params *SingleAdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteChannelNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminDeleteChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminDeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminDeleteChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminDeleteChannelNoContent:
		return v, nil
	case *SingleAdminDeleteChannelUnauthorized:
		return nil, v
	case *SingleAdminDeleteChannelNotFound:
		return nil, v
	case *SingleAdminDeleteChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetChannelShort instead.

AdminGetChannel get channels
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]
*/
func (a *Client) AdminGetChannel(params *AdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChannelOK, *AdminGetChannelUnauthorized, *AdminGetChannelNotFound, *AdminGetChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetChannel",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetChannelOK:
		return v, nil, nil, nil, nil

	case *AdminGetChannelUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetChannelNotFound:
		return nil, nil, v, nil, nil

	case *AdminGetChannelInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetChannelShort get channels
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]
*/
func (a *Client) AdminGetChannelShort(params *AdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetChannel",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetChannelOK:
		return v, nil
	case *AdminGetChannelUnauthorized:
		return nil, v
	case *AdminGetChannelNotFound:
		return nil, v
	case *AdminGetChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateChannelShort instead.

AdminUpdateChannel update channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]
*/
func (a *Client) AdminUpdateChannel(params *AdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChannelOK, *AdminUpdateChannelBadRequest, *AdminUpdateChannelUnauthorized, *AdminUpdateChannelNotFound, *AdminUpdateChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateChannelOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateChannelBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateChannelUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateChannelNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateChannelInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateChannelShort update channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]
*/
func (a *Client) AdminUpdateChannelShort(params *AdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateChannelOK:
		return v, nil
	case *AdminUpdateChannelBadRequest:
		return nil, v
	case *AdminUpdateChannelUnauthorized:
		return nil, v
	case *AdminUpdateChannelNotFound:
		return nil, v
	case *AdminUpdateChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteChannelShort instead.

AdminDeleteChannel delete channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]
*/
func (a *Client) AdminDeleteChannel(params *AdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChannelNoContent, *AdminDeleteChannelUnauthorized, *AdminDeleteChannelNotFound, *AdminDeleteChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChannelNoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteChannelUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteChannelNotFound:
		return nil, nil, v, nil, nil

	case *AdminDeleteChannelInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteChannelShort delete channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]
*/
func (a *Client) AdminDeleteChannelShort(params *AdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChannelNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChannelNoContent:
		return v, nil
	case *AdminDeleteChannelUnauthorized:
		return nil, v
	case *AdminDeleteChannelNotFound:
		return nil, v
	case *AdminDeleteChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
