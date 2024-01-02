// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package match_functions

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new match functions API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for match functions API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	MatchFunctionList(params *MatchFunctionListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchFunctionListOK, *MatchFunctionListUnauthorized, *MatchFunctionListForbidden, *MatchFunctionListInternalServerError, error)
	MatchFunctionListShort(params *MatchFunctionListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchFunctionListOK, error)
	CreateMatchFunction(params *CreateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchFunctionCreated, *CreateMatchFunctionBadRequest, *CreateMatchFunctionUnauthorized, *CreateMatchFunctionForbidden, *CreateMatchFunctionConflict, *CreateMatchFunctionInternalServerError, error)
	CreateMatchFunctionShort(params *CreateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchFunctionCreated, error)
	UpdateMatchFunction(params *UpdateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchFunctionOK, *UpdateMatchFunctionBadRequest, *UpdateMatchFunctionUnauthorized, *UpdateMatchFunctionNotFound, *UpdateMatchFunctionConflict, *UpdateMatchFunctionInternalServerError, error)
	UpdateMatchFunctionShort(params *UpdateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchFunctionOK, error)
	DeleteMatchFunction(params *DeleteMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchFunctionOK, *DeleteMatchFunctionUnauthorized, *DeleteMatchFunctionForbidden, *DeleteMatchFunctionNotFound, *DeleteMatchFunctionInternalServerError, error)
	DeleteMatchFunctionShort(params *DeleteMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchFunctionOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use MatchFunctionListShort instead.

MatchFunctionList list existing match functions
List existing match functions.
*/
func (a *Client) MatchFunctionList(params *MatchFunctionListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchFunctionListOK, *MatchFunctionListUnauthorized, *MatchFunctionListForbidden, *MatchFunctionListInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchFunctionListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "MatchFunctionList",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchFunctionListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *MatchFunctionListOK:
		return v, nil, nil, nil, nil

	case *MatchFunctionListUnauthorized:
		return nil, v, nil, nil, nil

	case *MatchFunctionListForbidden:
		return nil, nil, v, nil, nil

	case *MatchFunctionListInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MatchFunctionListShort list existing match functions
List existing match functions.
*/
func (a *Client) MatchFunctionListShort(params *MatchFunctionListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchFunctionListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchFunctionListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "MatchFunctionList",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchFunctionListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MatchFunctionListOK:
		return v, nil
	case *MatchFunctionListUnauthorized:
		return nil, v
	case *MatchFunctionListForbidden:
		return nil, v
	case *MatchFunctionListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateMatchFunctionShort instead.

CreateMatchFunction create a match function
Creates a new matchmaking function.
*/
func (a *Client) CreateMatchFunction(params *CreateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchFunctionCreated, *CreateMatchFunctionBadRequest, *CreateMatchFunctionUnauthorized, *CreateMatchFunctionForbidden, *CreateMatchFunctionConflict, *CreateMatchFunctionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMatchFunctionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateMatchFunction",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMatchFunctionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateMatchFunctionCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateMatchFunctionBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateMatchFunctionUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateMatchFunctionForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateMatchFunctionConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateMatchFunctionInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateMatchFunctionShort create a match function
Creates a new matchmaking function.
*/
func (a *Client) CreateMatchFunctionShort(params *CreateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchFunctionCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMatchFunctionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateMatchFunction",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMatchFunctionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateMatchFunctionCreated:
		return v, nil
	case *CreateMatchFunctionBadRequest:
		return nil, v
	case *CreateMatchFunctionUnauthorized:
		return nil, v
	case *CreateMatchFunctionForbidden:
		return nil, v
	case *CreateMatchFunctionConflict:
		return nil, v
	case *CreateMatchFunctionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateMatchFunctionShort instead.

UpdateMatchFunction update a match function
Update existing matchmaking function.
*/
func (a *Client) UpdateMatchFunction(params *UpdateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchFunctionOK, *UpdateMatchFunctionBadRequest, *UpdateMatchFunctionUnauthorized, *UpdateMatchFunctionNotFound, *UpdateMatchFunctionConflict, *UpdateMatchFunctionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMatchFunctionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateMatchFunction",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMatchFunctionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateMatchFunctionOK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateMatchFunctionBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateMatchFunctionUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateMatchFunctionNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateMatchFunctionConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateMatchFunctionInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMatchFunctionShort update a match function
Update existing matchmaking function.
*/
func (a *Client) UpdateMatchFunctionShort(params *UpdateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchFunctionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMatchFunctionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateMatchFunction",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMatchFunctionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMatchFunctionOK:
		return v, nil
	case *UpdateMatchFunctionBadRequest:
		return nil, v
	case *UpdateMatchFunctionUnauthorized:
		return nil, v
	case *UpdateMatchFunctionNotFound:
		return nil, v
	case *UpdateMatchFunctionConflict:
		return nil, v
	case *UpdateMatchFunctionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteMatchFunctionShort instead.

DeleteMatchFunction delete a match function
Deletes an existing match function.
*/
func (a *Client) DeleteMatchFunction(params *DeleteMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchFunctionOK, *DeleteMatchFunctionUnauthorized, *DeleteMatchFunctionForbidden, *DeleteMatchFunctionNotFound, *DeleteMatchFunctionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteMatchFunctionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteMatchFunction",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteMatchFunctionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteMatchFunctionOK:
		return v, nil, nil, nil, nil, nil

	case *DeleteMatchFunctionUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteMatchFunctionForbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteMatchFunctionNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteMatchFunctionInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteMatchFunctionShort delete a match function
Deletes an existing match function.
*/
func (a *Client) DeleteMatchFunctionShort(params *DeleteMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchFunctionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteMatchFunctionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteMatchFunction",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteMatchFunctionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteMatchFunctionOK:
		return v, nil
	case *DeleteMatchFunctionUnauthorized:
		return nil, v
	case *DeleteMatchFunctionForbidden:
		return nil, v
	case *DeleteMatchFunctionNotFound:
		return nil, v
	case *DeleteMatchFunctionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
