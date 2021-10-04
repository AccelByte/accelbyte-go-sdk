// Code generated by go-swagger; DO NOT EDIT.

package nr_admin_channel

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new nr admin channel API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for nr admin channel API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminCreateChannel(params *AdminCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChannelCreated, *AdminCreateChannelBadRequest, *AdminCreateChannelUnauthorized, *AdminCreateChannelInternalServerError, error)

	AdminDeleteChannel(params *AdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChannelOK, *AdminDeleteChannelUnauthorized, *AdminDeleteChannelNotFound, *AdminDeleteChannelInternalServerError, error)

	AdminGetChannel(params *AdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChannelOK, *AdminGetChannelUnauthorized, *AdminGetChannelNotFound, *AdminGetChannelInternalServerError, error)

	AdminUpdateChannel(params *AdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChannelOK, *AdminUpdateChannelBadRequest, *AdminUpdateChannelUnauthorized, *AdminUpdateChannelNotFound, *AdminUpdateChannelInternalServerError, error)

	SingleAdminDeleteChannel(params *SingleAdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteChannelOK, *SingleAdminDeleteChannelUnauthorized, *SingleAdminDeleteChannelNotFound, *SingleAdminDeleteChannelInternalServerError, error)

	SingleAdminGetChannel(params *SingleAdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetChannelOK, *SingleAdminGetChannelUnauthorized, *SingleAdminGetChannelNotFound, *SingleAdminGetChannelInternalServerError, error)

	SingleAdminUpdateChannel(params *SingleAdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateChannelOK, *SingleAdminUpdateChannelBadRequest, *SingleAdminUpdateChannelUnauthorized, *SingleAdminUpdateChannelNotFound, *SingleAdminUpdateChannelInternalServerError, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  AdminCreateChannel creates channel

  Required permission <b>ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]</b>
*/
func (a *Client) AdminCreateChannel(params *AdminCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChannelCreated, *AdminCreateChannelBadRequest, *AdminCreateChannelUnauthorized, *AdminCreateChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateChannel",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &AdminCreateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateChannelCreated:
		return v, nil, nil, nil, nil
	case *AdminCreateChannelBadRequest:
		return nil, v, nil, nil, nil
	case *AdminCreateChannelUnauthorized:
		return nil, nil, v, nil, nil
	case *AdminCreateChannelInternalServerError:
		return nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminDeleteChannel deletes channel

  Required permission <b>ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]</b>
*/
func (a *Client) AdminDeleteChannel(params *AdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChannelOK, *AdminDeleteChannelUnauthorized, *AdminDeleteChannelNotFound, *AdminDeleteChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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

	case *AdminDeleteChannelOK:
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
  AdminGetChannel gets channels

  Required permission <b>ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]</b>
*/
func (a *Client) AdminGetChannel(params *AdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChannelOK, *AdminGetChannelUnauthorized, *AdminGetChannelNotFound, *AdminGetChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetChannel",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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
  AdminUpdateChannel updates channel

  Required permission <b>ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]</b>
*/
func (a *Client) AdminUpdateChannel(params *AdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChannelOK, *AdminUpdateChannelBadRequest, *AdminUpdateChannelUnauthorized, *AdminUpdateChannelNotFound, *AdminUpdateChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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
  SingleAdminDeleteChannel deletes channel

  Required permission <b>ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]</b>
*/
func (a *Client) SingleAdminDeleteChannel(params *SingleAdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteChannelOK, *SingleAdminDeleteChannelUnauthorized, *SingleAdminDeleteChannelNotFound, *SingleAdminDeleteChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminDeleteChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminDeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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

	case *SingleAdminDeleteChannelOK:
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
  SingleAdminGetChannel gets channels

  Required permission <b>ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]</b>
*/
func (a *Client) SingleAdminGetChannel(params *SingleAdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetChannelOK, *SingleAdminGetChannelUnauthorized, *SingleAdminGetChannelNotFound, *SingleAdminGetChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminGetChannel",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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
  SingleAdminUpdateChannel updates channel

  Required permission <b>ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]</b>
*/
func (a *Client) SingleAdminUpdateChannel(params *SingleAdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateChannelOK, *SingleAdminUpdateChannelBadRequest, *SingleAdminUpdateChannelUnauthorized, *SingleAdminUpdateChannelNotFound, *SingleAdminUpdateChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminUpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}