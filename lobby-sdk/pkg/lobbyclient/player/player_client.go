// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package player

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new player API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for player API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetLobbyCCU(params *AdminGetLobbyCCUParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLobbyCCUOK, *AdminGetLobbyCCUBadRequest, *AdminGetLobbyCCUUnauthorized, *AdminGetLobbyCCUForbidden, *AdminGetLobbyCCUNotFound, *AdminGetLobbyCCUInternalServerError, error)
	AdminGetLobbyCCUShort(params *AdminGetLobbyCCUParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLobbyCCUOK, error)
	AdminGetBulkPlayerBlockedPlayersV1(params *AdminGetBulkPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkPlayerBlockedPlayersV1OK, *AdminGetBulkPlayerBlockedPlayersV1BadRequest, *AdminGetBulkPlayerBlockedPlayersV1Unauthorized, *AdminGetBulkPlayerBlockedPlayersV1Forbidden, *AdminGetBulkPlayerBlockedPlayersV1NotFound, *AdminGetBulkPlayerBlockedPlayersV1InternalServerError, error)
	AdminGetBulkPlayerBlockedPlayersV1Short(params *AdminGetBulkPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkPlayerBlockedPlayersV1OK, error)
	AdminGetAllPlayerSessionAttribute(params *AdminGetAllPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllPlayerSessionAttributeOK, *AdminGetAllPlayerSessionAttributeUnauthorized, *AdminGetAllPlayerSessionAttributeForbidden, *AdminGetAllPlayerSessionAttributeInternalServerError, error)
	AdminGetAllPlayerSessionAttributeShort(params *AdminGetAllPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllPlayerSessionAttributeOK, error)
	AdminSetPlayerSessionAttribute(params *AdminSetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetPlayerSessionAttributeNoContent, *AdminSetPlayerSessionAttributeBadRequest, *AdminSetPlayerSessionAttributeUnauthorized, *AdminSetPlayerSessionAttributeForbidden, *AdminSetPlayerSessionAttributeNotFound, *AdminSetPlayerSessionAttributeInternalServerError, error)
	AdminSetPlayerSessionAttributeShort(params *AdminSetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetPlayerSessionAttributeNoContent, error)
	AdminGetPlayerSessionAttribute(params *AdminGetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerSessionAttributeOK, *AdminGetPlayerSessionAttributeBadRequest, *AdminGetPlayerSessionAttributeUnauthorized, *AdminGetPlayerSessionAttributeForbidden, *AdminGetPlayerSessionAttributeNotFound, *AdminGetPlayerSessionAttributeInternalServerError, error)
	AdminGetPlayerSessionAttributeShort(params *AdminGetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerSessionAttributeOK, error)
	AdminGetPlayerBlockedPlayersV1(params *AdminGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedPlayersV1OK, *AdminGetPlayerBlockedPlayersV1BadRequest, *AdminGetPlayerBlockedPlayersV1Unauthorized, *AdminGetPlayerBlockedPlayersV1Forbidden, *AdminGetPlayerBlockedPlayersV1NotFound, *AdminGetPlayerBlockedPlayersV1InternalServerError, error)
	AdminGetPlayerBlockedPlayersV1Short(params *AdminGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedPlayersV1OK, error)
	AdminGetPlayerBlockedByPlayersV1(params *AdminGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedByPlayersV1OK, *AdminGetPlayerBlockedByPlayersV1BadRequest, *AdminGetPlayerBlockedByPlayersV1Unauthorized, *AdminGetPlayerBlockedByPlayersV1Forbidden, *AdminGetPlayerBlockedByPlayersV1NotFound, *AdminGetPlayerBlockedByPlayersV1InternalServerError, error)
	AdminGetPlayerBlockedByPlayersV1Short(params *AdminGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedByPlayersV1OK, error)
	AdminBulkBlockPlayersV1(params *AdminBulkBlockPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkBlockPlayersV1NoContent, *AdminBulkBlockPlayersV1BadRequest, *AdminBulkBlockPlayersV1Unauthorized, *AdminBulkBlockPlayersV1Forbidden, *AdminBulkBlockPlayersV1InternalServerError, error)
	AdminBulkBlockPlayersV1Short(params *AdminBulkBlockPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkBlockPlayersV1NoContent, error)
	PublicGetPlayerBlockedPlayersV1(params *PublicGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedPlayersV1OK, *PublicGetPlayerBlockedPlayersV1BadRequest, *PublicGetPlayerBlockedPlayersV1Unauthorized, *PublicGetPlayerBlockedPlayersV1Forbidden, *PublicGetPlayerBlockedPlayersV1NotFound, *PublicGetPlayerBlockedPlayersV1InternalServerError, error)
	PublicGetPlayerBlockedPlayersV1Short(params *PublicGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedPlayersV1OK, error)
	PublicGetPlayerBlockedByPlayersV1(params *PublicGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedByPlayersV1OK, *PublicGetPlayerBlockedByPlayersV1BadRequest, *PublicGetPlayerBlockedByPlayersV1Unauthorized, *PublicGetPlayerBlockedByPlayersV1Forbidden, *PublicGetPlayerBlockedByPlayersV1NotFound, *PublicGetPlayerBlockedByPlayersV1InternalServerError, error)
	PublicGetPlayerBlockedByPlayersV1Short(params *PublicGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedByPlayersV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetLobbyCCUShort instead.

AdminGetLobbyCCU admin get number of players currently connected to the lobby.
Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CCU [READ]` with scope `social`

Get the number of players connected to the Lobby in the given namespace.
*/
func (a *Client) AdminGetLobbyCCU(params *AdminGetLobbyCCUParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLobbyCCUOK, *AdminGetLobbyCCUBadRequest, *AdminGetLobbyCCUUnauthorized, *AdminGetLobbyCCUForbidden, *AdminGetLobbyCCUNotFound, *AdminGetLobbyCCUInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetLobbyCCUParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetLobbyCCU",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/ccu",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetLobbyCCUReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetLobbyCCUOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetLobbyCCUBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetLobbyCCUUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetLobbyCCUForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetLobbyCCUNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetLobbyCCUInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetLobbyCCUShort admin get number of players currently connected to the lobby.
Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CCU [READ]` with scope `social`

Get the number of players connected to the Lobby in the given namespace.
*/
func (a *Client) AdminGetLobbyCCUShort(params *AdminGetLobbyCCUParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLobbyCCUOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetLobbyCCUParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetLobbyCCU",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/ccu",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetLobbyCCUReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetLobbyCCUOK:
		return v, nil
	case *AdminGetLobbyCCUBadRequest:
		return nil, v
	case *AdminGetLobbyCCUUnauthorized:
		return nil, v
	case *AdminGetLobbyCCUForbidden:
		return nil, v
	case *AdminGetLobbyCCUNotFound:
		return nil, v
	case *AdminGetLobbyCCUInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetBulkPlayerBlockedPlayersV1Short instead.

AdminGetBulkPlayerBlockedPlayersV1 admin get blocked players by bulk user ids
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:BLOCK [READ]` with scope `social`

get blocked players data by bulk user ids in a namespace.
*/
func (a *Client) AdminGetBulkPlayerBlockedPlayersV1(params *AdminGetBulkPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkPlayerBlockedPlayersV1OK, *AdminGetBulkPlayerBlockedPlayersV1BadRequest, *AdminGetBulkPlayerBlockedPlayersV1Unauthorized, *AdminGetBulkPlayerBlockedPlayersV1Forbidden, *AdminGetBulkPlayerBlockedPlayersV1NotFound, *AdminGetBulkPlayerBlockedPlayersV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBulkPlayerBlockedPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetBulkPlayerBlockedPlayersV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBulkPlayerBlockedPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetBulkPlayerBlockedPlayersV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetBulkPlayerBlockedPlayersV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetBulkPlayerBlockedPlayersV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetBulkPlayerBlockedPlayersV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetBulkPlayerBlockedPlayersV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetBulkPlayerBlockedPlayersV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBulkPlayerBlockedPlayersV1Short admin get blocked players by bulk user ids
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:BLOCK [READ]` with scope `social`

get blocked players data by bulk user ids in a namespace.
*/
func (a *Client) AdminGetBulkPlayerBlockedPlayersV1Short(params *AdminGetBulkPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkPlayerBlockedPlayersV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBulkPlayerBlockedPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetBulkPlayerBlockedPlayersV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBulkPlayerBlockedPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBulkPlayerBlockedPlayersV1OK:
		return v, nil
	case *AdminGetBulkPlayerBlockedPlayersV1BadRequest:
		return nil, v
	case *AdminGetBulkPlayerBlockedPlayersV1Unauthorized:
		return nil, v
	case *AdminGetBulkPlayerBlockedPlayersV1Forbidden:
		return nil, v
	case *AdminGetBulkPlayerBlockedPlayersV1NotFound:
		return nil, v
	case *AdminGetBulkPlayerBlockedPlayersV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetAllPlayerSessionAttributeShort instead.

AdminGetAllPlayerSessionAttribute admin get all player's session attribute
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:ATTRIBUTES [READ]` with scope `social`

get all player's session attribute by user id in a namespace.
*/
func (a *Client) AdminGetAllPlayerSessionAttribute(params *AdminGetAllPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllPlayerSessionAttributeOK, *AdminGetAllPlayerSessionAttributeUnauthorized, *AdminGetAllPlayerSessionAttributeForbidden, *AdminGetAllPlayerSessionAttributeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllPlayerSessionAttributeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllPlayerSessionAttribute",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllPlayerSessionAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllPlayerSessionAttributeOK:
		return v, nil, nil, nil, nil

	case *AdminGetAllPlayerSessionAttributeUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetAllPlayerSessionAttributeForbidden:
		return nil, nil, v, nil, nil

	case *AdminGetAllPlayerSessionAttributeInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllPlayerSessionAttributeShort admin get all player's session attribute
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:ATTRIBUTES [READ]` with scope `social`

get all player's session attribute by user id in a namespace.
*/
func (a *Client) AdminGetAllPlayerSessionAttributeShort(params *AdminGetAllPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllPlayerSessionAttributeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllPlayerSessionAttributeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllPlayerSessionAttribute",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllPlayerSessionAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllPlayerSessionAttributeOK:
		return v, nil
	case *AdminGetAllPlayerSessionAttributeUnauthorized:
		return nil, v
	case *AdminGetAllPlayerSessionAttributeForbidden:
		return nil, v
	case *AdminGetAllPlayerSessionAttributeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSetPlayerSessionAttributeShort instead.

AdminSetPlayerSessionAttribute admin set player's session attribute
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:ATTRIBUTES [UPDATE]` with scope `social`

set player's session attribute by user id in a namespace.
*/
func (a *Client) AdminSetPlayerSessionAttribute(params *AdminSetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetPlayerSessionAttributeNoContent, *AdminSetPlayerSessionAttributeBadRequest, *AdminSetPlayerSessionAttributeUnauthorized, *AdminSetPlayerSessionAttributeForbidden, *AdminSetPlayerSessionAttributeNotFound, *AdminSetPlayerSessionAttributeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSetPlayerSessionAttributeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSetPlayerSessionAttribute",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSetPlayerSessionAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSetPlayerSessionAttributeNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminSetPlayerSessionAttributeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminSetPlayerSessionAttributeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminSetPlayerSessionAttributeForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminSetPlayerSessionAttributeNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminSetPlayerSessionAttributeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSetPlayerSessionAttributeShort admin set player's session attribute
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:ATTRIBUTES [UPDATE]` with scope `social`

set player's session attribute by user id in a namespace.
*/
func (a *Client) AdminSetPlayerSessionAttributeShort(params *AdminSetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetPlayerSessionAttributeNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSetPlayerSessionAttributeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSetPlayerSessionAttribute",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSetPlayerSessionAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSetPlayerSessionAttributeNoContent:
		return v, nil
	case *AdminSetPlayerSessionAttributeBadRequest:
		return nil, v
	case *AdminSetPlayerSessionAttributeUnauthorized:
		return nil, v
	case *AdminSetPlayerSessionAttributeForbidden:
		return nil, v
	case *AdminSetPlayerSessionAttributeNotFound:
		return nil, v
	case *AdminSetPlayerSessionAttributeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlayerSessionAttributeShort instead.

AdminGetPlayerSessionAttribute admin get player's session attribute
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:ATTRIBUTES [READ]` with scope `social`

get player's specific session attribute by user id in a namespace.
*/
func (a *Client) AdminGetPlayerSessionAttribute(params *AdminGetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerSessionAttributeOK, *AdminGetPlayerSessionAttributeBadRequest, *AdminGetPlayerSessionAttributeUnauthorized, *AdminGetPlayerSessionAttributeForbidden, *AdminGetPlayerSessionAttributeNotFound, *AdminGetPlayerSessionAttributeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerSessionAttributeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerSessionAttribute",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerSessionAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerSessionAttributeOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetPlayerSessionAttributeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetPlayerSessionAttributeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetPlayerSessionAttributeForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetPlayerSessionAttributeNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetPlayerSessionAttributeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerSessionAttributeShort admin get player's session attribute
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:ATTRIBUTES [READ]` with scope `social`

get player's specific session attribute by user id in a namespace.
*/
func (a *Client) AdminGetPlayerSessionAttributeShort(params *AdminGetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerSessionAttributeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerSessionAttributeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerSessionAttribute",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerSessionAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerSessionAttributeOK:
		return v, nil
	case *AdminGetPlayerSessionAttributeBadRequest:
		return nil, v
	case *AdminGetPlayerSessionAttributeUnauthorized:
		return nil, v
	case *AdminGetPlayerSessionAttributeForbidden:
		return nil, v
	case *AdminGetPlayerSessionAttributeNotFound:
		return nil, v
	case *AdminGetPlayerSessionAttributeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlayerBlockedPlayersV1Short instead.

AdminGetPlayerBlockedPlayersV1 admin get blocked players by user id
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:BLOCK [READ]` with scope `social`

get blocked players data by user id in a namespace.
*/
func (a *Client) AdminGetPlayerBlockedPlayersV1(params *AdminGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedPlayersV1OK, *AdminGetPlayerBlockedPlayersV1BadRequest, *AdminGetPlayerBlockedPlayersV1Unauthorized, *AdminGetPlayerBlockedPlayersV1Forbidden, *AdminGetPlayerBlockedPlayersV1NotFound, *AdminGetPlayerBlockedPlayersV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerBlockedPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerBlockedPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerBlockedPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerBlockedPlayersV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetPlayerBlockedPlayersV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetPlayerBlockedPlayersV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetPlayerBlockedPlayersV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetPlayerBlockedPlayersV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetPlayerBlockedPlayersV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerBlockedPlayersV1Short admin get blocked players by user id
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:BLOCK [READ]` with scope `social`

get blocked players data by user id in a namespace.
*/
func (a *Client) AdminGetPlayerBlockedPlayersV1Short(params *AdminGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedPlayersV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerBlockedPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerBlockedPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerBlockedPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerBlockedPlayersV1OK:
		return v, nil
	case *AdminGetPlayerBlockedPlayersV1BadRequest:
		return nil, v
	case *AdminGetPlayerBlockedPlayersV1Unauthorized:
		return nil, v
	case *AdminGetPlayerBlockedPlayersV1Forbidden:
		return nil, v
	case *AdminGetPlayerBlockedPlayersV1NotFound:
		return nil, v
	case *AdminGetPlayerBlockedPlayersV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlayerBlockedByPlayersV1Short instead.

AdminGetPlayerBlockedByPlayersV1 get players who blocked this player by user id
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:BLOCK [READ]` with scope `social`

load get players who blocked this player in a namespace based on user id
*/
func (a *Client) AdminGetPlayerBlockedByPlayersV1(params *AdminGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedByPlayersV1OK, *AdminGetPlayerBlockedByPlayersV1BadRequest, *AdminGetPlayerBlockedByPlayersV1Unauthorized, *AdminGetPlayerBlockedByPlayersV1Forbidden, *AdminGetPlayerBlockedByPlayersV1NotFound, *AdminGetPlayerBlockedByPlayersV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerBlockedByPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerBlockedByPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerBlockedByPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerBlockedByPlayersV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetPlayerBlockedByPlayersV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetPlayerBlockedByPlayersV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetPlayerBlockedByPlayersV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetPlayerBlockedByPlayersV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetPlayerBlockedByPlayersV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerBlockedByPlayersV1Short get players who blocked this player by user id
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:BLOCK [READ]` with scope `social`

load get players who blocked this player in a namespace based on user id
*/
func (a *Client) AdminGetPlayerBlockedByPlayersV1Short(params *AdminGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedByPlayersV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerBlockedByPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerBlockedByPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerBlockedByPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerBlockedByPlayersV1OK:
		return v, nil
	case *AdminGetPlayerBlockedByPlayersV1BadRequest:
		return nil, v
	case *AdminGetPlayerBlockedByPlayersV1Unauthorized:
		return nil, v
	case *AdminGetPlayerBlockedByPlayersV1Forbidden:
		return nil, v
	case *AdminGetPlayerBlockedByPlayersV1NotFound:
		return nil, v
	case *AdminGetPlayerBlockedByPlayersV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminBulkBlockPlayersV1Short instead.

AdminBulkBlockPlayersV1 admin bulk blocks player by list user id
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:BLOCK [CREATE]` with scope `social`

Bulk block player in a namespace by list of user id
*/
func (a *Client) AdminBulkBlockPlayersV1(params *AdminBulkBlockPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkBlockPlayersV1NoContent, *AdminBulkBlockPlayersV1BadRequest, *AdminBulkBlockPlayersV1Unauthorized, *AdminBulkBlockPlayersV1Forbidden, *AdminBulkBlockPlayersV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkBlockPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminBulkBlockPlayersV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkBlockPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminBulkBlockPlayersV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminBulkBlockPlayersV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminBulkBlockPlayersV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminBulkBlockPlayersV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminBulkBlockPlayersV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkBlockPlayersV1Short admin bulk blocks player by list user id
Required permission : `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:BLOCK [CREATE]` with scope `social`

Bulk block player in a namespace by list of user id
*/
func (a *Client) AdminBulkBlockPlayersV1Short(params *AdminBulkBlockPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkBlockPlayersV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkBlockPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminBulkBlockPlayersV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkBlockPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkBlockPlayersV1NoContent:
		return v, nil
	case *AdminBulkBlockPlayersV1BadRequest:
		return nil, v
	case *AdminBulkBlockPlayersV1Unauthorized:
		return nil, v
	case *AdminBulkBlockPlayersV1Forbidden:
		return nil, v
	case *AdminBulkBlockPlayersV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetPlayerBlockedPlayersV1Short instead.

PublicGetPlayerBlockedPlayersV1 get blocked players by user id
Required valid user authorization


load blocked players in a namespace based on user id

Action Code: 50101
*/
func (a *Client) PublicGetPlayerBlockedPlayersV1(params *PublicGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedPlayersV1OK, *PublicGetPlayerBlockedPlayersV1BadRequest, *PublicGetPlayerBlockedPlayersV1Unauthorized, *PublicGetPlayerBlockedPlayersV1Forbidden, *PublicGetPlayerBlockedPlayersV1NotFound, *PublicGetPlayerBlockedPlayersV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerBlockedPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPlayerBlockedPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/player/namespaces/{namespace}/users/me/blocked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerBlockedPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerBlockedPlayersV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGetPlayerBlockedPlayersV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGetPlayerBlockedPlayersV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGetPlayerBlockedPlayersV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGetPlayerBlockedPlayersV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGetPlayerBlockedPlayersV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPlayerBlockedPlayersV1Short get blocked players by user id
Required valid user authorization


load blocked players in a namespace based on user id

Action Code: 50101
*/
func (a *Client) PublicGetPlayerBlockedPlayersV1Short(params *PublicGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedPlayersV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerBlockedPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPlayerBlockedPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/player/namespaces/{namespace}/users/me/blocked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerBlockedPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerBlockedPlayersV1OK:
		return v, nil
	case *PublicGetPlayerBlockedPlayersV1BadRequest:
		return nil, v
	case *PublicGetPlayerBlockedPlayersV1Unauthorized:
		return nil, v
	case *PublicGetPlayerBlockedPlayersV1Forbidden:
		return nil, v
	case *PublicGetPlayerBlockedPlayersV1NotFound:
		return nil, v
	case *PublicGetPlayerBlockedPlayersV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetPlayerBlockedByPlayersV1Short instead.

PublicGetPlayerBlockedByPlayersV1 get players who blocked this player by user id
Required valid user authorization


load get players who blocked this player in a namespace based on user id

Action Code: 50101
*/
func (a *Client) PublicGetPlayerBlockedByPlayersV1(params *PublicGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedByPlayersV1OK, *PublicGetPlayerBlockedByPlayersV1BadRequest, *PublicGetPlayerBlockedByPlayersV1Unauthorized, *PublicGetPlayerBlockedByPlayersV1Forbidden, *PublicGetPlayerBlockedByPlayersV1NotFound, *PublicGetPlayerBlockedByPlayersV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerBlockedByPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPlayerBlockedByPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerBlockedByPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerBlockedByPlayersV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGetPlayerBlockedByPlayersV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGetPlayerBlockedByPlayersV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGetPlayerBlockedByPlayersV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGetPlayerBlockedByPlayersV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGetPlayerBlockedByPlayersV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPlayerBlockedByPlayersV1Short get players who blocked this player by user id
Required valid user authorization


load get players who blocked this player in a namespace based on user id

Action Code: 50101
*/
func (a *Client) PublicGetPlayerBlockedByPlayersV1Short(params *PublicGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedByPlayersV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerBlockedByPlayersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPlayerBlockedByPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerBlockedByPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerBlockedByPlayersV1OK:
		return v, nil
	case *PublicGetPlayerBlockedByPlayersV1BadRequest:
		return nil, v
	case *PublicGetPlayerBlockedByPlayersV1Unauthorized:
		return nil, v
	case *PublicGetPlayerBlockedByPlayersV1Forbidden:
		return nil, v
	case *PublicGetPlayerBlockedByPlayersV1NotFound:
		return nil, v
	case *PublicGetPlayerBlockedByPlayersV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
