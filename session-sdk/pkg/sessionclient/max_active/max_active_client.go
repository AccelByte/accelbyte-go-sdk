// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package max_active

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new max active API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for max active API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetMemberActiveSession(params *AdminGetMemberActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMemberActiveSessionOK, *AdminGetMemberActiveSessionBadRequest, *AdminGetMemberActiveSessionUnauthorized, *AdminGetMemberActiveSessionInternalServerError, error)
	AdminGetMemberActiveSessionShort(params *AdminGetMemberActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMemberActiveSessionOK, error)
	AdminReconcileMaxActiveSession(params *AdminReconcileMaxActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReconcileMaxActiveSessionOK, *AdminReconcileMaxActiveSessionBadRequest, *AdminReconcileMaxActiveSessionUnauthorized, *AdminReconcileMaxActiveSessionInternalServerError, error)
	AdminReconcileMaxActiveSessionShort(params *AdminReconcileMaxActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReconcileMaxActiveSessionOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetMemberActiveSessionShort instead.

AdminGetMemberActiveSession get member active session.

Get Member Active Session.
*/
func (a *Client) AdminGetMemberActiveSession(params *AdminGetMemberActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMemberActiveSessionOK, *AdminGetMemberActiveSessionBadRequest, *AdminGetMemberActiveSessionUnauthorized, *AdminGetMemberActiveSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMemberActiveSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetMemberActiveSession",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}/memberactivesession/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMemberActiveSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetMemberActiveSessionOK:
		return v, nil, nil, nil, nil

	case *AdminGetMemberActiveSessionBadRequest:
		return nil, v, nil, nil, nil

	case *AdminGetMemberActiveSessionUnauthorized:
		return nil, nil, v, nil, nil

	case *AdminGetMemberActiveSessionInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMemberActiveSessionShort get member active session.

Get Member Active Session.
*/
func (a *Client) AdminGetMemberActiveSessionShort(params *AdminGetMemberActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMemberActiveSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMemberActiveSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetMemberActiveSession",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}/memberactivesession/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMemberActiveSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMemberActiveSessionOK:
		return v, nil
	case *AdminGetMemberActiveSessionBadRequest:
		return nil, v
	case *AdminGetMemberActiveSessionUnauthorized:
		return nil, v
	case *AdminGetMemberActiveSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminReconcileMaxActiveSessionShort instead.

AdminReconcileMaxActiveSession reconcile max active session.

Reconcile Max Active Session.
*/
func (a *Client) AdminReconcileMaxActiveSession(params *AdminReconcileMaxActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReconcileMaxActiveSessionOK, *AdminReconcileMaxActiveSessionBadRequest, *AdminReconcileMaxActiveSessionUnauthorized, *AdminReconcileMaxActiveSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReconcileMaxActiveSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminReconcileMaxActiveSession",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}/reconcile",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReconcileMaxActiveSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminReconcileMaxActiveSessionOK:
		return v, nil, nil, nil, nil

	case *AdminReconcileMaxActiveSessionBadRequest:
		return nil, v, nil, nil, nil

	case *AdminReconcileMaxActiveSessionUnauthorized:
		return nil, nil, v, nil, nil

	case *AdminReconcileMaxActiveSessionInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminReconcileMaxActiveSessionShort reconcile max active session.

Reconcile Max Active Session.
*/
func (a *Client) AdminReconcileMaxActiveSessionShort(params *AdminReconcileMaxActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReconcileMaxActiveSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReconcileMaxActiveSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminReconcileMaxActiveSession",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}/reconcile",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReconcileMaxActiveSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminReconcileMaxActiveSessionOK:
		return v, nil
	case *AdminReconcileMaxActiveSessionBadRequest:
		return nil, v
	case *AdminReconcileMaxActiveSessionUnauthorized:
		return nil, v
	case *AdminReconcileMaxActiveSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
