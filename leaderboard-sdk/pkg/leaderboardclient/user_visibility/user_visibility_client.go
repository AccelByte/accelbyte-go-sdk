// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package user_visibility

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user visibility API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user visibility API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetHiddenUsersV2(params *GetHiddenUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV2OK, *GetHiddenUsersV2BadRequest, *GetHiddenUsersV2Unauthorized, *GetHiddenUsersV2Forbidden, *GetHiddenUsersV2NotFound, *GetHiddenUsersV2InternalServerError, error)
	GetHiddenUsersV2Short(params *GetHiddenUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV2OK, error)
	GetUserVisibilityStatusV2(params *GetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV2OK, *GetUserVisibilityStatusV2BadRequest, *GetUserVisibilityStatusV2Unauthorized, *GetUserVisibilityStatusV2Forbidden, *GetUserVisibilityStatusV2NotFound, *GetUserVisibilityStatusV2InternalServerError, error)
	GetUserVisibilityStatusV2Short(params *GetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV2OK, error)
	SetUserLeaderboardVisibilityStatusV2(params *SetUserLeaderboardVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityStatusV2OK, *SetUserLeaderboardVisibilityStatusV2BadRequest, *SetUserLeaderboardVisibilityStatusV2Unauthorized, *SetUserLeaderboardVisibilityStatusV2Forbidden, *SetUserLeaderboardVisibilityStatusV2NotFound, *SetUserLeaderboardVisibilityStatusV2InternalServerError, error)
	SetUserLeaderboardVisibilityStatusV2Short(params *SetUserLeaderboardVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityStatusV2OK, error)
	SetUserVisibilityStatusV2(params *SetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityStatusV2OK, *SetUserVisibilityStatusV2BadRequest, *SetUserVisibilityStatusV2Unauthorized, *SetUserVisibilityStatusV2Forbidden, *SetUserVisibilityStatusV2NotFound, *SetUserVisibilityStatusV2InternalServerError, error)
	SetUserVisibilityStatusV2Short(params *SetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityStatusV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetHiddenUsersV2Short instead.

GetHiddenUsersV2 get hidden users on a leaderboard
Return hidden users on a leaderboard
*/
func (a *Client) GetHiddenUsersV2(params *GetHiddenUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV2OK, *GetHiddenUsersV2BadRequest, *GetHiddenUsersV2Unauthorized, *GetHiddenUsersV2Forbidden, *GetHiddenUsersV2NotFound, *GetHiddenUsersV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetHiddenUsersV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetHiddenUsersV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetHiddenUsersV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetHiddenUsersV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetHiddenUsersV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetHiddenUsersV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetHiddenUsersV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetHiddenUsersV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetHiddenUsersV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetHiddenUsersV2Short get hidden users on a leaderboard
Return hidden users on a leaderboard
*/
func (a *Client) GetHiddenUsersV2Short(params *GetHiddenUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetHiddenUsersV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetHiddenUsersV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetHiddenUsersV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetHiddenUsersV2OK:
		return v, nil
	case *GetHiddenUsersV2BadRequest:
		return nil, v
	case *GetHiddenUsersV2Unauthorized:
		return nil, v
	case *GetHiddenUsersV2Forbidden:
		return nil, v
	case *GetHiddenUsersV2NotFound:
		return nil, v
	case *GetHiddenUsersV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserVisibilityStatusV2Short instead.

GetUserVisibilityStatusV2 get user visibility status
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) GetUserVisibilityStatusV2(params *GetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV2OK, *GetUserVisibilityStatusV2BadRequest, *GetUserVisibilityStatusV2Unauthorized, *GetUserVisibilityStatusV2Forbidden, *GetUserVisibilityStatusV2NotFound, *GetUserVisibilityStatusV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserVisibilityStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserVisibilityStatusV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserVisibilityStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserVisibilityStatusV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetUserVisibilityStatusV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetUserVisibilityStatusV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetUserVisibilityStatusV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetUserVisibilityStatusV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetUserVisibilityStatusV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserVisibilityStatusV2Short get user visibility status
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) GetUserVisibilityStatusV2Short(params *GetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserVisibilityStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserVisibilityStatusV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserVisibilityStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserVisibilityStatusV2OK:
		return v, nil
	case *GetUserVisibilityStatusV2BadRequest:
		return nil, v
	case *GetUserVisibilityStatusV2Unauthorized:
		return nil, v
	case *GetUserVisibilityStatusV2Forbidden:
		return nil, v
	case *GetUserVisibilityStatusV2NotFound:
		return nil, v
	case *GetUserVisibilityStatusV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SetUserLeaderboardVisibilityStatusV2Short instead.

SetUserLeaderboardVisibilityStatusV2 set user visibility status on a specific leaderboard code
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserLeaderboardVisibilityStatusV2(params *SetUserLeaderboardVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityStatusV2OK, *SetUserLeaderboardVisibilityStatusV2BadRequest, *SetUserLeaderboardVisibilityStatusV2Unauthorized, *SetUserLeaderboardVisibilityStatusV2Forbidden, *SetUserLeaderboardVisibilityStatusV2NotFound, *SetUserLeaderboardVisibilityStatusV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserLeaderboardVisibilityStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SetUserLeaderboardVisibilityStatusV2",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserLeaderboardVisibilityStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SetUserLeaderboardVisibilityStatusV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *SetUserLeaderboardVisibilityStatusV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *SetUserLeaderboardVisibilityStatusV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *SetUserLeaderboardVisibilityStatusV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *SetUserLeaderboardVisibilityStatusV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *SetUserLeaderboardVisibilityStatusV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetUserLeaderboardVisibilityStatusV2Short set user visibility status on a specific leaderboard code
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserLeaderboardVisibilityStatusV2Short(params *SetUserLeaderboardVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityStatusV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserLeaderboardVisibilityStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SetUserLeaderboardVisibilityStatusV2",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserLeaderboardVisibilityStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetUserLeaderboardVisibilityStatusV2OK:
		return v, nil
	case *SetUserLeaderboardVisibilityStatusV2BadRequest:
		return nil, v
	case *SetUserLeaderboardVisibilityStatusV2Unauthorized:
		return nil, v
	case *SetUserLeaderboardVisibilityStatusV2Forbidden:
		return nil, v
	case *SetUserLeaderboardVisibilityStatusV2NotFound:
		return nil, v
	case *SetUserLeaderboardVisibilityStatusV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SetUserVisibilityStatusV2Short instead.

SetUserVisibilityStatusV2 set user visibility status on a all current leaderboard
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserVisibilityStatusV2(params *SetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityStatusV2OK, *SetUserVisibilityStatusV2BadRequest, *SetUserVisibilityStatusV2Unauthorized, *SetUserVisibilityStatusV2Forbidden, *SetUserVisibilityStatusV2NotFound, *SetUserVisibilityStatusV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserVisibilityStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SetUserVisibilityStatusV2",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserVisibilityStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SetUserVisibilityStatusV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *SetUserVisibilityStatusV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *SetUserVisibilityStatusV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *SetUserVisibilityStatusV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *SetUserVisibilityStatusV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *SetUserVisibilityStatusV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetUserVisibilityStatusV2Short set user visibility status on a all current leaderboard
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserVisibilityStatusV2Short(params *SetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityStatusV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserVisibilityStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SetUserVisibilityStatusV2",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserVisibilityStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetUserVisibilityStatusV2OK:
		return v, nil
	case *SetUserVisibilityStatusV2BadRequest:
		return nil, v
	case *SetUserVisibilityStatusV2Unauthorized:
		return nil, v
	case *SetUserVisibilityStatusV2Forbidden:
		return nil, v
	case *SetUserVisibilityStatusV2NotFound:
		return nil, v
	case *SetUserVisibilityStatusV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
