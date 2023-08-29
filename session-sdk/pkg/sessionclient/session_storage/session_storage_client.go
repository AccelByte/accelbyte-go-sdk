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
	AdminReadSessionStorage(params *AdminReadSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadSessionStorageOK, *AdminReadSessionStorageBadRequest, *AdminReadSessionStorageUnauthorized, *AdminReadSessionStorageNotFound, *AdminReadSessionStorageInternalServerError, error)
	AdminReadSessionStorageShort(params *AdminReadSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadSessionStorageOK, error)
	AdminDeleteUserSessionStorage(params *AdminDeleteUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserSessionStorageNoContent, *AdminDeleteUserSessionStorageBadRequest, *AdminDeleteUserSessionStorageUnauthorized, *AdminDeleteUserSessionStorageNotFound, *AdminDeleteUserSessionStorageInternalServerError, error)
	AdminDeleteUserSessionStorageShort(params *AdminDeleteUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserSessionStorageNoContent, error)
	AdminReadUserSessionStorage(params *AdminReadUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadUserSessionStorageOK, *AdminReadUserSessionStorageBadRequest, *AdminReadUserSessionStorageUnauthorized, *AdminReadUserSessionStorageNotFound, *AdminReadUserSessionStorageInternalServerError, error)
	AdminReadUserSessionStorageShort(params *AdminReadUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadUserSessionStorageOK, error)
	PublicUpdateInsertSessionStorageLeader(params *PublicUpdateInsertSessionStorageLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderOK, *PublicUpdateInsertSessionStorageLeaderBadRequest, *PublicUpdateInsertSessionStorageLeaderUnauthorized, *PublicUpdateInsertSessionStorageLeaderForbidden, *PublicUpdateInsertSessionStorageLeaderNotFound, *PublicUpdateInsertSessionStorageLeaderInternalServerError, error)
	PublicUpdateInsertSessionStorageLeaderShort(params *PublicUpdateInsertSessionStorageLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderOK, error)
	PublicUpdateInsertSessionStorage(params *PublicUpdateInsertSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageOK, *PublicUpdateInsertSessionStorageBadRequest, *PublicUpdateInsertSessionStorageUnauthorized, *PublicUpdateInsertSessionStorageForbidden, *PublicUpdateInsertSessionStorageNotFound, *PublicUpdateInsertSessionStorageInternalServerError, error)
	PublicUpdateInsertSessionStorageShort(params *PublicUpdateInsertSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminReadSessionStorageShort instead.

AdminReadSessionStorage read session storage . requires admin:namespace:{namespace}:session:storage [read]

Read Session Storage.
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
AdminReadSessionStorageShort read session storage . requires admin:namespace:{namespace}:session:storage [read]

Read Session Storage.
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

AdminDeleteUserSessionStorage delete session storage. requires admin:namespace:{namespace}:session:storage [delete]

Delete Session Storage.
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
AdminDeleteUserSessionStorageShort delete session storage. requires admin:namespace:{namespace}:session:storage [delete]

Delete Session Storage.
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

AdminReadUserSessionStorage read session storage user. requires admin:namespace:{namespace}:session:storage [read]

Read Session Storage User.
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
AdminReadUserSessionStorageShort read session storage user. requires admin:namespace:{namespace}:session:storage [read]

Read Session Storage User.
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
Deprecated: 2022-08-10 - Use PublicUpdateInsertSessionStorageLeaderShort instead.

PublicUpdateInsertSessionStorageLeader update insert session storage leader . requires namespace:{namespace}:session:storage [create]

Update Insert Session Storage Leader. only Leader can update or insert user session storage data Leader.
can store generic json
example json can store :
{
"leader": {
"leader": 1
},
"data": 123
}
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
PublicUpdateInsertSessionStorageLeaderShort update insert session storage leader . requires namespace:{namespace}:session:storage [create]

Update Insert Session Storage Leader. only Leader can update or insert user session storage data Leader.
can store generic json
example json can store :
{
"leader": {
"leader": 1
},
"data": 123
}
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

PublicUpdateInsertSessionStorage update insert session storage user . requires namespace:{namespace}:session:storage [create]

Update Insert Session Storage User. user can only update or insert user session storage data itself.
can store generic json
example json can store :
{
"storage": {
"storage": 1
},
"data": 123
}
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
PublicUpdateInsertSessionStorageShort update insert session storage user . requires namespace:{namespace}:session:storage [create]

Update Insert Session Storage User. user can only update or insert user session storage data itself.
can store generic json
example json can store :
{
"storage": {
"storage": 1
},
"data": 123
}
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

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
