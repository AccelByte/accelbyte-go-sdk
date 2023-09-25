// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package clients

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new clients API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for clients API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetClients(params *GetClientsParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsOK, *GetClientsUnauthorized, *GetClientsForbidden, error)
	GetClientsShort(params *GetClientsParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsOK, error)
	CreateClient(params *CreateClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientCreated, *CreateClientBadRequest, *CreateClientUnauthorized, *CreateClientForbidden, *CreateClientConflict, error)
	CreateClientShort(params *CreateClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientCreated, error)
	GetClient(params *GetClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientOK, *GetClientUnauthorized, *GetClientForbidden, *GetClientNotFound, error)
	GetClientShort(params *GetClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientOK, error)
	UpdateClient(params *UpdateClientParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientOK, *UpdateClientBadRequest, *UpdateClientUnauthorized, *UpdateClientForbidden, *UpdateClientNotFound, error)
	UpdateClientShort(params *UpdateClientParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientOK, error)
	DeleteClient(params *DeleteClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientNoContent, *DeleteClientUnauthorized, *DeleteClientForbidden, *DeleteClientNotFound, error)
	DeleteClientShort(params *DeleteClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientNoContent, error)
	UpdateClientPermission(params *UpdateClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientPermissionNoContent, *UpdateClientPermissionBadRequest, *UpdateClientPermissionUnauthorized, *UpdateClientPermissionForbidden, *UpdateClientPermissionNotFound, error)
	UpdateClientPermissionShort(params *UpdateClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientPermissionNoContent, error)
	AddClientPermission(params *AddClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddClientPermissionNoContent, *AddClientPermissionBadRequest, *AddClientPermissionUnauthorized, *AddClientPermissionForbidden, *AddClientPermissionNotFound, error)
	AddClientPermissionShort(params *AddClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddClientPermissionNoContent, error)
	DeleteClientPermission(params *DeleteClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientPermissionNoContent, *DeleteClientPermissionBadRequest, *DeleteClientPermissionUnauthorized, *DeleteClientPermissionForbidden, *DeleteClientPermissionNotFound, error)
	DeleteClientPermissionShort(params *DeleteClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientPermissionNoContent, error)
	UpdateClientSecret(params *UpdateClientSecretParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientSecretNoContent, *UpdateClientSecretBadRequest, *UpdateClientSecretUnauthorized, *UpdateClientSecretForbidden, *UpdateClientSecretNotFound, error)
	UpdateClientSecretShort(params *UpdateClientSecretParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientSecretNoContent, error)
	GetClientsbyNamespace(params *GetClientsbyNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsbyNamespaceOK, *GetClientsbyNamespaceUnauthorized, *GetClientsbyNamespaceForbidden, error)
	GetClientsbyNamespaceShort(params *GetClientsbyNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsbyNamespaceOK, error)
	CreateClientByNamespace(params *CreateClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientByNamespaceCreated, *CreateClientByNamespaceBadRequest, *CreateClientByNamespaceUnauthorized, *CreateClientByNamespaceForbidden, *CreateClientByNamespaceConflict, error)
	CreateClientByNamespaceShort(params *CreateClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientByNamespaceCreated, error)
	DeleteClientByNamespace(params *DeleteClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientByNamespaceNoContent, *DeleteClientByNamespaceUnauthorized, *DeleteClientByNamespaceForbidden, *DeleteClientByNamespaceNotFound, error)
	DeleteClientByNamespaceShort(params *DeleteClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientByNamespaceNoContent, error)
	AdminGetClientsByNamespaceV3(params *AdminGetClientsByNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsByNamespaceV3OK, *AdminGetClientsByNamespaceV3BadRequest, *AdminGetClientsByNamespaceV3Unauthorized, *AdminGetClientsByNamespaceV3Forbidden, error)
	AdminGetClientsByNamespaceV3Short(params *AdminGetClientsByNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsByNamespaceV3OK, error)
	AdminCreateClientV3(params *AdminCreateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateClientV3Created, *AdminCreateClientV3BadRequest, *AdminCreateClientV3Unauthorized, *AdminCreateClientV3Forbidden, *AdminCreateClientV3Conflict, error)
	AdminCreateClientV3Short(params *AdminCreateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateClientV3Created, error)
	AdminGetClientsbyNamespacebyIDV3(params *AdminGetClientsbyNamespacebyIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsbyNamespacebyIDV3OK, *AdminGetClientsbyNamespacebyIDV3BadRequest, *AdminGetClientsbyNamespacebyIDV3Unauthorized, *AdminGetClientsbyNamespacebyIDV3Forbidden, *AdminGetClientsbyNamespacebyIDV3NotFound, error)
	AdminGetClientsbyNamespacebyIDV3Short(params *AdminGetClientsbyNamespacebyIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsbyNamespacebyIDV3OK, error)
	AdminDeleteClientV3(params *AdminDeleteClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientV3NoContent, *AdminDeleteClientV3BadRequest, *AdminDeleteClientV3Unauthorized, *AdminDeleteClientV3Forbidden, *AdminDeleteClientV3NotFound, *AdminDeleteClientV3Conflict, error)
	AdminDeleteClientV3Short(params *AdminDeleteClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientV3NoContent, error)
	AdminUpdateClientV3(params *AdminUpdateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientV3OK, *AdminUpdateClientV3BadRequest, *AdminUpdateClientV3Unauthorized, *AdminUpdateClientV3Forbidden, *AdminUpdateClientV3NotFound, error)
	AdminUpdateClientV3Short(params *AdminUpdateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientV3OK, error)
	AdminUpdateClientPermissionV3(params *AdminUpdateClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientPermissionV3NoContent, *AdminUpdateClientPermissionV3BadRequest, *AdminUpdateClientPermissionV3Unauthorized, *AdminUpdateClientPermissionV3Forbidden, *AdminUpdateClientPermissionV3NotFound, error)
	AdminUpdateClientPermissionV3Short(params *AdminUpdateClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientPermissionV3NoContent, error)
	AdminAddClientPermissionsV3(params *AdminAddClientPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddClientPermissionsV3NoContent, *AdminAddClientPermissionsV3BadRequest, *AdminAddClientPermissionsV3Unauthorized, *AdminAddClientPermissionsV3Forbidden, *AdminAddClientPermissionsV3NotFound, error)
	AdminAddClientPermissionsV3Short(params *AdminAddClientPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddClientPermissionsV3NoContent, error)
	AdminDeleteClientPermissionV3(params *AdminDeleteClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientPermissionV3NoContent, *AdminDeleteClientPermissionV3BadRequest, *AdminDeleteClientPermissionV3Unauthorized, *AdminDeleteClientPermissionV3Forbidden, *AdminDeleteClientPermissionV3NotFound, error)
	AdminDeleteClientPermissionV3Short(params *AdminDeleteClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientPermissionV3NoContent, error)
	AdminUpdateClientSecretV3(params *AdminUpdateClientSecretV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientSecretV3NoContent, *AdminUpdateClientSecretV3BadRequest, *AdminUpdateClientSecretV3Unauthorized, *AdminUpdateClientSecretV3Forbidden, *AdminUpdateClientSecretV3NotFound, error)
	AdminUpdateClientSecretV3Short(params *AdminUpdateClientSecretV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientSecretV3NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetClientsShort instead.

GetClients get all clients


## The endpoint is going to be deprecated




Required permission 'CLIENT [READ]'.

Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [GET]
*/
func (a *Client) GetClients(params *GetClientsParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsOK, *GetClientsUnauthorized, *GetClientsForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetClientsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetClients",
		Method:             "GET",
		PathPattern:        "/iam/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetClientsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetClientsOK:
		return v, nil, nil, nil

	case *GetClientsUnauthorized:
		return nil, v, nil, nil

	case *GetClientsForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetClientsShort get all clients


## The endpoint is going to be deprecated




Required permission 'CLIENT [READ]'.

Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [GET]
*/
func (a *Client) GetClientsShort(params *GetClientsParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetClientsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetClients",
		Method:             "GET",
		PathPattern:        "/iam/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetClientsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetClientsOK:
		return v, nil
	case *GetClientsUnauthorized:
		return nil, v
	case *GetClientsForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateClientShort instead.

CreateClient create client


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [CREATE]'.
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [POST]
*/
func (a *Client) CreateClient(params *CreateClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientCreated, *CreateClientBadRequest, *CreateClientUnauthorized, *CreateClientForbidden, *CreateClientConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateClient",
		Method:             "POST",
		PathPattern:        "/iam/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateClientCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateClientBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateClientUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateClientForbidden:
		return nil, nil, nil, v, nil, nil

	case *CreateClientConflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateClientShort create client


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [CREATE]'.
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [POST]
*/
func (a *Client) CreateClientShort(params *CreateClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateClient",
		Method:             "POST",
		PathPattern:        "/iam/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateClientCreated:
		return v, nil
	case *CreateClientBadRequest:
		return nil, v
	case *CreateClientUnauthorized:
		return nil, v
	case *CreateClientForbidden:
		return nil, v
	case *CreateClientConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetClientShort instead.

GetClient get client


## The endpoint is going to be deprecated




Required permission 'CLIENT [READ]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [GET]
*/
func (a *Client) GetClient(params *GetClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientOK, *GetClientUnauthorized, *GetClientForbidden, *GetClientNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetClient",
		Method:             "GET",
		PathPattern:        "/iam/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetClientOK:
		return v, nil, nil, nil, nil

	case *GetClientUnauthorized:
		return nil, v, nil, nil, nil

	case *GetClientForbidden:
		return nil, nil, v, nil, nil

	case *GetClientNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetClientShort get client


## The endpoint is going to be deprecated




Required permission 'CLIENT [READ]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [GET]
*/
func (a *Client) GetClientShort(params *GetClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetClient",
		Method:             "GET",
		PathPattern:        "/iam/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetClientOK:
		return v, nil
	case *GetClientUnauthorized:
		return nil, v
	case *GetClientForbidden:
		return nil, v
	case *GetClientNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateClientShort instead.

UpdateClient update client


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [UPDATE]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [PATCH]
*/
func (a *Client) UpdateClient(params *UpdateClientParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientOK, *UpdateClientBadRequest, *UpdateClientUnauthorized, *UpdateClientForbidden, *UpdateClientNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateClient",
		Method:             "PUT",
		PathPattern:        "/iam/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateClientOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateClientBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateClientUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateClientForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateClientNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateClientShort update client


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [UPDATE]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [PATCH]
*/
func (a *Client) UpdateClientShort(params *UpdateClientParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateClient",
		Method:             "PUT",
		PathPattern:        "/iam/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateClientOK:
		return v, nil
	case *UpdateClientBadRequest:
		return nil, v
	case *UpdateClientUnauthorized:
		return nil, v
	case *UpdateClientForbidden:
		return nil, v
	case *UpdateClientNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteClientShort instead.

DeleteClient delete client


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [DELETE]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [DELETE]
*/
func (a *Client) DeleteClient(params *DeleteClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientNoContent, *DeleteClientUnauthorized, *DeleteClientForbidden, *DeleteClientNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteClient",
		Method:             "DELETE",
		PathPattern:        "/iam/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteClientNoContent:
		return v, nil, nil, nil, nil

	case *DeleteClientUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteClientForbidden:
		return nil, nil, v, nil, nil

	case *DeleteClientNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteClientShort delete client


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [DELETE]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [DELETE]
*/
func (a *Client) DeleteClientShort(params *DeleteClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteClient",
		Method:             "DELETE",
		PathPattern:        "/iam/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteClientNoContent:
		return v, nil
	case *DeleteClientUnauthorized:
		return nil, v
	case *DeleteClientForbidden:
		return nil, v
	case *DeleteClientNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateClientPermissionShort instead.

UpdateClientPermission update client permissions


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [UPDATE]'
Endpoint migration guide




  * Substitute endpoint: iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions [PUT]
*/
func (a *Client) UpdateClientPermission(params *UpdateClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientPermissionNoContent, *UpdateClientPermissionBadRequest, *UpdateClientPermissionUnauthorized, *UpdateClientPermissionForbidden, *UpdateClientPermissionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateClientPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateClientPermission",
		Method:             "POST",
		PathPattern:        "/iam/clients/{clientId}/clientpermissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateClientPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateClientPermissionNoContent:
		return v, nil, nil, nil, nil, nil

	case *UpdateClientPermissionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateClientPermissionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateClientPermissionForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateClientPermissionNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateClientPermissionShort update client permissions


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [UPDATE]'
Endpoint migration guide




  * Substitute endpoint: iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions [PUT]
*/
func (a *Client) UpdateClientPermissionShort(params *UpdateClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientPermissionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateClientPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateClientPermission",
		Method:             "POST",
		PathPattern:        "/iam/clients/{clientId}/clientpermissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateClientPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateClientPermissionNoContent:
		return v, nil
	case *UpdateClientPermissionBadRequest:
		return nil, v
	case *UpdateClientPermissionUnauthorized:
		return nil, v
	case *UpdateClientPermissionForbidden:
		return nil, v
	case *UpdateClientPermissionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AddClientPermissionShort instead.

AddClientPermission add client permission


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [UPDATE]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions [POST]
*/
func (a *Client) AddClientPermission(params *AddClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddClientPermissionNoContent, *AddClientPermissionBadRequest, *AddClientPermissionUnauthorized, *AddClientPermissionForbidden, *AddClientPermissionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddClientPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddClientPermission",
		Method:             "POST",
		PathPattern:        "/iam/clients/{clientId}/clientpermissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddClientPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddClientPermissionNoContent:
		return v, nil, nil, nil, nil, nil

	case *AddClientPermissionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AddClientPermissionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AddClientPermissionForbidden:
		return nil, nil, nil, v, nil, nil

	case *AddClientPermissionNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddClientPermissionShort add client permission


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [UPDATE]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions [POST]
*/
func (a *Client) AddClientPermissionShort(params *AddClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddClientPermissionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddClientPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddClientPermission",
		Method:             "POST",
		PathPattern:        "/iam/clients/{clientId}/clientpermissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddClientPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddClientPermissionNoContent:
		return v, nil
	case *AddClientPermissionBadRequest:
		return nil, v
	case *AddClientPermissionUnauthorized:
		return nil, v
	case *AddClientPermissionForbidden:
		return nil, v
	case *AddClientPermissionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteClientPermissionShort instead.

DeleteClientPermission delete client permission


## The endpoint is going to be deprecated


Required permission 'CLIENT:ADMIN [UPDATE]'

Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action} [DELETE]
*/
func (a *Client) DeleteClientPermission(params *DeleteClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientPermissionNoContent, *DeleteClientPermissionBadRequest, *DeleteClientPermissionUnauthorized, *DeleteClientPermissionForbidden, *DeleteClientPermissionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteClientPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteClientPermission",
		Method:             "DELETE",
		PathPattern:        "/iam/clients/{clientId}/clientpermissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteClientPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteClientPermissionNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteClientPermissionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteClientPermissionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteClientPermissionForbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteClientPermissionNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteClientPermissionShort delete client permission


## The endpoint is going to be deprecated


Required permission 'CLIENT:ADMIN [UPDATE]'

Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action} [DELETE]
*/
func (a *Client) DeleteClientPermissionShort(params *DeleteClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientPermissionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteClientPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteClientPermission",
		Method:             "DELETE",
		PathPattern:        "/iam/clients/{clientId}/clientpermissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteClientPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteClientPermissionNoContent:
		return v, nil
	case *DeleteClientPermissionBadRequest:
		return nil, v
	case *DeleteClientPermissionUnauthorized:
		return nil, v
	case *DeleteClientPermissionForbidden:
		return nil, v
	case *DeleteClientPermissionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateClientSecretShort instead.

UpdateClientSecret update client secret


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [UPDATE]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/{clientId}/secret [PUT]
*/
func (a *Client) UpdateClientSecret(params *UpdateClientSecretParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientSecretNoContent, *UpdateClientSecretBadRequest, *UpdateClientSecretUnauthorized, *UpdateClientSecretForbidden, *UpdateClientSecretNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateClientSecretParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateClientSecret",
		Method:             "PUT",
		PathPattern:        "/iam/clients/{clientId}/secret",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateClientSecretReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateClientSecretNoContent:
		return v, nil, nil, nil, nil, nil

	case *UpdateClientSecretBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateClientSecretUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateClientSecretForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateClientSecretNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateClientSecretShort update client secret


## The endpoint is going to be deprecated




Required permission 'CLIENT:ADMIN [UPDATE]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/{clientId}/secret [PUT]
*/
func (a *Client) UpdateClientSecretShort(params *UpdateClientSecretParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientSecretNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateClientSecretParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateClientSecret",
		Method:             "PUT",
		PathPattern:        "/iam/clients/{clientId}/secret",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateClientSecretReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateClientSecretNoContent:
		return v, nil
	case *UpdateClientSecretBadRequest:
		return nil, v
	case *UpdateClientSecretUnauthorized:
		return nil, v
	case *UpdateClientSecretForbidden:
		return nil, v
	case *UpdateClientSecretNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetClientsbyNamespaceShort instead.

GetClientsbyNamespace get clients by namespace


## The endpoint is going to be deprecated


Required permission 'NAMESPACE:{namespace}:CLIENT [READ]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [GET]
*/
func (a *Client) GetClientsbyNamespace(params *GetClientsbyNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsbyNamespaceOK, *GetClientsbyNamespaceUnauthorized, *GetClientsbyNamespaceForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetClientsbyNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetClientsbyNamespace",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetClientsbyNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetClientsbyNamespaceOK:
		return v, nil, nil, nil

	case *GetClientsbyNamespaceUnauthorized:
		return nil, v, nil, nil

	case *GetClientsbyNamespaceForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetClientsbyNamespaceShort get clients by namespace


## The endpoint is going to be deprecated


Required permission 'NAMESPACE:{namespace}:CLIENT [READ]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [GET]
*/
func (a *Client) GetClientsbyNamespaceShort(params *GetClientsbyNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsbyNamespaceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetClientsbyNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetClientsbyNamespace",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetClientsbyNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetClientsbyNamespaceOK:
		return v, nil
	case *GetClientsbyNamespaceUnauthorized:
		return nil, v
	case *GetClientsbyNamespaceForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateClientByNamespaceShort instead.

CreateClientByNamespace create client


## The endpoint is going to be deprecated


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]'
Endpoint migration guide




  * Substitute endpoint: /v3/admin/namespaces/{namespace}/clients [POST]
*/
func (a *Client) CreateClientByNamespace(params *CreateClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientByNamespaceCreated, *CreateClientByNamespaceBadRequest, *CreateClientByNamespaceUnauthorized, *CreateClientByNamespaceForbidden, *CreateClientByNamespaceConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateClientByNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateClientByNamespace",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateClientByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateClientByNamespaceCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateClientByNamespaceBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateClientByNamespaceUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateClientByNamespaceForbidden:
		return nil, nil, nil, v, nil, nil

	case *CreateClientByNamespaceConflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateClientByNamespaceShort create client


## The endpoint is going to be deprecated


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]'
Endpoint migration guide




  * Substitute endpoint: /v3/admin/namespaces/{namespace}/clients [POST]
*/
func (a *Client) CreateClientByNamespaceShort(params *CreateClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientByNamespaceCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateClientByNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateClientByNamespace",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateClientByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateClientByNamespaceCreated:
		return v, nil
	case *CreateClientByNamespaceBadRequest:
		return nil, v
	case *CreateClientByNamespaceUnauthorized:
		return nil, v
	case *CreateClientByNamespaceForbidden:
		return nil, v
	case *CreateClientByNamespaceConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteClientByNamespaceShort instead.

DeleteClientByNamespace delete client


## The endpoint is going to be deprecated


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT:{clientId} [DELETE]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [DELETE]
*/
func (a *Client) DeleteClientByNamespace(params *DeleteClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientByNamespaceNoContent, *DeleteClientByNamespaceUnauthorized, *DeleteClientByNamespaceForbidden, *DeleteClientByNamespaceNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteClientByNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteClientByNamespace",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteClientByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteClientByNamespaceNoContent:
		return v, nil, nil, nil, nil

	case *DeleteClientByNamespaceUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteClientByNamespaceForbidden:
		return nil, nil, v, nil, nil

	case *DeleteClientByNamespaceNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteClientByNamespaceShort delete client


## The endpoint is going to be deprecated


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT:{clientId} [DELETE]'
Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [DELETE]
*/
func (a *Client) DeleteClientByNamespaceShort(params *DeleteClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientByNamespaceNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteClientByNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteClientByNamespace",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteClientByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteClientByNamespaceNoContent:
		return v, nil
	case *DeleteClientByNamespaceUnauthorized:
		return nil, v
	case *DeleteClientByNamespaceForbidden:
		return nil, v
	case *DeleteClientByNamespaceNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetClientsByNamespaceV3Short instead.

AdminGetClientsByNamespaceV3 get clients by namespace


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [READ]'




action code: 10308
*/
func (a *Client) AdminGetClientsByNamespaceV3(params *AdminGetClientsByNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsByNamespaceV3OK, *AdminGetClientsByNamespaceV3BadRequest, *AdminGetClientsByNamespaceV3Unauthorized, *AdminGetClientsByNamespaceV3Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetClientsByNamespaceV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetClientsByNamespaceV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetClientsByNamespaceV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetClientsByNamespaceV3OK:
		return v, nil, nil, nil, nil

	case *AdminGetClientsByNamespaceV3BadRequest:
		return nil, v, nil, nil, nil

	case *AdminGetClientsByNamespaceV3Unauthorized:
		return nil, nil, v, nil, nil

	case *AdminGetClientsByNamespaceV3Forbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetClientsByNamespaceV3Short get clients by namespace


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [READ]'




action code: 10308
*/
func (a *Client) AdminGetClientsByNamespaceV3Short(params *AdminGetClientsByNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsByNamespaceV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetClientsByNamespaceV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetClientsByNamespaceV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetClientsByNamespaceV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetClientsByNamespaceV3OK:
		return v, nil
	case *AdminGetClientsByNamespaceV3BadRequest:
		return nil, v
	case *AdminGetClientsByNamespaceV3Unauthorized:
		return nil, v
	case *AdminGetClientsByNamespaceV3Forbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateClientV3Short instead.

AdminCreateClientV3 create client
Add a new OAuth 2.0 client. Protected by the permission: ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]

A new client automatically granted with these scopes: commerce, account, analytics, publishing, social.

Note for Multi Tenant Mode:

New Confidential Client will have Default Client Role assigned to it. The role will have all
permissions to access all APIs that's supported by game server SDK and DS uploader.

However if Game Admin create Confidential Client and the permission(s) are specified in request body,
then the Default Client Role will not be assigned.

But in this case, the assigned permissions will be restricted in the Default Client Permission collection only.

action code: 10301



Fields Description:




  * clientId : The client ID. e.g f815e5c44f364993961be3b3f26a7bf4


  * clientName : The client name. e.g E-commerce


  * secret : The client's secret. It's empty if the client's type is a public client. Otherwise, the client secret is required


  * namespace : The namespace where the client lives. e.g sample-game


  * redirectUri : Contains the redirect URI used in OAuth callback. e.g https://example.net/platform


  * oauthClientType : The OAuth 2.0 client type. The client type determines whether the authorization needs Proof Of Key Exchange or not.
A public client type doesn't have a client secret and should use PKCE flow.
A confidential client type has a client secret and don't use PKCE flow
Supported oAuthClientType :

    * Public


    * Confidential


  * audiences : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]


  * baseUri : A base URI of the application. It is used for making sure the token is intended to be used by the client. e.g https://example.net/platform


  * clientPermissions : Contains the client's permissions


  * deletable : The flag to identify whether client is deletable (optional). default value: true


  * clientPlatform : available client platform (optional). default value: ""


    * Playstation


    * Xbox


    * Steam


    * Epic


    * IOS


    * GooglePlay


    * Nintendo


    * Oculus





  * twoFactorEnabled : The flag to indicate whether 2FA validation is enable for this client. default value: false


  * oauthAccessTokenExpiration : a configurable expiration time for access_token , default value: 0 (mean fetch value from environment variable)


  * oauthRefreshTokenExpiration : a configurable expiration time for refresh_token , default value: 0 (mean fetch value from environment variable)


  * oauthAccessTokenExpirationTimeUnit : a configurable expiration time unit for access_token , default value: SECONDS


  * oauthRefreshTokenExpirationTimeUnit : a configurable expiration time unit for refresh_token , default value: SECONDS
*/
func (a *Client) AdminCreateClientV3(params *AdminCreateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateClientV3Created, *AdminCreateClientV3BadRequest, *AdminCreateClientV3Unauthorized, *AdminCreateClientV3Forbidden, *AdminCreateClientV3Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateClientV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateClientV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateClientV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateClientV3Created:
		return v, nil, nil, nil, nil, nil

	case *AdminCreateClientV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminCreateClientV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminCreateClientV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminCreateClientV3Conflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateClientV3Short create client
Add a new OAuth 2.0 client. Protected by the permission: ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]

A new client automatically granted with these scopes: commerce, account, analytics, publishing, social.

Note for Multi Tenant Mode:

New Confidential Client will have Default Client Role assigned to it. The role will have all
permissions to access all APIs that's supported by game server SDK and DS uploader.

However if Game Admin create Confidential Client and the permission(s) are specified in request body,
then the Default Client Role will not be assigned.

But in this case, the assigned permissions will be restricted in the Default Client Permission collection only.

action code: 10301



Fields Description:




  * clientId : The client ID. e.g f815e5c44f364993961be3b3f26a7bf4


  * clientName : The client name. e.g E-commerce


  * secret : The client's secret. It's empty if the client's type is a public client. Otherwise, the client secret is required


  * namespace : The namespace where the client lives. e.g sample-game


  * redirectUri : Contains the redirect URI used in OAuth callback. e.g https://example.net/platform


  * oauthClientType : The OAuth 2.0 client type. The client type determines whether the authorization needs Proof Of Key Exchange or not.
A public client type doesn't have a client secret and should use PKCE flow.
A confidential client type has a client secret and don't use PKCE flow
Supported oAuthClientType :

    * Public


    * Confidential


  * audiences : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]


  * baseUri : A base URI of the application. It is used for making sure the token is intended to be used by the client. e.g https://example.net/platform


  * clientPermissions : Contains the client's permissions


  * deletable : The flag to identify whether client is deletable (optional). default value: true


  * clientPlatform : available client platform (optional). default value: ""


    * Playstation


    * Xbox


    * Steam


    * Epic


    * IOS


    * GooglePlay


    * Nintendo


    * Oculus





  * twoFactorEnabled : The flag to indicate whether 2FA validation is enable for this client. default value: false


  * oauthAccessTokenExpiration : a configurable expiration time for access_token , default value: 0 (mean fetch value from environment variable)


  * oauthRefreshTokenExpiration : a configurable expiration time for refresh_token , default value: 0 (mean fetch value from environment variable)


  * oauthAccessTokenExpirationTimeUnit : a configurable expiration time unit for access_token , default value: SECONDS


  * oauthRefreshTokenExpirationTimeUnit : a configurable expiration time unit for refresh_token , default value: SECONDS
*/
func (a *Client) AdminCreateClientV3Short(params *AdminCreateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateClientV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateClientV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateClientV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateClientV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateClientV3Created:
		return v, nil
	case *AdminCreateClientV3BadRequest:
		return nil, v
	case *AdminCreateClientV3Unauthorized:
		return nil, v
	case *AdminCreateClientV3Forbidden:
		return nil, v
	case *AdminCreateClientV3Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetClientsbyNamespacebyIDV3Short instead.

AdminGetClientsbyNamespacebyIDV3 get clients by namespace and client id. multi tenant mode allows admin portal client to be accessible regardless of namespace path.
Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [READ]'
action code: 10309
*/
func (a *Client) AdminGetClientsbyNamespacebyIDV3(params *AdminGetClientsbyNamespacebyIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsbyNamespacebyIDV3OK, *AdminGetClientsbyNamespacebyIDV3BadRequest, *AdminGetClientsbyNamespacebyIDV3Unauthorized, *AdminGetClientsbyNamespacebyIDV3Forbidden, *AdminGetClientsbyNamespacebyIDV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetClientsbyNamespacebyIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetClientsbyNamespacebyIDV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetClientsbyNamespacebyIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetClientsbyNamespacebyIDV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetClientsbyNamespacebyIDV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetClientsbyNamespacebyIDV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetClientsbyNamespacebyIDV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetClientsbyNamespacebyIDV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetClientsbyNamespacebyIDV3Short get clients by namespace and client id. multi tenant mode allows admin portal client to be accessible regardless of namespace path.
Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [READ]'
action code: 10309
*/
func (a *Client) AdminGetClientsbyNamespacebyIDV3Short(params *AdminGetClientsbyNamespacebyIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsbyNamespacebyIDV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetClientsbyNamespacebyIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetClientsbyNamespacebyIDV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetClientsbyNamespacebyIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetClientsbyNamespacebyIDV3OK:
		return v, nil
	case *AdminGetClientsbyNamespacebyIDV3BadRequest:
		return nil, v
	case *AdminGetClientsbyNamespacebyIDV3Unauthorized:
		return nil, v
	case *AdminGetClientsbyNamespacebyIDV3Forbidden:
		return nil, v
	case *AdminGetClientsbyNamespacebyIDV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteClientV3Short instead.

AdminDeleteClientV3 delete client
Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [DELETE]'
action code : 10310
*/
func (a *Client) AdminDeleteClientV3(params *AdminDeleteClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientV3NoContent, *AdminDeleteClientV3BadRequest, *AdminDeleteClientV3Unauthorized, *AdminDeleteClientV3Forbidden, *AdminDeleteClientV3NotFound, *AdminDeleteClientV3Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteClientV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteClientV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteClientV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteClientV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeleteClientV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeleteClientV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeleteClientV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeleteClientV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeleteClientV3Conflict:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteClientV3Short delete client
Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [DELETE]'
action code : 10310
*/
func (a *Client) AdminDeleteClientV3Short(params *AdminDeleteClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteClientV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteClientV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteClientV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteClientV3NoContent:
		return v, nil
	case *AdminDeleteClientV3BadRequest:
		return nil, v
	case *AdminDeleteClientV3Unauthorized:
		return nil, v
	case *AdminDeleteClientV3Forbidden:
		return nil, v
	case *AdminDeleteClientV3NotFound:
		return nil, v
	case *AdminDeleteClientV3Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateClientV3Short instead.

AdminUpdateClientV3 update client
Updates an OAuth 2.0 client. Protected by the permission: ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE].
Specify only the fields you want to update in the request payload, e.g. {"ClientName":"E-commerce", "BaseUri":"https://example.net"}
Note for Multi Tenant Mode:

1. The assigned permission(s) should be restricted in the Default Client permission collection.


action code: 10302



Fields Description:




  * clientName : The client name. It should not be empty if the field exists in the body. e.g E-commerce


  * namespace : The namespace where the client lives. e.g sample-game


  * redirectUri : Contains the redirect URI used in OAuth callback. It should not be empty if the field exists in the body. e.g https://example.net/platform


  * audiences : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]


  * baseUri : A base URI of the application. It is used in the audience checking for making sure the token is used by the right resource server. Required if the application type is a server. e.g https://example.net/platform


  * clientPermissions : Contains the client's permissions


  * deletable : The flag to identify whether client is deletable (optional). e.g. true


  * clientPlatform : available client platform (optional). default value: "".


    * Playstation


    * Xbox


    * Steam


    * Epic


    * IOS


    * GooglePlay


    * Nintendo


    * Oculus





  * twoFactorEnabled : The flag to indicate whether 2FA validation is enable for this client. default value: false


  * oauthAccessTokenExpiration : a configurable expiration time for access_token , default value: 0 (mean fetch value from environment variable)


  * oauthRefreshTokenExpiration : a configurable expiration time for refresh_token , default value: 0 (mean fetch value from environment variable)


  * oauthAccessTokenExpirationTimeUnit : a configurable expiration time unit for access_token , will use previous value if not specified


  * oauthRefreshTokenExpirationTimeUnit : a configurable expiration time unit for refresh_token , will use previous value if not specified
*/
func (a *Client) AdminUpdateClientV3(params *AdminUpdateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientV3OK, *AdminUpdateClientV3BadRequest, *AdminUpdateClientV3Unauthorized, *AdminUpdateClientV3Forbidden, *AdminUpdateClientV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateClientV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateClientV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateClientV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateClientV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateClientV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateClientV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateClientV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateClientV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateClientV3Short update client
Updates an OAuth 2.0 client. Protected by the permission: ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE].
Specify only the fields you want to update in the request payload, e.g. {"ClientName":"E-commerce", "BaseUri":"https://example.net"}
Note for Multi Tenant Mode:

1. The assigned permission(s) should be restricted in the Default Client permission collection.


action code: 10302



Fields Description:




  * clientName : The client name. It should not be empty if the field exists in the body. e.g E-commerce


  * namespace : The namespace where the client lives. e.g sample-game


  * redirectUri : Contains the redirect URI used in OAuth callback. It should not be empty if the field exists in the body. e.g https://example.net/platform


  * audiences : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]


  * baseUri : A base URI of the application. It is used in the audience checking for making sure the token is used by the right resource server. Required if the application type is a server. e.g https://example.net/platform


  * clientPermissions : Contains the client's permissions


  * deletable : The flag to identify whether client is deletable (optional). e.g. true


  * clientPlatform : available client platform (optional). default value: "".


    * Playstation


    * Xbox


    * Steam


    * Epic


    * IOS


    * GooglePlay


    * Nintendo


    * Oculus





  * twoFactorEnabled : The flag to indicate whether 2FA validation is enable for this client. default value: false


  * oauthAccessTokenExpiration : a configurable expiration time for access_token , default value: 0 (mean fetch value from environment variable)


  * oauthRefreshTokenExpiration : a configurable expiration time for refresh_token , default value: 0 (mean fetch value from environment variable)


  * oauthAccessTokenExpirationTimeUnit : a configurable expiration time unit for access_token , will use previous value if not specified


  * oauthRefreshTokenExpirationTimeUnit : a configurable expiration time unit for refresh_token , will use previous value if not specified
*/
func (a *Client) AdminUpdateClientV3Short(params *AdminUpdateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateClientV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateClientV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateClientV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateClientV3OK:
		return v, nil
	case *AdminUpdateClientV3BadRequest:
		return nil, v
	case *AdminUpdateClientV3Unauthorized:
		return nil, v
	case *AdminUpdateClientV3Forbidden:
		return nil, v
	case *AdminUpdateClientV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateClientPermissionV3Short instead.

AdminUpdateClientPermissionV3 update client permissions


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'


 Note for Multi Tenant Mode:

1. The assigned permission(s) should be restricted in the Default Client permission collection.



action code: 10307
*/
func (a *Client) AdminUpdateClientPermissionV3(params *AdminUpdateClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientPermissionV3NoContent, *AdminUpdateClientPermissionV3BadRequest, *AdminUpdateClientPermissionV3Unauthorized, *AdminUpdateClientPermissionV3Forbidden, *AdminUpdateClientPermissionV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateClientPermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateClientPermissionV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateClientPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateClientPermissionV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateClientPermissionV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateClientPermissionV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateClientPermissionV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateClientPermissionV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateClientPermissionV3Short update client permissions


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'


 Note for Multi Tenant Mode:

1. The assigned permission(s) should be restricted in the Default Client permission collection.



action code: 10307
*/
func (a *Client) AdminUpdateClientPermissionV3Short(params *AdminUpdateClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientPermissionV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateClientPermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateClientPermissionV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateClientPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateClientPermissionV3NoContent:
		return v, nil
	case *AdminUpdateClientPermissionV3BadRequest:
		return nil, v
	case *AdminUpdateClientPermissionV3Unauthorized:
		return nil, v
	case *AdminUpdateClientPermissionV3Forbidden:
		return nil, v
	case *AdminUpdateClientPermissionV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddClientPermissionsV3Short instead.

AdminAddClientPermissionsV3 add client permissions


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT' [UPDATE]'


 Note for Multi Tenant Mode:

1. The assigned permission(s) should be restricted in the Default Client permission collection.



action code: 10303
*/
func (a *Client) AdminAddClientPermissionsV3(params *AdminAddClientPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddClientPermissionsV3NoContent, *AdminAddClientPermissionsV3BadRequest, *AdminAddClientPermissionsV3Unauthorized, *AdminAddClientPermissionsV3Forbidden, *AdminAddClientPermissionsV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddClientPermissionsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddClientPermissionsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddClientPermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddClientPermissionsV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminAddClientPermissionsV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminAddClientPermissionsV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminAddClientPermissionsV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminAddClientPermissionsV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddClientPermissionsV3Short add client permissions


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT' [UPDATE]'


 Note for Multi Tenant Mode:

1. The assigned permission(s) should be restricted in the Default Client permission collection.



action code: 10303
*/
func (a *Client) AdminAddClientPermissionsV3Short(params *AdminAddClientPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddClientPermissionsV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddClientPermissionsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddClientPermissionsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddClientPermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddClientPermissionsV3NoContent:
		return v, nil
	case *AdminAddClientPermissionsV3BadRequest:
		return nil, v
	case *AdminAddClientPermissionsV3Unauthorized:
		return nil, v
	case *AdminAddClientPermissionsV3Forbidden:
		return nil, v
	case *AdminAddClientPermissionsV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteClientPermissionV3Short instead.

AdminDeleteClientPermissionV3 delete client permission
Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'
action code : 10304
*/
func (a *Client) AdminDeleteClientPermissionV3(params *AdminDeleteClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientPermissionV3NoContent, *AdminDeleteClientPermissionV3BadRequest, *AdminDeleteClientPermissionV3Unauthorized, *AdminDeleteClientPermissionV3Forbidden, *AdminDeleteClientPermissionV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteClientPermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteClientPermissionV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteClientPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteClientPermissionV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteClientPermissionV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteClientPermissionV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteClientPermissionV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteClientPermissionV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteClientPermissionV3Short delete client permission
Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'
action code : 10304
*/
func (a *Client) AdminDeleteClientPermissionV3Short(params *AdminDeleteClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientPermissionV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteClientPermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteClientPermissionV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteClientPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteClientPermissionV3NoContent:
		return v, nil
	case *AdminDeleteClientPermissionV3BadRequest:
		return nil, v
	case *AdminDeleteClientPermissionV3Unauthorized:
		return nil, v
	case *AdminDeleteClientPermissionV3Forbidden:
		return nil, v
	case *AdminDeleteClientPermissionV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateClientSecretV3Short instead.

AdminUpdateClientSecretV3 update client secret


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'
*/
func (a *Client) AdminUpdateClientSecretV3(params *AdminUpdateClientSecretV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientSecretV3NoContent, *AdminUpdateClientSecretV3BadRequest, *AdminUpdateClientSecretV3Unauthorized, *AdminUpdateClientSecretV3Forbidden, *AdminUpdateClientSecretV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateClientSecretV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateClientSecretV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/{clientId}/secret",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateClientSecretV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateClientSecretV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateClientSecretV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateClientSecretV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateClientSecretV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateClientSecretV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateClientSecretV3Short update client secret


Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'
*/
func (a *Client) AdminUpdateClientSecretV3Short(params *AdminUpdateClientSecretV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientSecretV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateClientSecretV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateClientSecretV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/{clientId}/secret",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateClientSecretV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateClientSecretV3NoContent:
		return v, nil
	case *AdminUpdateClientSecretV3BadRequest:
		return nil, v
	case *AdminUpdateClientSecretV3Unauthorized:
		return nil, v
	case *AdminUpdateClientSecretV3Forbidden:
		return nil, v
	case *AdminUpdateClientSecretV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
