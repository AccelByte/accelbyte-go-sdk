// Code generated by go-swagger; DO NOT EDIT.

package config

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetAllConfigV1(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, *AdminGetAllConfigV1BadRequest, *AdminGetAllConfigV1Unauthorized, *AdminGetAllConfigV1Forbidden, *AdminGetAllConfigV1NotFound, *AdminGetAllConfigV1InternalServerError, error)

	AdminGetConfigV1(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, *AdminGetConfigV1BadRequest, *AdminGetConfigV1Unauthorized, *AdminGetConfigV1Forbidden, *AdminGetConfigV1NotFound, *AdminGetConfigV1InternalServerError, error)

	AdminUpdateConfigV1(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1OK, *AdminUpdateConfigV1BadRequest, *AdminUpdateConfigV1Unauthorized, *AdminUpdateConfigV1Forbidden, *AdminUpdateConfigV1NotFound, *AdminUpdateConfigV1PreconditionFailed, *AdminUpdateConfigV1InternalServerError, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  AdminGetAllConfigV1 admins get all namespaces config

  Required permission : <code>ADMIN:NAMESPACE:*:LOBBY:CONFIG [READ]</code> with scope <code>social</code>
			<br>get lobby config of all namespaces.
*/
func (a *Client) AdminGetAllConfigV1(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, *AdminGetAllConfigV1BadRequest, *AdminGetAllConfigV1Unauthorized, *AdminGetAllConfigV1Forbidden, *AdminGetAllConfigV1NotFound, *AdminGetAllConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllConfigV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &AdminGetAllConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigV1OK:
		return v, nil, nil, nil, nil, nil, nil
	case *AdminGetAllConfigV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil
	case *AdminGetAllConfigV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil
	case *AdminGetAllConfigV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil
	case *AdminGetAllConfigV1NotFound:
		return nil, nil, nil, nil, v, nil, nil
	case *AdminGetAllConfigV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminGetConfigV1 admins get namespace config

  Required permission : <code>ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]</code> with scope <code>social</code>
			<br>get lobby config of a namespace.
*/
func (a *Client) AdminGetConfigV1(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, *AdminGetConfigV1BadRequest, *AdminGetConfigV1Unauthorized, *AdminGetConfigV1Forbidden, *AdminGetConfigV1NotFound, *AdminGetConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &AdminGetConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigV1OK:
		return v, nil, nil, nil, nil, nil, nil
	case *AdminGetConfigV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil
	case *AdminGetConfigV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil
	case *AdminGetConfigV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil
	case *AdminGetConfigV1NotFound:
		return nil, nil, nil, nil, v, nil, nil
	case *AdminGetConfigV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminUpdateConfigV1 admins update namespace config

  Required permission : <code>ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]</code> with scope <code>social</code>
			<br>update lobby config of a namespace.
*/
func (a *Client) AdminUpdateConfigV1(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1OK, *AdminUpdateConfigV1BadRequest, *AdminUpdateConfigV1Unauthorized, *AdminUpdateConfigV1Forbidden, *AdminUpdateConfigV1NotFound, *AdminUpdateConfigV1PreconditionFailed, *AdminUpdateConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfigV1",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &AdminUpdateConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigV1OK:
		return v, nil, nil, nil, nil, nil, nil, nil
	case *AdminUpdateConfigV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil
	case *AdminUpdateConfigV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil
	case *AdminUpdateConfigV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil
	case *AdminUpdateConfigV1NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil
	case *AdminUpdateConfigV1PreconditionFailed:
		return nil, nil, nil, nil, nil, v, nil, nil
	case *AdminUpdateConfigV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
