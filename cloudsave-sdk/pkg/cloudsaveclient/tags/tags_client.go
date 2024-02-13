// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package tags

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new tags API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for tags API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListTagsHandlerV1(params *AdminListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsHandlerV1OK, *AdminListTagsHandlerV1BadRequest, *AdminListTagsHandlerV1Unauthorized, *AdminListTagsHandlerV1Forbidden, *AdminListTagsHandlerV1InternalServerError, error)
	AdminListTagsHandlerV1Short(params *AdminListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsHandlerV1OK, error)
	AdminPostTagHandlerV1(params *AdminPostTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostTagHandlerV1Created, *AdminPostTagHandlerV1BadRequest, *AdminPostTagHandlerV1Unauthorized, *AdminPostTagHandlerV1Forbidden, *AdminPostTagHandlerV1Conflict, *AdminPostTagHandlerV1InternalServerError, error)
	AdminPostTagHandlerV1Short(params *AdminPostTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostTagHandlerV1Created, error)
	AdminDeleteTagHandlerV1(params *AdminDeleteTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagHandlerV1Created, *AdminDeleteTagHandlerV1Unauthorized, *AdminDeleteTagHandlerV1Forbidden, *AdminDeleteTagHandlerV1NotFound, *AdminDeleteTagHandlerV1InternalServerError, error)
	AdminDeleteTagHandlerV1Short(params *AdminDeleteTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagHandlerV1Created, error)
	PublicListTagsHandlerV1(params *PublicListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsHandlerV1OK, *PublicListTagsHandlerV1BadRequest, *PublicListTagsHandlerV1Unauthorized, *PublicListTagsHandlerV1Forbidden, *PublicListTagsHandlerV1InternalServerError, error)
	PublicListTagsHandlerV1Short(params *PublicListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsHandlerV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminListTagsHandlerV1Short instead.

AdminListTagsHandlerV1 list tags
## Description

Endpoint to list out available tags
*/
func (a *Client) AdminListTagsHandlerV1(params *AdminListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsHandlerV1OK, *AdminListTagsHandlerV1BadRequest, *AdminListTagsHandlerV1Unauthorized, *AdminListTagsHandlerV1Forbidden, *AdminListTagsHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListTagsHandlerV1Params()
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
		ID:                 "adminListTagsHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListTagsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListTagsHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminListTagsHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminListTagsHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminListTagsHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminListTagsHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListTagsHandlerV1Short list tags
## Description

Endpoint to list out available tags
*/
func (a *Client) AdminListTagsHandlerV1Short(params *AdminListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListTagsHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminListTagsHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListTagsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListTagsHandlerV1OK:
		return v, nil
	case *AdminListTagsHandlerV1BadRequest:
		return nil, v
	case *AdminListTagsHandlerV1Unauthorized:
		return nil, v
	case *AdminListTagsHandlerV1Forbidden:
		return nil, v
	case *AdminListTagsHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPostTagHandlerV1Short instead.

AdminPostTagHandlerV1 create a tag
## Description

Endpoint to create a tag
*/
func (a *Client) AdminPostTagHandlerV1(params *AdminPostTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostTagHandlerV1Created, *AdminPostTagHandlerV1BadRequest, *AdminPostTagHandlerV1Unauthorized, *AdminPostTagHandlerV1Forbidden, *AdminPostTagHandlerV1Conflict, *AdminPostTagHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostTagHandlerV1Params()
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
		ID:                 "adminPostTagHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostTagHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPostTagHandlerV1Created:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminPostTagHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminPostTagHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminPostTagHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminPostTagHandlerV1Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminPostTagHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostTagHandlerV1Short create a tag
## Description

Endpoint to create a tag
*/
func (a *Client) AdminPostTagHandlerV1Short(params *AdminPostTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostTagHandlerV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostTagHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostTagHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostTagHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostTagHandlerV1Created:
		return v, nil
	case *AdminPostTagHandlerV1BadRequest:
		return nil, v
	case *AdminPostTagHandlerV1Unauthorized:
		return nil, v
	case *AdminPostTagHandlerV1Forbidden:
		return nil, v
	case *AdminPostTagHandlerV1Conflict:
		return nil, v
	case *AdminPostTagHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteTagHandlerV1Short instead.

AdminDeleteTagHandlerV1 delete a tag
## Description

Endpoint to delete a tag
*/
func (a *Client) AdminDeleteTagHandlerV1(params *AdminDeleteTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagHandlerV1Created, *AdminDeleteTagHandlerV1Unauthorized, *AdminDeleteTagHandlerV1Forbidden, *AdminDeleteTagHandlerV1NotFound, *AdminDeleteTagHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTagHandlerV1Params()
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
		ID:                 "adminDeleteTagHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/tags/{tag}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTagHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTagHandlerV1Created:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteTagHandlerV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteTagHandlerV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteTagHandlerV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteTagHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTagHandlerV1Short delete a tag
## Description

Endpoint to delete a tag
*/
func (a *Client) AdminDeleteTagHandlerV1Short(params *AdminDeleteTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagHandlerV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTagHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteTagHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/tags/{tag}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTagHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTagHandlerV1Created:
		return v, nil
	case *AdminDeleteTagHandlerV1Unauthorized:
		return nil, v
	case *AdminDeleteTagHandlerV1Forbidden:
		return nil, v
	case *AdminDeleteTagHandlerV1NotFound:
		return nil, v
	case *AdminDeleteTagHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListTagsHandlerV1Short instead.

PublicListTagsHandlerV1 list tags
## Description

Endpoint to list out available tags
*/
func (a *Client) PublicListTagsHandlerV1(params *PublicListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsHandlerV1OK, *PublicListTagsHandlerV1BadRequest, *PublicListTagsHandlerV1Unauthorized, *PublicListTagsHandlerV1Forbidden, *PublicListTagsHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListTagsHandlerV1Params()
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
		ID:                 "publicListTagsHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListTagsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListTagsHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *PublicListTagsHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicListTagsHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicListTagsHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicListTagsHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListTagsHandlerV1Short list tags
## Description

Endpoint to list out available tags
*/
func (a *Client) PublicListTagsHandlerV1Short(params *PublicListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListTagsHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListTagsHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListTagsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListTagsHandlerV1OK:
		return v, nil
	case *PublicListTagsHandlerV1BadRequest:
		return nil, v
	case *PublicListTagsHandlerV1Unauthorized:
		return nil, v
	case *PublicListTagsHandlerV1Forbidden:
		return nil, v
	case *PublicListTagsHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
