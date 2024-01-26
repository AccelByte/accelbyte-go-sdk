// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package namespace

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new namespace API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for namespace API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetNamespaces(params *GetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacesOK, *GetNamespacesUnauthorized, *GetNamespacesForbidden, error)
	GetNamespacesShort(params *GetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacesOK, error)
	CreateNamespace(params *CreateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNamespaceCreated, *CreateNamespaceBadRequest, *CreateNamespaceUnauthorized, *CreateNamespaceForbidden, *CreateNamespaceConflict, error)
	CreateNamespaceShort(params *CreateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNamespaceCreated, error)
	GetNamespace(params *GetNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceOK, *GetNamespaceBadRequest, *GetNamespaceUnauthorized, *GetNamespaceForbidden, *GetNamespaceNotFound, error)
	GetNamespaceShort(params *GetNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceOK, error)
	DeleteNamespace(params *DeleteNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceOK, *DeleteNamespaceBadRequest, *DeleteNamespaceUnauthorized, *DeleteNamespaceForbidden, *DeleteNamespaceNotFound, *DeleteNamespaceConflict, error)
	DeleteNamespaceShort(params *DeleteNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceOK, error)
	UpdateNamespace(params *UpdateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceOK, *UpdateNamespaceBadRequest, *UpdateNamespaceUnauthorized, *UpdateNamespaceForbidden, *UpdateNamespaceNotFound, *UpdateNamespaceConflict, error)
	UpdateNamespaceShort(params *UpdateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceOK, error)
	GetGameNamespaces(params *GetGameNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameNamespacesOK, *GetGameNamespacesUnauthorized, *GetGameNamespacesForbidden, error)
	GetGameNamespacesShort(params *GetGameNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameNamespacesOK, error)
	GetNamespacePublisher(params *GetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacePublisherOK, *GetNamespacePublisherBadRequest, *GetNamespacePublisherUnauthorized, *GetNamespacePublisherForbidden, *GetNamespacePublisherNotFound, error)
	GetNamespacePublisherShort(params *GetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacePublisherOK, error)
	ChangeNamespaceStatus(params *ChangeNamespaceStatusParams, authInfo runtime.ClientAuthInfoWriter) (*ChangeNamespaceStatusOK, *ChangeNamespaceStatusBadRequest, *ChangeNamespaceStatusUnauthorized, *ChangeNamespaceStatusForbidden, *ChangeNamespaceStatusNotFound, *ChangeNamespaceStatusConflict, error)
	ChangeNamespaceStatusShort(params *ChangeNamespaceStatusParams, authInfo runtime.ClientAuthInfoWriter) (*ChangeNamespaceStatusOK, error)
	PublicGetNamespaces(params *PublicGetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacesOK, *PublicGetNamespacesUnauthorized, error)
	PublicGetNamespacesShort(params *PublicGetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacesOK, error)
	PublicGetNamespacePublisher(params *PublicGetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacePublisherOK, *PublicGetNamespacePublisherBadRequest, *PublicGetNamespacePublisherUnauthorized, *PublicGetNamespacePublisherForbidden, *PublicGetNamespacePublisherNotFound, error)
	PublicGetNamespacePublisherShort(params *PublicGetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacePublisherOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetNamespacesShort instead.

GetNamespaces get all namespaces
Get all namespaces.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE" , action=2 (READ)
  *  Action code : 11303
  *  Returns : list of namespaces
*/
func (a *Client) GetNamespaces(params *GetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacesOK, *GetNamespacesUnauthorized, *GetNamespacesForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespacesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getNamespaces",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespacesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetNamespacesOK:
		return v, nil, nil, nil

	case *GetNamespacesUnauthorized:
		return nil, v, nil, nil

	case *GetNamespacesForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNamespacesShort get all namespaces
Get all namespaces.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE" , action=2 (READ)
  *  Action code : 11303
  *  Returns : list of namespaces
*/
func (a *Client) GetNamespacesShort(params *GetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespacesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getNamespaces",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespacesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespacesOK:
		return v, nil
	case *GetNamespacesUnauthorized:
		return nil, v
	case *GetNamespacesForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateNamespaceShort instead.

CreateNamespace create a namespace
Create a namespace.
By default the namespace is enabled.
In multi tenant mode, parentNamespace will be automatically filled with requester namespace if the requester is using studio or publisher token, and it will be filled with studio namespace if the requester uses game token. An oauth client will also be created and the id will be returned.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE" , action=1 (CREATE)
  *  Action code : 11301
  *  Returns : created namespace
*/
func (a *Client) CreateNamespace(params *CreateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNamespaceCreated, *CreateNamespaceBadRequest, *CreateNamespaceUnauthorized, *CreateNamespaceForbidden, *CreateNamespaceConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createNamespace",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateNamespaceCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateNamespaceBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateNamespaceUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateNamespaceForbidden:
		return nil, nil, nil, v, nil, nil

	case *CreateNamespaceConflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNamespaceShort create a namespace
Create a namespace.
By default the namespace is enabled.
In multi tenant mode, parentNamespace will be automatically filled with requester namespace if the requester is using studio or publisher token, and it will be filled with studio namespace if the requester uses game token. An oauth client will also be created and the id will be returned.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE" , action=1 (CREATE)
  *  Action code : 11301
  *  Returns : created namespace
*/
func (a *Client) CreateNamespaceShort(params *CreateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNamespaceCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createNamespace",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNamespaceCreated:
		return v, nil
	case *CreateNamespaceBadRequest:
		return nil, v
	case *CreateNamespaceUnauthorized:
		return nil, v
	case *CreateNamespaceForbidden:
		return nil, v
	case *CreateNamespaceConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetNamespaceShort instead.

GetNamespace get a namespace
Get a namespace.
In multi tenant mode, parentNamespace will be returned.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=2 (READ)
  *  Action code : 11304
  *  Returns : namespace
*/
func (a *Client) GetNamespace(params *GetNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceOK, *GetNamespaceBadRequest, *GetNamespaceUnauthorized, *GetNamespaceForbidden, *GetNamespaceNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getNamespace",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetNamespaceOK:
		return v, nil, nil, nil, nil, nil

	case *GetNamespaceBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetNamespaceUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetNamespaceForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetNamespaceNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNamespaceShort get a namespace
Get a namespace.
In multi tenant mode, parentNamespace will be returned.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=2 (READ)
  *  Action code : 11304
  *  Returns : namespace
*/
func (a *Client) GetNamespaceShort(params *GetNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getNamespace",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespaceOK:
		return v, nil
	case *GetNamespaceBadRequest:
		return nil, v
	case *GetNamespaceUnauthorized:
		return nil, v
	case *GetNamespaceForbidden:
		return nil, v
	case *GetNamespaceNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteNamespaceShort instead.

DeleteNamespace delete a namespace
Delete a namespace.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=8 (DELETE)
  *  Action code : 11307
  *  Returns : deleted namespace
*/
func (a *Client) DeleteNamespace(params *DeleteNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceOK, *DeleteNamespaceBadRequest, *DeleteNamespaceUnauthorized, *DeleteNamespaceForbidden, *DeleteNamespaceNotFound, *DeleteNamespaceConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteNamespace",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteNamespaceOK:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteNamespaceBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteNamespaceUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteNamespaceForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteNamespaceNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteNamespaceConflict:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNamespaceShort delete a namespace
Delete a namespace.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=8 (DELETE)
  *  Action code : 11307
  *  Returns : deleted namespace
*/
func (a *Client) DeleteNamespaceShort(params *DeleteNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteNamespace",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNamespaceOK:
		return v, nil
	case *DeleteNamespaceBadRequest:
		return nil, v
	case *DeleteNamespaceUnauthorized:
		return nil, v
	case *DeleteNamespaceForbidden:
		return nil, v
	case *DeleteNamespaceNotFound:
		return nil, v
	case *DeleteNamespaceConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateNamespaceShort instead.

UpdateNamespace update namespace basic info
Update namespace basic info.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=4 (UPDATE)
  *  Action code : 11302
  *  Returns : updated namespace
*/
func (a *Client) UpdateNamespace(params *UpdateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceOK, *UpdateNamespaceBadRequest, *UpdateNamespaceUnauthorized, *UpdateNamespaceForbidden, *UpdateNamespaceNotFound, *UpdateNamespaceConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateNamespace",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateNamespaceOK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateNamespaceBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateNamespaceUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateNamespaceForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateNamespaceNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateNamespaceConflict:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateNamespaceShort update namespace basic info
Update namespace basic info.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=4 (UPDATE)
  *  Action code : 11302
  *  Returns : updated namespace
*/
func (a *Client) UpdateNamespaceShort(params *UpdateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateNamespace",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateNamespaceOK:
		return v, nil
	case *UpdateNamespaceBadRequest:
		return nil, v
	case *UpdateNamespaceUnauthorized:
		return nil, v
	case *UpdateNamespaceForbidden:
		return nil, v
	case *UpdateNamespaceNotFound:
		return nil, v
	case *UpdateNamespaceConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGameNamespacesShort instead.

GetGameNamespaces get game namespaces
Get game namespaces.
In multi tenant mode, a given super admin namespace will return all game namespaces of studio namespaces
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=2 (READ)
  *  Action code : 11308
  *  Returns : list of namespaces
*/
func (a *Client) GetGameNamespaces(params *GetGameNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameNamespacesOK, *GetGameNamespacesUnauthorized, *GetGameNamespacesForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameNamespacesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameNamespaces",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/game",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameNamespacesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGameNamespacesOK:
		return v, nil, nil, nil

	case *GetGameNamespacesUnauthorized:
		return nil, v, nil, nil

	case *GetGameNamespacesForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameNamespacesShort get game namespaces
Get game namespaces.
In multi tenant mode, a given super admin namespace will return all game namespaces of studio namespaces
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=2 (READ)
  *  Action code : 11308
  *  Returns : list of namespaces
*/
func (a *Client) GetGameNamespacesShort(params *GetGameNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameNamespacesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameNamespacesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameNamespaces",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/game",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameNamespacesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameNamespacesOK:
		return v, nil
	case *GetGameNamespacesUnauthorized:
		return nil, v
	case *GetGameNamespacesForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetNamespacePublisherShort instead.

GetNamespacePublisher get namespace info related publisher namespace
Get namespace info related publisher namespace.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=2 (READ)
  *  Action code : 11305
  *  Returns : Namespace info related publisher namespace
*/
func (a *Client) GetNamespacePublisher(params *GetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacePublisherOK, *GetNamespacePublisherBadRequest, *GetNamespacePublisherUnauthorized, *GetNamespacePublisherForbidden, *GetNamespacePublisherNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespacePublisherParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getNamespacePublisher",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespacePublisherReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetNamespacePublisherOK:
		return v, nil, nil, nil, nil, nil

	case *GetNamespacePublisherBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetNamespacePublisherUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetNamespacePublisherForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetNamespacePublisherNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNamespacePublisherShort get namespace info related publisher namespace
Get namespace info related publisher namespace.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=2 (READ)
  *  Action code : 11305
  *  Returns : Namespace info related publisher namespace
*/
func (a *Client) GetNamespacePublisherShort(params *GetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacePublisherOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespacePublisherParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getNamespacePublisher",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespacePublisherReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespacePublisherOK:
		return v, nil
	case *GetNamespacePublisherBadRequest:
		return nil, v
	case *GetNamespacePublisherUnauthorized:
		return nil, v
	case *GetNamespacePublisherForbidden:
		return nil, v
	case *GetNamespacePublisherNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ChangeNamespaceStatusShort instead.

ChangeNamespaceStatus change namespace status
Change a namespace status.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=4 (UPDATE)
  * Action code : 11306
  *  Returns : updated namespace
*/
func (a *Client) ChangeNamespaceStatus(params *ChangeNamespaceStatusParams, authInfo runtime.ClientAuthInfoWriter) (*ChangeNamespaceStatusOK, *ChangeNamespaceStatusBadRequest, *ChangeNamespaceStatusUnauthorized, *ChangeNamespaceStatusForbidden, *ChangeNamespaceStatusNotFound, *ChangeNamespaceStatusConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChangeNamespaceStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "changeNamespaceStatus",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChangeNamespaceStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ChangeNamespaceStatusOK:
		return v, nil, nil, nil, nil, nil, nil

	case *ChangeNamespaceStatusBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *ChangeNamespaceStatusUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *ChangeNamespaceStatusForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *ChangeNamespaceStatusNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *ChangeNamespaceStatusConflict:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ChangeNamespaceStatusShort change namespace status
Change a namespace status.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:NAMESPACE" , action=4 (UPDATE)
  * Action code : 11306
  *  Returns : updated namespace
*/
func (a *Client) ChangeNamespaceStatusShort(params *ChangeNamespaceStatusParams, authInfo runtime.ClientAuthInfoWriter) (*ChangeNamespaceStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChangeNamespaceStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "changeNamespaceStatus",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChangeNamespaceStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ChangeNamespaceStatusOK:
		return v, nil
	case *ChangeNamespaceStatusBadRequest:
		return nil, v
	case *ChangeNamespaceStatusUnauthorized:
		return nil, v
	case *ChangeNamespaceStatusForbidden:
		return nil, v
	case *ChangeNamespaceStatusNotFound:
		return nil, v
	case *ChangeNamespaceStatusConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetNamespacesShort instead.

PublicGetNamespaces get all namespaces
Get all namespaces.
Other detail info:

  * Required permission : login user
  *  Action code : 11303
  *  Returns : list of namespaces
*/
func (a *Client) PublicGetNamespaces(params *PublicGetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacesOK, *PublicGetNamespacesUnauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetNamespacesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetNamespaces",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetNamespacesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetNamespacesOK:
		return v, nil, nil

	case *PublicGetNamespacesUnauthorized:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetNamespacesShort get all namespaces
Get all namespaces.
Other detail info:

  * Required permission : login user
  *  Action code : 11303
  *  Returns : list of namespaces
*/
func (a *Client) PublicGetNamespacesShort(params *PublicGetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetNamespacesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetNamespaces",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetNamespacesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetNamespacesOK:
		return v, nil
	case *PublicGetNamespacesUnauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetNamespacePublisherShort instead.

PublicGetNamespacePublisher get namespace info related publisher namespace
Get namespace info related publisher namespace.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:NAMESPACE" , action=2 (READ)
  *  Action code : 11305
  *  Returns : Namespace info related publisher namespace
*/
func (a *Client) PublicGetNamespacePublisher(params *PublicGetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacePublisherOK, *PublicGetNamespacePublisherBadRequest, *PublicGetNamespacePublisherUnauthorized, *PublicGetNamespacePublisherForbidden, *PublicGetNamespacePublisherNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetNamespacePublisherParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetNamespacePublisher",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetNamespacePublisherReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetNamespacePublisherOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetNamespacePublisherBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetNamespacePublisherUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetNamespacePublisherForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicGetNamespacePublisherNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetNamespacePublisherShort get namespace info related publisher namespace
Get namespace info related publisher namespace.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:NAMESPACE" , action=2 (READ)
  *  Action code : 11305
  *  Returns : Namespace info related publisher namespace
*/
func (a *Client) PublicGetNamespacePublisherShort(params *PublicGetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacePublisherOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetNamespacePublisherParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetNamespacePublisher",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetNamespacePublisherReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetNamespacePublisherOK:
		return v, nil
	case *PublicGetNamespacePublisherBadRequest:
		return nil, v
	case *PublicGetNamespacePublisherUnauthorized:
		return nil, v
	case *PublicGetNamespacePublisherForbidden:
		return nil, v
	case *PublicGetNamespacePublisherNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
