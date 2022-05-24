// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package file_upload

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new file upload API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for file upload API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GeneratedUploadURL(params *GeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUploadURLOK, *GeneratedUploadURLBadRequest, *GeneratedUploadURLUnauthorized, *GeneratedUploadURLForbidden, *GeneratedUploadURLInternalServerError, error)
	GeneratedUploadURLShort(params *GeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUploadURLOK, error)
	GeneratedUserUploadContentURL(params *GeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUserUploadContentURLOK, *GeneratedUserUploadContentURLBadRequest, *GeneratedUserUploadContentURLUnauthorized, *GeneratedUserUploadContentURLForbidden, *GeneratedUserUploadContentURLConflict, *GeneratedUserUploadContentURLInternalServerError, error)
	GeneratedUserUploadContentURLShort(params *GeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUserUploadContentURLOK, error)
	PublicGeneratedUploadURL(params *PublicGeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUploadURLOK, *PublicGeneratedUploadURLBadRequest, *PublicGeneratedUploadURLUnauthorized, *PublicGeneratedUploadURLForbidden, *PublicGeneratedUploadURLInternalServerError, error)
	PublicGeneratedUploadURLShort(params *PublicGeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUploadURLOK, error)
	PublicGeneratedUserUploadContentURL(params *PublicGeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUserUploadContentURLOK, *PublicGeneratedUserUploadContentURLBadRequest, *PublicGeneratedUserUploadContentURLUnauthorized, *PublicGeneratedUserUploadContentURLForbidden, *PublicGeneratedUserUploadContentURLConflict, *PublicGeneratedUserUploadContentURLInternalServerError, error)
	PublicGeneratedUserUploadContentURLShort(params *PublicGeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUserUploadContentURLOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  GeneratedUploadURL generates upload URL

  Generate an upload URL. It&#39;s valid for 10 minutes.&lt;br/&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource = &lt;b&gt;&#34;ADMIN:NAMESPACE:{namespace}:FILEUPLOAD&#34;&lt;/b&gt;, action=1 &lt;b&gt;(CREATE)&lt;/b&gt;&lt;/li&gt;&lt;li&gt;&lt;i&gt;Action code&lt;/i&gt;: 11101&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: URL data&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GeneratedUploadURL(params *GeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUploadURLOK, *GeneratedUploadURLBadRequest, *GeneratedUploadURLUnauthorized, *GeneratedUploadURLForbidden, *GeneratedUploadURLInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGeneratedUploadURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "generatedUploadUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/folders/{folder}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GeneratedUploadURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GeneratedUploadURLOK:
		return v, nil, nil, nil, nil, nil

	case *GeneratedUploadURLBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GeneratedUploadURLUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GeneratedUploadURLForbidden:
		return nil, nil, nil, v, nil, nil

	case *GeneratedUploadURLInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GeneratedUploadURLShort(params *GeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUploadURLOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGeneratedUploadURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "generatedUploadUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/folders/{folder}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GeneratedUploadURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GeneratedUploadURLOK:
		return v, nil
	case *GeneratedUploadURLBadRequest:
		return nil, v
	case *GeneratedUploadURLUnauthorized:
		return nil, v
	case *GeneratedUploadURLForbidden:
		return nil, v
	case *GeneratedUploadURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GeneratedUserUploadContentURL generates upload URL for user content

  Generate an upload URL for user content. It&#39;s valid for 10 minutes.&lt;br/&gt;There are 2 kinds of storage limitation per user : maximum file count and maximum file size.&lt;br/&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource = &lt;b&gt;&#34;ADMIN:NAMESPACE:{namespace}:USER:{userId}:FILEUPLOAD&#34;&lt;/b&gt;, action=1 &lt;b&gt;(CREATE)&lt;/b&gt;&lt;/li&gt;&lt;li&gt;&lt;i&gt;Action code&lt;/i&gt;: 11102&lt;/li&gt;&lt;li&gt;&lt;i&gt;Default maximum file count per user&lt;/i&gt;: 10 files&lt;/li&gt;&lt;li&gt;&lt;i&gt;Default maximum file size per user&lt;/i&gt;: 104857600 bytes&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: URL data&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GeneratedUserUploadContentURL(params *GeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUserUploadContentURLOK, *GeneratedUserUploadContentURLBadRequest, *GeneratedUserUploadContentURLUnauthorized, *GeneratedUserUploadContentURLForbidden, *GeneratedUserUploadContentURLConflict, *GeneratedUserUploadContentURLInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGeneratedUserUploadContentURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "generatedUserUploadContentUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GeneratedUserUploadContentURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GeneratedUserUploadContentURLOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GeneratedUserUploadContentURLBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GeneratedUserUploadContentURLUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GeneratedUserUploadContentURLForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GeneratedUserUploadContentURLConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *GeneratedUserUploadContentURLInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GeneratedUserUploadContentURLShort(params *GeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUserUploadContentURLOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGeneratedUserUploadContentURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "generatedUserUploadContentUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GeneratedUserUploadContentURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GeneratedUserUploadContentURLOK:
		return v, nil
	case *GeneratedUserUploadContentURLBadRequest:
		return nil, v
	case *GeneratedUserUploadContentURLUnauthorized:
		return nil, v
	case *GeneratedUserUploadContentURLForbidden:
		return nil, v
	case *GeneratedUserUploadContentURLConflict:
		return nil, v
	case *GeneratedUserUploadContentURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGeneratedUploadURL generates upload URL

  Generate an upload URL. It&#39;s valid for 10 minutes.&lt;br/&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource = &lt;b&gt;&#34;NAMESPACE:{namespace}:FILEUPLOAD&#34;&lt;/b&gt;, action=1 &lt;b&gt;(CREATE)&lt;/b&gt;&lt;/li&gt;&lt;li&gt;&lt;i&gt;Action code&lt;/i&gt;: 11101&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: URL data&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicGeneratedUploadURL(params *PublicGeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUploadURLOK, *PublicGeneratedUploadURLBadRequest, *PublicGeneratedUploadURLUnauthorized, *PublicGeneratedUploadURLForbidden, *PublicGeneratedUploadURLInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratedUploadURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGeneratedUploadUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/folders/{folder}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratedUploadURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratedUploadURLOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGeneratedUploadURLBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGeneratedUploadURLUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGeneratedUploadURLForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicGeneratedUploadURLInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGeneratedUploadURLShort(params *PublicGeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUploadURLOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratedUploadURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGeneratedUploadUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/folders/{folder}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratedUploadURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratedUploadURLOK:
		return v, nil
	case *PublicGeneratedUploadURLBadRequest:
		return nil, v
	case *PublicGeneratedUploadURLUnauthorized:
		return nil, v
	case *PublicGeneratedUploadURLForbidden:
		return nil, v
	case *PublicGeneratedUploadURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGeneratedUserUploadContentURL generates upload URL for user content

  Generate an upload URL for user content. It&#39;s valid for 10 minutes.&lt;br/&gt;There are 2 kinds of storage limitation per user : maximum file count and maximum file size.&lt;br/&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource = &lt;b&gt;&#34;NAMESPACE:{namespace}:USER:{userId}:FILEUPLOAD&#34;&lt;/b&gt;, action=1 &lt;b&gt;(CREATE)&lt;/b&gt;&lt;/li&gt;&lt;li&gt;&lt;i&gt;Action code&lt;/i&gt;: 11102&lt;/li&gt;&lt;li&gt;&lt;i&gt;Default maximum file count per user&lt;/i&gt;: 10 files&lt;/li&gt;&lt;li&gt;&lt;i&gt;Default maximum file size per user&lt;/i&gt;: 104857600 bytes&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: URL data&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicGeneratedUserUploadContentURL(params *PublicGeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUserUploadContentURLOK, *PublicGeneratedUserUploadContentURLBadRequest, *PublicGeneratedUserUploadContentURLUnauthorized, *PublicGeneratedUserUploadContentURLForbidden, *PublicGeneratedUserUploadContentURLConflict, *PublicGeneratedUserUploadContentURLInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratedUserUploadContentURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGeneratedUserUploadContentUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratedUserUploadContentURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratedUserUploadContentURLOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGeneratedUserUploadContentURLBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGeneratedUserUploadContentURLUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGeneratedUserUploadContentURLForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGeneratedUserUploadContentURLConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGeneratedUserUploadContentURLInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGeneratedUserUploadContentURLShort(params *PublicGeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUserUploadContentURLOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratedUserUploadContentURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGeneratedUserUploadContentUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratedUserUploadContentURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratedUserUploadContentURLOK:
		return v, nil
	case *PublicGeneratedUserUploadContentURLBadRequest:
		return nil, v
	case *PublicGeneratedUserUploadContentURLUnauthorized:
		return nil, v
	case *PublicGeneratedUserUploadContentURLForbidden:
		return nil, v
	case *PublicGeneratedUserUploadContentURLConflict:
		return nil, v
	case *PublicGeneratedUserUploadContentURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
