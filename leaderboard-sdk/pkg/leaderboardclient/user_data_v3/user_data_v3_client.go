// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package user_data_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user data v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user data v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserLeaderboardRankingsAdminV3(params *GetUserLeaderboardRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserLeaderboardRankingsAdminV3OK, *GetUserLeaderboardRankingsAdminV3Unauthorized, *GetUserLeaderboardRankingsAdminV3Forbidden, *GetUserLeaderboardRankingsAdminV3InternalServerError, error)
	GetUserLeaderboardRankingsAdminV3Short(params *GetUserLeaderboardRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserLeaderboardRankingsAdminV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetUserLeaderboardRankingsAdminV3Short instead.

GetUserLeaderboardRankingsAdminV3 get user rankings


Get user leaderboard rankings
*/
func (a *Client) GetUserLeaderboardRankingsAdminV3(params *GetUserLeaderboardRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserLeaderboardRankingsAdminV3OK, *GetUserLeaderboardRankingsAdminV3Unauthorized, *GetUserLeaderboardRankingsAdminV3Forbidden, *GetUserLeaderboardRankingsAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserLeaderboardRankingsAdminV3Params()
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
		ID:                 "getUserLeaderboardRankingsAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserLeaderboardRankingsAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserLeaderboardRankingsAdminV3OK:
		return v, nil, nil, nil, nil

	case *GetUserLeaderboardRankingsAdminV3Unauthorized:
		return nil, v, nil, nil, nil

	case *GetUserLeaderboardRankingsAdminV3Forbidden:
		return nil, nil, v, nil, nil

	case *GetUserLeaderboardRankingsAdminV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserLeaderboardRankingsAdminV3Short get user rankings


Get user leaderboard rankings
*/
func (a *Client) GetUserLeaderboardRankingsAdminV3Short(params *GetUserLeaderboardRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserLeaderboardRankingsAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserLeaderboardRankingsAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserLeaderboardRankingsAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserLeaderboardRankingsAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserLeaderboardRankingsAdminV3OK:
		return v, nil
	case *GetUserLeaderboardRankingsAdminV3Unauthorized:
		return nil, v
	case *GetUserLeaderboardRankingsAdminV3Forbidden:
		return nil, v
	case *GetUserLeaderboardRankingsAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
