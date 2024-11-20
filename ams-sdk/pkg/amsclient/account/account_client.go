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
	AdminAccountGet(params *AdminAccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountGetOK, *AdminAccountGetUnauthorized, *AdminAccountGetForbidden, *AdminAccountGetNotFound, *AdminAccountGetInternalServerError, error)
	AdminAccountGetShort(params *AdminAccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountGetOK, error)
	AdminAccountCreate(params *AdminAccountCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountCreateCreated, *AdminAccountCreateUnauthorized, *AdminAccountCreateForbidden, *AdminAccountCreateInternalServerError, error)
	AdminAccountCreateShort(params *AdminAccountCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountCreateCreated, error)
	AdminAccountLinkTokenGet(params *AdminAccountLinkTokenGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkTokenGetOK, *AdminAccountLinkTokenGetUnauthorized, *AdminAccountLinkTokenGetForbidden, *AdminAccountLinkTokenGetNotFound, *AdminAccountLinkTokenGetInternalServerError, error)
	AdminAccountLinkTokenGetShort(params *AdminAccountLinkTokenGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkTokenGetOK, error)
	AdminAccountLink(params *AdminAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkCreated, *AdminAccountLinkUnauthorized, *AdminAccountLinkForbidden, *AdminAccountLinkInternalServerError, error)
	AdminAccountLinkShort(params *AdminAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkCreated, error)
	AccountGet(params *AccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountGetOK, *AccountGetUnauthorized, *AccountGetForbidden, *AccountGetNotFound, *AccountGetInternalServerError, error)
	AccountGetShort(params *AccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountGetOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminAccountGetShort instead.

AdminAccountGet get the account associated with the namespace
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) AdminAccountGet(params *AdminAccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountGetOK, *AdminAccountGetUnauthorized, *AdminAccountGetForbidden, *AdminAccountGetNotFound, *AdminAccountGetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountGetParams()
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
		ID:                 "AdminAccountGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAccountGetOK:
		return v, nil, nil, nil, nil, nil

	case *AdminAccountGetUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminAccountGetForbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminAccountGetNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminAccountGetInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAccountGetShort get the account associated with the namespace
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) AdminAccountGetShort(params *AdminAccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAccountGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAccountGetOK:
		return v, nil
	case *AdminAccountGetUnauthorized:
		return nil, v
	case *AdminAccountGetForbidden:
		return nil, v
	case *AdminAccountGetNotFound:
		return nil, v
	case *AdminAccountGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAccountCreateShort instead.

AdminAccountCreate create a new ams account
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]
*/
func (a *Client) AdminAccountCreate(params *AdminAccountCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountCreateCreated, *AdminAccountCreateUnauthorized, *AdminAccountCreateForbidden, *AdminAccountCreateInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountCreateParams()
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
		ID:                 "AdminAccountCreate",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountCreateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAccountCreateCreated:
		return v, nil, nil, nil, nil

	case *AdminAccountCreateUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminAccountCreateForbidden:
		return nil, nil, v, nil, nil

	case *AdminAccountCreateInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAccountCreateShort create a new ams account
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]
*/
func (a *Client) AdminAccountCreateShort(params *AdminAccountCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountCreateCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountCreateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAccountCreate",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountCreateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAccountCreateCreated:
		return v, nil
	case *AdminAccountCreateUnauthorized:
		return nil, v
	case *AdminAccountCreateForbidden:
		return nil, v
	case *AdminAccountCreateInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAccountLinkTokenGetShort instead.

AdminAccountLinkTokenGet get a link to account token
The link token returned can be used to connect another namespace to the account in which the provided namespace is linked. This route fails if there is no account linked to the specified namespace.

Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) AdminAccountLinkTokenGet(params *AdminAccountLinkTokenGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkTokenGetOK, *AdminAccountLinkTokenGetUnauthorized, *AdminAccountLinkTokenGetForbidden, *AdminAccountLinkTokenGetNotFound, *AdminAccountLinkTokenGetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountLinkTokenGetParams()
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
		ID:                 "AdminAccountLinkTokenGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountLinkTokenGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAccountLinkTokenGetOK:
		return v, nil, nil, nil, nil, nil

	case *AdminAccountLinkTokenGetUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminAccountLinkTokenGetForbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminAccountLinkTokenGetNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminAccountLinkTokenGetInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAccountLinkTokenGetShort get a link to account token
The link token returned can be used to connect another namespace to the account in which the provided namespace is linked. This route fails if there is no account linked to the specified namespace.

Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) AdminAccountLinkTokenGetShort(params *AdminAccountLinkTokenGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkTokenGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountLinkTokenGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAccountLinkTokenGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountLinkTokenGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAccountLinkTokenGetOK:
		return v, nil
	case *AdminAccountLinkTokenGetUnauthorized:
		return nil, v
	case *AdminAccountLinkTokenGetForbidden:
		return nil, v
	case *AdminAccountLinkTokenGetNotFound:
		return nil, v
	case *AdminAccountLinkTokenGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAccountLinkShort instead.

AdminAccountLink link an account to a namespace
This route will attempt to register the account to namespace linkage in AMS and requires a valid account link token. This route fails if an account is already linked

Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]
*/
func (a *Client) AdminAccountLink(params *AdminAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkCreated, *AdminAccountLinkUnauthorized, *AdminAccountLinkForbidden, *AdminAccountLinkInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountLinkParams()
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
		ID:                 "AdminAccountLink",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountLinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAccountLinkCreated:
		return v, nil, nil, nil, nil

	case *AdminAccountLinkUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminAccountLinkForbidden:
		return nil, nil, v, nil, nil

	case *AdminAccountLinkInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAccountLinkShort link an account to a namespace
This route will attempt to register the account to namespace linkage in AMS and requires a valid account link token. This route fails if an account is already linked

Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]
*/
func (a *Client) AdminAccountLinkShort(params *AdminAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountLinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAccountLink",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountLinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAccountLinkCreated:
		return v, nil
	case *AdminAccountLinkUnauthorized:
		return nil, v
	case *AdminAccountLinkForbidden:
		return nil, v
	case *AdminAccountLinkInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AccountGetShort instead.

AccountGet get the account associated with the namespace
Required Permission: NAMESPACE:{namespace}:AMS:ACCOUNT [READ]
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AccountGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/namespaces/{namespace}/account",
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
AccountGetShort get the account associated with the namespace
Required Permission: NAMESPACE:{namespace}:AMS:ACCOUNT [READ]
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
		PathPattern:        "/ams/v1/namespaces/{namespace}/account",
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

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
