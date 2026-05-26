// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package session_storage

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new session storage API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for session storage API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminReadPartySessionStorage(params *AdminReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadPartySessionStorageOK, *AdminReadPartySessionStorageBadRequest, *AdminReadPartySessionStorageUnauthorized, *AdminReadPartySessionStorageNotFound, *AdminReadPartySessionStorageInternalServerError, error)
	AdminReadPartySessionStorageShort(params *AdminReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadPartySessionStorageOK, error)
	AdminReadSessionStorage(params *AdminReadSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadSessionStorageOK, *AdminReadSessionStorageBadRequest, *AdminReadSessionStorageUnauthorized, *AdminReadSessionStorageNotFound, *AdminReadSessionStorageInternalServerError, error)
	AdminReadSessionStorageShort(params *AdminReadSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadSessionStorageOK, error)
	AdminDeleteUserSessionStorage(params *AdminDeleteUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserSessionStorageNoContent, *AdminDeleteUserSessionStorageBadRequest, *AdminDeleteUserSessionStorageUnauthorized, *AdminDeleteUserSessionStorageNotFound, *AdminDeleteUserSessionStorageInternalServerError, error)
	AdminDeleteUserSessionStorageShort(params *AdminDeleteUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserSessionStorageNoContent, error)
	AdminReadUserSessionStorage(params *AdminReadUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadUserSessionStorageOK, *AdminReadUserSessionStorageBadRequest, *AdminReadUserSessionStorageUnauthorized, *AdminReadUserSessionStorageNotFound, *AdminReadUserSessionStorageInternalServerError, error)
	AdminReadUserSessionStorageShort(params *AdminReadUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadUserSessionStorageOK, error)
	PublicReadPartySessionStorage(params *PublicReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReadPartySessionStorageOK, *PublicReadPartySessionStorageBadRequest, *PublicReadPartySessionStorageUnauthorized, *PublicReadPartySessionStorageNotFound, *PublicReadPartySessionStorageInternalServerError, error)
	PublicReadPartySessionStorageShort(params *PublicReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReadPartySessionStorageOK, error)
	PublicUpdateInsertPartySessionStorage(params *PublicUpdateInsertPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageOK, *PublicUpdateInsertPartySessionStorageBadRequest, *PublicUpdateInsertPartySessionStorageUnauthorized, *PublicUpdateInsertPartySessionStorageForbidden, *PublicUpdateInsertPartySessionStorageNotFound, *PublicUpdateInsertPartySessionStorageInternalServerError, error)
	PublicUpdateInsertPartySessionStorageShort(params *PublicUpdateInsertPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageOK, error)
	PublicUpdateInsertPartySessionStorageReserved(params *PublicUpdateInsertPartySessionStorageReservedParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageReservedOK, *PublicUpdateInsertPartySessionStorageReservedBadRequest, *PublicUpdateInsertPartySessionStorageReservedUnauthorized, *PublicUpdateInsertPartySessionStorageReservedForbidden, *PublicUpdateInsertPartySessionStorageReservedNotFound, *PublicUpdateInsertPartySessionStorageReservedInternalServerError, error)
	PublicUpdateInsertPartySessionStorageReservedShort(params *PublicUpdateInsertPartySessionStorageReservedParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageReservedOK, error)
	PublicUpdateInsertSessionStorageLeader(params *PublicUpdateInsertSessionStorageLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderOK, *PublicUpdateInsertSessionStorageLeaderBadRequest, *PublicUpdateInsertSessionStorageLeaderUnauthorized, *PublicUpdateInsertSessionStorageLeaderForbidden, *PublicUpdateInsertSessionStorageLeaderNotFound, *PublicUpdateInsertSessionStorageLeaderInternalServerError, error)
	PublicUpdateInsertSessionStorageLeaderShort(params *PublicUpdateInsertSessionStorageLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderOK, error)
	PublicUpdateInsertSessionStorage(params *PublicUpdateInsertSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageOK, *PublicUpdateInsertSessionStorageBadRequest, *PublicUpdateInsertSessionStorageUnauthorized, *PublicUpdateInsertSessionStorageForbidden, *PublicUpdateInsertSessionStorageNotFound, *PublicUpdateInsertSessionStorageInternalServerError, error)
	PublicUpdateInsertSessionStorageShort(params *PublicUpdateInsertSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageOK, error)
	PublicReplaceSessionStorageLeaderV2(params *PublicReplaceSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageLeaderV2OK, *PublicReplaceSessionStorageLeaderV2BadRequest, *PublicReplaceSessionStorageLeaderV2Unauthorized, *PublicReplaceSessionStorageLeaderV2Forbidden, *PublicReplaceSessionStorageLeaderV2NotFound, *PublicReplaceSessionStorageLeaderV2InternalServerError, error)
	PublicReplaceSessionStorageLeaderV2Short(params *PublicReplaceSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageLeaderV2OK, error)
	PublicUpdateInsertSessionStorageLeaderV2(params *PublicUpdateInsertSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderV2OK, *PublicUpdateInsertSessionStorageLeaderV2BadRequest, *PublicUpdateInsertSessionStorageLeaderV2Unauthorized, *PublicUpdateInsertSessionStorageLeaderV2Forbidden, *PublicUpdateInsertSessionStorageLeaderV2NotFound, *PublicUpdateInsertSessionStorageLeaderV2InternalServerError, error)
	PublicUpdateInsertSessionStorageLeaderV2Short(params *PublicUpdateInsertSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderV2OK, error)
	PublicReplaceSessionStorageUserV2(params *PublicReplaceSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageUserV2OK, *PublicReplaceSessionStorageUserV2BadRequest, *PublicReplaceSessionStorageUserV2Unauthorized, *PublicReplaceSessionStorageUserV2Forbidden, *PublicReplaceSessionStorageUserV2NotFound, *PublicReplaceSessionStorageUserV2InternalServerError, error)
	PublicReplaceSessionStorageUserV2Short(params *PublicReplaceSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageUserV2OK, error)
	PublicUpdateInsertSessionStorageUserV2(params *PublicUpdateInsertSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageUserV2OK, *PublicUpdateInsertSessionStorageUserV2BadRequest, *PublicUpdateInsertSessionStorageUserV2Unauthorized, *PublicUpdateInsertSessionStorageUserV2Forbidden, *PublicUpdateInsertSessionStorageUserV2NotFound, *PublicUpdateInsertSessionStorageUserV2InternalServerError, error)
	PublicUpdateInsertSessionStorageUserV2Short(params *PublicUpdateInsertSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageUserV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminReadPartySessionStorageShort instead.

AdminReadPartySessionStorage read party session storage.
Read Party Session Storage by partyID
Party Storage example:
```
{
"reserved": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) AdminReadPartySessionStorage(params *AdminReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadPartySessionStorageOK, *AdminReadPartySessionStorageBadRequest, *AdminReadPartySessionStorageUnauthorized, *AdminReadPartySessionStorageNotFound, *AdminReadPartySessionStorageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReadPartySessionStorageParams()
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
		ID:                 "adminReadPartySessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/parties/{partyId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReadPartySessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminReadPartySessionStorageOK:
		return v, nil, nil, nil, nil, nil

	case *AdminReadPartySessionStorageBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminReadPartySessionStorageUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminReadPartySessionStorageNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminReadPartySessionStorageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminReadPartySessionStorageShort read party session storage.
Read Party Session Storage by partyID
Party Storage example:
```
{
"reserved": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) AdminReadPartySessionStorageShort(params *AdminReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadPartySessionStorageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReadPartySessionStorageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminReadPartySessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/parties/{partyId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReadPartySessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminReadPartySessionStorageOK:
		return v, nil
	case *AdminReadPartySessionStorageBadRequest:
		return nil, v
	case *AdminReadPartySessionStorageUnauthorized:
		return nil, v
	case *AdminReadPartySessionStorageNotFound:
		return nil, v
	case *AdminReadPartySessionStorageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminReadSessionStorageShort instead.

AdminReadSessionStorage read session storage.

Read Session Storage by sessionID
Session Storage feature only available for Gamesession
*/
func (a *Client) AdminReadSessionStorage(params *AdminReadSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadSessionStorageOK, *AdminReadSessionStorageBadRequest, *AdminReadSessionStorageUnauthorized, *AdminReadSessionStorageNotFound, *AdminReadSessionStorageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReadSessionStorageParams()
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
		ID:                 "adminReadSessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReadSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminReadSessionStorageOK:
		return v, nil, nil, nil, nil, nil

	case *AdminReadSessionStorageBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminReadSessionStorageUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminReadSessionStorageNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminReadSessionStorageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminReadSessionStorageShort read session storage.

Read Session Storage by sessionID
Session Storage feature only available for Gamesession
*/
func (a *Client) AdminReadSessionStorageShort(params *AdminReadSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadSessionStorageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReadSessionStorageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminReadSessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReadSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminReadSessionStorageOK:
		return v, nil
	case *AdminReadSessionStorageBadRequest:
		return nil, v
	case *AdminReadSessionStorageUnauthorized:
		return nil, v
	case *AdminReadSessionStorageNotFound:
		return nil, v
	case *AdminReadSessionStorageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteUserSessionStorageShort instead.

AdminDeleteUserSessionStorage delete session storage.

Delete Session Storage By sessionID
Session Storage feature only available for Gamesession
*/
func (a *Client) AdminDeleteUserSessionStorage(params *AdminDeleteUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserSessionStorageNoContent, *AdminDeleteUserSessionStorageBadRequest, *AdminDeleteUserSessionStorageUnauthorized, *AdminDeleteUserSessionStorageNotFound, *AdminDeleteUserSessionStorageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserSessionStorageParams()
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
		ID:                 "adminDeleteUserSessionStorage",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserSessionStorageNoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteUserSessionStorageBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteUserSessionStorageUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteUserSessionStorageNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteUserSessionStorageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserSessionStorageShort delete session storage.

Delete Session Storage By sessionID
Session Storage feature only available for Gamesession
*/
func (a *Client) AdminDeleteUserSessionStorageShort(params *AdminDeleteUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserSessionStorageNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserSessionStorageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteUserSessionStorage",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserSessionStorageNoContent:
		return v, nil
	case *AdminDeleteUserSessionStorageBadRequest:
		return nil, v
	case *AdminDeleteUserSessionStorageUnauthorized:
		return nil, v
	case *AdminDeleteUserSessionStorageNotFound:
		return nil, v
	case *AdminDeleteUserSessionStorageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminReadUserSessionStorageShort instead.

AdminReadUserSessionStorage read session storage user.

Read Session Storage by sessionID and userID
Session Storage feature only available for Gamesession
*/
func (a *Client) AdminReadUserSessionStorage(params *AdminReadUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadUserSessionStorageOK, *AdminReadUserSessionStorageBadRequest, *AdminReadUserSessionStorageUnauthorized, *AdminReadUserSessionStorageNotFound, *AdminReadUserSessionStorageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReadUserSessionStorageParams()
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
		ID:                 "adminReadUserSessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReadUserSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminReadUserSessionStorageOK:
		return v, nil, nil, nil, nil, nil

	case *AdminReadUserSessionStorageBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminReadUserSessionStorageUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminReadUserSessionStorageNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminReadUserSessionStorageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminReadUserSessionStorageShort read session storage user.

Read Session Storage by sessionID and userID
Session Storage feature only available for Gamesession
*/
func (a *Client) AdminReadUserSessionStorageShort(params *AdminReadUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadUserSessionStorageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReadUserSessionStorageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminReadUserSessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReadUserSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminReadUserSessionStorageOK:
		return v, nil
	case *AdminReadUserSessionStorageBadRequest:
		return nil, v
	case *AdminReadUserSessionStorageUnauthorized:
		return nil, v
	case *AdminReadUserSessionStorageNotFound:
		return nil, v
	case *AdminReadUserSessionStorageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicReadPartySessionStorageShort instead.

PublicReadPartySessionStorage read party session storage.
Read Party Session Storage by partyID (with reserved and member).
Contains "reserved" when Update Insert Party Session Reserved Storage User.
Contains "member" when Update Insert Party Session Storage User.
Party Storage example:
```
{
"reserved": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
},
"member": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) PublicReadPartySessionStorage(params *PublicReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReadPartySessionStorageOK, *PublicReadPartySessionStorageBadRequest, *PublicReadPartySessionStorageUnauthorized, *PublicReadPartySessionStorageNotFound, *PublicReadPartySessionStorageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReadPartySessionStorageParams()
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
		ID:                 "publicReadPartySessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReadPartySessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicReadPartySessionStorageOK:
		return v, nil, nil, nil, nil, nil

	case *PublicReadPartySessionStorageBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicReadPartySessionStorageUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicReadPartySessionStorageNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicReadPartySessionStorageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReadPartySessionStorageShort read party session storage.
Read Party Session Storage by partyID (with reserved and member).
Contains "reserved" when Update Insert Party Session Reserved Storage User.
Contains "member" when Update Insert Party Session Storage User.
Party Storage example:
```
{
"reserved": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
},
"member": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) PublicReadPartySessionStorageShort(params *PublicReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReadPartySessionStorageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReadPartySessionStorageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicReadPartySessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReadPartySessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicReadPartySessionStorageOK:
		return v, nil
	case *PublicReadPartySessionStorageBadRequest:
		return nil, v
	case *PublicReadPartySessionStorageUnauthorized:
		return nil, v
	case *PublicReadPartySessionStorageNotFound:
		return nil, v
	case *PublicReadPartySessionStorageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateInsertPartySessionStorageShort instead.

PublicUpdateInsertPartySessionStorage update insert party session storage user.
Update Insert Party Session Storage User. User can only update or insert their own party storage (non-immutable).
can store generic json
example json can store :
```
{
"key": "value",
"number": 123,
}
```
The data will be stored on the "member" storage field
example stored data :
```
{
"member": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) PublicUpdateInsertPartySessionStorage(params *PublicUpdateInsertPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageOK, *PublicUpdateInsertPartySessionStorageBadRequest, *PublicUpdateInsertPartySessionStorageUnauthorized, *PublicUpdateInsertPartySessionStorageForbidden, *PublicUpdateInsertPartySessionStorageNotFound, *PublicUpdateInsertPartySessionStorageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertPartySessionStorageParams()
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
		ID:                 "publicUpdateInsertPartySessionStorage",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertPartySessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertPartySessionStorageOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicUpdateInsertPartySessionStorageBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicUpdateInsertPartySessionStorageUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicUpdateInsertPartySessionStorageForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicUpdateInsertPartySessionStorageNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicUpdateInsertPartySessionStorageInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertPartySessionStorageShort update insert party session storage user.
Update Insert Party Session Storage User. User can only update or insert their own party storage (non-immutable).
can store generic json
example json can store :
```
{
"key": "value",
"number": 123,
}
```
The data will be stored on the "member" storage field
example stored data :
```
{
"member": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) PublicUpdateInsertPartySessionStorageShort(params *PublicUpdateInsertPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertPartySessionStorageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateInsertPartySessionStorage",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertPartySessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertPartySessionStorageOK:
		return v, nil
	case *PublicUpdateInsertPartySessionStorageBadRequest:
		return nil, v
	case *PublicUpdateInsertPartySessionStorageUnauthorized:
		return nil, v
	case *PublicUpdateInsertPartySessionStorageForbidden:
		return nil, v
	case *PublicUpdateInsertPartySessionStorageNotFound:
		return nil, v
	case *PublicUpdateInsertPartySessionStorageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateInsertPartySessionStorageReservedShort instead.

PublicUpdateInsertPartySessionStorageReserved update insert party session reserved storage user.
**For Internal Use Only**
Update Insert Party Session Reserved Storage User. User can only update or insert their own reserve storage (non-immutable).
can store generic json
example json can store :
```
{
"key": "value",
"number": 123,
}
```
The data will be stored on the "reserved" storage field
example stored data :
```
{
"reserved": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) PublicUpdateInsertPartySessionStorageReserved(params *PublicUpdateInsertPartySessionStorageReservedParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageReservedOK, *PublicUpdateInsertPartySessionStorageReservedBadRequest, *PublicUpdateInsertPartySessionStorageReservedUnauthorized, *PublicUpdateInsertPartySessionStorageReservedForbidden, *PublicUpdateInsertPartySessionStorageReservedNotFound, *PublicUpdateInsertPartySessionStorageReservedInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertPartySessionStorageReservedParams()
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
		ID:                 "publicUpdateInsertPartySessionStorageReserved",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertPartySessionStorageReservedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertPartySessionStorageReservedOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicUpdateInsertPartySessionStorageReservedBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicUpdateInsertPartySessionStorageReservedUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicUpdateInsertPartySessionStorageReservedForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicUpdateInsertPartySessionStorageReservedNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicUpdateInsertPartySessionStorageReservedInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertPartySessionStorageReservedShort update insert party session reserved storage user.
**For Internal Use Only**
Update Insert Party Session Reserved Storage User. User can only update or insert their own reserve storage (non-immutable).
can store generic json
example json can store :
```
{
"key": "value",
"number": 123,
}
```
The data will be stored on the "reserved" storage field
example stored data :
```
{
"reserved": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) PublicUpdateInsertPartySessionStorageReservedShort(params *PublicUpdateInsertPartySessionStorageReservedParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageReservedOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertPartySessionStorageReservedParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateInsertPartySessionStorageReserved",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertPartySessionStorageReservedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertPartySessionStorageReservedOK:
		return v, nil
	case *PublicUpdateInsertPartySessionStorageReservedBadRequest:
		return nil, v
	case *PublicUpdateInsertPartySessionStorageReservedUnauthorized:
		return nil, v
	case *PublicUpdateInsertPartySessionStorageReservedForbidden:
		return nil, v
	case *PublicUpdateInsertPartySessionStorageReservedNotFound:
		return nil, v
	case *PublicUpdateInsertPartySessionStorageReservedInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateInsertSessionStorageLeaderShort instead.

PublicUpdateInsertSessionStorageLeader update insert session storage leader.

Update Insert Session Storage Leader. Performs selective merge with existing leader storage data.

Leader (regular token): Only the session leader can update leader storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update leader storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Leader storage is separate from per-user storage and identified by session context, not userID.
Example patch:
{
"gameState": {"round": "2"},
"difficulty": null
}

Session Storage feature only available for Gamesession.

Alternative v2 endpoints available with explicit semantics:
- PATCH /v2/.../storage/leader - Selective merge with partial updates
- PUT /v2/.../storage/leader - Complete replacement of entire storage
*/
func (a *Client) PublicUpdateInsertSessionStorageLeader(params *PublicUpdateInsertSessionStorageLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderOK, *PublicUpdateInsertSessionStorageLeaderBadRequest, *PublicUpdateInsertSessionStorageLeaderUnauthorized, *PublicUpdateInsertSessionStorageLeaderForbidden, *PublicUpdateInsertSessionStorageLeaderNotFound, *PublicUpdateInsertSessionStorageLeaderInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageLeaderParams()
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
		ID:                 "publicUpdateInsertSessionStorageLeader",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageLeaderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageLeaderOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageLeaderBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageLeaderUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageLeaderForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicUpdateInsertSessionStorageLeaderNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicUpdateInsertSessionStorageLeaderInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertSessionStorageLeaderShort update insert session storage leader.

Update Insert Session Storage Leader. Performs selective merge with existing leader storage data.

Leader (regular token): Only the session leader can update leader storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update leader storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Leader storage is separate from per-user storage and identified by session context, not userID.
Example patch:
{
"gameState": {"round": "2"},
"difficulty": null
}

Session Storage feature only available for Gamesession.

Alternative v2 endpoints available with explicit semantics:
- PATCH /v2/.../storage/leader - Selective merge with partial updates
- PUT /v2/.../storage/leader - Complete replacement of entire storage
*/
func (a *Client) PublicUpdateInsertSessionStorageLeaderShort(params *PublicUpdateInsertSessionStorageLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageLeaderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateInsertSessionStorageLeader",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageLeaderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageLeaderOK:
		return v, nil
	case *PublicUpdateInsertSessionStorageLeaderBadRequest:
		return nil, v
	case *PublicUpdateInsertSessionStorageLeaderUnauthorized:
		return nil, v
	case *PublicUpdateInsertSessionStorageLeaderForbidden:
		return nil, v
	case *PublicUpdateInsertSessionStorageLeaderNotFound:
		return nil, v
	case *PublicUpdateInsertSessionStorageLeaderInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateInsertSessionStorageShort instead.

PublicUpdateInsertSessionStorage update insert session storage user.

Update Insert Session Storage User. Performs selective merge with existing storage data.

User (regular token): Can only update own user session storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update any user's session storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Example patch:
{
"weapon": "sword",
"level": null
}

Session Storage feature only available for Gamesession.

Alternative v2 endpoints available with explicit semantics:
- PATCH /v2/.../storage/users/{userId} - Selective merge with partial updates
- PUT /v2/.../storage/users/{userId} - Complete replacement of entire storage
*/
func (a *Client) PublicUpdateInsertSessionStorage(params *PublicUpdateInsertSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageOK, *PublicUpdateInsertSessionStorageBadRequest, *PublicUpdateInsertSessionStorageUnauthorized, *PublicUpdateInsertSessionStorageForbidden, *PublicUpdateInsertSessionStorageNotFound, *PublicUpdateInsertSessionStorageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageParams()
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
		ID:                 "publicUpdateInsertSessionStorage",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicUpdateInsertSessionStorageNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicUpdateInsertSessionStorageInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertSessionStorageShort update insert session storage user.

Update Insert Session Storage User. Performs selective merge with existing storage data.

User (regular token): Can only update own user session storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update any user's session storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Example patch:
{
"weapon": "sword",
"level": null
}

Session Storage feature only available for Gamesession.

Alternative v2 endpoints available with explicit semantics:
- PATCH /v2/.../storage/users/{userId} - Selective merge with partial updates
- PUT /v2/.../storage/users/{userId} - Complete replacement of entire storage
*/
func (a *Client) PublicUpdateInsertSessionStorageShort(params *PublicUpdateInsertSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateInsertSessionStorage",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageOK:
		return v, nil
	case *PublicUpdateInsertSessionStorageBadRequest:
		return nil, v
	case *PublicUpdateInsertSessionStorageUnauthorized:
		return nil, v
	case *PublicUpdateInsertSessionStorageForbidden:
		return nil, v
	case *PublicUpdateInsertSessionStorageNotFound:
		return nil, v
	case *PublicUpdateInsertSessionStorageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicReplaceSessionStorageLeaderV2Short instead.

PublicReplaceSessionStorageLeaderV2 replace entire session storage leader.

Replace entire Session Storage Leader with the request body. No merging is performed.

Leader (regular token): Only the session leader can replace leader storage. Complete replacement.
Game Admin (client token): Can replace leader storage. Complete replacement.

PUT semantics: The request body completely replaces the existing storage, no partial updates.
Leader storage is separate from per-user storage and identified by session context, not userID.
Example request:
{
"gameState": {"round": "2"},
"difficulty": "hard"
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicReplaceSessionStorageLeaderV2(params *PublicReplaceSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageLeaderV2OK, *PublicReplaceSessionStorageLeaderV2BadRequest, *PublicReplaceSessionStorageLeaderV2Unauthorized, *PublicReplaceSessionStorageLeaderV2Forbidden, *PublicReplaceSessionStorageLeaderV2NotFound, *PublicReplaceSessionStorageLeaderV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReplaceSessionStorageLeaderV2Params()
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
		ID:                 "publicReplaceSessionStorageLeaderV2",
		Method:             "PUT",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReplaceSessionStorageLeaderV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicReplaceSessionStorageLeaderV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicReplaceSessionStorageLeaderV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicReplaceSessionStorageLeaderV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicReplaceSessionStorageLeaderV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicReplaceSessionStorageLeaderV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicReplaceSessionStorageLeaderV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReplaceSessionStorageLeaderV2Short replace entire session storage leader.

Replace entire Session Storage Leader with the request body. No merging is performed.

Leader (regular token): Only the session leader can replace leader storage. Complete replacement.
Game Admin (client token): Can replace leader storage. Complete replacement.

PUT semantics: The request body completely replaces the existing storage, no partial updates.
Leader storage is separate from per-user storage and identified by session context, not userID.
Example request:
{
"gameState": {"round": "2"},
"difficulty": "hard"
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicReplaceSessionStorageLeaderV2Short(params *PublicReplaceSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageLeaderV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReplaceSessionStorageLeaderV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicReplaceSessionStorageLeaderV2",
		Method:             "PUT",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReplaceSessionStorageLeaderV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicReplaceSessionStorageLeaderV2OK:
		return v, nil
	case *PublicReplaceSessionStorageLeaderV2BadRequest:
		return nil, v
	case *PublicReplaceSessionStorageLeaderV2Unauthorized:
		return nil, v
	case *PublicReplaceSessionStorageLeaderV2Forbidden:
		return nil, v
	case *PublicReplaceSessionStorageLeaderV2NotFound:
		return nil, v
	case *PublicReplaceSessionStorageLeaderV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateInsertSessionStorageLeaderV2Short instead.

PublicUpdateInsertSessionStorageLeaderV2 update partial session storage leader.

Update partial Session Storage Leader. Performs selective merge with existing leader storage data.

Leader (regular token): Only the session leader can update leader storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update leader storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Leader storage is separate from per-user storage and identified by session context, not userID.
Example patch:
{
"gameState": {"round": "2"},
"difficulty": null
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicUpdateInsertSessionStorageLeaderV2(params *PublicUpdateInsertSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderV2OK, *PublicUpdateInsertSessionStorageLeaderV2BadRequest, *PublicUpdateInsertSessionStorageLeaderV2Unauthorized, *PublicUpdateInsertSessionStorageLeaderV2Forbidden, *PublicUpdateInsertSessionStorageLeaderV2NotFound, *PublicUpdateInsertSessionStorageLeaderV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageLeaderV2Params()
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
		ID:                 "publicUpdateInsertSessionStorageLeaderV2",
		Method:             "PATCH",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageLeaderV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageLeaderV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageLeaderV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageLeaderV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageLeaderV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicUpdateInsertSessionStorageLeaderV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicUpdateInsertSessionStorageLeaderV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertSessionStorageLeaderV2Short update partial session storage leader.

Update partial Session Storage Leader. Performs selective merge with existing leader storage data.

Leader (regular token): Only the session leader can update leader storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update leader storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Leader storage is separate from per-user storage and identified by session context, not userID.
Example patch:
{
"gameState": {"round": "2"},
"difficulty": null
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicUpdateInsertSessionStorageLeaderV2Short(params *PublicUpdateInsertSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageLeaderV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateInsertSessionStorageLeaderV2",
		Method:             "PATCH",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageLeaderV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageLeaderV2OK:
		return v, nil
	case *PublicUpdateInsertSessionStorageLeaderV2BadRequest:
		return nil, v
	case *PublicUpdateInsertSessionStorageLeaderV2Unauthorized:
		return nil, v
	case *PublicUpdateInsertSessionStorageLeaderV2Forbidden:
		return nil, v
	case *PublicUpdateInsertSessionStorageLeaderV2NotFound:
		return nil, v
	case *PublicUpdateInsertSessionStorageLeaderV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicReplaceSessionStorageUserV2Short instead.

PublicReplaceSessionStorageUserV2 replace entire session storage user.

Replace entire Session Storage User with the request body. No merging is performed.

User (regular token): Can only replace own user session storage. Complete replacement.
Game Admin (client token): Can replace any user's session storage. Complete replacement.

PUT semantics: The request body completely replaces the existing storage, no partial updates.
Example request:
{
"weapon": "sword",
"armor": "leather"
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicReplaceSessionStorageUserV2(params *PublicReplaceSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageUserV2OK, *PublicReplaceSessionStorageUserV2BadRequest, *PublicReplaceSessionStorageUserV2Unauthorized, *PublicReplaceSessionStorageUserV2Forbidden, *PublicReplaceSessionStorageUserV2NotFound, *PublicReplaceSessionStorageUserV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReplaceSessionStorageUserV2Params()
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
		ID:                 "publicReplaceSessionStorageUserV2",
		Method:             "PUT",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReplaceSessionStorageUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicReplaceSessionStorageUserV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicReplaceSessionStorageUserV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicReplaceSessionStorageUserV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicReplaceSessionStorageUserV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicReplaceSessionStorageUserV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicReplaceSessionStorageUserV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReplaceSessionStorageUserV2Short replace entire session storage user.

Replace entire Session Storage User with the request body. No merging is performed.

User (regular token): Can only replace own user session storage. Complete replacement.
Game Admin (client token): Can replace any user's session storage. Complete replacement.

PUT semantics: The request body completely replaces the existing storage, no partial updates.
Example request:
{
"weapon": "sword",
"armor": "leather"
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicReplaceSessionStorageUserV2Short(params *PublicReplaceSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageUserV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReplaceSessionStorageUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicReplaceSessionStorageUserV2",
		Method:             "PUT",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReplaceSessionStorageUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicReplaceSessionStorageUserV2OK:
		return v, nil
	case *PublicReplaceSessionStorageUserV2BadRequest:
		return nil, v
	case *PublicReplaceSessionStorageUserV2Unauthorized:
		return nil, v
	case *PublicReplaceSessionStorageUserV2Forbidden:
		return nil, v
	case *PublicReplaceSessionStorageUserV2NotFound:
		return nil, v
	case *PublicReplaceSessionStorageUserV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateInsertSessionStorageUserV2Short instead.

PublicUpdateInsertSessionStorageUserV2 update partial session storage user.

Update partial Session Storage User. Performs selective merge with existing storage data.

User (regular token): Can only update own user session storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update any user's session storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Example patch:
{
"weapon": "sword",
"level": null
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicUpdateInsertSessionStorageUserV2(params *PublicUpdateInsertSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageUserV2OK, *PublicUpdateInsertSessionStorageUserV2BadRequest, *PublicUpdateInsertSessionStorageUserV2Unauthorized, *PublicUpdateInsertSessionStorageUserV2Forbidden, *PublicUpdateInsertSessionStorageUserV2NotFound, *PublicUpdateInsertSessionStorageUserV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageUserV2Params()
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
		ID:                 "publicUpdateInsertSessionStorageUserV2",
		Method:             "PATCH",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageUserV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageUserV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageUserV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicUpdateInsertSessionStorageUserV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicUpdateInsertSessionStorageUserV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicUpdateInsertSessionStorageUserV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertSessionStorageUserV2Short update partial session storage user.

Update partial Session Storage User. Performs selective merge with existing storage data.

User (regular token): Can only update own user session storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update any user's session storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Example patch:
{
"weapon": "sword",
"level": null
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicUpdateInsertSessionStorageUserV2Short(params *PublicUpdateInsertSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageUserV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateInsertSessionStorageUserV2",
		Method:             "PATCH",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageUserV2OK:
		return v, nil
	case *PublicUpdateInsertSessionStorageUserV2BadRequest:
		return nil, v
	case *PublicUpdateInsertSessionStorageUserV2Unauthorized:
		return nil, v
	case *PublicUpdateInsertSessionStorageUserV2Forbidden:
		return nil, v
	case *PublicUpdateInsertSessionStorageUserV2NotFound:
		return nil, v
	case *PublicUpdateInsertSessionStorageUserV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
