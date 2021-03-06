// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package public_channel

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public channel API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public channel API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateChannel(params *CreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelCreated, *CreateChannelBadRequest, *CreateChannelUnauthorized, *CreateChannelInternalServerError, error)
	CreateChannelShort(params *CreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelCreated, error)
	DeleteChannel(params *DeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelNoContent, *DeleteChannelUnauthorized, *DeleteChannelNotFound, *DeleteChannelInternalServerError, error)
	DeleteChannelShort(params *DeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelNoContent, error)
	GetChannels(params *GetChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*GetChannelsOK, *GetChannelsUnauthorized, *GetChannelsNotFound, *GetChannelsInternalServerError, error)
	GetChannelsShort(params *GetChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*GetChannelsOK, error)
	UpdateChannel(params *UpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateChannelOK, *UpdateChannelBadRequest, *UpdateChannelUnauthorized, *UpdateChannelNotFound, *UpdateChannelInternalServerError, error)
	UpdateChannelShort(params *UpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateChannelOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  CreateChannel creates channel

  Required permission &lt;b&gt;NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]&lt;/b&gt;
*/
func (a *Client) CreateChannel(params *CreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelCreated, *CreateChannelBadRequest, *CreateChannelUnauthorized, *CreateChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateChannel",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateChannelCreated:
		return v, nil, nil, nil, nil

	case *CreateChannelBadRequest:
		return nil, v, nil, nil, nil

	case *CreateChannelUnauthorized:
		return nil, nil, v, nil, nil

	case *CreateChannelInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) CreateChannelShort(params *CreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateChannel",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateChannelCreated:
		return v, nil
	case *CreateChannelBadRequest:
		return nil, v
	case *CreateChannelUnauthorized:
		return nil, v
	case *CreateChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  DeleteChannel deletes channel

  Required permission &lt;b&gt;NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]&lt;/b&gt;
*/
func (a *Client) DeleteChannel(params *DeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelNoContent, *DeleteChannelUnauthorized, *DeleteChannelNotFound, *DeleteChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteChannelNoContent:
		return v, nil, nil, nil, nil

	case *DeleteChannelUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteChannelNotFound:
		return nil, nil, v, nil, nil

	case *DeleteChannelInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) DeleteChannelShort(params *DeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteChannelNoContent:
		return v, nil
	case *DeleteChannelUnauthorized:
		return nil, v
	case *DeleteChannelNotFound:
		return nil, v
	case *DeleteChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetChannels gets channels

  Required permission &lt;b&gt;NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]&lt;/b&gt;
*/
func (a *Client) GetChannels(params *GetChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*GetChannelsOK, *GetChannelsUnauthorized, *GetChannelsNotFound, *GetChannelsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetChannelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetChannels",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetChannelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetChannelsOK:
		return v, nil, nil, nil, nil

	case *GetChannelsUnauthorized:
		return nil, v, nil, nil, nil

	case *GetChannelsNotFound:
		return nil, nil, v, nil, nil

	case *GetChannelsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetChannelsShort(params *GetChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*GetChannelsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetChannelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetChannels",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetChannelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetChannelsOK:
		return v, nil
	case *GetChannelsUnauthorized:
		return nil, v
	case *GetChannelsNotFound:
		return nil, v
	case *GetChannelsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  UpdateChannel updates channel

  Required permission &lt;b&gt;NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]&lt;/b&gt;
*/
func (a *Client) UpdateChannel(params *UpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateChannelOK, *UpdateChannelBadRequest, *UpdateChannelUnauthorized, *UpdateChannelNotFound, *UpdateChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateChannelOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateChannelBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateChannelUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateChannelNotFound:
		return nil, nil, nil, v, nil, nil

	case *UpdateChannelInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) UpdateChannelShort(params *UpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateChannelOK:
		return v, nil
	case *UpdateChannelBadRequest:
		return nil, v
	case *UpdateChannelUnauthorized:
		return nil, v
	case *UpdateChannelNotFound:
		return nil, v
	case *UpdateChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
