// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package moderation

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new moderation API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for moderation API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetChatSnapshot(params *AdminGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChatSnapshotOK, *AdminGetChatSnapshotBadRequest, *AdminGetChatSnapshotUnauthorized, *AdminGetChatSnapshotForbidden, *AdminGetChatSnapshotNotFound, *AdminGetChatSnapshotInternalServerError, error)
	AdminGetChatSnapshotShort(params *AdminGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChatSnapshotOK, error)
	AdminDeleteChatSnapshot(params *AdminDeleteChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatSnapshotNoContent, *AdminDeleteChatSnapshotBadRequest, *AdminDeleteChatSnapshotUnauthorized, *AdminDeleteChatSnapshotForbidden, *AdminDeleteChatSnapshotNotFound, *AdminDeleteChatSnapshotInternalServerError, error)
	AdminDeleteChatSnapshotShort(params *AdminDeleteChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatSnapshotNoContent, error)
	PublicGetChatSnapshot(params *PublicGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetChatSnapshotOK, *PublicGetChatSnapshotBadRequest, *PublicGetChatSnapshotUnauthorized, *PublicGetChatSnapshotForbidden, *PublicGetChatSnapshotNotFound, *PublicGetChatSnapshotInternalServerError, error)
	PublicGetChatSnapshotShort(params *PublicGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetChatSnapshotOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetChatSnapshotShort instead.

AdminGetChatSnapshot admin get chat snapshot
Get the chat snapshot
*/
func (a *Client) AdminGetChatSnapshot(params *AdminGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChatSnapshotOK, *AdminGetChatSnapshotBadRequest, *AdminGetChatSnapshotUnauthorized, *AdminGetChatSnapshotForbidden, *AdminGetChatSnapshotNotFound, *AdminGetChatSnapshotInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChatSnapshotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetChatSnapshot",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChatSnapshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetChatSnapshotOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetChatSnapshotBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetChatSnapshotUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetChatSnapshotForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetChatSnapshotNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetChatSnapshotInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetChatSnapshotShort admin get chat snapshot
Get the chat snapshot
*/
func (a *Client) AdminGetChatSnapshotShort(params *AdminGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChatSnapshotOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChatSnapshotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetChatSnapshot",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChatSnapshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetChatSnapshotOK:
		return v, nil
	case *AdminGetChatSnapshotBadRequest:
		return nil, v
	case *AdminGetChatSnapshotUnauthorized:
		return nil, v
	case *AdminGetChatSnapshotForbidden:
		return nil, v
	case *AdminGetChatSnapshotNotFound:
		return nil, v
	case *AdminGetChatSnapshotInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteChatSnapshotShort instead.

AdminDeleteChatSnapshot admin delete chat snapshot
Delete the chat snapshot
*/
func (a *Client) AdminDeleteChatSnapshot(params *AdminDeleteChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatSnapshotNoContent, *AdminDeleteChatSnapshotBadRequest, *AdminDeleteChatSnapshotUnauthorized, *AdminDeleteChatSnapshotForbidden, *AdminDeleteChatSnapshotNotFound, *AdminDeleteChatSnapshotInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChatSnapshotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteChatSnapshot",
		Method:             "DELETE",
		PathPattern:        "/chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChatSnapshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChatSnapshotNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeleteChatSnapshotBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeleteChatSnapshotUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeleteChatSnapshotForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeleteChatSnapshotNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeleteChatSnapshotInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteChatSnapshotShort admin delete chat snapshot
Delete the chat snapshot
*/
func (a *Client) AdminDeleteChatSnapshotShort(params *AdminDeleteChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatSnapshotNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChatSnapshotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteChatSnapshot",
		Method:             "DELETE",
		PathPattern:        "/chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChatSnapshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChatSnapshotNoContent:
		return v, nil
	case *AdminDeleteChatSnapshotBadRequest:
		return nil, v
	case *AdminDeleteChatSnapshotUnauthorized:
		return nil, v
	case *AdminDeleteChatSnapshotForbidden:
		return nil, v
	case *AdminDeleteChatSnapshotNotFound:
		return nil, v
	case *AdminDeleteChatSnapshotInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetChatSnapshotShort instead.

PublicGetChatSnapshot public get chat snapshot
Get the chat snapshot
*/
func (a *Client) PublicGetChatSnapshot(params *PublicGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetChatSnapshotOK, *PublicGetChatSnapshotBadRequest, *PublicGetChatSnapshotUnauthorized, *PublicGetChatSnapshotForbidden, *PublicGetChatSnapshotNotFound, *PublicGetChatSnapshotInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetChatSnapshotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetChatSnapshot",
		Method:             "GET",
		PathPattern:        "/chat/v1/public/namespaces/{namespace}/topic/{topic}/snapshot/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetChatSnapshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetChatSnapshotOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGetChatSnapshotBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGetChatSnapshotUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGetChatSnapshotForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGetChatSnapshotNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGetChatSnapshotInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetChatSnapshotShort public get chat snapshot
Get the chat snapshot
*/
func (a *Client) PublicGetChatSnapshotShort(params *PublicGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetChatSnapshotOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetChatSnapshotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetChatSnapshot",
		Method:             "GET",
		PathPattern:        "/chat/v1/public/namespaces/{namespace}/topic/{topic}/snapshot/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetChatSnapshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetChatSnapshotOK:
		return v, nil
	case *PublicGetChatSnapshotBadRequest:
		return nil, v
	case *PublicGetChatSnapshotUnauthorized:
		return nil, v
	case *PublicGetChatSnapshotForbidden:
		return nil, v
	case *PublicGetChatSnapshotNotFound:
		return nil, v
	case *PublicGetChatSnapshotInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
