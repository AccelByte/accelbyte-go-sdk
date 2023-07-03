// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package platform_credential

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new platform credential API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for platform credential API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminUpdatePlatformCredentials(params *AdminUpdatePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformCredentialsOK, *AdminUpdatePlatformCredentialsBadRequest, *AdminUpdatePlatformCredentialsUnauthorized, *AdminUpdatePlatformCredentialsForbidden, *AdminUpdatePlatformCredentialsNotFound, *AdminUpdatePlatformCredentialsInternalServerError, error)
	AdminUpdatePlatformCredentialsShort(params *AdminUpdatePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformCredentialsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminUpdatePlatformCredentialsShort instead.

AdminUpdatePlatformCredentials update platform credentials. currently only used to sync psn sessions. requires admin:namespace:{namespace}:session:configuration [update]
Update platform credentials.
*/
func (a *Client) AdminUpdatePlatformCredentials(params *AdminUpdatePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformCredentialsOK, *AdminUpdatePlatformCredentialsBadRequest, *AdminUpdatePlatformCredentialsUnauthorized, *AdminUpdatePlatformCredentialsForbidden, *AdminUpdatePlatformCredentialsNotFound, *AdminUpdatePlatformCredentialsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdatePlatformCredentialsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdatePlatformCredentials",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/platform-credentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdatePlatformCredentialsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdatePlatformCredentialsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdatePlatformCredentialsBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdatePlatformCredentialsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdatePlatformCredentialsForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdatePlatformCredentialsNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdatePlatformCredentialsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdatePlatformCredentialsShort update platform credentials. currently only used to sync psn sessions. requires admin:namespace:{namespace}:session:configuration [update]
Update platform credentials.
*/
func (a *Client) AdminUpdatePlatformCredentialsShort(params *AdminUpdatePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformCredentialsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdatePlatformCredentialsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdatePlatformCredentials",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/platform-credentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdatePlatformCredentialsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdatePlatformCredentialsOK:
		return v, nil
	case *AdminUpdatePlatformCredentialsBadRequest:
		return nil, v
	case *AdminUpdatePlatformCredentialsUnauthorized:
		return nil, v
	case *AdminUpdatePlatformCredentialsForbidden:
		return nil, v
	case *AdminUpdatePlatformCredentialsNotFound:
		return nil, v
	case *AdminUpdatePlatformCredentialsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
