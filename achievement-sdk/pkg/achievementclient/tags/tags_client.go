// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package tags

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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
	AdminListTags(params *AdminListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsOK, *AdminListTagsBadRequest, *AdminListTagsUnauthorized, *AdminListTagsNotFound, *AdminListTagsInternalServerError, error)
	AdminListTagsShort(params *AdminListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsOK, error)
	PublicListTags(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsOK, *PublicListTagsBadRequest, *PublicListTagsUnauthorized, *PublicListTagsNotFound, *PublicListTagsInternalServerError, error)
	PublicListTagsShort(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: Use AdminListTagsShort instead.

  AdminListTags queries tags

  &lt;p&gt;Required permission
&lt;code&gt;ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]&lt;/code&gt; and scope &lt;code&gt;social&lt;/code&gt;&lt;/p&gt;
*/
func (a *Client) AdminListTags(params *AdminListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsOK, *AdminListTagsBadRequest, *AdminListTagsUnauthorized, *AdminListTagsNotFound, *AdminListTagsInternalServerError, error) {
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
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/tags",
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListTagsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminListTagsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminListTagsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminListTagsNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminListTagsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminListTagsShort queries tags

  &lt;p&gt;Required permission
&lt;code&gt;ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]&lt;/code&gt; and scope &lt;code&gt;social&lt;/code&gt;&lt;/p&gt;
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
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/tags",
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
	case *AdminListTagsUnauthorized:
		return nil, v
	case *AdminListTagsNotFound:
		return nil, v
	case *AdminListTagsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: Use PublicListTagsShort instead.

  PublicListTags queries tags

  &lt;p&gt;Required permission
&lt;code&gt;NAMESPACE:{namespace}:ACHIEVEMENT [READ]&lt;/code&gt; and scope &lt;code&gt;social&lt;/code&gt;&lt;/p&gt;
*/
func (a *Client) PublicListTags(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsOK, *PublicListTagsBadRequest, *PublicListTagsUnauthorized, *PublicListTagsNotFound, *PublicListTagsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListTagsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListTags",
		Method:             "GET",
		PathPattern:        "/achievement/v1/public/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListTagsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListTagsOK:
		return v, nil, nil, nil, nil, nil

	case *PublicListTagsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicListTagsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicListTagsNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicListTagsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicListTagsShort queries tags

  &lt;p&gt;Required permission
&lt;code&gt;NAMESPACE:{namespace}:ACHIEVEMENT [READ]&lt;/code&gt; and scope &lt;code&gt;social&lt;/code&gt;&lt;/p&gt;
*/
func (a *Client) PublicListTagsShort(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListTagsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListTags",
		Method:             "GET",
		PathPattern:        "/achievement/v1/public/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListTagsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListTagsOK:
		return v, nil
	case *PublicListTagsBadRequest:
		return nil, v
	case *PublicListTagsUnauthorized:
		return nil, v
	case *PublicListTagsNotFound:
		return nil, v
	case *PublicListTagsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}