// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package leaderboard_data_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new leaderboard data v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for leaderboard data v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAllTimeLeaderboardRankingAdminV3(params *GetAllTimeLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV3OK, *GetAllTimeLeaderboardRankingAdminV3BadRequest, *GetAllTimeLeaderboardRankingAdminV3Unauthorized, *GetAllTimeLeaderboardRankingAdminV3Forbidden, *GetAllTimeLeaderboardRankingAdminV3NotFound, *GetAllTimeLeaderboardRankingAdminV3InternalServerError, error)
	GetAllTimeLeaderboardRankingAdminV3Short(params *GetAllTimeLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV3OK, error)
	GetCurrentCycleLeaderboardRankingAdminV3(params *GetCurrentCycleLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingAdminV3OK, *GetCurrentCycleLeaderboardRankingAdminV3BadRequest, *GetCurrentCycleLeaderboardRankingAdminV3Unauthorized, *GetCurrentCycleLeaderboardRankingAdminV3Forbidden, *GetCurrentCycleLeaderboardRankingAdminV3NotFound, *GetCurrentCycleLeaderboardRankingAdminV3InternalServerError, error)
	GetCurrentCycleLeaderboardRankingAdminV3Short(params *GetCurrentCycleLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingAdminV3OK, error)
	DeleteAllUserRankingByCycleIDAdminV3(params *DeleteAllUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserRankingByCycleIDAdminV3NoContent, *DeleteAllUserRankingByCycleIDAdminV3Unauthorized, *DeleteAllUserRankingByCycleIDAdminV3Forbidden, *DeleteAllUserRankingByCycleIDAdminV3NotFound, *DeleteAllUserRankingByCycleIDAdminV3InternalServerError, error)
	DeleteAllUserRankingByCycleIDAdminV3Short(params *DeleteAllUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserRankingByCycleIDAdminV3NoContent, error)
	DeleteUserRankingByCycleIDAdminV3(params *DeleteUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByCycleIDAdminV3NoContent, *DeleteUserRankingByCycleIDAdminV3Unauthorized, *DeleteUserRankingByCycleIDAdminV3Forbidden, *DeleteUserRankingByCycleIDAdminV3NotFound, *DeleteUserRankingByCycleIDAdminV3InternalServerError, error)
	DeleteUserRankingByCycleIDAdminV3Short(params *DeleteUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByCycleIDAdminV3NoContent, error)
	DeleteUserRankingByLeaderboardCodeAdminV3(params *DeleteUserRankingByLeaderboardCodeAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV3NoContent, *DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized, *DeleteUserRankingByLeaderboardCodeAdminV3Forbidden, *DeleteUserRankingByLeaderboardCodeAdminV3NotFound, *DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError, error)
	DeleteUserRankingByLeaderboardCodeAdminV3Short(params *DeleteUserRankingByLeaderboardCodeAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV3NoContent, error)
	GetUserRankingAdminV3(params *GetUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV3OK, *GetUserRankingAdminV3Unauthorized, *GetUserRankingAdminV3Forbidden, *GetUserRankingAdminV3NotFound, *GetUserRankingAdminV3InternalServerError, error)
	GetUserRankingAdminV3Short(params *GetUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV3OK, error)
	DeleteUserRankingAdminV3(params *DeleteUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV3NoContent, *DeleteUserRankingAdminV3Unauthorized, *DeleteUserRankingAdminV3Forbidden, *DeleteUserRankingAdminV3NotFound, *DeleteUserRankingAdminV3InternalServerError, error)
	DeleteUserRankingAdminV3Short(params *DeleteUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV3NoContent, error)
	DeleteUserRankingsAdminV3(params *DeleteUserRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV3NoContent, *DeleteUserRankingsAdminV3Unauthorized, *DeleteUserRankingsAdminV3Forbidden, *DeleteUserRankingsAdminV3InternalServerError, error)
	DeleteUserRankingsAdminV3Short(params *DeleteUserRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV3NoContent, error)
	GetAllTimeLeaderboardRankingPublicV3(params *GetAllTimeLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV3OK, *GetAllTimeLeaderboardRankingPublicV3BadRequest, *GetAllTimeLeaderboardRankingPublicV3NotFound, *GetAllTimeLeaderboardRankingPublicV3InternalServerError, error)
	GetAllTimeLeaderboardRankingPublicV3Short(params *GetAllTimeLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV3OK, error)
	GetCurrentCycleLeaderboardRankingPublicV3(params *GetCurrentCycleLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingPublicV3OK, *GetCurrentCycleLeaderboardRankingPublicV3BadRequest, *GetCurrentCycleLeaderboardRankingPublicV3NotFound, *GetCurrentCycleLeaderboardRankingPublicV3InternalServerError, error)
	GetCurrentCycleLeaderboardRankingPublicV3Short(params *GetCurrentCycleLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingPublicV3OK, error)
	BulkGetUsersRankingPublicV3(params *BulkGetUsersRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUsersRankingPublicV3OK, *BulkGetUsersRankingPublicV3BadRequest, *BulkGetUsersRankingPublicV3Unauthorized, *BulkGetUsersRankingPublicV3Forbidden, *BulkGetUsersRankingPublicV3NotFound, *BulkGetUsersRankingPublicV3InternalServerError, error)
	BulkGetUsersRankingPublicV3Short(params *BulkGetUsersRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUsersRankingPublicV3OK, error)
	GetUserRankingPublicV3(params *GetUserRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV3OK, *GetUserRankingPublicV3Unauthorized, *GetUserRankingPublicV3Forbidden, *GetUserRankingPublicV3NotFound, *GetUserRankingPublicV3InternalServerError, error)
	GetUserRankingPublicV3Short(params *GetUserRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetAllTimeLeaderboardRankingAdminV3Short instead.

GetAllTimeLeaderboardRankingAdminV3 get all time leaderboard ranking data


Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingAdminV3(params *GetAllTimeLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV3OK, *GetAllTimeLeaderboardRankingAdminV3BadRequest, *GetAllTimeLeaderboardRankingAdminV3Unauthorized, *GetAllTimeLeaderboardRankingAdminV3Forbidden, *GetAllTimeLeaderboardRankingAdminV3NotFound, *GetAllTimeLeaderboardRankingAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingAdminV3Params()
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
		ID:                 "GetAllTimeLeaderboardRankingAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingAdminV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetAllTimeLeaderboardRankingAdminV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetAllTimeLeaderboardRankingAdminV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetAllTimeLeaderboardRankingAdminV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetAllTimeLeaderboardRankingAdminV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetAllTimeLeaderboardRankingAdminV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllTimeLeaderboardRankingAdminV3Short get all time leaderboard ranking data


Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingAdminV3Short(params *GetAllTimeLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllTimeLeaderboardRankingAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingAdminV3OK:
		return v, nil
	case *GetAllTimeLeaderboardRankingAdminV3BadRequest:
		return nil, v
	case *GetAllTimeLeaderboardRankingAdminV3Unauthorized:
		return nil, v
	case *GetAllTimeLeaderboardRankingAdminV3Forbidden:
		return nil, v
	case *GetAllTimeLeaderboardRankingAdminV3NotFound:
		return nil, v
	case *GetAllTimeLeaderboardRankingAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCurrentCycleLeaderboardRankingAdminV3Short instead.

GetCurrentCycleLeaderboardRankingAdminV3 get cycle leaderboard ranking data


Get rankings in cycle leaderboard.
*/
func (a *Client) GetCurrentCycleLeaderboardRankingAdminV3(params *GetCurrentCycleLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingAdminV3OK, *GetCurrentCycleLeaderboardRankingAdminV3BadRequest, *GetCurrentCycleLeaderboardRankingAdminV3Unauthorized, *GetCurrentCycleLeaderboardRankingAdminV3Forbidden, *GetCurrentCycleLeaderboardRankingAdminV3NotFound, *GetCurrentCycleLeaderboardRankingAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentCycleLeaderboardRankingAdminV3Params()
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
		ID:                 "GetCurrentCycleLeaderboardRankingAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentCycleLeaderboardRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCurrentCycleLeaderboardRankingAdminV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetCurrentCycleLeaderboardRankingAdminV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetCurrentCycleLeaderboardRankingAdminV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetCurrentCycleLeaderboardRankingAdminV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetCurrentCycleLeaderboardRankingAdminV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetCurrentCycleLeaderboardRankingAdminV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentCycleLeaderboardRankingAdminV3Short get cycle leaderboard ranking data


Get rankings in cycle leaderboard.
*/
func (a *Client) GetCurrentCycleLeaderboardRankingAdminV3Short(params *GetCurrentCycleLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentCycleLeaderboardRankingAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentCycleLeaderboardRankingAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentCycleLeaderboardRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentCycleLeaderboardRankingAdminV3OK:
		return v, nil
	case *GetCurrentCycleLeaderboardRankingAdminV3BadRequest:
		return nil, v
	case *GetCurrentCycleLeaderboardRankingAdminV3Unauthorized:
		return nil, v
	case *GetCurrentCycleLeaderboardRankingAdminV3Forbidden:
		return nil, v
	case *GetCurrentCycleLeaderboardRankingAdminV3NotFound:
		return nil, v
	case *GetCurrentCycleLeaderboardRankingAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteAllUserRankingByCycleIDAdminV3Short instead.

DeleteAllUserRankingByCycleIDAdminV3 delete all user ranking by cycle id


This endpoint will delete user ranking by cycleId




Warning : This will permanently delete your data. Make sure to back up anything important before continuing.
*/
func (a *Client) DeleteAllUserRankingByCycleIDAdminV3(params *DeleteAllUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserRankingByCycleIDAdminV3NoContent, *DeleteAllUserRankingByCycleIDAdminV3Unauthorized, *DeleteAllUserRankingByCycleIDAdminV3Forbidden, *DeleteAllUserRankingByCycleIDAdminV3NotFound, *DeleteAllUserRankingByCycleIDAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserRankingByCycleIDAdminV3Params()
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
		ID:                 "deleteAllUserRankingByCycleIdAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserRankingByCycleIDAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserRankingByCycleIDAdminV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteAllUserRankingByCycleIDAdminV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteAllUserRankingByCycleIDAdminV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteAllUserRankingByCycleIDAdminV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteAllUserRankingByCycleIDAdminV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserRankingByCycleIDAdminV3Short delete all user ranking by cycle id


This endpoint will delete user ranking by cycleId




Warning : This will permanently delete your data. Make sure to back up anything important before continuing.
*/
func (a *Client) DeleteAllUserRankingByCycleIDAdminV3Short(params *DeleteAllUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserRankingByCycleIDAdminV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserRankingByCycleIDAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteAllUserRankingByCycleIdAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserRankingByCycleIDAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserRankingByCycleIDAdminV3NoContent:
		return v, nil
	case *DeleteAllUserRankingByCycleIDAdminV3Unauthorized:
		return nil, v
	case *DeleteAllUserRankingByCycleIDAdminV3Forbidden:
		return nil, v
	case *DeleteAllUserRankingByCycleIDAdminV3NotFound:
		return nil, v
	case *DeleteAllUserRankingByCycleIDAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserRankingByCycleIDAdminV3Short instead.

DeleteUserRankingByCycleIDAdminV3 delete user ranking by cycle id
Delete user ranking by cycle id

Remove entry with provided cycleId and userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingByCycleIDAdminV3(params *DeleteUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByCycleIDAdminV3NoContent, *DeleteUserRankingByCycleIDAdminV3Unauthorized, *DeleteUserRankingByCycleIDAdminV3Forbidden, *DeleteUserRankingByCycleIDAdminV3NotFound, *DeleteUserRankingByCycleIDAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingByCycleIDAdminV3Params()
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
		ID:                 "deleteUserRankingByCycleIdAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingByCycleIDAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingByCycleIDAdminV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteUserRankingByCycleIDAdminV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteUserRankingByCycleIDAdminV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteUserRankingByCycleIDAdminV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteUserRankingByCycleIDAdminV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingByCycleIDAdminV3Short delete user ranking by cycle id
Delete user ranking by cycle id

Remove entry with provided cycleId and userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingByCycleIDAdminV3Short(params *DeleteUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByCycleIDAdminV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingByCycleIDAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingByCycleIdAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingByCycleIDAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingByCycleIDAdminV3NoContent:
		return v, nil
	case *DeleteUserRankingByCycleIDAdminV3Unauthorized:
		return nil, v
	case *DeleteUserRankingByCycleIDAdminV3Forbidden:
		return nil, v
	case *DeleteUserRankingByCycleIDAdminV3NotFound:
		return nil, v
	case *DeleteUserRankingByCycleIDAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserRankingByLeaderboardCodeAdminV3Short instead.

DeleteUserRankingByLeaderboardCodeAdminV3 delete all user ranking by leaderboard code


This endpoint will delete user ranking by leaderboard code




Warning : This will permanently delete your data. Make sure to back up anything important before continuing.
*/
func (a *Client) DeleteUserRankingByLeaderboardCodeAdminV3(params *DeleteUserRankingByLeaderboardCodeAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV3NoContent, *DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized, *DeleteUserRankingByLeaderboardCodeAdminV3Forbidden, *DeleteUserRankingByLeaderboardCodeAdminV3NotFound, *DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingByLeaderboardCodeAdminV3Params()
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
		ID:                 "deleteUserRankingByLeaderboardCodeAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingByLeaderboardCodeAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingByLeaderboardCodeAdminV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteUserRankingByLeaderboardCodeAdminV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteUserRankingByLeaderboardCodeAdminV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingByLeaderboardCodeAdminV3Short delete all user ranking by leaderboard code


This endpoint will delete user ranking by leaderboard code




Warning : This will permanently delete your data. Make sure to back up anything important before continuing.
*/
func (a *Client) DeleteUserRankingByLeaderboardCodeAdminV3Short(params *DeleteUserRankingByLeaderboardCodeAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingByLeaderboardCodeAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingByLeaderboardCodeAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingByLeaderboardCodeAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingByLeaderboardCodeAdminV3NoContent:
		return v, nil
	case *DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized:
		return nil, v
	case *DeleteUserRankingByLeaderboardCodeAdminV3Forbidden:
		return nil, v
	case *DeleteUserRankingByLeaderboardCodeAdminV3NotFound:
		return nil, v
	case *DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserRankingAdminV3Short instead.

GetUserRankingAdminV3 get user ranking


Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingAdminV3(params *GetUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV3OK, *GetUserRankingAdminV3Unauthorized, *GetUserRankingAdminV3Forbidden, *GetUserRankingAdminV3NotFound, *GetUserRankingAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingAdminV3Params()
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
		ID:                 "getUserRankingAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingAdminV3OK:
		return v, nil, nil, nil, nil, nil

	case *GetUserRankingAdminV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetUserRankingAdminV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetUserRankingAdminV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetUserRankingAdminV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserRankingAdminV3Short get user ranking


Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingAdminV3Short(params *GetUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserRankingAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingAdminV3OK:
		return v, nil
	case *GetUserRankingAdminV3Unauthorized:
		return nil, v
	case *GetUserRankingAdminV3Forbidden:
		return nil, v
	case *GetUserRankingAdminV3NotFound:
		return nil, v
	case *GetUserRankingAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserRankingAdminV3Short instead.

DeleteUserRankingAdminV3 delete user ranking
Delete user ranking

Remove entry with provided userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingAdminV3(params *DeleteUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV3NoContent, *DeleteUserRankingAdminV3Unauthorized, *DeleteUserRankingAdminV3Forbidden, *DeleteUserRankingAdminV3NotFound, *DeleteUserRankingAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingAdminV3Params()
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
		ID:                 "deleteUserRankingAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingAdminV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteUserRankingAdminV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteUserRankingAdminV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteUserRankingAdminV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteUserRankingAdminV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingAdminV3Short delete user ranking
Delete user ranking

Remove entry with provided userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingAdminV3Short(params *DeleteUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingAdminV3NoContent:
		return v, nil
	case *DeleteUserRankingAdminV3Unauthorized:
		return nil, v
	case *DeleteUserRankingAdminV3Forbidden:
		return nil, v
	case *DeleteUserRankingAdminV3NotFound:
		return nil, v
	case *DeleteUserRankingAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserRankingsAdminV3Short instead.

DeleteUserRankingsAdminV3 delete user ranking across leaderboard(s)
Delete user ranking across leaderboard

Remove entry with provided userId from leaderboard.
*/
func (a *Client) DeleteUserRankingsAdminV3(params *DeleteUserRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV3NoContent, *DeleteUserRankingsAdminV3Unauthorized, *DeleteUserRankingsAdminV3Forbidden, *DeleteUserRankingsAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingsAdminV3Params()
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
		ID:                 "deleteUserRankingsAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingsAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingsAdminV3NoContent:
		return v, nil, nil, nil, nil

	case *DeleteUserRankingsAdminV3Unauthorized:
		return nil, v, nil, nil, nil

	case *DeleteUserRankingsAdminV3Forbidden:
		return nil, nil, v, nil, nil

	case *DeleteUserRankingsAdminV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingsAdminV3Short delete user ranking across leaderboard(s)
Delete user ranking across leaderboard

Remove entry with provided userId from leaderboard.
*/
func (a *Client) DeleteUserRankingsAdminV3Short(params *DeleteUserRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingsAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingsAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingsAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingsAdminV3NoContent:
		return v, nil
	case *DeleteUserRankingsAdminV3Unauthorized:
		return nil, v
	case *DeleteUserRankingsAdminV3Forbidden:
		return nil, v
	case *DeleteUserRankingsAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAllTimeLeaderboardRankingPublicV3Short instead.

GetAllTimeLeaderboardRankingPublicV3 get all time leaderboard ranking data


Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingPublicV3(params *GetAllTimeLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV3OK, *GetAllTimeLeaderboardRankingPublicV3BadRequest, *GetAllTimeLeaderboardRankingPublicV3NotFound, *GetAllTimeLeaderboardRankingPublicV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingPublicV3Params()
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
		ID:                 "GetAllTimeLeaderboardRankingPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingPublicV3OK:
		return v, nil, nil, nil, nil

	case *GetAllTimeLeaderboardRankingPublicV3BadRequest:
		return nil, v, nil, nil, nil

	case *GetAllTimeLeaderboardRankingPublicV3NotFound:
		return nil, nil, v, nil, nil

	case *GetAllTimeLeaderboardRankingPublicV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllTimeLeaderboardRankingPublicV3Short get all time leaderboard ranking data


Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingPublicV3Short(params *GetAllTimeLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingPublicV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllTimeLeaderboardRankingPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingPublicV3OK:
		return v, nil
	case *GetAllTimeLeaderboardRankingPublicV3BadRequest:
		return nil, v
	case *GetAllTimeLeaderboardRankingPublicV3NotFound:
		return nil, v
	case *GetAllTimeLeaderboardRankingPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCurrentCycleLeaderboardRankingPublicV3Short instead.

GetCurrentCycleLeaderboardRankingPublicV3 get cycle leaderboard ranking data


Get rankings in cycle leaderboard.
*/
func (a *Client) GetCurrentCycleLeaderboardRankingPublicV3(params *GetCurrentCycleLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingPublicV3OK, *GetCurrentCycleLeaderboardRankingPublicV3BadRequest, *GetCurrentCycleLeaderboardRankingPublicV3NotFound, *GetCurrentCycleLeaderboardRankingPublicV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentCycleLeaderboardRankingPublicV3Params()
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
		ID:                 "GetCurrentCycleLeaderboardRankingPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentCycleLeaderboardRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCurrentCycleLeaderboardRankingPublicV3OK:
		return v, nil, nil, nil, nil

	case *GetCurrentCycleLeaderboardRankingPublicV3BadRequest:
		return nil, v, nil, nil, nil

	case *GetCurrentCycleLeaderboardRankingPublicV3NotFound:
		return nil, nil, v, nil, nil

	case *GetCurrentCycleLeaderboardRankingPublicV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentCycleLeaderboardRankingPublicV3Short get cycle leaderboard ranking data


Get rankings in cycle leaderboard.
*/
func (a *Client) GetCurrentCycleLeaderboardRankingPublicV3Short(params *GetCurrentCycleLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentCycleLeaderboardRankingPublicV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentCycleLeaderboardRankingPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentCycleLeaderboardRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentCycleLeaderboardRankingPublicV3OK:
		return v, nil
	case *GetCurrentCycleLeaderboardRankingPublicV3BadRequest:
		return nil, v
	case *GetCurrentCycleLeaderboardRankingPublicV3NotFound:
		return nil, v
	case *GetCurrentCycleLeaderboardRankingPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkGetUsersRankingPublicV3Short instead.

BulkGetUsersRankingPublicV3 bulk get users ranking


Bulk get users ranking in leaderboard, max allowed 20 userIDs at a time.
*/
func (a *Client) BulkGetUsersRankingPublicV3(params *BulkGetUsersRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUsersRankingPublicV3OK, *BulkGetUsersRankingPublicV3BadRequest, *BulkGetUsersRankingPublicV3Unauthorized, *BulkGetUsersRankingPublicV3Forbidden, *BulkGetUsersRankingPublicV3NotFound, *BulkGetUsersRankingPublicV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetUsersRankingPublicV3Params()
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
		ID:                 "bulkGetUsersRankingPublicV3",
		Method:             "POST",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetUsersRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkGetUsersRankingPublicV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkGetUsersRankingPublicV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkGetUsersRankingPublicV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkGetUsersRankingPublicV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkGetUsersRankingPublicV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkGetUsersRankingPublicV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetUsersRankingPublicV3Short bulk get users ranking


Bulk get users ranking in leaderboard, max allowed 20 userIDs at a time.
*/
func (a *Client) BulkGetUsersRankingPublicV3Short(params *BulkGetUsersRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUsersRankingPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetUsersRankingPublicV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetUsersRankingPublicV3",
		Method:             "POST",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetUsersRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetUsersRankingPublicV3OK:
		return v, nil
	case *BulkGetUsersRankingPublicV3BadRequest:
		return nil, v
	case *BulkGetUsersRankingPublicV3Unauthorized:
		return nil, v
	case *BulkGetUsersRankingPublicV3Forbidden:
		return nil, v
	case *BulkGetUsersRankingPublicV3NotFound:
		return nil, v
	case *BulkGetUsersRankingPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserRankingPublicV3Short instead.

GetUserRankingPublicV3 get user ranking


Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingPublicV3(params *GetUserRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV3OK, *GetUserRankingPublicV3Unauthorized, *GetUserRankingPublicV3Forbidden, *GetUserRankingPublicV3NotFound, *GetUserRankingPublicV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingPublicV3Params()
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
		ID:                 "getUserRankingPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingPublicV3OK:
		return v, nil, nil, nil, nil, nil

	case *GetUserRankingPublicV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetUserRankingPublicV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetUserRankingPublicV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetUserRankingPublicV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserRankingPublicV3Short get user ranking


Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingPublicV3Short(params *GetUserRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingPublicV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserRankingPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingPublicV3OK:
		return v, nil
	case *GetUserRankingPublicV3Unauthorized:
		return nil, v
	case *GetUserRankingPublicV3Forbidden:
		return nil, v
	case *GetUserRankingPublicV3NotFound:
		return nil, v
	case *GetUserRankingPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
