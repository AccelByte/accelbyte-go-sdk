// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package user_visibility_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user visibility v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user visibility v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetHiddenUsersV3(params *GetHiddenUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV3OK, *GetHiddenUsersV3BadRequest, *GetHiddenUsersV3Unauthorized, *GetHiddenUsersV3Forbidden, *GetHiddenUsersV3NotFound, *GetHiddenUsersV3InternalServerError, error)
	GetHiddenUsersV3Short(params *GetHiddenUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV3OK, error)
	GetUserVisibilityStatusV3(params *GetUserVisibilityStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV3OK, *GetUserVisibilityStatusV3BadRequest, *GetUserVisibilityStatusV3Unauthorized, *GetUserVisibilityStatusV3Forbidden, *GetUserVisibilityStatusV3NotFound, *GetUserVisibilityStatusV3InternalServerError, error)
	GetUserVisibilityStatusV3Short(params *GetUserVisibilityStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV3OK, error)
	SetUserLeaderboardVisibilityV3(params *SetUserLeaderboardVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityV3OK, *SetUserLeaderboardVisibilityV3BadRequest, *SetUserLeaderboardVisibilityV3Unauthorized, *SetUserLeaderboardVisibilityV3Forbidden, *SetUserLeaderboardVisibilityV3NotFound, *SetUserLeaderboardVisibilityV3InternalServerError, error)
	SetUserLeaderboardVisibilityV3Short(params *SetUserLeaderboardVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityV3OK, error)
	SetUserVisibilityV3(params *SetUserVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityV3OK, *SetUserVisibilityV3BadRequest, *SetUserVisibilityV3Unauthorized, *SetUserVisibilityV3Forbidden, *SetUserVisibilityV3NotFound, *SetUserVisibilityV3InternalServerError, error)
	SetUserVisibilityV3Short(params *SetUserVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetHiddenUsersV3Short instead.

GetHiddenUsersV3 get hidden users on a leaderboard
Return hidden users on a leaderboard
*/
func (a *Client) GetHiddenUsersV3(params *GetHiddenUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV3OK, *GetHiddenUsersV3BadRequest, *GetHiddenUsersV3Unauthorized, *GetHiddenUsersV3Forbidden, *GetHiddenUsersV3NotFound, *GetHiddenUsersV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetHiddenUsersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetHiddenUsersV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetHiddenUsersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetHiddenUsersV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetHiddenUsersV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetHiddenUsersV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetHiddenUsersV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetHiddenUsersV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetHiddenUsersV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetHiddenUsersV3Short get hidden users on a leaderboard
Return hidden users on a leaderboard
*/
func (a *Client) GetHiddenUsersV3Short(params *GetHiddenUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetHiddenUsersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetHiddenUsersV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetHiddenUsersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetHiddenUsersV3OK:
		return v, nil
	case *GetHiddenUsersV3BadRequest:
		return nil, v
	case *GetHiddenUsersV3Unauthorized:
		return nil, v
	case *GetHiddenUsersV3Forbidden:
		return nil, v
	case *GetHiddenUsersV3NotFound:
		return nil, v
	case *GetHiddenUsersV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserVisibilityStatusV3Short instead.

GetUserVisibilityStatusV3 get user visibility status
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) GetUserVisibilityStatusV3(params *GetUserVisibilityStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV3OK, *GetUserVisibilityStatusV3BadRequest, *GetUserVisibilityStatusV3Unauthorized, *GetUserVisibilityStatusV3Forbidden, *GetUserVisibilityStatusV3NotFound, *GetUserVisibilityStatusV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserVisibilityStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserVisibilityStatusV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserVisibilityStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserVisibilityStatusV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetUserVisibilityStatusV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetUserVisibilityStatusV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetUserVisibilityStatusV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetUserVisibilityStatusV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetUserVisibilityStatusV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserVisibilityStatusV3Short get user visibility status
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) GetUserVisibilityStatusV3Short(params *GetUserVisibilityStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserVisibilityStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserVisibilityStatusV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserVisibilityStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserVisibilityStatusV3OK:
		return v, nil
	case *GetUserVisibilityStatusV3BadRequest:
		return nil, v
	case *GetUserVisibilityStatusV3Unauthorized:
		return nil, v
	case *GetUserVisibilityStatusV3Forbidden:
		return nil, v
	case *GetUserVisibilityStatusV3NotFound:
		return nil, v
	case *GetUserVisibilityStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SetUserLeaderboardVisibilityV3Short instead.

SetUserLeaderboardVisibilityV3 set user visibility status on a specific leaderboard code
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserLeaderboardVisibilityV3(params *SetUserLeaderboardVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityV3OK, *SetUserLeaderboardVisibilityV3BadRequest, *SetUserLeaderboardVisibilityV3Unauthorized, *SetUserLeaderboardVisibilityV3Forbidden, *SetUserLeaderboardVisibilityV3NotFound, *SetUserLeaderboardVisibilityV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserLeaderboardVisibilityV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SetUserLeaderboardVisibilityV3",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserLeaderboardVisibilityV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SetUserLeaderboardVisibilityV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *SetUserLeaderboardVisibilityV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *SetUserLeaderboardVisibilityV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *SetUserLeaderboardVisibilityV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *SetUserLeaderboardVisibilityV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *SetUserLeaderboardVisibilityV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetUserLeaderboardVisibilityV3Short set user visibility status on a specific leaderboard code
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserLeaderboardVisibilityV3Short(params *SetUserLeaderboardVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserLeaderboardVisibilityV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SetUserLeaderboardVisibilityV3",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserLeaderboardVisibilityV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetUserLeaderboardVisibilityV3OK:
		return v, nil
	case *SetUserLeaderboardVisibilityV3BadRequest:
		return nil, v
	case *SetUserLeaderboardVisibilityV3Unauthorized:
		return nil, v
	case *SetUserLeaderboardVisibilityV3Forbidden:
		return nil, v
	case *SetUserLeaderboardVisibilityV3NotFound:
		return nil, v
	case *SetUserLeaderboardVisibilityV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SetUserVisibilityV3Short instead.

SetUserVisibilityV3 set user visibility status on a all current leaderboard
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserVisibilityV3(params *SetUserVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityV3OK, *SetUserVisibilityV3BadRequest, *SetUserVisibilityV3Unauthorized, *SetUserVisibilityV3Forbidden, *SetUserVisibilityV3NotFound, *SetUserVisibilityV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserVisibilityV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SetUserVisibilityV3",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserVisibilityV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SetUserVisibilityV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *SetUserVisibilityV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *SetUserVisibilityV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *SetUserVisibilityV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *SetUserVisibilityV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *SetUserVisibilityV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetUserVisibilityV3Short set user visibility status on a all current leaderboard
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserVisibilityV3Short(params *SetUserVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserVisibilityV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SetUserVisibilityV3",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserVisibilityV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetUserVisibilityV3OK:
		return v, nil
	case *SetUserVisibilityV3BadRequest:
		return nil, v
	case *SetUserVisibilityV3Unauthorized:
		return nil, v
	case *SetUserVisibilityV3Forbidden:
		return nil, v
	case *SetUserVisibilityV3NotFound:
		return nil, v
	case *SetUserVisibilityV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
