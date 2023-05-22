// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package leaderboard_data

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new leaderboard data API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for leaderboard data API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetArchivedLeaderboardRankingDataV1Handler(params *AdminGetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetArchivedLeaderboardRankingDataV1HandlerOK, *AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest, *AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized, *AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden, *AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound, *AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError, error)
	AdminGetArchivedLeaderboardRankingDataV1HandlerShort(params *AdminGetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetArchivedLeaderboardRankingDataV1HandlerOK, error)
	CreateArchivedLeaderboardRankingDataV1Handler(params *CreateArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateArchivedLeaderboardRankingDataV1HandlerCreated, *CreateArchivedLeaderboardRankingDataV1HandlerBadRequest, *CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized, *CreateArchivedLeaderboardRankingDataV1HandlerForbidden, *CreateArchivedLeaderboardRankingDataV1HandlerNotFound, *CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError, error)
	CreateArchivedLeaderboardRankingDataV1HandlerShort(params *CreateArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateArchivedLeaderboardRankingDataV1HandlerCreated, error)
	GetAllTimeLeaderboardRankingAdminV1(params *GetAllTimeLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV1OK, *GetAllTimeLeaderboardRankingAdminV1BadRequest, *GetAllTimeLeaderboardRankingAdminV1Unauthorized, *GetAllTimeLeaderboardRankingAdminV1Forbidden, *GetAllTimeLeaderboardRankingAdminV1NotFound, *GetAllTimeLeaderboardRankingAdminV1InternalServerError, error)
	GetAllTimeLeaderboardRankingAdminV1Short(params *GetAllTimeLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV1OK, error)
	GetCurrentMonthLeaderboardRankingAdminV1(params *GetCurrentMonthLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingAdminV1OK, *GetCurrentMonthLeaderboardRankingAdminV1BadRequest, *GetCurrentMonthLeaderboardRankingAdminV1Unauthorized, *GetCurrentMonthLeaderboardRankingAdminV1Forbidden, *GetCurrentMonthLeaderboardRankingAdminV1NotFound, *GetCurrentMonthLeaderboardRankingAdminV1InternalServerError, error)
	GetCurrentMonthLeaderboardRankingAdminV1Short(params *GetCurrentMonthLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingAdminV1OK, error)
	DeleteUserRankingByLeaderboardCodeAdminV1(params *DeleteUserRankingByLeaderboardCodeAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV1NoContent, *DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized, *DeleteUserRankingByLeaderboardCodeAdminV1Forbidden, *DeleteUserRankingByLeaderboardCodeAdminV1NotFound, *DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError, error)
	DeleteUserRankingByLeaderboardCodeAdminV1Short(params *DeleteUserRankingByLeaderboardCodeAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV1NoContent, error)
	GetCurrentSeasonLeaderboardRankingAdminV1(params *GetCurrentSeasonLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingAdminV1OK, *GetCurrentSeasonLeaderboardRankingAdminV1BadRequest, *GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized, *GetCurrentSeasonLeaderboardRankingAdminV1Forbidden, *GetCurrentSeasonLeaderboardRankingAdminV1NotFound, *GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError, error)
	GetCurrentSeasonLeaderboardRankingAdminV1Short(params *GetCurrentSeasonLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingAdminV1OK, error)
	GetTodayLeaderboardRankingAdminV1(params *GetTodayLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingAdminV1OK, *GetTodayLeaderboardRankingAdminV1BadRequest, *GetTodayLeaderboardRankingAdminV1Unauthorized, *GetTodayLeaderboardRankingAdminV1Forbidden, *GetTodayLeaderboardRankingAdminV1NotFound, *GetTodayLeaderboardRankingAdminV1InternalServerError, error)
	GetTodayLeaderboardRankingAdminV1Short(params *GetTodayLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingAdminV1OK, error)
	GetUserRankingAdminV1(params *GetUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV1OK, *GetUserRankingAdminV1Unauthorized, *GetUserRankingAdminV1Forbidden, *GetUserRankingAdminV1NotFound, *GetUserRankingAdminV1InternalServerError, error)
	GetUserRankingAdminV1Short(params *GetUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV1OK, error)
	UpdateUserPointAdminV1(params *UpdateUserPointAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserPointAdminV1OK, *UpdateUserPointAdminV1BadRequest, *UpdateUserPointAdminV1Unauthorized, *UpdateUserPointAdminV1Forbidden, *UpdateUserPointAdminV1NotFound, *UpdateUserPointAdminV1InternalServerError, error)
	UpdateUserPointAdminV1Short(params *UpdateUserPointAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserPointAdminV1OK, error)
	DeleteUserRankingAdminV1(params *DeleteUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV1NoContent, *DeleteUserRankingAdminV1Unauthorized, *DeleteUserRankingAdminV1Forbidden, *DeleteUserRankingAdminV1NotFound, *DeleteUserRankingAdminV1InternalServerError, error)
	DeleteUserRankingAdminV1Short(params *DeleteUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV1NoContent, error)
	GetCurrentWeekLeaderboardRankingAdminV1(params *GetCurrentWeekLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingAdminV1OK, *GetCurrentWeekLeaderboardRankingAdminV1BadRequest, *GetCurrentWeekLeaderboardRankingAdminV1Unauthorized, *GetCurrentWeekLeaderboardRankingAdminV1Forbidden, *GetCurrentWeekLeaderboardRankingAdminV1NotFound, *GetCurrentWeekLeaderboardRankingAdminV1InternalServerError, error)
	GetCurrentWeekLeaderboardRankingAdminV1Short(params *GetCurrentWeekLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingAdminV1OK, error)
	DeleteUserRankingsAdminV1(params *DeleteUserRankingsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV1NoContent, *DeleteUserRankingsAdminV1Unauthorized, *DeleteUserRankingsAdminV1Forbidden, *DeleteUserRankingsAdminV1NotFound, *DeleteUserRankingsAdminV1InternalServerError, error)
	DeleteUserRankingsAdminV1Short(params *DeleteUserRankingsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV1NoContent, error)
	GetAllTimeLeaderboardRankingPublicV1(params *GetAllTimeLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV1OK, *GetAllTimeLeaderboardRankingPublicV1BadRequest, *GetAllTimeLeaderboardRankingPublicV1NotFound, *GetAllTimeLeaderboardRankingPublicV1InternalServerError, error)
	GetAllTimeLeaderboardRankingPublicV1Short(params *GetAllTimeLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV1OK, error)
	GetArchivedLeaderboardRankingDataV1Handler(params *GetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetArchivedLeaderboardRankingDataV1HandlerOK, *GetArchivedLeaderboardRankingDataV1HandlerBadRequest, *GetArchivedLeaderboardRankingDataV1HandlerUnauthorized, *GetArchivedLeaderboardRankingDataV1HandlerForbidden, *GetArchivedLeaderboardRankingDataV1HandlerNotFound, *GetArchivedLeaderboardRankingDataV1HandlerInternalServerError, error)
	GetArchivedLeaderboardRankingDataV1HandlerShort(params *GetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetArchivedLeaderboardRankingDataV1HandlerOK, error)
	GetCurrentMonthLeaderboardRankingPublicV1(params *GetCurrentMonthLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingPublicV1OK, *GetCurrentMonthLeaderboardRankingPublicV1BadRequest, *GetCurrentMonthLeaderboardRankingPublicV1NotFound, *GetCurrentMonthLeaderboardRankingPublicV1InternalServerError, error)
	GetCurrentMonthLeaderboardRankingPublicV1Short(params *GetCurrentMonthLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingPublicV1OK, error)
	GetCurrentSeasonLeaderboardRankingPublicV1(params *GetCurrentSeasonLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingPublicV1OK, *GetCurrentSeasonLeaderboardRankingPublicV1BadRequest, *GetCurrentSeasonLeaderboardRankingPublicV1NotFound, *GetCurrentSeasonLeaderboardRankingPublicV1InternalServerError, error)
	GetCurrentSeasonLeaderboardRankingPublicV1Short(params *GetCurrentSeasonLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingPublicV1OK, error)
	GetTodayLeaderboardRankingPublicV1(params *GetTodayLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingPublicV1OK, *GetTodayLeaderboardRankingPublicV1BadRequest, *GetTodayLeaderboardRankingPublicV1NotFound, *GetTodayLeaderboardRankingPublicV1InternalServerError, error)
	GetTodayLeaderboardRankingPublicV1Short(params *GetTodayLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingPublicV1OK, error)
	GetUserRankingPublicV1(params *GetUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV1OK, *GetUserRankingPublicV1Unauthorized, *GetUserRankingPublicV1Forbidden, *GetUserRankingPublicV1NotFound, *GetUserRankingPublicV1InternalServerError, error)
	GetUserRankingPublicV1Short(params *GetUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV1OK, error)
	DeleteUserRankingPublicV1(params *DeleteUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingPublicV1NoContent, *DeleteUserRankingPublicV1Unauthorized, *DeleteUserRankingPublicV1Forbidden, *DeleteUserRankingPublicV1NotFound, *DeleteUserRankingPublicV1InternalServerError, error)
	DeleteUserRankingPublicV1Short(params *DeleteUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingPublicV1NoContent, error)
	GetCurrentWeekLeaderboardRankingPublicV1(params *GetCurrentWeekLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingPublicV1OK, *GetCurrentWeekLeaderboardRankingPublicV1BadRequest, *GetCurrentWeekLeaderboardRankingPublicV1NotFound, *GetCurrentWeekLeaderboardRankingPublicV1InternalServerError, error)
	GetCurrentWeekLeaderboardRankingPublicV1Short(params *GetCurrentWeekLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingPublicV1OK, error)
	GetAllTimeLeaderboardRankingPublicV2(params *GetAllTimeLeaderboardRankingPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV2OK, *GetAllTimeLeaderboardRankingPublicV2BadRequest, *GetAllTimeLeaderboardRankingPublicV2Unauthorized, *GetAllTimeLeaderboardRankingPublicV2Forbidden, *GetAllTimeLeaderboardRankingPublicV2NotFound, *GetAllTimeLeaderboardRankingPublicV2InternalServerError, error)
	GetAllTimeLeaderboardRankingPublicV2Short(params *GetAllTimeLeaderboardRankingPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetArchivedLeaderboardRankingDataV1HandlerShort instead.

AdminGetArchivedLeaderboardRankingDataV1Handler admin get signed url for archive all time leaderboard ranking data


Admin Get signed url in an all time leaderboard that archived. Notes: This will be a bulk endpoint to get sign url
*/
func (a *Client) AdminGetArchivedLeaderboardRankingDataV1Handler(params *AdminGetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetArchivedLeaderboardRankingDataV1HandlerOK, *AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest, *AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized, *AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden, *AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound, *AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetArchivedLeaderboardRankingDataV1HandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetArchivedLeaderboardRankingDataV1Handler",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetArchivedLeaderboardRankingDataV1HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetArchivedLeaderboardRankingDataV1HandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetArchivedLeaderboardRankingDataV1HandlerShort admin get signed url for archive all time leaderboard ranking data


Admin Get signed url in an all time leaderboard that archived. Notes: This will be a bulk endpoint to get sign url
*/
func (a *Client) AdminGetArchivedLeaderboardRankingDataV1HandlerShort(params *AdminGetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetArchivedLeaderboardRankingDataV1HandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetArchivedLeaderboardRankingDataV1HandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetArchivedLeaderboardRankingDataV1Handler",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetArchivedLeaderboardRankingDataV1HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetArchivedLeaderboardRankingDataV1HandlerOK:
		return v, nil
	case *AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest:
		return nil, v
	case *AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized:
		return nil, v
	case *AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden:
		return nil, v
	case *AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound:
		return nil, v
	case *AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateArchivedLeaderboardRankingDataV1HandlerShort instead.

CreateArchivedLeaderboardRankingDataV1Handler archive a leadeboard data ranking


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [CREATE]'




Archive leaderboard ranking data for specified leaderboard codes. NOTE: This will remove all data of the leaderboard on every slug,
remove the leaderboard code on stat mapping, and remove the leaderboard on the queue reset. This will be a bulk endpoint
*/
func (a *Client) CreateArchivedLeaderboardRankingDataV1Handler(params *CreateArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateArchivedLeaderboardRankingDataV1HandlerCreated, *CreateArchivedLeaderboardRankingDataV1HandlerBadRequest, *CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized, *CreateArchivedLeaderboardRankingDataV1HandlerForbidden, *CreateArchivedLeaderboardRankingDataV1HandlerNotFound, *CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateArchivedLeaderboardRankingDataV1HandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateArchivedLeaderboardRankingDataV1Handler",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateArchivedLeaderboardRankingDataV1HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateArchivedLeaderboardRankingDataV1HandlerCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateArchivedLeaderboardRankingDataV1HandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateArchivedLeaderboardRankingDataV1HandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateArchivedLeaderboardRankingDataV1HandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateArchivedLeaderboardRankingDataV1HandlerShort archive a leadeboard data ranking


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [CREATE]'




Archive leaderboard ranking data for specified leaderboard codes. NOTE: This will remove all data of the leaderboard on every slug,
remove the leaderboard code on stat mapping, and remove the leaderboard on the queue reset. This will be a bulk endpoint
*/
func (a *Client) CreateArchivedLeaderboardRankingDataV1HandlerShort(params *CreateArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateArchivedLeaderboardRankingDataV1HandlerCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateArchivedLeaderboardRankingDataV1HandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateArchivedLeaderboardRankingDataV1Handler",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateArchivedLeaderboardRankingDataV1HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateArchivedLeaderboardRankingDataV1HandlerCreated:
		return v, nil
	case *CreateArchivedLeaderboardRankingDataV1HandlerBadRequest:
		return nil, v
	case *CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized:
		return nil, v
	case *CreateArchivedLeaderboardRankingDataV1HandlerForbidden:
		return nil, v
	case *CreateArchivedLeaderboardRankingDataV1HandlerNotFound:
		return nil, v
	case *CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAllTimeLeaderboardRankingAdminV1Short instead.

GetAllTimeLeaderboardRankingAdminV1 get all time leaderboard ranking data


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingAdminV1(params *GetAllTimeLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV1OK, *GetAllTimeLeaderboardRankingAdminV1BadRequest, *GetAllTimeLeaderboardRankingAdminV1Unauthorized, *GetAllTimeLeaderboardRankingAdminV1Forbidden, *GetAllTimeLeaderboardRankingAdminV1NotFound, *GetAllTimeLeaderboardRankingAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllTimeLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetAllTimeLeaderboardRankingAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetAllTimeLeaderboardRankingAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetAllTimeLeaderboardRankingAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetAllTimeLeaderboardRankingAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetAllTimeLeaderboardRankingAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllTimeLeaderboardRankingAdminV1Short get all time leaderboard ranking data


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingAdminV1Short(params *GetAllTimeLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllTimeLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingAdminV1OK:
		return v, nil
	case *GetAllTimeLeaderboardRankingAdminV1BadRequest:
		return nil, v
	case *GetAllTimeLeaderboardRankingAdminV1Unauthorized:
		return nil, v
	case *GetAllTimeLeaderboardRankingAdminV1Forbidden:
		return nil, v
	case *GetAllTimeLeaderboardRankingAdminV1NotFound:
		return nil, v
	case *GetAllTimeLeaderboardRankingAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCurrentMonthLeaderboardRankingAdminV1Short instead.

GetCurrentMonthLeaderboardRankingAdminV1 get current month leaderboard ranking data


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get rankings in current month leaderboard.
*/
func (a *Client) GetCurrentMonthLeaderboardRankingAdminV1(params *GetCurrentMonthLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingAdminV1OK, *GetCurrentMonthLeaderboardRankingAdminV1BadRequest, *GetCurrentMonthLeaderboardRankingAdminV1Unauthorized, *GetCurrentMonthLeaderboardRankingAdminV1Forbidden, *GetCurrentMonthLeaderboardRankingAdminV1NotFound, *GetCurrentMonthLeaderboardRankingAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentMonthLeaderboardRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentMonthLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/month",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentMonthLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCurrentMonthLeaderboardRankingAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetCurrentMonthLeaderboardRankingAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetCurrentMonthLeaderboardRankingAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetCurrentMonthLeaderboardRankingAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetCurrentMonthLeaderboardRankingAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetCurrentMonthLeaderboardRankingAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentMonthLeaderboardRankingAdminV1Short get current month leaderboard ranking data


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get rankings in current month leaderboard.
*/
func (a *Client) GetCurrentMonthLeaderboardRankingAdminV1Short(params *GetCurrentMonthLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentMonthLeaderboardRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentMonthLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/month",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentMonthLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentMonthLeaderboardRankingAdminV1OK:
		return v, nil
	case *GetCurrentMonthLeaderboardRankingAdminV1BadRequest:
		return nil, v
	case *GetCurrentMonthLeaderboardRankingAdminV1Unauthorized:
		return nil, v
	case *GetCurrentMonthLeaderboardRankingAdminV1Forbidden:
		return nil, v
	case *GetCurrentMonthLeaderboardRankingAdminV1NotFound:
		return nil, v
	case *GetCurrentMonthLeaderboardRankingAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserRankingByLeaderboardCodeAdminV1Short instead.

DeleteUserRankingByLeaderboardCodeAdminV1 delete all user ranking by leaderboard code


[Test Facility Only]




Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint will delete user ranking by leaderboard code




Note: this endpoint only works on development environment.
*/
func (a *Client) DeleteUserRankingByLeaderboardCodeAdminV1(params *DeleteUserRankingByLeaderboardCodeAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV1NoContent, *DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized, *DeleteUserRankingByLeaderboardCodeAdminV1Forbidden, *DeleteUserRankingByLeaderboardCodeAdminV1NotFound, *DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingByLeaderboardCodeAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingByLeaderboardCodeAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingByLeaderboardCodeAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingByLeaderboardCodeAdminV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteUserRankingByLeaderboardCodeAdminV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteUserRankingByLeaderboardCodeAdminV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingByLeaderboardCodeAdminV1Short delete all user ranking by leaderboard code


 [Test Facility Only]




Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint will delete user ranking by leaderboard code




Note: this endpoint only works on development environment.
*/
func (a *Client) DeleteUserRankingByLeaderboardCodeAdminV1Short(params *DeleteUserRankingByLeaderboardCodeAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingByLeaderboardCodeAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingByLeaderboardCodeAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingByLeaderboardCodeAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingByLeaderboardCodeAdminV1NoContent:
		return v, nil
	case *DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized:
		return nil, v
	case *DeleteUserRankingByLeaderboardCodeAdminV1Forbidden:
		return nil, v
	case *DeleteUserRankingByLeaderboardCodeAdminV1NotFound:
		return nil, v
	case *DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCurrentSeasonLeaderboardRankingAdminV1Short instead.

GetCurrentSeasonLeaderboardRankingAdminV1 get current season leaderboard ranking data


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get rankings in current season leaderboard.
*/
func (a *Client) GetCurrentSeasonLeaderboardRankingAdminV1(params *GetCurrentSeasonLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingAdminV1OK, *GetCurrentSeasonLeaderboardRankingAdminV1BadRequest, *GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized, *GetCurrentSeasonLeaderboardRankingAdminV1Forbidden, *GetCurrentSeasonLeaderboardRankingAdminV1NotFound, *GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentSeasonLeaderboardRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentSeasonLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentSeasonLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCurrentSeasonLeaderboardRankingAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetCurrentSeasonLeaderboardRankingAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetCurrentSeasonLeaderboardRankingAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetCurrentSeasonLeaderboardRankingAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentSeasonLeaderboardRankingAdminV1Short get current season leaderboard ranking data


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get rankings in current season leaderboard.
*/
func (a *Client) GetCurrentSeasonLeaderboardRankingAdminV1Short(params *GetCurrentSeasonLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentSeasonLeaderboardRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentSeasonLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentSeasonLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentSeasonLeaderboardRankingAdminV1OK:
		return v, nil
	case *GetCurrentSeasonLeaderboardRankingAdminV1BadRequest:
		return nil, v
	case *GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized:
		return nil, v
	case *GetCurrentSeasonLeaderboardRankingAdminV1Forbidden:
		return nil, v
	case *GetCurrentSeasonLeaderboardRankingAdminV1NotFound:
		return nil, v
	case *GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetTodayLeaderboardRankingAdminV1Short instead.

GetTodayLeaderboardRankingAdminV1 get today leaderboard ranking data


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get rankings in today leaderboard.
*/
func (a *Client) GetTodayLeaderboardRankingAdminV1(params *GetTodayLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingAdminV1OK, *GetTodayLeaderboardRankingAdminV1BadRequest, *GetTodayLeaderboardRankingAdminV1Unauthorized, *GetTodayLeaderboardRankingAdminV1Forbidden, *GetTodayLeaderboardRankingAdminV1NotFound, *GetTodayLeaderboardRankingAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTodayLeaderboardRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetTodayLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/today",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTodayLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetTodayLeaderboardRankingAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetTodayLeaderboardRankingAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetTodayLeaderboardRankingAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetTodayLeaderboardRankingAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetTodayLeaderboardRankingAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetTodayLeaderboardRankingAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTodayLeaderboardRankingAdminV1Short get today leaderboard ranking data


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get rankings in today leaderboard.
*/
func (a *Client) GetTodayLeaderboardRankingAdminV1Short(params *GetTodayLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTodayLeaderboardRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetTodayLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/today",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTodayLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTodayLeaderboardRankingAdminV1OK:
		return v, nil
	case *GetTodayLeaderboardRankingAdminV1BadRequest:
		return nil, v
	case *GetTodayLeaderboardRankingAdminV1Unauthorized:
		return nil, v
	case *GetTodayLeaderboardRankingAdminV1Forbidden:
		return nil, v
	case *GetTodayLeaderboardRankingAdminV1NotFound:
		return nil, v
	case *GetTodayLeaderboardRankingAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserRankingAdminV1Short instead.

GetUserRankingAdminV1 get user ranking


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingAdminV1(params *GetUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV1OK, *GetUserRankingAdminV1Unauthorized, *GetUserRankingAdminV1Forbidden, *GetUserRankingAdminV1NotFound, *GetUserRankingAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingAdminV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetUserRankingAdminV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetUserRankingAdminV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetUserRankingAdminV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetUserRankingAdminV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserRankingAdminV1Short get user ranking


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingAdminV1Short(params *GetUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingAdminV1OK:
		return v, nil
	case *GetUserRankingAdminV1Unauthorized:
		return nil, v
	case *GetUserRankingAdminV1Forbidden:
		return nil, v
	case *GetUserRankingAdminV1NotFound:
		return nil, v
	case *GetUserRankingAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateUserPointAdminV1Short instead.

UpdateUserPointAdminV1 update user point


Update user point in a leaderboard. This endpoint uses for test utility only.




Other detail info:






  * Required permission: resource="ADMIN:NAMESPACE:{namespace}:USER:(userId):LEADERBOARD", action=4 (UPDATE)


  * Returns: user ranking
*/
func (a *Client) UpdateUserPointAdminV1(params *UpdateUserPointAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserPointAdminV1OK, *UpdateUserPointAdminV1BadRequest, *UpdateUserPointAdminV1Unauthorized, *UpdateUserPointAdminV1Forbidden, *UpdateUserPointAdminV1NotFound, *UpdateUserPointAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserPointAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateUserPointAdminV1",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserPointAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserPointAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateUserPointAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateUserPointAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateUserPointAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateUserPointAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateUserPointAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserPointAdminV1Short update user point


Update user point in a leaderboard. This endpoint uses for test utility only.




Other detail info:






  * Required permission: resource="ADMIN:NAMESPACE:{namespace}:USER:(userId):LEADERBOARD", action=4 (UPDATE)


  * Returns: user ranking
*/
func (a *Client) UpdateUserPointAdminV1Short(params *UpdateUserPointAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserPointAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserPointAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateUserPointAdminV1",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserPointAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserPointAdminV1OK:
		return v, nil
	case *UpdateUserPointAdminV1BadRequest:
		return nil, v
	case *UpdateUserPointAdminV1Unauthorized:
		return nil, v
	case *UpdateUserPointAdminV1Forbidden:
		return nil, v
	case *UpdateUserPointAdminV1NotFound:
		return nil, v
	case *UpdateUserPointAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserRankingAdminV1Short instead.

DeleteUserRankingAdminV1 delete user ranking
Delete user ranking
Required permission: ADMIN:NAMESPACE:{namespace}:LEADERBOARD:USER [DELETE]

Remove entry with provided userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingAdminV1(params *DeleteUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV1NoContent, *DeleteUserRankingAdminV1Unauthorized, *DeleteUserRankingAdminV1Forbidden, *DeleteUserRankingAdminV1NotFound, *DeleteUserRankingAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingAdminV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteUserRankingAdminV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteUserRankingAdminV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteUserRankingAdminV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteUserRankingAdminV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingAdminV1Short delete user ranking
Delete user ranking
Required permission: ADMIN:NAMESPACE:{namespace}:LEADERBOARD:USER [DELETE]

Remove entry with provided userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingAdminV1Short(params *DeleteUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingAdminV1NoContent:
		return v, nil
	case *DeleteUserRankingAdminV1Unauthorized:
		return nil, v
	case *DeleteUserRankingAdminV1Forbidden:
		return nil, v
	case *DeleteUserRankingAdminV1NotFound:
		return nil, v
	case *DeleteUserRankingAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCurrentWeekLeaderboardRankingAdminV1Short instead.

GetCurrentWeekLeaderboardRankingAdminV1 get current week leaderboard ranking data


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get rankings in current week leaderboard.
*/
func (a *Client) GetCurrentWeekLeaderboardRankingAdminV1(params *GetCurrentWeekLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingAdminV1OK, *GetCurrentWeekLeaderboardRankingAdminV1BadRequest, *GetCurrentWeekLeaderboardRankingAdminV1Unauthorized, *GetCurrentWeekLeaderboardRankingAdminV1Forbidden, *GetCurrentWeekLeaderboardRankingAdminV1NotFound, *GetCurrentWeekLeaderboardRankingAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentWeekLeaderboardRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentWeekLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/week",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentWeekLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCurrentWeekLeaderboardRankingAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetCurrentWeekLeaderboardRankingAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetCurrentWeekLeaderboardRankingAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetCurrentWeekLeaderboardRankingAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetCurrentWeekLeaderboardRankingAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetCurrentWeekLeaderboardRankingAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentWeekLeaderboardRankingAdminV1Short get current week leaderboard ranking data


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




Get rankings in current week leaderboard.
*/
func (a *Client) GetCurrentWeekLeaderboardRankingAdminV1Short(params *GetCurrentWeekLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentWeekLeaderboardRankingAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentWeekLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/week",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentWeekLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentWeekLeaderboardRankingAdminV1OK:
		return v, nil
	case *GetCurrentWeekLeaderboardRankingAdminV1BadRequest:
		return nil, v
	case *GetCurrentWeekLeaderboardRankingAdminV1Unauthorized:
		return nil, v
	case *GetCurrentWeekLeaderboardRankingAdminV1Forbidden:
		return nil, v
	case *GetCurrentWeekLeaderboardRankingAdminV1NotFound:
		return nil, v
	case *GetCurrentWeekLeaderboardRankingAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserRankingsAdminV1Short instead.

DeleteUserRankingsAdminV1 delete user ranking across leaderboard(s)
Delete user ranking across leaderboard
Required permission: ADMIN:NAMESPACE:{namespace}:LEADERBOARD:USER [DELETE]

Remove entry with provided userId from leaderboard.
*/
func (a *Client) DeleteUserRankingsAdminV1(params *DeleteUserRankingsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV1NoContent, *DeleteUserRankingsAdminV1Unauthorized, *DeleteUserRankingsAdminV1Forbidden, *DeleteUserRankingsAdminV1NotFound, *DeleteUserRankingsAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingsAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingsAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingsAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingsAdminV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteUserRankingsAdminV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteUserRankingsAdminV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteUserRankingsAdminV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteUserRankingsAdminV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingsAdminV1Short delete user ranking across leaderboard(s)
Delete user ranking across leaderboard
Required permission: ADMIN:NAMESPACE:{namespace}:LEADERBOARD:USER [DELETE]

Remove entry with provided userId from leaderboard.
*/
func (a *Client) DeleteUserRankingsAdminV1Short(params *DeleteUserRankingsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingsAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingsAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingsAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingsAdminV1NoContent:
		return v, nil
	case *DeleteUserRankingsAdminV1Unauthorized:
		return nil, v
	case *DeleteUserRankingsAdminV1Forbidden:
		return nil, v
	case *DeleteUserRankingsAdminV1NotFound:
		return nil, v
	case *DeleteUserRankingsAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAllTimeLeaderboardRankingPublicV1Short instead.

GetAllTimeLeaderboardRankingPublicV1 get all time leaderboard ranking data


Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingPublicV1(params *GetAllTimeLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV1OK, *GetAllTimeLeaderboardRankingPublicV1BadRequest, *GetAllTimeLeaderboardRankingPublicV1NotFound, *GetAllTimeLeaderboardRankingPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllTimeLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingPublicV1OK:
		return v, nil, nil, nil, nil

	case *GetAllTimeLeaderboardRankingPublicV1BadRequest:
		return nil, v, nil, nil, nil

	case *GetAllTimeLeaderboardRankingPublicV1NotFound:
		return nil, nil, v, nil, nil

	case *GetAllTimeLeaderboardRankingPublicV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllTimeLeaderboardRankingPublicV1Short get all time leaderboard ranking data


Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingPublicV1Short(params *GetAllTimeLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllTimeLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingPublicV1OK:
		return v, nil
	case *GetAllTimeLeaderboardRankingPublicV1BadRequest:
		return nil, v
	case *GetAllTimeLeaderboardRankingPublicV1NotFound:
		return nil, v
	case *GetAllTimeLeaderboardRankingPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetArchivedLeaderboardRankingDataV1HandlerShort instead.

GetArchivedLeaderboardRankingDataV1Handler get signed url for archive all time leaderboard ranking data


Get signed url in an all time leaderboard that archived. NOTE: This will be a bulk endpoint to get sign url
*/
func (a *Client) GetArchivedLeaderboardRankingDataV1Handler(params *GetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetArchivedLeaderboardRankingDataV1HandlerOK, *GetArchivedLeaderboardRankingDataV1HandlerBadRequest, *GetArchivedLeaderboardRankingDataV1HandlerUnauthorized, *GetArchivedLeaderboardRankingDataV1HandlerForbidden, *GetArchivedLeaderboardRankingDataV1HandlerNotFound, *GetArchivedLeaderboardRankingDataV1HandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetArchivedLeaderboardRankingDataV1HandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetArchivedLeaderboardRankingDataV1Handler",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetArchivedLeaderboardRankingDataV1HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetArchivedLeaderboardRankingDataV1HandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetArchivedLeaderboardRankingDataV1HandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetArchivedLeaderboardRankingDataV1HandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetArchivedLeaderboardRankingDataV1HandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetArchivedLeaderboardRankingDataV1HandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetArchivedLeaderboardRankingDataV1HandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetArchivedLeaderboardRankingDataV1HandlerShort get signed url for archive all time leaderboard ranking data


Get signed url in an all time leaderboard that archived. NOTE: This will be a bulk endpoint to get sign url
*/
func (a *Client) GetArchivedLeaderboardRankingDataV1HandlerShort(params *GetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetArchivedLeaderboardRankingDataV1HandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetArchivedLeaderboardRankingDataV1HandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetArchivedLeaderboardRankingDataV1Handler",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetArchivedLeaderboardRankingDataV1HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetArchivedLeaderboardRankingDataV1HandlerOK:
		return v, nil
	case *GetArchivedLeaderboardRankingDataV1HandlerBadRequest:
		return nil, v
	case *GetArchivedLeaderboardRankingDataV1HandlerUnauthorized:
		return nil, v
	case *GetArchivedLeaderboardRankingDataV1HandlerForbidden:
		return nil, v
	case *GetArchivedLeaderboardRankingDataV1HandlerNotFound:
		return nil, v
	case *GetArchivedLeaderboardRankingDataV1HandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCurrentMonthLeaderboardRankingPublicV1Short instead.

GetCurrentMonthLeaderboardRankingPublicV1 get current month leaderboard ranking data


Get rankings in current month leaderboard.
*/
func (a *Client) GetCurrentMonthLeaderboardRankingPublicV1(params *GetCurrentMonthLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingPublicV1OK, *GetCurrentMonthLeaderboardRankingPublicV1BadRequest, *GetCurrentMonthLeaderboardRankingPublicV1NotFound, *GetCurrentMonthLeaderboardRankingPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentMonthLeaderboardRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentMonthLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/month",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentMonthLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCurrentMonthLeaderboardRankingPublicV1OK:
		return v, nil, nil, nil, nil

	case *GetCurrentMonthLeaderboardRankingPublicV1BadRequest:
		return nil, v, nil, nil, nil

	case *GetCurrentMonthLeaderboardRankingPublicV1NotFound:
		return nil, nil, v, nil, nil

	case *GetCurrentMonthLeaderboardRankingPublicV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentMonthLeaderboardRankingPublicV1Short get current month leaderboard ranking data


Get rankings in current month leaderboard.
*/
func (a *Client) GetCurrentMonthLeaderboardRankingPublicV1Short(params *GetCurrentMonthLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentMonthLeaderboardRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentMonthLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/month",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentMonthLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentMonthLeaderboardRankingPublicV1OK:
		return v, nil
	case *GetCurrentMonthLeaderboardRankingPublicV1BadRequest:
		return nil, v
	case *GetCurrentMonthLeaderboardRankingPublicV1NotFound:
		return nil, v
	case *GetCurrentMonthLeaderboardRankingPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCurrentSeasonLeaderboardRankingPublicV1Short instead.

GetCurrentSeasonLeaderboardRankingPublicV1 get current season leaderboard ranking data


Get rankings in current season leaderboard.
*/
func (a *Client) GetCurrentSeasonLeaderboardRankingPublicV1(params *GetCurrentSeasonLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingPublicV1OK, *GetCurrentSeasonLeaderboardRankingPublicV1BadRequest, *GetCurrentSeasonLeaderboardRankingPublicV1NotFound, *GetCurrentSeasonLeaderboardRankingPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentSeasonLeaderboardRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentSeasonLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/season",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentSeasonLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCurrentSeasonLeaderboardRankingPublicV1OK:
		return v, nil, nil, nil, nil

	case *GetCurrentSeasonLeaderboardRankingPublicV1BadRequest:
		return nil, v, nil, nil, nil

	case *GetCurrentSeasonLeaderboardRankingPublicV1NotFound:
		return nil, nil, v, nil, nil

	case *GetCurrentSeasonLeaderboardRankingPublicV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentSeasonLeaderboardRankingPublicV1Short get current season leaderboard ranking data


Get rankings in current season leaderboard.
*/
func (a *Client) GetCurrentSeasonLeaderboardRankingPublicV1Short(params *GetCurrentSeasonLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentSeasonLeaderboardRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentSeasonLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/season",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentSeasonLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentSeasonLeaderboardRankingPublicV1OK:
		return v, nil
	case *GetCurrentSeasonLeaderboardRankingPublicV1BadRequest:
		return nil, v
	case *GetCurrentSeasonLeaderboardRankingPublicV1NotFound:
		return nil, v
	case *GetCurrentSeasonLeaderboardRankingPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetTodayLeaderboardRankingPublicV1Short instead.

GetTodayLeaderboardRankingPublicV1 get today leaderboard ranking data


Get rankings in today leaderboard.
*/
func (a *Client) GetTodayLeaderboardRankingPublicV1(params *GetTodayLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingPublicV1OK, *GetTodayLeaderboardRankingPublicV1BadRequest, *GetTodayLeaderboardRankingPublicV1NotFound, *GetTodayLeaderboardRankingPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTodayLeaderboardRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetTodayLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/today",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTodayLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetTodayLeaderboardRankingPublicV1OK:
		return v, nil, nil, nil, nil

	case *GetTodayLeaderboardRankingPublicV1BadRequest:
		return nil, v, nil, nil, nil

	case *GetTodayLeaderboardRankingPublicV1NotFound:
		return nil, nil, v, nil, nil

	case *GetTodayLeaderboardRankingPublicV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTodayLeaderboardRankingPublicV1Short get today leaderboard ranking data


Get rankings in today leaderboard.
*/
func (a *Client) GetTodayLeaderboardRankingPublicV1Short(params *GetTodayLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTodayLeaderboardRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetTodayLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/today",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTodayLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTodayLeaderboardRankingPublicV1OK:
		return v, nil
	case *GetTodayLeaderboardRankingPublicV1BadRequest:
		return nil, v
	case *GetTodayLeaderboardRankingPublicV1NotFound:
		return nil, v
	case *GetTodayLeaderboardRankingPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserRankingPublicV1Short instead.

GetUserRankingPublicV1 get user ranking


Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingPublicV1(params *GetUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV1OK, *GetUserRankingPublicV1Unauthorized, *GetUserRankingPublicV1Forbidden, *GetUserRankingPublicV1NotFound, *GetUserRankingPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingPublicV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetUserRankingPublicV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetUserRankingPublicV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetUserRankingPublicV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetUserRankingPublicV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserRankingPublicV1Short get user ranking


Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingPublicV1Short(params *GetUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingPublicV1OK:
		return v, nil
	case *GetUserRankingPublicV1Unauthorized:
		return nil, v
	case *GetUserRankingPublicV1Forbidden:
		return nil, v
	case *GetUserRankingPublicV1NotFound:
		return nil, v
	case *GetUserRankingPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserRankingPublicV1Short instead.

DeleteUserRankingPublicV1 delete user ranking
Delete user ranking
Required permission: NAMESPACE:{namespace}:LEADERBOARD:USER:{userId} [DELETE]

Remove entry with provided userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingPublicV1(params *DeleteUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingPublicV1NoContent, *DeleteUserRankingPublicV1Unauthorized, *DeleteUserRankingPublicV1Forbidden, *DeleteUserRankingPublicV1NotFound, *DeleteUserRankingPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingPublicV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingPublicV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteUserRankingPublicV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteUserRankingPublicV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteUserRankingPublicV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteUserRankingPublicV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingPublicV1Short delete user ranking
Delete user ranking
Required permission: NAMESPACE:{namespace}:LEADERBOARD:USER:{userId} [DELETE]

Remove entry with provided userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingPublicV1Short(params *DeleteUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingPublicV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserRankingPublicV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingPublicV1NoContent:
		return v, nil
	case *DeleteUserRankingPublicV1Unauthorized:
		return nil, v
	case *DeleteUserRankingPublicV1Forbidden:
		return nil, v
	case *DeleteUserRankingPublicV1NotFound:
		return nil, v
	case *DeleteUserRankingPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCurrentWeekLeaderboardRankingPublicV1Short instead.

GetCurrentWeekLeaderboardRankingPublicV1 get current week leaderboard ranking data


Get rankings in current week leaderboard.
*/
func (a *Client) GetCurrentWeekLeaderboardRankingPublicV1(params *GetCurrentWeekLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingPublicV1OK, *GetCurrentWeekLeaderboardRankingPublicV1BadRequest, *GetCurrentWeekLeaderboardRankingPublicV1NotFound, *GetCurrentWeekLeaderboardRankingPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentWeekLeaderboardRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentWeekLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/week",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentWeekLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCurrentWeekLeaderboardRankingPublicV1OK:
		return v, nil, nil, nil, nil

	case *GetCurrentWeekLeaderboardRankingPublicV1BadRequest:
		return nil, v, nil, nil, nil

	case *GetCurrentWeekLeaderboardRankingPublicV1NotFound:
		return nil, nil, v, nil, nil

	case *GetCurrentWeekLeaderboardRankingPublicV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentWeekLeaderboardRankingPublicV1Short get current week leaderboard ranking data


Get rankings in current week leaderboard.
*/
func (a *Client) GetCurrentWeekLeaderboardRankingPublicV1Short(params *GetCurrentWeekLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentWeekLeaderboardRankingPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCurrentWeekLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/week",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentWeekLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentWeekLeaderboardRankingPublicV1OK:
		return v, nil
	case *GetCurrentWeekLeaderboardRankingPublicV1BadRequest:
		return nil, v
	case *GetCurrentWeekLeaderboardRankingPublicV1NotFound:
		return nil, v
	case *GetCurrentWeekLeaderboardRankingPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAllTimeLeaderboardRankingPublicV2Short instead.

GetAllTimeLeaderboardRankingPublicV2 get all time leaderboard ranking data
Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingPublicV2(params *GetAllTimeLeaderboardRankingPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV2OK, *GetAllTimeLeaderboardRankingPublicV2BadRequest, *GetAllTimeLeaderboardRankingPublicV2Unauthorized, *GetAllTimeLeaderboardRankingPublicV2Forbidden, *GetAllTimeLeaderboardRankingPublicV2NotFound, *GetAllTimeLeaderboardRankingPublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllTimeLeaderboardRankingPublicV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingPublicV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetAllTimeLeaderboardRankingPublicV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetAllTimeLeaderboardRankingPublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetAllTimeLeaderboardRankingPublicV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetAllTimeLeaderboardRankingPublicV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetAllTimeLeaderboardRankingPublicV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllTimeLeaderboardRankingPublicV2Short get all time leaderboard ranking data
Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingPublicV2Short(params *GetAllTimeLeaderboardRankingPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllTimeLeaderboardRankingPublicV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingPublicV2OK:
		return v, nil
	case *GetAllTimeLeaderboardRankingPublicV2BadRequest:
		return nil, v
	case *GetAllTimeLeaderboardRankingPublicV2Unauthorized:
		return nil, v
	case *GetAllTimeLeaderboardRankingPublicV2Forbidden:
		return nil, v
	case *GetAllTimeLeaderboardRankingPublicV2NotFound:
		return nil, v
	case *GetAllTimeLeaderboardRankingPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
