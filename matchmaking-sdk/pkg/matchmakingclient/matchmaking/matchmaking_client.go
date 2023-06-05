// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package matchmaking

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new matchmaking API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for matchmaking API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAllChannelsHandler(params *GetAllChannelsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllChannelsHandlerOK, *GetAllChannelsHandlerBadRequest, *GetAllChannelsHandlerUnauthorized, *GetAllChannelsHandlerForbidden, *GetAllChannelsHandlerConflict, *GetAllChannelsHandlerInternalServerError, error)
	GetAllChannelsHandlerShort(params *GetAllChannelsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllChannelsHandlerOK, error)
	CreateChannelHandler(params *CreateChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelHandlerCreated, *CreateChannelHandlerBadRequest, *CreateChannelHandlerUnauthorized, *CreateChannelHandlerForbidden, *CreateChannelHandlerConflict, *CreateChannelHandlerInternalServerError, error)
	CreateChannelHandlerShort(params *CreateChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelHandlerCreated, error)
	GetMatchPoolMetric(params *GetMatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetMatchPoolMetricOK, *GetMatchPoolMetricUnauthorized, *GetMatchPoolMetricForbidden, *GetMatchPoolMetricNotFound, *GetMatchPoolMetricInternalServerError, error)
	GetMatchPoolMetricShort(params *GetMatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetMatchPoolMetricOK, error)
	DeleteChannelHandler(params *DeleteChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelHandlerNoContent, *DeleteChannelHandlerUnauthorized, *DeleteChannelHandlerForbidden, *DeleteChannelHandlerInternalServerError, error)
	DeleteChannelHandlerShort(params *DeleteChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelHandlerNoContent, error)
	StoreMatchResults(params *StoreMatchResultsParams, authInfo runtime.ClientAuthInfoWriter) (*StoreMatchResultsOK, *StoreMatchResultsBadRequest, *StoreMatchResultsUnauthorized, *StoreMatchResultsForbidden, *StoreMatchResultsInternalServerError, error)
	StoreMatchResultsShort(params *StoreMatchResultsParams, authInfo runtime.ClientAuthInfoWriter) (*StoreMatchResultsOK, error)
	Rebalance(params *RebalanceParams, authInfo runtime.ClientAuthInfoWriter) (*RebalanceOK, *RebalanceBadRequest, *RebalanceUnauthorized, *RebalanceForbidden, *RebalanceNotFound, *RebalanceInternalServerError, error)
	RebalanceShort(params *RebalanceParams, authInfo runtime.ClientAuthInfoWriter) (*RebalanceOK, error)
	QueueSessionHandler(params *QueueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueueSessionHandlerNoContent, *QueueSessionHandlerBadRequest, *QueueSessionHandlerUnauthorized, *QueueSessionHandlerForbidden, *QueueSessionHandlerInternalServerError, error)
	QueueSessionHandlerShort(params *QueueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueueSessionHandlerNoContent, error)
	DequeueSessionHandler(params *DequeueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DequeueSessionHandlerNoContent, *DequeueSessionHandlerBadRequest, *DequeueSessionHandlerUnauthorized, *DequeueSessionHandlerForbidden, *DequeueSessionHandlerNotFound, *DequeueSessionHandlerInternalServerError, error)
	DequeueSessionHandlerShort(params *DequeueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DequeueSessionHandlerNoContent, error)
	QuerySessionHandler(params *QuerySessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySessionHandlerOK, *QuerySessionHandlerBadRequest, *QuerySessionHandlerUnauthorized, *QuerySessionHandlerForbidden, *QuerySessionHandlerNotFound, *QuerySessionHandlerInternalServerError, error)
	QuerySessionHandlerShort(params *QuerySessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySessionHandlerOK, error)
	GetAllPartyInAllChannel(params *GetAllPartyInAllChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInAllChannelOK, *GetAllPartyInAllChannelBadRequest, *GetAllPartyInAllChannelUnauthorized, *GetAllPartyInAllChannelForbidden, *GetAllPartyInAllChannelNotFound, *GetAllPartyInAllChannelInternalServerError, error)
	GetAllPartyInAllChannelShort(params *GetAllPartyInAllChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInAllChannelOK, error)
	BulkGetSessions(params *BulkGetSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetSessionsOK, *BulkGetSessionsBadRequest, *BulkGetSessionsUnauthorized, *BulkGetSessionsForbidden, *BulkGetSessionsNotFound, *BulkGetSessionsInternalServerError, error)
	BulkGetSessionsShort(params *BulkGetSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetSessionsOK, error)
	ExportChannels(params *ExportChannelsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportChannelsOK, *ExportChannelsUnauthorized, *ExportChannelsForbidden, *ExportChannelsInternalServerError, error)
	ExportChannelsShort(params *ExportChannelsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportChannelsOK, error)
	ImportChannels(params *ImportChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportChannelsOK, *ImportChannelsBadRequest, *ImportChannelsUnauthorized, *ImportChannelsForbidden, *ImportChannelsInternalServerError, error)
	ImportChannelsShort(params *ImportChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportChannelsOK, error)
	GetSingleMatchmakingChannel(params *GetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleMatchmakingChannelOK, *GetSingleMatchmakingChannelBadRequest, *GetSingleMatchmakingChannelUnauthorized, *GetSingleMatchmakingChannelForbidden, *GetSingleMatchmakingChannelNotFound, *GetSingleMatchmakingChannelInternalServerError, error)
	GetSingleMatchmakingChannelShort(params *GetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleMatchmakingChannelOK, error)
	UpdateMatchmakingChannel(params *UpdateMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchmakingChannelNoContent, *UpdateMatchmakingChannelBadRequest, *UpdateMatchmakingChannelUnauthorized, *UpdateMatchmakingChannelForbidden, *UpdateMatchmakingChannelNotFound, *UpdateMatchmakingChannelInternalServerError, error)
	UpdateMatchmakingChannelShort(params *UpdateMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchmakingChannelNoContent, error)
	GetAllPartyInChannel(params *GetAllPartyInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInChannelOK, *GetAllPartyInChannelBadRequest, *GetAllPartyInChannelUnauthorized, *GetAllPartyInChannelForbidden, *GetAllPartyInChannelNotFound, *GetAllPartyInChannelInternalServerError, error)
	GetAllPartyInChannelShort(params *GetAllPartyInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInChannelOK, error)
	GetAllSessionsInChannel(params *GetAllSessionsInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllSessionsInChannelOK, *GetAllSessionsInChannelBadRequest, *GetAllSessionsInChannelUnauthorized, *GetAllSessionsInChannelForbidden, *GetAllSessionsInChannelNotFound, *GetAllSessionsInChannelInternalServerError, error)
	GetAllSessionsInChannelShort(params *GetAllSessionsInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllSessionsInChannelOK, error)
	AddUserIntoSessionInChannel(params *AddUserIntoSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserIntoSessionInChannelOK, *AddUserIntoSessionInChannelBadRequest, *AddUserIntoSessionInChannelUnauthorized, *AddUserIntoSessionInChannelForbidden, *AddUserIntoSessionInChannelNotFound, *AddUserIntoSessionInChannelInternalServerError, error)
	AddUserIntoSessionInChannelShort(params *AddUserIntoSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserIntoSessionInChannelOK, error)
	DeleteSessionInChannel(params *DeleteSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionInChannelNoContent, *DeleteSessionInChannelBadRequest, *DeleteSessionInChannelUnauthorized, *DeleteSessionInChannelForbidden, *DeleteSessionInChannelNotFound, *DeleteSessionInChannelInternalServerError, error)
	DeleteSessionInChannelShort(params *DeleteSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionInChannelNoContent, error)
	DeleteUserFromSessionInChannel(params *DeleteUserFromSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserFromSessionInChannelOK, *DeleteUserFromSessionInChannelNoContent, *DeleteUserFromSessionInChannelBadRequest, *DeleteUserFromSessionInChannelUnauthorized, *DeleteUserFromSessionInChannelForbidden, *DeleteUserFromSessionInChannelNotFound, *DeleteUserFromSessionInChannelInternalServerError, error)
	DeleteUserFromSessionInChannelShort(params *DeleteUserFromSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserFromSessionInChannelOK, error)
	GetStatData(params *GetStatDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatDataOK, *GetStatDataBadRequest, *GetStatDataUnauthorized, *GetStatDataForbidden, *GetStatDataNotFound, *GetStatDataInternalServerError, error)
	GetStatDataShort(params *GetStatDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatDataOK, error)
	SearchSessions(params *SearchSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsOK, *SearchSessionsBadRequest, *SearchSessionsUnauthorized, *SearchSessionsForbidden, *SearchSessionsNotFound, *SearchSessionsInternalServerError, error)
	SearchSessionsShort(params *SearchSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsOK, error)
	GetSessionHistoryDetailed(params *GetSessionHistoryDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionHistoryDetailedOK, *GetSessionHistoryDetailedBadRequest, *GetSessionHistoryDetailedUnauthorized, *GetSessionHistoryDetailedForbidden, *GetSessionHistoryDetailedNotFound, *GetSessionHistoryDetailedInternalServerError, error)
	GetSessionHistoryDetailedShort(params *GetSessionHistoryDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionHistoryDetailedOK, error)
	PublicGetAllMatchmakingChannel(params *PublicGetAllMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAllMatchmakingChannelOK, *PublicGetAllMatchmakingChannelBadRequest, *PublicGetAllMatchmakingChannelUnauthorized, *PublicGetAllMatchmakingChannelForbidden, *PublicGetAllMatchmakingChannelConflict, *PublicGetAllMatchmakingChannelInternalServerError, error)
	PublicGetAllMatchmakingChannelShort(params *PublicGetAllMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAllMatchmakingChannelOK, error)
	PublicGetSingleMatchmakingChannel(params *PublicGetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetSingleMatchmakingChannelOK, *PublicGetSingleMatchmakingChannelBadRequest, *PublicGetSingleMatchmakingChannelUnauthorized, *PublicGetSingleMatchmakingChannelForbidden, *PublicGetSingleMatchmakingChannelNotFound, *PublicGetSingleMatchmakingChannelInternalServerError, error)
	PublicGetSingleMatchmakingChannelShort(params *PublicGetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetSingleMatchmakingChannelOK, error)
	SearchSessionsV2(params *SearchSessionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsV2OK, *SearchSessionsV2BadRequest, *SearchSessionsV2Unauthorized, *SearchSessionsV2Forbidden, *SearchSessionsV2NotFound, *SearchSessionsV2InternalServerError, error)
	SearchSessionsV2Short(params *SearchSessionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetAllChannelsHandlerShort instead.

GetAllChannelsHandler get all channels
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [READ]

Required Scope: social

Reads all available channels in a namespace
*/
func (a *Client) GetAllChannelsHandler(params *GetAllChannelsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllChannelsHandlerOK, *GetAllChannelsHandlerBadRequest, *GetAllChannelsHandlerUnauthorized, *GetAllChannelsHandlerForbidden, *GetAllChannelsHandlerConflict, *GetAllChannelsHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllChannelsHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllChannelsHandler",
		Method:             "GET",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllChannelsHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllChannelsHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetAllChannelsHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetAllChannelsHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetAllChannelsHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetAllChannelsHandlerConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *GetAllChannelsHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllChannelsHandlerShort get all channels
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [READ]

Required Scope: social

Reads all available channels in a namespace
*/
func (a *Client) GetAllChannelsHandlerShort(params *GetAllChannelsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllChannelsHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllChannelsHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllChannelsHandler",
		Method:             "GET",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllChannelsHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllChannelsHandlerOK:
		return v, nil
	case *GetAllChannelsHandlerBadRequest:
		return nil, v
	case *GetAllChannelsHandlerUnauthorized:
		return nil, v
	case *GetAllChannelsHandlerForbidden:
		return nil, v
	case *GetAllChannelsHandlerConflict:
		return nil, v
	case *GetAllChannelsHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateChannelHandlerShort instead.

CreateChannelHandler create a channel
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [CREATE]

Required Scope: social

Creates a new matchmaking channel.

Matchmaking channels is a list of pool name that is eligible for matchmaking processes.
GameMode isolates each matchmaking pools.

If match timeout is set to 0, by default, incoming matchmaking requests will be timed out after 1 hour.

If max worker delay is set to 0, by default, it will wait for at max ~8 seconds during low volume.

Rule Set

Matching Rule used to classify the player. Player that has matched criteria will be grouped together within an ally.

Valid value for criteria is "distance"
*/
func (a *Client) CreateChannelHandler(params *CreateChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelHandlerCreated, *CreateChannelHandlerBadRequest, *CreateChannelHandlerUnauthorized, *CreateChannelHandlerForbidden, *CreateChannelHandlerConflict, *CreateChannelHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateChannelHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateChannelHandler",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateChannelHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateChannelHandlerCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateChannelHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateChannelHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateChannelHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateChannelHandlerConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateChannelHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateChannelHandlerShort create a channel
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [CREATE]

Required Scope: social

Creates a new matchmaking channel.

Matchmaking channels is a list of pool name that is eligible for matchmaking processes.
GameMode isolates each matchmaking pools.

If match timeout is set to 0, by default, incoming matchmaking requests will be timed out after 1 hour.

If max worker delay is set to 0, by default, it will wait for at max ~8 seconds during low volume.

Rule Set

Matching Rule used to classify the player. Player that has matched criteria will be grouped together within an ally.

Valid value for criteria is "distance"
*/
func (a *Client) CreateChannelHandlerShort(params *CreateChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelHandlerCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateChannelHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateChannelHandler",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateChannelHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateChannelHandlerCreated:
		return v, nil
	case *CreateChannelHandlerBadRequest:
		return nil, v
	case *CreateChannelHandlerUnauthorized:
		return nil, v
	case *CreateChannelHandlerForbidden:
		return nil, v
	case *CreateChannelHandlerConflict:
		return nil, v
	case *CreateChannelHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetMatchPoolMetricShort instead.

GetMatchPoolMetric get metrics for a specific channel
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:CHANNEL:METRICS [READ]

Required Scope: social

Get metric for a specific match pool

Result: queue_time in seconds
*/
func (a *Client) GetMatchPoolMetric(params *GetMatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetMatchPoolMetricOK, *GetMatchPoolMetricUnauthorized, *GetMatchPoolMetricForbidden, *GetMatchPoolMetricNotFound, *GetMatchPoolMetricInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMatchPoolMetricParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetMatchPoolMetric",
		Method:             "GET",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels/{channelName}/metrics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMatchPoolMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetMatchPoolMetricOK:
		return v, nil, nil, nil, nil, nil

	case *GetMatchPoolMetricUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetMatchPoolMetricForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetMatchPoolMetricNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetMatchPoolMetricInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMatchPoolMetricShort get metrics for a specific channel
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:CHANNEL:METRICS [READ]

Required Scope: social

Get metric for a specific match pool

Result: queue_time in seconds
*/
func (a *Client) GetMatchPoolMetricShort(params *GetMatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetMatchPoolMetricOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMatchPoolMetricParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetMatchPoolMetric",
		Method:             "GET",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels/{channelName}/metrics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMatchPoolMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMatchPoolMetricOK:
		return v, nil
	case *GetMatchPoolMetricUnauthorized:
		return nil, v
	case *GetMatchPoolMetricForbidden:
		return nil, v
	case *GetMatchPoolMetricNotFound:
		return nil, v
	case *GetMatchPoolMetricInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteChannelHandlerShort instead.

DeleteChannelHandler delete a channel
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Delete]

Required Scope: social

Deletes a matchmaking channel. Matchmaking channels is a list of
pool name that is eligible for matchmaking processes. GameMode isolates each matchmaking pools.

Trying to delete non-existent channel will result deletion success
*/
func (a *Client) DeleteChannelHandler(params *DeleteChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelHandlerNoContent, *DeleteChannelHandlerUnauthorized, *DeleteChannelHandlerForbidden, *DeleteChannelHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteChannelHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteChannelHandler",
		Method:             "DELETE",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels/{channel}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteChannelHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteChannelHandlerNoContent:
		return v, nil, nil, nil, nil

	case *DeleteChannelHandlerUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteChannelHandlerForbidden:
		return nil, nil, v, nil, nil

	case *DeleteChannelHandlerInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteChannelHandlerShort delete a channel
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Delete]

Required Scope: social

Deletes a matchmaking channel. Matchmaking channels is a list of
pool name that is eligible for matchmaking processes. GameMode isolates each matchmaking pools.

Trying to delete non-existent channel will result deletion success
*/
func (a *Client) DeleteChannelHandlerShort(params *DeleteChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelHandlerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteChannelHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteChannelHandler",
		Method:             "DELETE",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels/{channel}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteChannelHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteChannelHandlerNoContent:
		return v, nil
	case *DeleteChannelHandlerUnauthorized:
		return nil, v
	case *DeleteChannelHandlerForbidden:
		return nil, v
	case *DeleteChannelHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use StoreMatchResultsShort instead.

StoreMatchResults store match result
Required Permission: NAMESPACE:{namespace}:MATCHRESULT [CREATE]

Required Scope: social

Process match result into final attribute value and stores it to player attribute

Will return final attribute value
*/
func (a *Client) StoreMatchResults(params *StoreMatchResultsParams, authInfo runtime.ClientAuthInfoWriter) (*StoreMatchResultsOK, *StoreMatchResultsBadRequest, *StoreMatchResultsUnauthorized, *StoreMatchResultsForbidden, *StoreMatchResultsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStoreMatchResultsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "StoreMatchResults",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/matchresult",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StoreMatchResultsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *StoreMatchResultsOK:
		return v, nil, nil, nil, nil, nil

	case *StoreMatchResultsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *StoreMatchResultsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *StoreMatchResultsForbidden:
		return nil, nil, nil, v, nil, nil

	case *StoreMatchResultsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StoreMatchResultsShort store match result
Required Permission: NAMESPACE:{namespace}:MATCHRESULT [CREATE]

Required Scope: social

Process match result into final attribute value and stores it to player attribute

Will return final attribute value
*/
func (a *Client) StoreMatchResultsShort(params *StoreMatchResultsParams, authInfo runtime.ClientAuthInfoWriter) (*StoreMatchResultsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStoreMatchResultsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "StoreMatchResults",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/matchresult",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StoreMatchResultsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StoreMatchResultsOK:
		return v, nil
	case *StoreMatchResultsBadRequest:
		return nil, v
	case *StoreMatchResultsUnauthorized:
		return nil, v
	case *StoreMatchResultsForbidden:
		return nil, v
	case *StoreMatchResultsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RebalanceShort instead.

Rebalance rebalance matchmaking based on mmr
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:REBALANCE [Update]

Required Scope: social

Do rebalance the teams based on MMR from given matchID,
consider attribute name "mmr" (case-insensitive),
or any first attribute with criteria "distance"

Will return rebalanced mm result
*/
func (a *Client) Rebalance(params *RebalanceParams, authInfo runtime.ClientAuthInfoWriter) (*RebalanceOK, *RebalanceBadRequest, *RebalanceUnauthorized, *RebalanceForbidden, *RebalanceNotFound, *RebalanceInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRebalanceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Rebalance",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/rebalance",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RebalanceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RebalanceOK:
		return v, nil, nil, nil, nil, nil, nil

	case *RebalanceBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *RebalanceUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *RebalanceForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *RebalanceNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *RebalanceInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RebalanceShort rebalance matchmaking based on mmr
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:REBALANCE [Update]

Required Scope: social

Do rebalance the teams based on MMR from given matchID,
consider attribute name "mmr" (case-insensitive),
or any first attribute with criteria "distance"

Will return rebalanced mm result
*/
func (a *Client) RebalanceShort(params *RebalanceParams, authInfo runtime.ClientAuthInfoWriter) (*RebalanceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRebalanceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Rebalance",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/rebalance",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RebalanceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RebalanceOK:
		return v, nil
	case *RebalanceBadRequest:
		return nil, v
	case *RebalanceUnauthorized:
		return nil, v
	case *RebalanceForbidden:
		return nil, v
	case *RebalanceNotFound:
		return nil, v
	case *RebalanceInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueueSessionHandlerShort instead.

QueueSessionHandler queue joinable session
Required Permission: NAMESPACE:{namespace}:SESSION [CREATE]

Required Scope: social

Queues joinable session so that it will be matched with player's match request tickets.
The session queued must be in a channel/game mode that is set to have joinable flag.
The session will be in queue until it is full or expired.
Both the number of players and session queue timeout can be set in the channel's config.

This endpoint is intended to be called by game server to let matchmaker know that
the game server is ready for receiving more players through matchmaking tickets to its session.

If a session is already queued, and game server wants to modify the data or
renew the queue timeout (e.g. some player left and more empty slot opened up),
simply call this endpoint with the updated session data.
*/
func (a *Client) QueueSessionHandler(params *QueueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueueSessionHandlerNoContent, *QueueSessionHandlerBadRequest, *QueueSessionHandlerUnauthorized, *QueueSessionHandlerForbidden, *QueueSessionHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueueSessionHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "QueueSessionHandler",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/sessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueueSessionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueueSessionHandlerNoContent:
		return v, nil, nil, nil, nil, nil

	case *QueueSessionHandlerBadRequest:
		return nil, v, nil, nil, nil, nil

	case *QueueSessionHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *QueueSessionHandlerForbidden:
		return nil, nil, nil, v, nil, nil

	case *QueueSessionHandlerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueueSessionHandlerShort queue joinable session
Required Permission: NAMESPACE:{namespace}:SESSION [CREATE]

Required Scope: social

Queues joinable session so that it will be matched with player's match request tickets.
The session queued must be in a channel/game mode that is set to have joinable flag.
The session will be in queue until it is full or expired.
Both the number of players and session queue timeout can be set in the channel's config.

This endpoint is intended to be called by game server to let matchmaker know that
the game server is ready for receiving more players through matchmaking tickets to its session.

If a session is already queued, and game server wants to modify the data or
renew the queue timeout (e.g. some player left and more empty slot opened up),
simply call this endpoint with the updated session data.
*/
func (a *Client) QueueSessionHandlerShort(params *QueueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueueSessionHandlerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueueSessionHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "QueueSessionHandler",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/sessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueueSessionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueueSessionHandlerNoContent:
		return v, nil
	case *QueueSessionHandlerBadRequest:
		return nil, v
	case *QueueSessionHandlerUnauthorized:
		return nil, v
	case *QueueSessionHandlerForbidden:
		return nil, v
	case *QueueSessionHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DequeueSessionHandlerShort instead.

DequeueSessionHandler dequeue joinable session
Required Permission: NAMESPACE:{namespace}:SESSION [UPDATE]

Required Scope: social

Dequeues joinable session so that it will not be matched with player's match request tickets.

This endpoint is intended to be called by game server to let matchmaker know that
the game server does not want more players to its session, even though it is not full.
*/
func (a *Client) DequeueSessionHandler(params *DequeueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DequeueSessionHandlerNoContent, *DequeueSessionHandlerBadRequest, *DequeueSessionHandlerUnauthorized, *DequeueSessionHandlerForbidden, *DequeueSessionHandlerNotFound, *DequeueSessionHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDequeueSessionHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DequeueSessionHandler",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/sessions/dequeue",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DequeueSessionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DequeueSessionHandlerNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DequeueSessionHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DequeueSessionHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DequeueSessionHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DequeueSessionHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DequeueSessionHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DequeueSessionHandlerShort dequeue joinable session
Required Permission: NAMESPACE:{namespace}:SESSION [UPDATE]

Required Scope: social

Dequeues joinable session so that it will not be matched with player's match request tickets.

This endpoint is intended to be called by game server to let matchmaker know that
the game server does not want more players to its session, even though it is not full.
*/
func (a *Client) DequeueSessionHandlerShort(params *DequeueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DequeueSessionHandlerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDequeueSessionHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DequeueSessionHandler",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/sessions/dequeue",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DequeueSessionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DequeueSessionHandlerNoContent:
		return v, nil
	case *DequeueSessionHandlerBadRequest:
		return nil, v
	case *DequeueSessionHandlerUnauthorized:
		return nil, v
	case *DequeueSessionHandlerForbidden:
		return nil, v
	case *DequeueSessionHandlerNotFound:
		return nil, v
	case *DequeueSessionHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QuerySessionHandlerShort instead.

QuerySessionHandler query joinable session status
Required Permission: NAMESPACE:{namespace}:SESSION [READ]

Required Scope: social

Queries the specified session's status. Game servers are expected to
call this periodically as long as it has a session in queue to see
if there are new players being matched to the session.

Possible session statuses are "sessionInQueue", "sessionFull", and "sessionTimeout".

if party_id value empty/null, field will not show in response body.
*/
func (a *Client) QuerySessionHandler(params *QuerySessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySessionHandlerOK, *QuerySessionHandlerBadRequest, *QuerySessionHandlerUnauthorized, *QuerySessionHandlerForbidden, *QuerySessionHandlerNotFound, *QuerySessionHandlerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySessionHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "QuerySessionHandler",
		Method:             "GET",
		PathPattern:        "/matchmaking/namespaces/{namespace}/sessions/{matchID}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySessionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QuerySessionHandlerOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QuerySessionHandlerBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QuerySessionHandlerUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QuerySessionHandlerForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QuerySessionHandlerNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QuerySessionHandlerInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QuerySessionHandlerShort query joinable session status
Required Permission: NAMESPACE:{namespace}:SESSION [READ]

Required Scope: social

Queries the specified session's status. Game servers are expected to
call this periodically as long as it has a session in queue to see
if there are new players being matched to the session.

Possible session statuses are "sessionInQueue", "sessionFull", and "sessionTimeout".

if party_id value empty/null, field will not show in response body.
*/
func (a *Client) QuerySessionHandlerShort(params *QuerySessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySessionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySessionHandlerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "QuerySessionHandler",
		Method:             "GET",
		PathPattern:        "/matchmaking/namespaces/{namespace}/sessions/{matchID}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySessionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QuerySessionHandlerOK:
		return v, nil
	case *QuerySessionHandlerBadRequest:
		return nil, v
	case *QuerySessionHandlerUnauthorized:
		return nil, v
	case *QuerySessionHandlerForbidden:
		return nil, v
	case *QuerySessionHandlerNotFound:
		return nil, v
	case *QuerySessionHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAllPartyInAllChannelShort instead.

GetAllPartyInAllChannel get all party in all channels
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Get all parties queueing in all channels.
*/
func (a *Client) GetAllPartyInAllChannel(params *GetAllPartyInAllChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInAllChannelOK, *GetAllPartyInAllChannelBadRequest, *GetAllPartyInAllChannelUnauthorized, *GetAllPartyInAllChannelForbidden, *GetAllPartyInAllChannelNotFound, *GetAllPartyInAllChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllPartyInAllChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllPartyInAllChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/all/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllPartyInAllChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllPartyInAllChannelOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetAllPartyInAllChannelBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetAllPartyInAllChannelUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetAllPartyInAllChannelForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetAllPartyInAllChannelNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetAllPartyInAllChannelInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllPartyInAllChannelShort get all party in all channels
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Get all parties queueing in all channels.
*/
func (a *Client) GetAllPartyInAllChannelShort(params *GetAllPartyInAllChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInAllChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllPartyInAllChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllPartyInAllChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/all/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllPartyInAllChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllPartyInAllChannelOK:
		return v, nil
	case *GetAllPartyInAllChannelBadRequest:
		return nil, v
	case *GetAllPartyInAllChannelUnauthorized:
		return nil, v
	case *GetAllPartyInAllChannelForbidden:
		return nil, v
	case *GetAllPartyInAllChannelNotFound:
		return nil, v
	case *GetAllPartyInAllChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkGetSessionsShort instead.

BulkGetSessions bulk get sessions
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Bulk get sessions.
*/
func (a *Client) BulkGetSessions(params *BulkGetSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetSessionsOK, *BulkGetSessionsBadRequest, *BulkGetSessionsUnauthorized, *BulkGetSessionsForbidden, *BulkGetSessionsNotFound, *BulkGetSessionsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "BulkGetSessions",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/all/sessions/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkGetSessionsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkGetSessionsBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkGetSessionsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkGetSessionsForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkGetSessionsNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkGetSessionsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetSessionsShort bulk get sessions
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Bulk get sessions.
*/
func (a *Client) BulkGetSessionsShort(params *BulkGetSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetSessionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "BulkGetSessions",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/all/sessions/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetSessionsOK:
		return v, nil
	case *BulkGetSessionsBadRequest:
		return nil, v
	case *BulkGetSessionsUnauthorized:
		return nil, v
	case *BulkGetSessionsForbidden:
		return nil, v
	case *BulkGetSessionsNotFound:
		return nil, v
	case *BulkGetSessionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExportChannelsShort instead.

ExportChannels export channels
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Export channels configuration to file.

Action Code: 510114
*/
func (a *Client) ExportChannels(params *ExportChannelsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportChannelsOK, *ExportChannelsUnauthorized, *ExportChannelsForbidden, *ExportChannelsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportChannelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ExportChannels",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportChannelsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ExportChannelsOK:
		return v, nil, nil, nil, nil

	case *ExportChannelsUnauthorized:
		return nil, v, nil, nil, nil

	case *ExportChannelsForbidden:
		return nil, nil, v, nil, nil

	case *ExportChannelsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportChannelsShort export channels
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Export channels configuration to file.

Action Code: 510114
*/
func (a *Client) ExportChannelsShort(params *ExportChannelsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportChannelsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportChannelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ExportChannels",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportChannelsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportChannelsOK:
		return v, nil
	case *ExportChannelsUnauthorized:
		return nil, v
	case *ExportChannelsForbidden:
		return nil, v
	case *ExportChannelsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImportChannelsShort instead.

ImportChannels import channels
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Update]

Required Scope: social

Import channels configuration from file. It will merge with existing channels.
Available import strategy:
- leaveOut: if channel with same key exist, the existing will be used and imported one will be ignored (default)
- replace: if channel with same key exist, the imported channel will be used and existing one will be removed

Action Code: 510113
*/
func (a *Client) ImportChannels(params *ImportChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportChannelsOK, *ImportChannelsBadRequest, *ImportChannelsUnauthorized, *ImportChannelsForbidden, *ImportChannelsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportChannelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImportChannels",
		Method:             "POST",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportChannelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImportChannelsOK:
		return v, nil, nil, nil, nil, nil

	case *ImportChannelsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ImportChannelsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *ImportChannelsForbidden:
		return nil, nil, nil, v, nil, nil

	case *ImportChannelsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportChannelsShort import channels
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Update]

Required Scope: social

Import channels configuration from file. It will merge with existing channels.
Available import strategy:
- leaveOut: if channel with same key exist, the existing will be used and imported one will be ignored (default)
- replace: if channel with same key exist, the imported channel will be used and existing one will be removed

Action Code: 510113
*/
func (a *Client) ImportChannelsShort(params *ImportChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportChannelsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportChannelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImportChannels",
		Method:             "POST",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportChannelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportChannelsOK:
		return v, nil
	case *ImportChannelsBadRequest:
		return nil, v
	case *ImportChannelsUnauthorized:
		return nil, v
	case *ImportChannelsForbidden:
		return nil, v
	case *ImportChannelsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSingleMatchmakingChannelShort instead.

GetSingleMatchmakingChannel get single channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [READ]

Required Scope: social

Reads single channel based on namespace and channel name

Action Code: 510112
*/
func (a *Client) GetSingleMatchmakingChannel(params *GetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleMatchmakingChannelOK, *GetSingleMatchmakingChannelBadRequest, *GetSingleMatchmakingChannelUnauthorized, *GetSingleMatchmakingChannelForbidden, *GetSingleMatchmakingChannelNotFound, *GetSingleMatchmakingChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleMatchmakingChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetSingleMatchmakingChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetSingleMatchmakingChannelOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetSingleMatchmakingChannelBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetSingleMatchmakingChannelUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetSingleMatchmakingChannelForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetSingleMatchmakingChannelNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetSingleMatchmakingChannelInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSingleMatchmakingChannelShort get single channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [READ]

Required Scope: social

Reads single channel based on namespace and channel name

Action Code: 510112
*/
func (a *Client) GetSingleMatchmakingChannelShort(params *GetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleMatchmakingChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleMatchmakingChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetSingleMatchmakingChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSingleMatchmakingChannelOK:
		return v, nil
	case *GetSingleMatchmakingChannelBadRequest:
		return nil, v
	case *GetSingleMatchmakingChannelUnauthorized:
		return nil, v
	case *GetSingleMatchmakingChannelForbidden:
		return nil, v
	case *GetSingleMatchmakingChannelNotFound:
		return nil, v
	case *GetSingleMatchmakingChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateMatchmakingChannelShort instead.

UpdateMatchmakingChannel update a channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Update]

Required Scope: social

Update channel based on namespace and channel name

Action Code: 510111
*/
func (a *Client) UpdateMatchmakingChannel(params *UpdateMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchmakingChannelNoContent, *UpdateMatchmakingChannelBadRequest, *UpdateMatchmakingChannelUnauthorized, *UpdateMatchmakingChannelForbidden, *UpdateMatchmakingChannelNotFound, *UpdateMatchmakingChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMatchmakingChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateMatchmakingChannel",
		Method:             "PATCH",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateMatchmakingChannelNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateMatchmakingChannelBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateMatchmakingChannelUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateMatchmakingChannelForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateMatchmakingChannelNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateMatchmakingChannelInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMatchmakingChannelShort update a channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Update]

Required Scope: social

Update channel based on namespace and channel name

Action Code: 510111
*/
func (a *Client) UpdateMatchmakingChannelShort(params *UpdateMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchmakingChannelNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMatchmakingChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateMatchmakingChannel",
		Method:             "PATCH",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMatchmakingChannelNoContent:
		return v, nil
	case *UpdateMatchmakingChannelBadRequest:
		return nil, v
	case *UpdateMatchmakingChannelUnauthorized:
		return nil, v
	case *UpdateMatchmakingChannelForbidden:
		return nil, v
	case *UpdateMatchmakingChannelNotFound:
		return nil, v
	case *UpdateMatchmakingChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAllPartyInChannelShort instead.

GetAllPartyInChannel get all party in a channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Get all parties queueing in a channel.
*/
func (a *Client) GetAllPartyInChannel(params *GetAllPartyInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInChannelOK, *GetAllPartyInChannelBadRequest, *GetAllPartyInChannelUnauthorized, *GetAllPartyInChannelForbidden, *GetAllPartyInChannelNotFound, *GetAllPartyInChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllPartyInChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllPartyInChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllPartyInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllPartyInChannelOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetAllPartyInChannelBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetAllPartyInChannelUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetAllPartyInChannelForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetAllPartyInChannelNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetAllPartyInChannelInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllPartyInChannelShort get all party in a channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Get all parties queueing in a channel.
*/
func (a *Client) GetAllPartyInChannelShort(params *GetAllPartyInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllPartyInChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllPartyInChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllPartyInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllPartyInChannelOK:
		return v, nil
	case *GetAllPartyInChannelBadRequest:
		return nil, v
	case *GetAllPartyInChannelUnauthorized:
		return nil, v
	case *GetAllPartyInChannelForbidden:
		return nil, v
	case *GetAllPartyInChannelNotFound:
		return nil, v
	case *GetAllPartyInChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAllSessionsInChannelShort instead.

GetAllSessionsInChannel get all channel sessions
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Get all sessions in a channel.

if party_id value empty/null, field will not show in response body.
*/
func (a *Client) GetAllSessionsInChannel(params *GetAllSessionsInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllSessionsInChannelOK, *GetAllSessionsInChannelBadRequest, *GetAllSessionsInChannelUnauthorized, *GetAllSessionsInChannelForbidden, *GetAllSessionsInChannelNotFound, *GetAllSessionsInChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllSessionsInChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllSessionsInChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllSessionsInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllSessionsInChannelOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetAllSessionsInChannelBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetAllSessionsInChannelUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetAllSessionsInChannelForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetAllSessionsInChannelNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetAllSessionsInChannelInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllSessionsInChannelShort get all channel sessions
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Get all sessions in a channel.

if party_id value empty/null, field will not show in response body.
*/
func (a *Client) GetAllSessionsInChannelShort(params *GetAllSessionsInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllSessionsInChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllSessionsInChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllSessionsInChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllSessionsInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllSessionsInChannelOK:
		return v, nil
	case *GetAllSessionsInChannelBadRequest:
		return nil, v
	case *GetAllSessionsInChannelUnauthorized:
		return nil, v
	case *GetAllSessionsInChannelForbidden:
		return nil, v
	case *GetAllSessionsInChannelNotFound:
		return nil, v
	case *GetAllSessionsInChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AddUserIntoSessionInChannelShort instead.

AddUserIntoSessionInChannel add user into the session in a channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Create]

Required Scope: social

Add user into the session in a channel.
*/
func (a *Client) AddUserIntoSessionInChannel(params *AddUserIntoSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserIntoSessionInChannelOK, *AddUserIntoSessionInChannelBadRequest, *AddUserIntoSessionInChannelUnauthorized, *AddUserIntoSessionInChannelForbidden, *AddUserIntoSessionInChannelNotFound, *AddUserIntoSessionInChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddUserIntoSessionInChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddUserIntoSessionInChannel",
		Method:             "POST",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddUserIntoSessionInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddUserIntoSessionInChannelOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AddUserIntoSessionInChannelBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AddUserIntoSessionInChannelUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AddUserIntoSessionInChannelForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AddUserIntoSessionInChannelNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AddUserIntoSessionInChannelInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddUserIntoSessionInChannelShort add user into the session in a channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Create]

Required Scope: social

Add user into the session in a channel.
*/
func (a *Client) AddUserIntoSessionInChannelShort(params *AddUserIntoSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserIntoSessionInChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddUserIntoSessionInChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddUserIntoSessionInChannel",
		Method:             "POST",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddUserIntoSessionInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddUserIntoSessionInChannelOK:
		return v, nil
	case *AddUserIntoSessionInChannelBadRequest:
		return nil, v
	case *AddUserIntoSessionInChannelUnauthorized:
		return nil, v
	case *AddUserIntoSessionInChannelForbidden:
		return nil, v
	case *AddUserIntoSessionInChannelNotFound:
		return nil, v
	case *AddUserIntoSessionInChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteSessionInChannelShort instead.

DeleteSessionInChannel delete session in a channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Delete]

Required Scope: social

Delete a session in a channel.
*/
func (a *Client) DeleteSessionInChannel(params *DeleteSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionInChannelNoContent, *DeleteSessionInChannelBadRequest, *DeleteSessionInChannelUnauthorized, *DeleteSessionInChannelForbidden, *DeleteSessionInChannelNotFound, *DeleteSessionInChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSessionInChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteSessionInChannel",
		Method:             "DELETE",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSessionInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteSessionInChannelNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteSessionInChannelBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteSessionInChannelUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteSessionInChannelForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteSessionInChannelNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteSessionInChannelInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSessionInChannelShort delete session in a channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Delete]

Required Scope: social

Delete a session in a channel.
*/
func (a *Client) DeleteSessionInChannelShort(params *DeleteSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionInChannelNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSessionInChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteSessionInChannel",
		Method:             "DELETE",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSessionInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSessionInChannelNoContent:
		return v, nil
	case *DeleteSessionInChannelBadRequest:
		return nil, v
	case *DeleteSessionInChannelUnauthorized:
		return nil, v
	case *DeleteSessionInChannelForbidden:
		return nil, v
	case *DeleteSessionInChannelNotFound:
		return nil, v
	case *DeleteSessionInChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserFromSessionInChannelShort instead.

DeleteUserFromSessionInChannel delete user from the session in a channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Delete]

Required Scope: social

Delete a user from a session in the channel.
*/
func (a *Client) DeleteUserFromSessionInChannel(params *DeleteUserFromSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserFromSessionInChannelOK, *DeleteUserFromSessionInChannelNoContent, *DeleteUserFromSessionInChannelBadRequest, *DeleteUserFromSessionInChannelUnauthorized, *DeleteUserFromSessionInChannelForbidden, *DeleteUserFromSessionInChannelNotFound, *DeleteUserFromSessionInChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserFromSessionInChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUserFromSessionInChannel",
		Method:             "DELETE",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserFromSessionInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserFromSessionInChannelOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *DeleteUserFromSessionInChannelNoContent:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *DeleteUserFromSessionInChannelBadRequest:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *DeleteUserFromSessionInChannelUnauthorized:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *DeleteUserFromSessionInChannelForbidden:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *DeleteUserFromSessionInChannelNotFound:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *DeleteUserFromSessionInChannelInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserFromSessionInChannelShort delete user from the session in a channel
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Delete]

Required Scope: social

Delete a user from a session in the channel.
*/
func (a *Client) DeleteUserFromSessionInChannelShort(params *DeleteUserFromSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserFromSessionInChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserFromSessionInChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUserFromSessionInChannel",
		Method:             "DELETE",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserFromSessionInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserFromSessionInChannelOK:
		return v, nil
	case *DeleteUserFromSessionInChannelNoContent:
		return nil, v
	case *DeleteUserFromSessionInChannelBadRequest:
		return nil, v
	case *DeleteUserFromSessionInChannelUnauthorized:
		return nil, v
	case *DeleteUserFromSessionInChannelForbidden:
		return nil, v
	case *DeleteUserFromSessionInChannelNotFound:
		return nil, v
	case *DeleteUserFromSessionInChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetStatDataShort instead.

GetStatData get stats
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Get a channel's stat data (mean, stddev, min, max) according to the stats collected from statistics service.
'
*/
func (a *Client) GetStatData(params *GetStatDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatDataOK, *GetStatDataBadRequest, *GetStatDataUnauthorized, *GetStatDataForbidden, *GetStatDataNotFound, *GetStatDataInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetStatData",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetStatDataOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetStatDataBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetStatDataUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetStatDataForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetStatDataNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetStatDataInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatDataShort get stats
Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Get a channel's stat data (mean, stddev, min, max) according to the stats collected from statistics service.
'
*/
func (a *Client) GetStatDataShort(params *GetStatDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatDataOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetStatData",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatDataOK:
		return v, nil
	case *GetStatDataBadRequest:
		return nil, v
	case *GetStatDataUnauthorized:
		return nil, v
	case *GetStatDataForbidden:
		return nil, v
	case *GetStatDataNotFound:
		return nil, v
	case *GetStatDataInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SearchSessionsShort instead.

SearchSessions search sessions






## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search [GET]







Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Search sessions.
*/
func (a *Client) SearchSessions(params *SearchSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsOK, *SearchSessionsBadRequest, *SearchSessionsUnauthorized, *SearchSessionsForbidden, *SearchSessionsNotFound, *SearchSessionsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SearchSessions",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SearchSessionsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *SearchSessionsBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *SearchSessionsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *SearchSessionsForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *SearchSessionsNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *SearchSessionsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SearchSessionsShort search sessions






## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search [GET]







Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Search sessions.
*/
func (a *Client) SearchSessionsShort(params *SearchSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SearchSessions",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SearchSessionsOK:
		return v, nil
	case *SearchSessionsBadRequest:
		return nil, v
	case *SearchSessionsUnauthorized:
		return nil, v
	case *SearchSessionsForbidden:
		return nil, v
	case *SearchSessionsNotFound:
		return nil, v
	case *SearchSessionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSessionHistoryDetailedShort instead.

GetSessionHistoryDetailed get session history detailed






## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/{sessionId}/history/detailed [GET]







Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Get session history detailed.

if party_id value empty/null, field will not show in response body.
*/
func (a *Client) GetSessionHistoryDetailed(params *GetSessionHistoryDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionHistoryDetailedOK, *GetSessionHistoryDetailedBadRequest, *GetSessionHistoryDetailedUnauthorized, *GetSessionHistoryDetailedForbidden, *GetSessionHistoryDetailedNotFound, *GetSessionHistoryDetailedInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSessionHistoryDetailedParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetSessionHistoryDetailed",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSessionHistoryDetailedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetSessionHistoryDetailedOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetSessionHistoryDetailedBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetSessionHistoryDetailedUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetSessionHistoryDetailedForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetSessionHistoryDetailedNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetSessionHistoryDetailedInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSessionHistoryDetailedShort get session history detailed






## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/{sessionId}/history/detailed [GET]







Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Get session history detailed.

if party_id value empty/null, field will not show in response body.
*/
func (a *Client) GetSessionHistoryDetailedShort(params *GetSessionHistoryDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionHistoryDetailedOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSessionHistoryDetailedParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetSessionHistoryDetailed",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSessionHistoryDetailedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSessionHistoryDetailedOK:
		return v, nil
	case *GetSessionHistoryDetailedBadRequest:
		return nil, v
	case *GetSessionHistoryDetailedUnauthorized:
		return nil, v
	case *GetSessionHistoryDetailedForbidden:
		return nil, v
	case *GetSessionHistoryDetailedNotFound:
		return nil, v
	case *GetSessionHistoryDetailedInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetAllMatchmakingChannelShort instead.

PublicGetAllMatchmakingChannel get all channels
Reads all available channels in a namespace
*/
func (a *Client) PublicGetAllMatchmakingChannel(params *PublicGetAllMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAllMatchmakingChannelOK, *PublicGetAllMatchmakingChannelBadRequest, *PublicGetAllMatchmakingChannelUnauthorized, *PublicGetAllMatchmakingChannelForbidden, *PublicGetAllMatchmakingChannelConflict, *PublicGetAllMatchmakingChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetAllMatchmakingChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetAllMatchmakingChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/public/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetAllMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetAllMatchmakingChannelOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGetAllMatchmakingChannelBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGetAllMatchmakingChannelUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGetAllMatchmakingChannelForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGetAllMatchmakingChannelConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGetAllMatchmakingChannelInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetAllMatchmakingChannelShort get all channels
Reads all available channels in a namespace
*/
func (a *Client) PublicGetAllMatchmakingChannelShort(params *PublicGetAllMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAllMatchmakingChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetAllMatchmakingChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetAllMatchmakingChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/public/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetAllMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetAllMatchmakingChannelOK:
		return v, nil
	case *PublicGetAllMatchmakingChannelBadRequest:
		return nil, v
	case *PublicGetAllMatchmakingChannelUnauthorized:
		return nil, v
	case *PublicGetAllMatchmakingChannelForbidden:
		return nil, v
	case *PublicGetAllMatchmakingChannelConflict:
		return nil, v
	case *PublicGetAllMatchmakingChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetSingleMatchmakingChannelShort instead.

PublicGetSingleMatchmakingChannel get single channel
Reads single channel based on namespace and channel name
*/
func (a *Client) PublicGetSingleMatchmakingChannel(params *PublicGetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetSingleMatchmakingChannelOK, *PublicGetSingleMatchmakingChannelBadRequest, *PublicGetSingleMatchmakingChannelUnauthorized, *PublicGetSingleMatchmakingChannelForbidden, *PublicGetSingleMatchmakingChannelNotFound, *PublicGetSingleMatchmakingChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetSingleMatchmakingChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetSingleMatchmakingChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetSingleMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetSingleMatchmakingChannelOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGetSingleMatchmakingChannelBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGetSingleMatchmakingChannelUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGetSingleMatchmakingChannelForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGetSingleMatchmakingChannelNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGetSingleMatchmakingChannelInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetSingleMatchmakingChannelShort get single channel
Reads single channel based on namespace and channel name
*/
func (a *Client) PublicGetSingleMatchmakingChannelShort(params *PublicGetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetSingleMatchmakingChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetSingleMatchmakingChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetSingleMatchmakingChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetSingleMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetSingleMatchmakingChannelOK:
		return v, nil
	case *PublicGetSingleMatchmakingChannelBadRequest:
		return nil, v
	case *PublicGetSingleMatchmakingChannelUnauthorized:
		return nil, v
	case *PublicGetSingleMatchmakingChannelForbidden:
		return nil, v
	case *PublicGetSingleMatchmakingChannelNotFound:
		return nil, v
	case *PublicGetSingleMatchmakingChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SearchSessionsV2Short instead.

SearchSessionsV2 search sessions





## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search [GET]







Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Search sessions. Optimize the query by differentiating query with filter namespace only and filter with namespace & other filter (partyID, userID, matchID).
Query with filter namespace only will not group whole session data while query with filter namespace & other filter will include session data.
*/
func (a *Client) SearchSessionsV2(params *SearchSessionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsV2OK, *SearchSessionsV2BadRequest, *SearchSessionsV2Unauthorized, *SearchSessionsV2Forbidden, *SearchSessionsV2NotFound, *SearchSessionsV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchSessionsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SearchSessionsV2",
		Method:             "GET",
		PathPattern:        "/matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchSessionsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SearchSessionsV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *SearchSessionsV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *SearchSessionsV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *SearchSessionsV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *SearchSessionsV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *SearchSessionsV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SearchSessionsV2Short search sessions





## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search [GET]







Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]

Required Scope: social

Search sessions. Optimize the query by differentiating query with filter namespace only and filter with namespace & other filter (partyID, userID, matchID).
Query with filter namespace only will not group whole session data while query with filter namespace & other filter will include session data.
*/
func (a *Client) SearchSessionsV2Short(params *SearchSessionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchSessionsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SearchSessionsV2",
		Method:             "GET",
		PathPattern:        "/matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchSessionsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SearchSessionsV2OK:
		return v, nil
	case *SearchSessionsV2BadRequest:
		return nil, v
	case *SearchSessionsV2Unauthorized:
		return nil, v
	case *SearchSessionsV2Forbidden:
		return nil, v
	case *SearchSessionsV2NotFound:
		return nil, v
	case *SearchSessionsV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
