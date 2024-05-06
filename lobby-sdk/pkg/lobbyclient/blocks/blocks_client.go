// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package blocks

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new blocks API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for blocks API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	SyncNativeBlockedUser(params *SyncNativeBlockedUserParams, authInfo runtime.ClientAuthInfoWriter) (*SyncNativeBlockedUserOK, *SyncNativeBlockedUserBadRequest, *SyncNativeBlockedUserUnauthorized, *SyncNativeBlockedUserForbidden, *SyncNativeBlockedUserInternalServerError, error)
	SyncNativeBlockedUserShort(params *SyncNativeBlockedUserParams, authInfo runtime.ClientAuthInfoWriter) (*SyncNativeBlockedUserOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use SyncNativeBlockedUserShort instead.

SyncNativeBlockedUser sync blocked user using server to server call to native first party server.
Sync blocked user using server to server call to native first party server.
Supported platforms:
ps5, ps4 and pspc : the default environment would be sp-int, can be override using psnEnv.
psnEnv consist of sp-int (default), prod-qa, np
*/
func (a *Client) SyncNativeBlockedUser(params *SyncNativeBlockedUserParams, authInfo runtime.ClientAuthInfoWriter) (*SyncNativeBlockedUserOK, *SyncNativeBlockedUserBadRequest, *SyncNativeBlockedUserUnauthorized, *SyncNativeBlockedUserForbidden, *SyncNativeBlockedUserInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncNativeBlockedUserParams()
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
		ID:                 "syncNativeBlockedUser",
		Method:             "PATCH",
		PathPattern:        "/lobby/sync/namespaces/{namespace}/me/block",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncNativeBlockedUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncNativeBlockedUserOK:
		return v, nil, nil, nil, nil, nil

	case *SyncNativeBlockedUserBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SyncNativeBlockedUserUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SyncNativeBlockedUserForbidden:
		return nil, nil, nil, v, nil, nil

	case *SyncNativeBlockedUserInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncNativeBlockedUserShort sync blocked user using server to server call to native first party server.
Sync blocked user using server to server call to native first party server.
Supported platforms:
ps5, ps4 and pspc : the default environment would be sp-int, can be override using psnEnv.
psnEnv consist of sp-int (default), prod-qa, np
*/
func (a *Client) SyncNativeBlockedUserShort(params *SyncNativeBlockedUserParams, authInfo runtime.ClientAuthInfoWriter) (*SyncNativeBlockedUserOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncNativeBlockedUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncNativeBlockedUser",
		Method:             "PATCH",
		PathPattern:        "/lobby/sync/namespaces/{namespace}/me/block",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncNativeBlockedUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncNativeBlockedUserOK:
		return v, nil
	case *SyncNativeBlockedUserBadRequest:
		return nil, v
	case *SyncNativeBlockedUserUnauthorized:
		return nil, v
	case *SyncNativeBlockedUserForbidden:
		return nil, v
	case *SyncNativeBlockedUserInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
