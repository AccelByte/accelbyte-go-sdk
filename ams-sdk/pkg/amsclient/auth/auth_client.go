// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package auth

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new auth API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for auth API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AuthCheck(params *AuthCheckParams, authInfo runtime.ClientAuthInfoWriter) (*AuthCheckOK, *AuthCheckUnauthorized, *AuthCheckForbidden, *AuthCheckInternalServerError, error)
	AuthCheckShort(params *AuthCheckParams, authInfo runtime.ClientAuthInfoWriter) (*AuthCheckOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AuthCheckShort instead.

AuthCheck check if fleet commander is authorized to talk to ams with this iam
*/
func (a *Client) AuthCheck(params *AuthCheckParams, authInfo runtime.ClientAuthInfoWriter) (*AuthCheckOK, *AuthCheckUnauthorized, *AuthCheckForbidden, *AuthCheckInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthCheckParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AuthCheck",
		Method:             "GET",
		PathPattern:        "/ams/auth",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthCheckReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AuthCheckOK:
		return v, nil, nil, nil, nil

	case *AuthCheckUnauthorized:
		return nil, v, nil, nil, nil

	case *AuthCheckForbidden:
		return nil, nil, v, nil, nil

	case *AuthCheckInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AuthCheckShort check if fleet commander is authorized to talk to ams with this iam
*/
func (a *Client) AuthCheckShort(params *AuthCheckParams, authInfo runtime.ClientAuthInfoWriter) (*AuthCheckOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthCheckParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AuthCheck",
		Method:             "GET",
		PathPattern:        "/ams/auth",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthCheckReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthCheckOK:
		return v, nil
	case *AuthCheckUnauthorized:
		return nil, v
	case *AuthCheckForbidden:
		return nil, v
	case *AuthCheckInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
