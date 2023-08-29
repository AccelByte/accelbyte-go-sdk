// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_tags

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin tags API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin tags API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListTags(params *AdminListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsOK, *AdminListTagsBadRequest, *AdminListTagsInternalServerError, error)
	AdminListTagsShort(params *AdminListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsOK, error)
	AdminCreateTag(params *AdminCreateTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagCreated, *AdminCreateTagBadRequest, *AdminCreateTagConflict, *AdminCreateTagInternalServerError, error)
	AdminCreateTagShort(params *AdminCreateTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagCreated, error)
	AdminDeleteTag(params *AdminDeleteTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagNoContent, *AdminDeleteTagNotFound, *AdminDeleteTagInternalServerError, error)
	AdminDeleteTagShort(params *AdminDeleteTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminListTagsShort instead.

AdminListTags to list tags

This endpoint will list all tags in a namespace.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [READ]
*/
func (a *Client) AdminListTags(params *AdminListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsOK, *AdminListTagsBadRequest, *AdminListTagsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListTagsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListTags",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListTagsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListTagsOK:
		return v, nil, nil, nil

	case *AdminListTagsBadRequest:
		return nil, v, nil, nil

	case *AdminListTagsInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListTagsShort to list tags

This endpoint will list all tags in a namespace.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [READ]
*/
func (a *Client) AdminListTagsShort(params *AdminListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListTagsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListTags",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListTagsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListTagsOK:
		return v, nil
	case *AdminListTagsBadRequest:
		return nil, v
	case *AdminListTagsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateTagShort instead.

AdminCreateTag to create a tag

This endpoint will create a new tag.
The tag name must be unique per namespace.
It is safe to call this endpoint even if the tag already exists.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [CREATE]
*/
func (a *Client) AdminCreateTag(params *AdminCreateTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagCreated, *AdminCreateTagBadRequest, *AdminCreateTagConflict, *AdminCreateTagInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTagParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateTag",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTagCreated:
		return v, nil, nil, nil, nil

	case *AdminCreateTagBadRequest:
		return nil, v, nil, nil, nil

	case *AdminCreateTagConflict:
		return nil, nil, v, nil, nil

	case *AdminCreateTagInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateTagShort to create a tag

This endpoint will create a new tag.
The tag name must be unique per namespace.
It is safe to call this endpoint even if the tag already exists.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [CREATE]
*/
func (a *Client) AdminCreateTagShort(params *AdminCreateTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTagParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateTag",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTagCreated:
		return v, nil
	case *AdminCreateTagBadRequest:
		return nil, v
	case *AdminCreateTagConflict:
		return nil, v
	case *AdminCreateTagInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteTagShort instead.

AdminDeleteTag to delete a tag

This endpoint will delete a tag by tagName in a specified namespace.
If the tagName doesn't exist in a namespace, it'll return not found.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [DELETE]
*/
func (a *Client) AdminDeleteTag(params *AdminDeleteTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagNoContent, *AdminDeleteTagNotFound, *AdminDeleteTagInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTagParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteTag",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/tags/{tagName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTagNoContent:
		return v, nil, nil, nil

	case *AdminDeleteTagNotFound:
		return nil, v, nil, nil

	case *AdminDeleteTagInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTagShort to delete a tag

This endpoint will delete a tag by tagName in a specified namespace.
If the tagName doesn't exist in a namespace, it'll return not found.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [DELETE]
*/
func (a *Client) AdminDeleteTagShort(params *AdminDeleteTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTagParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteTag",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/tags/{tagName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTagNoContent:
		return v, nil
	case *AdminDeleteTagNotFound:
		return nil, v
	case *AdminDeleteTagInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
