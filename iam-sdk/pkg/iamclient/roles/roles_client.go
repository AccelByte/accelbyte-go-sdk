// Code generated by go-swagger; DO NOT EDIT.

package roles

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new roles API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for roles API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminCreateRoleV3(params *AdminCreateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV3Created, *AdminCreateRoleV3BadRequest, *AdminCreateRoleV3Unauthorized, *AdminCreateRoleV3Forbidden, error)

	AdminGetRolesV3(params *AdminGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV3OK, *AdminGetRolesV3BadRequest, *AdminGetRolesV3Unauthorized, *AdminGetRolesV3Forbidden, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  AdminCreateRoleV3 creates role

  Required permission 'ADMIN:ROLE [CREATE]' <br>action code: 10401
*/
func (a *Client) AdminCreateRoleV3(params *AdminCreateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV3Created, *AdminCreateRoleV3BadRequest, *AdminCreateRoleV3Unauthorized, *AdminCreateRoleV3Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateRoleV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateRoleV3Created:
		return v, nil, nil, nil, nil
	case *AdminCreateRoleV3BadRequest:
		return nil, v, nil, nil, nil
	case *AdminCreateRoleV3Unauthorized:
		return nil, nil, v, nil, nil
	case *AdminCreateRoleV3Forbidden:
		return nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminGetRolesV3 gets roles

  Required permission 'ADMIN:ROLE [READ]'<br> <p>action code: 10414</p>
*/
func (a *Client) AdminGetRolesV3(params *AdminGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV3OK, *AdminGetRolesV3BadRequest, *AdminGetRolesV3Unauthorized, *AdminGetRolesV3Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRolesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetRolesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRolesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRolesV3OK:
		return v, nil, nil, nil, nil
	case *AdminGetRolesV3BadRequest:
		return nil, v, nil, nil, nil
	case *AdminGetRolesV3Unauthorized:
		return nil, nil, v, nil, nil
	case *AdminGetRolesV3Forbidden:
		return nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
