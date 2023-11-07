// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package public_like_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public like v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public like v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicListContentLikeV2(params *PublicListContentLikeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentLikeV2OK, *PublicListContentLikeV2BadRequest, *PublicListContentLikeV2Unauthorized, *PublicListContentLikeV2InternalServerError, error)
	PublicListContentLikeV2Short(params *PublicListContentLikeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentLikeV2OK, error)
	UpdateContentLikeStatusV2(params *UpdateContentLikeStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusV2OK, *UpdateContentLikeStatusV2BadRequest, *UpdateContentLikeStatusV2Unauthorized, *UpdateContentLikeStatusV2InternalServerError, error)
	UpdateContentLikeStatusV2Short(params *UpdateContentLikeStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use PublicListContentLikeV2Short instead.

PublicListContentLikeV2 retrieve list of user that like specified content.
This endpoint will only display the list of users who performed like from v2 endpoint.
*/
func (a *Client) PublicListContentLikeV2(params *PublicListContentLikeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentLikeV2OK, *PublicListContentLikeV2BadRequest, *PublicListContentLikeV2Unauthorized, *PublicListContentLikeV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListContentLikeV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListContentLikeV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListContentLikeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListContentLikeV2OK:
		return v, nil, nil, nil, nil

	case *PublicListContentLikeV2BadRequest:
		return nil, v, nil, nil, nil

	case *PublicListContentLikeV2Unauthorized:
		return nil, nil, v, nil, nil

	case *PublicListContentLikeV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListContentLikeV2Short retrieve list of user that like specified content.
This endpoint will only display the list of users who performed like from v2 endpoint.
*/
func (a *Client) PublicListContentLikeV2Short(params *PublicListContentLikeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentLikeV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListContentLikeV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListContentLikeV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListContentLikeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListContentLikeV2OK:
		return v, nil
	case *PublicListContentLikeV2BadRequest:
		return nil, v
	case *PublicListContentLikeV2Unauthorized:
		return nil, v
	case *PublicListContentLikeV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateContentLikeStatusV2Short instead.

UpdateContentLikeStatusV2 update like/unlike status to a content
Requires valid user token
*/
func (a *Client) UpdateContentLikeStatusV2(params *UpdateContentLikeStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusV2OK, *UpdateContentLikeStatusV2BadRequest, *UpdateContentLikeStatusV2Unauthorized, *UpdateContentLikeStatusV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateContentLikeStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateContentLikeStatusV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateContentLikeStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateContentLikeStatusV2OK:
		return v, nil, nil, nil, nil

	case *UpdateContentLikeStatusV2BadRequest:
		return nil, v, nil, nil, nil

	case *UpdateContentLikeStatusV2Unauthorized:
		return nil, nil, v, nil, nil

	case *UpdateContentLikeStatusV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateContentLikeStatusV2Short update like/unlike status to a content
Requires valid user token
*/
func (a *Client) UpdateContentLikeStatusV2Short(params *UpdateContentLikeStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateContentLikeStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateContentLikeStatusV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateContentLikeStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateContentLikeStatusV2OK:
		return v, nil
	case *UpdateContentLikeStatusV2BadRequest:
		return nil, v
	case *UpdateContentLikeStatusV2Unauthorized:
		return nil, v
	case *UpdateContentLikeStatusV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
