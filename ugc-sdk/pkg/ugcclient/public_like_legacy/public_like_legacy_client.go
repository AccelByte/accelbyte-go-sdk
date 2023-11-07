// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package public_like_legacy

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public like legacy API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public like legacy API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetLikedContent(params *GetLikedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetLikedContentOK, *GetLikedContentUnauthorized, *GetLikedContentNotFound, *GetLikedContentInternalServerError, error)
	GetLikedContentShort(params *GetLikedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetLikedContentOK, error)
	UpdateContentLikeStatus(params *UpdateContentLikeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusOK, *UpdateContentLikeStatusBadRequest, *UpdateContentLikeStatusUnauthorized, *UpdateContentLikeStatusInternalServerError, error)
	UpdateContentLikeStatusShort(params *UpdateContentLikeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetLikedContentShort instead.

GetLikedContent get liked contents
Requires valid user token.

For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

`tags=red`

`tags=red&animal;`

`tags=red|animal`

`tags=red&animal;|wild`

`tags=red&(animal|wild)`

The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

Allowed character for operand: alphanumeric, underscore `_` and dash `-`

Allowed character for operator: `&` `|` `(` `)`

 Please note that value of tags query param should be URL encoded
*/
func (a *Client) GetLikedContent(params *GetLikedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetLikedContentOK, *GetLikedContentUnauthorized, *GetLikedContentNotFound, *GetLikedContentInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLikedContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetLikedContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/liked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLikedContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLikedContentOK:
		return v, nil, nil, nil, nil

	case *GetLikedContentUnauthorized:
		return nil, v, nil, nil, nil

	case *GetLikedContentNotFound:
		return nil, nil, v, nil, nil

	case *GetLikedContentInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLikedContentShort get liked contents
Requires valid user token.

For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

`tags=red`

`tags=red&animal;`

`tags=red|animal`

`tags=red&animal;|wild`

`tags=red&(animal|wild)`

The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

Allowed character for operand: alphanumeric, underscore `_` and dash `-`

Allowed character for operator: `&` `|` `(` `)`

 Please note that value of tags query param should be URL encoded
*/
func (a *Client) GetLikedContentShort(params *GetLikedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetLikedContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLikedContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetLikedContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/liked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLikedContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLikedContentOK:
		return v, nil
	case *GetLikedContentUnauthorized:
		return nil, v
	case *GetLikedContentNotFound:
		return nil, v
	case *GetLikedContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateContentLikeStatusShort instead.

UpdateContentLikeStatus update like/unlike status to a content
Requires valid user token
*/
func (a *Client) UpdateContentLikeStatus(params *UpdateContentLikeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusOK, *UpdateContentLikeStatusBadRequest, *UpdateContentLikeStatusUnauthorized, *UpdateContentLikeStatusInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateContentLikeStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateContentLikeStatus",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateContentLikeStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateContentLikeStatusOK:
		return v, nil, nil, nil, nil

	case *UpdateContentLikeStatusBadRequest:
		return nil, v, nil, nil, nil

	case *UpdateContentLikeStatusUnauthorized:
		return nil, nil, v, nil, nil

	case *UpdateContentLikeStatusInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateContentLikeStatusShort update like/unlike status to a content
Requires valid user token
*/
func (a *Client) UpdateContentLikeStatusShort(params *UpdateContentLikeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateContentLikeStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateContentLikeStatus",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateContentLikeStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateContentLikeStatusOK:
		return v, nil
	case *UpdateContentLikeStatusBadRequest:
		return nil, v
	case *UpdateContentLikeStatusUnauthorized:
		return nil, v
	case *UpdateContentLikeStatusInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
