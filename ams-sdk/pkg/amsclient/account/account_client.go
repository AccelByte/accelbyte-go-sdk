// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package account

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new account API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for account API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AccountGet(params *AccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountGetOK, *AccountGetUnauthorized, *AccountGetForbidden, *AccountGetNotFound, *AccountGetInternalServerError, error)
	AccountGetShort(params *AccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountGetOK, error)
	AccountCreate(params *AccountCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AccountCreateCreated, *AccountCreateUnauthorized, *AccountCreateForbidden, *AccountCreateInternalServerError, error)
	AccountCreateShort(params *AccountCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AccountCreateCreated, error)
	AccountLinkTokenGet(params *AccountLinkTokenGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountLinkTokenGetOK, *AccountLinkTokenGetUnauthorized, *AccountLinkTokenGetForbidden, *AccountLinkTokenGetNotFound, *AccountLinkTokenGetInternalServerError, error)
	AccountLinkTokenGetShort(params *AccountLinkTokenGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountLinkTokenGetOK, error)
	AccountLink(params *AccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*AccountLinkCreated, *AccountLinkUnauthorized, *AccountLinkForbidden, *AccountLinkInternalServerError, error)
	AccountLinkShort(params *AccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*AccountLinkCreated, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AccountGetShort instead.

AccountGet get the account associated with the namespace.
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) AccountGet(params *AccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountGetOK, *AccountGetUnauthorized, *AccountGetForbidden, *AccountGetNotFound, *AccountGetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAccountGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AccountGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AccountGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AccountGetOK:
		return v, nil, nil, nil, nil, nil

	case *AccountGetUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AccountGetForbidden:
		return nil, nil, v, nil, nil, nil

	case *AccountGetNotFound:
		return nil, nil, nil, v, nil, nil

	case *AccountGetInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AccountGetShort get the account associated with the namespace.
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) AccountGetShort(params *AccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAccountGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AccountGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AccountGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AccountGetOK:
		return v, nil
	case *AccountGetUnauthorized:
		return nil, v
	case *AccountGetForbidden:
		return nil, v
	case *AccountGetNotFound:
		return nil, v
	case *AccountGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AccountCreateShort instead.

AccountCreate create a new ams account
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]
*/
func (a *Client) AccountCreate(params *AccountCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AccountCreateCreated, *AccountCreateUnauthorized, *AccountCreateForbidden, *AccountCreateInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAccountCreateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AccountCreate",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AccountCreateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AccountCreateCreated:
		return v, nil, nil, nil, nil

	case *AccountCreateUnauthorized:
		return nil, v, nil, nil, nil

	case *AccountCreateForbidden:
		return nil, nil, v, nil, nil

	case *AccountCreateInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AccountCreateShort create a new ams account
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]
*/
func (a *Client) AccountCreateShort(params *AccountCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AccountCreateCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAccountCreateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AccountCreate",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AccountCreateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AccountCreateCreated:
		return v, nil
	case *AccountCreateUnauthorized:
		return nil, v
	case *AccountCreateForbidden:
		return nil, v
	case *AccountCreateInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AccountLinkTokenGetShort instead.

AccountLinkTokenGet get a linking token for another namespace to use to link to the account to which this namespace is linked.  fails if no account linked.
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) AccountLinkTokenGet(params *AccountLinkTokenGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountLinkTokenGetOK, *AccountLinkTokenGetUnauthorized, *AccountLinkTokenGetForbidden, *AccountLinkTokenGetNotFound, *AccountLinkTokenGetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAccountLinkTokenGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AccountLinkTokenGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AccountLinkTokenGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AccountLinkTokenGetOK:
		return v, nil, nil, nil, nil, nil

	case *AccountLinkTokenGetUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AccountLinkTokenGetForbidden:
		return nil, nil, v, nil, nil, nil

	case *AccountLinkTokenGetNotFound:
		return nil, nil, nil, v, nil, nil

	case *AccountLinkTokenGetInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AccountLinkTokenGetShort get a linking token for another namespace to use to link to the account to which this namespace is linked.  fails if no account linked.
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) AccountLinkTokenGetShort(params *AccountLinkTokenGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountLinkTokenGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAccountLinkTokenGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AccountLinkTokenGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AccountLinkTokenGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AccountLinkTokenGetOK:
		return v, nil
	case *AccountLinkTokenGetUnauthorized:
		return nil, v
	case *AccountLinkTokenGetForbidden:
		return nil, v
	case *AccountLinkTokenGetNotFound:
		return nil, v
	case *AccountLinkTokenGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AccountLinkShort instead.

AccountLink link an account to the namespace.  will attempt to register the linkage in ams shipyard.  requires a valid link token for the account. fails if an account is already linked
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]
*/
func (a *Client) AccountLink(params *AccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*AccountLinkCreated, *AccountLinkUnauthorized, *AccountLinkForbidden, *AccountLinkInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAccountLinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AccountLink",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AccountLinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AccountLinkCreated:
		return v, nil, nil, nil, nil

	case *AccountLinkUnauthorized:
		return nil, v, nil, nil, nil

	case *AccountLinkForbidden:
		return nil, nil, v, nil, nil

	case *AccountLinkInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AccountLinkShort link an account to the namespace.  will attempt to register the linkage in ams shipyard.  requires a valid link token for the account. fails if an account is already linked
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]
*/
func (a *Client) AccountLinkShort(params *AccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*AccountLinkCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAccountLinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AccountLink",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AccountLinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AccountLinkCreated:
		return v, nil
	case *AccountLinkUnauthorized:
		return nil, v
	case *AccountLinkForbidden:
		return nil, v
	case *AccountLinkInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
