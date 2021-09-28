// Code generated by go-swagger; DO NOT EDIT.

package nr_admin_type

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new nr admin type API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for nr admin type API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminCreateType(params *AdminCreateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTypeCreated, *AdminCreateTypeBadRequest, *AdminCreateTypeUnauthorized, *AdminCreateTypeConflict, *AdminCreateTypeInternalServerError, error)

	AdminDeleteType(params *AdminDeleteTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTypeOK, *AdminDeleteTypeUnauthorized, *AdminDeleteTypeNotFound, *AdminDeleteTypeInternalServerError, error)

	AdminGetType(params *AdminGetTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetTypeOK, *AdminGetTypeUnauthorized, *AdminGetTypeNotFound, *AdminGetTypeInternalServerError, error)

	AdminUpdateType(params *AdminUpdateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTypeOK, *AdminUpdateTypeBadRequest, *AdminUpdateTypeUnauthorized, *AdminUpdateTypeNotFound, *AdminUpdateTypeConflict, *AdminUpdateTypeInternalServerError, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  AdminCreateType creates types

  Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [CREATE]
			creates a new type and subtype
*/
func (a *Client) AdminCreateType(params *AdminCreateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTypeCreated, *AdminCreateTypeBadRequest, *AdminCreateTypeUnauthorized, *AdminCreateTypeConflict, *AdminCreateTypeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTypeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateType",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &AdminCreateTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTypeCreated:
		return v, nil, nil, nil, nil, nil
	case *AdminCreateTypeBadRequest:
		return nil, v, nil, nil, nil, nil
	case *AdminCreateTypeUnauthorized:
		return nil, nil, v, nil, nil, nil
	case *AdminCreateTypeConflict:
		return nil, nil, nil, v, nil, nil
	case *AdminCreateTypeInternalServerError:
		return nil, nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminDeleteType deletes types

  Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [DELETE]
*/
func (a *Client) AdminDeleteType(params *AdminDeleteTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTypeOK, *AdminDeleteTypeUnauthorized, *AdminDeleteTypeNotFound, *AdminDeleteTypeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTypeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteType",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/types/{typeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &AdminDeleteTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTypeOK:
		return v, nil, nil, nil, nil
	case *AdminDeleteTypeUnauthorized:
		return nil, v, nil, nil, nil
	case *AdminDeleteTypeNotFound:
		return nil, nil, v, nil, nil
	case *AdminDeleteTypeInternalServerError:
		return nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminGetType gets types

  Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [READ]
*/
func (a *Client) AdminGetType(params *AdminGetTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetTypeOK, *AdminGetTypeUnauthorized, *AdminGetTypeNotFound, *AdminGetTypeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetTypeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetType",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &AdminGetTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetTypeOK:
		return v, nil, nil, nil, nil
	case *AdminGetTypeUnauthorized:
		return nil, v, nil, nil, nil
	case *AdminGetTypeNotFound:
		return nil, nil, v, nil, nil
	case *AdminGetTypeInternalServerError:
		return nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminUpdateType updates types

  Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [UPDATE]
			updates a type and subtype
*/
func (a *Client) AdminUpdateType(params *AdminUpdateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTypeOK, *AdminUpdateTypeBadRequest, *AdminUpdateTypeUnauthorized, *AdminUpdateTypeNotFound, *AdminUpdateTypeConflict, *AdminUpdateTypeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTypeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateType",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/types/{typeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &AdminUpdateTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTypeOK:
		return v, nil, nil, nil, nil, nil, nil
	case *AdminUpdateTypeBadRequest:
		return nil, v, nil, nil, nil, nil, nil
	case *AdminUpdateTypeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil
	case *AdminUpdateTypeNotFound:
		return nil, nil, nil, v, nil, nil, nil
	case *AdminUpdateTypeConflict:
		return nil, nil, nil, nil, v, nil, nil
	case *AdminUpdateTypeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
