// Code generated by go-swagger; DO NOT EDIT.

package nr_public_channel

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new nr public channel API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for nr public channel API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateChannel(params *CreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelCreated, *CreateChannelBadRequest, *CreateChannelUnauthorized, *CreateChannelInternalServerError, error)

	DeleteChannel(params *DeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelOK, *DeleteChannelUnauthorized, *DeleteChannelNotFound, *DeleteChannelInternalServerError, error)

	GetChannels(params *GetChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*GetChannelsOK, *GetChannelsUnauthorized, *GetChannelsNotFound, *GetChannelsInternalServerError, error)

	UpdateChannel(params *UpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateChannelOK, *UpdateChannelBadRequest, *UpdateChannelUnauthorized, *UpdateChannelNotFound, *UpdateChannelInternalServerError, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  CreateChannel creates channel

  Required permission <b>NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]</b>
*/
func (a *Client) CreateChannel(params *CreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelCreated, *CreateChannelBadRequest, *CreateChannelUnauthorized, *CreateChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateChannel",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"http"},
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

/*
  DeleteChannel deletes channel

  Required permission <b>NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]</b>
*/
func (a *Client) DeleteChannel(params *DeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelOK, *DeleteChannelUnauthorized, *DeleteChannelNotFound, *DeleteChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"http"},
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

	case *DeleteChannelOK:
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

/*
  GetChannels gets channels

  Required permission <b>NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]</b>
*/
func (a *Client) GetChannels(params *GetChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*GetChannelsOK, *GetChannelsUnauthorized, *GetChannelsNotFound, *GetChannelsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetChannelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetChannels",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"http"},
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

/*
  UpdateChannel updates channel

  Required permission <b>NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]</b>
*/
func (a *Client) UpdateChannel(params *UpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateChannelOK, *UpdateChannelBadRequest, *UpdateChannelUnauthorized, *UpdateChannelNotFound, *UpdateChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"http"},
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

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
