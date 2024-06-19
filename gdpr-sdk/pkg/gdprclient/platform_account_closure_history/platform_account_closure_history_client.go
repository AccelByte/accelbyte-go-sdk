// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package platform_account_closure_history

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new platform account closure history API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for platform account closure history API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetUserPlatformAccountClosureHistories(params *AdminGetUserPlatformAccountClosureHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountClosureHistoriesOK, *AdminGetUserPlatformAccountClosureHistoriesBadRequest, *AdminGetUserPlatformAccountClosureHistoriesUnauthorized, *AdminGetUserPlatformAccountClosureHistoriesForbidden, *AdminGetUserPlatformAccountClosureHistoriesInternalServerError, error)
	AdminGetUserPlatformAccountClosureHistoriesShort(params *AdminGetUserPlatformAccountClosureHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountClosureHistoriesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserPlatformAccountClosureHistoriesShort instead.

AdminGetUserPlatformAccountClosureHistories get user's platform account closure histories
Get user's platform account closure histories.
Scope: account

------
Supported platforms:
* psn
*/
func (a *Client) AdminGetUserPlatformAccountClosureHistories(params *AdminGetUserPlatformAccountClosureHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountClosureHistoriesOK, *AdminGetUserPlatformAccountClosureHistoriesBadRequest, *AdminGetUserPlatformAccountClosureHistoriesUnauthorized, *AdminGetUserPlatformAccountClosureHistoriesForbidden, *AdminGetUserPlatformAccountClosureHistoriesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserPlatformAccountClosureHistoriesParams()
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
		ID:                 "AdminGetUserPlatformAccountClosureHistories",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/platforms/closure/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserPlatformAccountClosureHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserPlatformAccountClosureHistoriesOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetUserPlatformAccountClosureHistoriesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetUserPlatformAccountClosureHistoriesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetUserPlatformAccountClosureHistoriesForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetUserPlatformAccountClosureHistoriesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserPlatformAccountClosureHistoriesShort get user's platform account closure histories
Get user's platform account closure histories.
Scope: account

------
Supported platforms:
* psn
*/
func (a *Client) AdminGetUserPlatformAccountClosureHistoriesShort(params *AdminGetUserPlatformAccountClosureHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountClosureHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserPlatformAccountClosureHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserPlatformAccountClosureHistories",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/platforms/closure/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserPlatformAccountClosureHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserPlatformAccountClosureHistoriesOK:
		return v, nil
	case *AdminGetUserPlatformAccountClosureHistoriesBadRequest:
		return nil, v
	case *AdminGetUserPlatformAccountClosureHistoriesUnauthorized:
		return nil, v
	case *AdminGetUserPlatformAccountClosureHistoriesForbidden:
		return nil, v
	case *AdminGetUserPlatformAccountClosureHistoriesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
