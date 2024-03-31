// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package x_ray

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new x ray API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for x ray API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryXrayMatchPool(params *QueryXrayMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchPoolOK, *QueryXrayMatchPoolBadRequest, *QueryXrayMatchPoolUnauthorized, *QueryXrayMatchPoolForbidden, *QueryXrayMatchPoolNotFound, *QueryXrayMatchPoolInternalServerError, error)
	QueryXrayMatchPoolShort(params *QueryXrayMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchPoolOK, error)
	QueryDetailTickMatchPool(params *QueryDetailTickMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolOK, *QueryDetailTickMatchPoolBadRequest, *QueryDetailTickMatchPoolUnauthorized, *QueryDetailTickMatchPoolForbidden, *QueryDetailTickMatchPoolNotFound, *QueryDetailTickMatchPoolInternalServerError, error)
	QueryDetailTickMatchPoolShort(params *QueryDetailTickMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolOK, error)
	QueryDetailTickMatchPoolMatches(params *QueryDetailTickMatchPoolMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolMatchesOK, *QueryDetailTickMatchPoolMatchesBadRequest, *QueryDetailTickMatchPoolMatchesUnauthorized, *QueryDetailTickMatchPoolMatchesForbidden, *QueryDetailTickMatchPoolMatchesNotFound, *QueryDetailTickMatchPoolMatchesInternalServerError, error)
	QueryDetailTickMatchPoolMatchesShort(params *QueryDetailTickMatchPoolMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolMatchesOK, error)
	QueryDetailTickMatchPoolTicket(params *QueryDetailTickMatchPoolTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolTicketOK, *QueryDetailTickMatchPoolTicketBadRequest, *QueryDetailTickMatchPoolTicketUnauthorized, *QueryDetailTickMatchPoolTicketForbidden, *QueryDetailTickMatchPoolTicketNotFound, *QueryDetailTickMatchPoolTicketInternalServerError, error)
	QueryDetailTickMatchPoolTicketShort(params *QueryDetailTickMatchPoolTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolTicketOK, error)
	QueryMatchHistories(params *QueryMatchHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchHistoriesOK, *QueryMatchHistoriesBadRequest, *QueryMatchHistoriesUnauthorized, *QueryMatchHistoriesForbidden, *QueryMatchHistoriesNotFound, *QueryMatchHistoriesInternalServerError, error)
	QueryMatchHistoriesShort(params *QueryMatchHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchHistoriesOK, error)
	QueryMatchTicketHistories(params *QueryMatchTicketHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchTicketHistoriesOK, *QueryMatchTicketHistoriesBadRequest, *QueryMatchTicketHistoriesUnauthorized, *QueryMatchTicketHistoriesForbidden, *QueryMatchTicketHistoriesNotFound, *QueryMatchTicketHistoriesInternalServerError, error)
	QueryMatchTicketHistoriesShort(params *QueryMatchTicketHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchTicketHistoriesOK, error)
	QueryXrayMatch(params *QueryXrayMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchOK, *QueryXrayMatchBadRequest, *QueryXrayMatchUnauthorized, *QueryXrayMatchForbidden, *QueryXrayMatchNotFound, *QueryXrayMatchInternalServerError, error)
	QueryXrayMatchShort(params *QueryXrayMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchOK, error)
	QueryAcquiringDS(params *QueryAcquiringDSParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSOK, *QueryAcquiringDSBadRequest, *QueryAcquiringDSUnauthorized, *QueryAcquiringDSForbidden, *QueryAcquiringDSNotFound, *QueryAcquiringDSInternalServerError, error)
	QueryAcquiringDSShort(params *QueryAcquiringDSParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSOK, error)
	QueryAcquiringDSWaitTimeAvg(params *QueryAcquiringDSWaitTimeAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSWaitTimeAvgOK, *QueryAcquiringDSWaitTimeAvgBadRequest, *QueryAcquiringDSWaitTimeAvgUnauthorized, *QueryAcquiringDSWaitTimeAvgForbidden, *QueryAcquiringDSWaitTimeAvgNotFound, *QueryAcquiringDSWaitTimeAvgInternalServerError, error)
	QueryAcquiringDSWaitTimeAvgShort(params *QueryAcquiringDSWaitTimeAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSWaitTimeAvgOK, error)
	QueryMatchLengthDurationpAvg(params *QueryMatchLengthDurationpAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationpAvgOK, *QueryMatchLengthDurationpAvgBadRequest, *QueryMatchLengthDurationpAvgUnauthorized, *QueryMatchLengthDurationpAvgForbidden, *QueryMatchLengthDurationpAvgNotFound, *QueryMatchLengthDurationpAvgInternalServerError, error)
	QueryMatchLengthDurationpAvgShort(params *QueryMatchLengthDurationpAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationpAvgOK, error)
	QueryMatchLengthDurationp99(params *QueryMatchLengthDurationp99Params, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationp99OK, *QueryMatchLengthDurationp99BadRequest, *QueryMatchLengthDurationp99Unauthorized, *QueryMatchLengthDurationp99Forbidden, *QueryMatchLengthDurationp99NotFound, *QueryMatchLengthDurationp99InternalServerError, error)
	QueryMatchLengthDurationp99Short(params *QueryMatchLengthDurationp99Params, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationp99OK, error)
	QueryTotalActiveSession(params *QueryTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalActiveSessionOK, *QueryTotalActiveSessionBadRequest, *QueryTotalActiveSessionUnauthorized, *QueryTotalActiveSessionForbidden, *QueryTotalActiveSessionNotFound, *QueryTotalActiveSessionInternalServerError, error)
	QueryTotalActiveSessionShort(params *QueryTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalActiveSessionOK, error)
	QueryTotalMatchmakingMatch(params *QueryTotalMatchmakingMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchOK, *QueryTotalMatchmakingMatchBadRequest, *QueryTotalMatchmakingMatchUnauthorized, *QueryTotalMatchmakingMatchForbidden, *QueryTotalMatchmakingMatchNotFound, *QueryTotalMatchmakingMatchInternalServerError, error)
	QueryTotalMatchmakingMatchShort(params *QueryTotalMatchmakingMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchOK, error)
	QueryTotalPlayerPersession(params *QueryTotalPlayerPersessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalPlayerPersessionOK, *QueryTotalPlayerPersessionBadRequest, *QueryTotalPlayerPersessionUnauthorized, *QueryTotalPlayerPersessionForbidden, *QueryTotalPlayerPersessionNotFound, *QueryTotalPlayerPersessionInternalServerError, error)
	QueryTotalPlayerPersessionShort(params *QueryTotalPlayerPersessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalPlayerPersessionOK, error)
	QueryTotalMatchmakingCanceled(params *QueryTotalMatchmakingCanceledParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCanceledOK, *QueryTotalMatchmakingCanceledBadRequest, *QueryTotalMatchmakingCanceledUnauthorized, *QueryTotalMatchmakingCanceledForbidden, *QueryTotalMatchmakingCanceledNotFound, *QueryTotalMatchmakingCanceledInternalServerError, error)
	QueryTotalMatchmakingCanceledShort(params *QueryTotalMatchmakingCanceledParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCanceledOK, error)
	QueryTotalMatchmakingCreated(params *QueryTotalMatchmakingCreatedParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCreatedOK, *QueryTotalMatchmakingCreatedBadRequest, *QueryTotalMatchmakingCreatedUnauthorized, *QueryTotalMatchmakingCreatedForbidden, *QueryTotalMatchmakingCreatedNotFound, *QueryTotalMatchmakingCreatedInternalServerError, error)
	QueryTotalMatchmakingCreatedShort(params *QueryTotalMatchmakingCreatedParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCreatedOK, error)
	QueryTotalMatchmakingExpired(params *QueryTotalMatchmakingExpiredParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingExpiredOK, *QueryTotalMatchmakingExpiredBadRequest, *QueryTotalMatchmakingExpiredUnauthorized, *QueryTotalMatchmakingExpiredForbidden, *QueryTotalMatchmakingExpiredNotFound, *QueryTotalMatchmakingExpiredInternalServerError, error)
	QueryTotalMatchmakingExpiredShort(params *QueryTotalMatchmakingExpiredParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingExpiredOK, error)
	QueryTotalMatchmakingMatchTicket(params *QueryTotalMatchmakingMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchTicketOK, *QueryTotalMatchmakingMatchTicketBadRequest, *QueryTotalMatchmakingMatchTicketUnauthorized, *QueryTotalMatchmakingMatchTicketForbidden, *QueryTotalMatchmakingMatchTicketNotFound, *QueryTotalMatchmakingMatchTicketInternalServerError, error)
	QueryTotalMatchmakingMatchTicketShort(params *QueryTotalMatchmakingMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchTicketOK, error)
	QueryXrayTimelineByTicketID(params *QueryXrayTimelineByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByTicketIDOK, *QueryXrayTimelineByTicketIDBadRequest, *QueryXrayTimelineByTicketIDUnauthorized, *QueryXrayTimelineByTicketIDForbidden, *QueryXrayTimelineByTicketIDNotFound, *QueryXrayTimelineByTicketIDInternalServerError, error)
	QueryXrayTimelineByTicketIDShort(params *QueryXrayTimelineByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByTicketIDOK, error)
	QueryXrayTimelineByUserID(params *QueryXrayTimelineByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByUserIDOK, *QueryXrayTimelineByUserIDBadRequest, *QueryXrayTimelineByUserIDUnauthorized, *QueryXrayTimelineByUserIDForbidden, *QueryXrayTimelineByUserIDNotFound, *QueryXrayTimelineByUserIDInternalServerError, error)
	QueryXrayTimelineByUserIDShort(params *QueryXrayTimelineByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByUserIDOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryXrayMatchPoolShort instead.

QueryXrayMatchPool query xray match pool
Query xray match pool.
*/
func (a *Client) QueryXrayMatchPool(params *QueryXrayMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchPoolOK, *QueryXrayMatchPoolBadRequest, *QueryXrayMatchPoolUnauthorized, *QueryXrayMatchPoolForbidden, *QueryXrayMatchPoolNotFound, *QueryXrayMatchPoolInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayMatchPoolParams()
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
		ID:                 "queryXrayMatchPool",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryXrayMatchPoolOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryXrayMatchPoolBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryXrayMatchPoolUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryXrayMatchPoolForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryXrayMatchPoolNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryXrayMatchPoolInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryXrayMatchPoolShort query xray match pool
Query xray match pool.
*/
func (a *Client) QueryXrayMatchPoolShort(params *QueryXrayMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchPoolOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayMatchPoolParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryXrayMatchPool",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryXrayMatchPoolOK:
		return v, nil
	case *QueryXrayMatchPoolBadRequest:
		return nil, v
	case *QueryXrayMatchPoolUnauthorized:
		return nil, v
	case *QueryXrayMatchPoolForbidden:
		return nil, v
	case *QueryXrayMatchPoolNotFound:
		return nil, v
	case *QueryXrayMatchPoolInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryDetailTickMatchPoolShort instead.

QueryDetailTickMatchPool query xray match pool ticks
Query xray match pool ticks.
*/
func (a *Client) QueryDetailTickMatchPool(params *QueryDetailTickMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolOK, *QueryDetailTickMatchPoolBadRequest, *QueryDetailTickMatchPoolUnauthorized, *QueryDetailTickMatchPoolForbidden, *QueryDetailTickMatchPoolNotFound, *QueryDetailTickMatchPoolInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryDetailTickMatchPoolParams()
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
		ID:                 "queryDetailTickMatchPool",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryDetailTickMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryDetailTickMatchPoolOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryDetailTickMatchPoolBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryDetailTickMatchPoolUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryDetailTickMatchPoolForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryDetailTickMatchPoolNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryDetailTickMatchPoolInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryDetailTickMatchPoolShort query xray match pool ticks
Query xray match pool ticks.
*/
func (a *Client) QueryDetailTickMatchPoolShort(params *QueryDetailTickMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryDetailTickMatchPoolParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryDetailTickMatchPool",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryDetailTickMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryDetailTickMatchPoolOK:
		return v, nil
	case *QueryDetailTickMatchPoolBadRequest:
		return nil, v
	case *QueryDetailTickMatchPoolUnauthorized:
		return nil, v
	case *QueryDetailTickMatchPoolForbidden:
		return nil, v
	case *QueryDetailTickMatchPoolNotFound:
		return nil, v
	case *QueryDetailTickMatchPoolInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryDetailTickMatchPoolMatchesShort instead.

QueryDetailTickMatchPoolMatches query xray match pool tick matches by tick id
Query xray match pool tick matches by tick id.
*/
func (a *Client) QueryDetailTickMatchPoolMatches(params *QueryDetailTickMatchPoolMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolMatchesOK, *QueryDetailTickMatchPoolMatchesBadRequest, *QueryDetailTickMatchPoolMatchesUnauthorized, *QueryDetailTickMatchPoolMatchesForbidden, *QueryDetailTickMatchPoolMatchesNotFound, *QueryDetailTickMatchPoolMatchesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryDetailTickMatchPoolMatchesParams()
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
		ID:                 "queryDetailTickMatchPoolMatches",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryDetailTickMatchPoolMatchesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryDetailTickMatchPoolMatchesOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryDetailTickMatchPoolMatchesBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryDetailTickMatchPoolMatchesUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryDetailTickMatchPoolMatchesForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryDetailTickMatchPoolMatchesNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryDetailTickMatchPoolMatchesInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryDetailTickMatchPoolMatchesShort query xray match pool tick matches by tick id
Query xray match pool tick matches by tick id.
*/
func (a *Client) QueryDetailTickMatchPoolMatchesShort(params *QueryDetailTickMatchPoolMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolMatchesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryDetailTickMatchPoolMatchesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryDetailTickMatchPoolMatches",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryDetailTickMatchPoolMatchesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryDetailTickMatchPoolMatchesOK:
		return v, nil
	case *QueryDetailTickMatchPoolMatchesBadRequest:
		return nil, v
	case *QueryDetailTickMatchPoolMatchesUnauthorized:
		return nil, v
	case *QueryDetailTickMatchPoolMatchesForbidden:
		return nil, v
	case *QueryDetailTickMatchPoolMatchesNotFound:
		return nil, v
	case *QueryDetailTickMatchPoolMatchesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryDetailTickMatchPoolTicketShort instead.

QueryDetailTickMatchPoolTicket query xray match pool tick tickets by tick id
Query xray match pool tick tickets detail by tick id.
*/
func (a *Client) QueryDetailTickMatchPoolTicket(params *QueryDetailTickMatchPoolTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolTicketOK, *QueryDetailTickMatchPoolTicketBadRequest, *QueryDetailTickMatchPoolTicketUnauthorized, *QueryDetailTickMatchPoolTicketForbidden, *QueryDetailTickMatchPoolTicketNotFound, *QueryDetailTickMatchPoolTicketInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryDetailTickMatchPoolTicketParams()
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
		ID:                 "queryDetailTickMatchPoolTicket",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryDetailTickMatchPoolTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryDetailTickMatchPoolTicketOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryDetailTickMatchPoolTicketBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryDetailTickMatchPoolTicketUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryDetailTickMatchPoolTicketForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryDetailTickMatchPoolTicketNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryDetailTickMatchPoolTicketInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryDetailTickMatchPoolTicketShort query xray match pool tick tickets by tick id
Query xray match pool tick tickets detail by tick id.
*/
func (a *Client) QueryDetailTickMatchPoolTicketShort(params *QueryDetailTickMatchPoolTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolTicketOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryDetailTickMatchPoolTicketParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryDetailTickMatchPoolTicket",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryDetailTickMatchPoolTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryDetailTickMatchPoolTicketOK:
		return v, nil
	case *QueryDetailTickMatchPoolTicketBadRequest:
		return nil, v
	case *QueryDetailTickMatchPoolTicketUnauthorized:
		return nil, v
	case *QueryDetailTickMatchPoolTicketForbidden:
		return nil, v
	case *QueryDetailTickMatchPoolTicketNotFound:
		return nil, v
	case *QueryDetailTickMatchPoolTicketInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryMatchHistoriesShort instead.

QueryMatchHistories query xray match histories
Query xray match histories.
*/
func (a *Client) QueryMatchHistories(params *QueryMatchHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchHistoriesOK, *QueryMatchHistoriesBadRequest, *QueryMatchHistoriesUnauthorized, *QueryMatchHistoriesForbidden, *QueryMatchHistoriesNotFound, *QueryMatchHistoriesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchHistoriesParams()
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
		ID:                 "queryMatchHistories",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryMatchHistoriesOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryMatchHistoriesBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryMatchHistoriesUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryMatchHistoriesForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryMatchHistoriesNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryMatchHistoriesInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchHistoriesShort query xray match histories
Query xray match histories.
*/
func (a *Client) QueryMatchHistoriesShort(params *QueryMatchHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryMatchHistories",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryMatchHistoriesOK:
		return v, nil
	case *QueryMatchHistoriesBadRequest:
		return nil, v
	case *QueryMatchHistoriesUnauthorized:
		return nil, v
	case *QueryMatchHistoriesForbidden:
		return nil, v
	case *QueryMatchHistoriesNotFound:
		return nil, v
	case *QueryMatchHistoriesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryMatchTicketHistoriesShort instead.

QueryMatchTicketHistories query xray match ticket histories
Query xray match ticket histories.
*/
func (a *Client) QueryMatchTicketHistories(params *QueryMatchTicketHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchTicketHistoriesOK, *QueryMatchTicketHistoriesBadRequest, *QueryMatchTicketHistoriesUnauthorized, *QueryMatchTicketHistoriesForbidden, *QueryMatchTicketHistoriesNotFound, *QueryMatchTicketHistoriesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchTicketHistoriesParams()
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
		ID:                 "queryMatchTicketHistories",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchTicketHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryMatchTicketHistoriesOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryMatchTicketHistoriesBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryMatchTicketHistoriesUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryMatchTicketHistoriesForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryMatchTicketHistoriesNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryMatchTicketHistoriesInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchTicketHistoriesShort query xray match ticket histories
Query xray match ticket histories.
*/
func (a *Client) QueryMatchTicketHistoriesShort(params *QueryMatchTicketHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchTicketHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchTicketHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryMatchTicketHistories",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchTicketHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryMatchTicketHistoriesOK:
		return v, nil
	case *QueryMatchTicketHistoriesBadRequest:
		return nil, v
	case *QueryMatchTicketHistoriesUnauthorized:
		return nil, v
	case *QueryMatchTicketHistoriesForbidden:
		return nil, v
	case *QueryMatchTicketHistoriesNotFound:
		return nil, v
	case *QueryMatchTicketHistoriesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryXrayMatchShort instead.

QueryXrayMatch query xray timeline by matchid
Query xray timeline by matchID.
*/
func (a *Client) QueryXrayMatch(params *QueryXrayMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchOK, *QueryXrayMatchBadRequest, *QueryXrayMatchUnauthorized, *QueryXrayMatchForbidden, *QueryXrayMatchNotFound, *QueryXrayMatchInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayMatchParams()
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
		ID:                 "queryXrayMatch",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayMatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryXrayMatchOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryXrayMatchBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryXrayMatchUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryXrayMatchForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryXrayMatchNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryXrayMatchInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryXrayMatchShort query xray timeline by matchid
Query xray timeline by matchID.
*/
func (a *Client) QueryXrayMatchShort(params *QueryXrayMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayMatchParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryXrayMatch",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayMatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryXrayMatchOK:
		return v, nil
	case *QueryXrayMatchBadRequest:
		return nil, v
	case *QueryXrayMatchUnauthorized:
		return nil, v
	case *QueryXrayMatchForbidden:
		return nil, v
	case *QueryXrayMatchNotFound:
		return nil, v
	case *QueryXrayMatchInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryAcquiringDSShort instead.

QueryAcquiringDS query total success and failed claim ds
Query total success and failed claim DS.
*/
func (a *Client) QueryAcquiringDS(params *QueryAcquiringDSParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSOK, *QueryAcquiringDSBadRequest, *QueryAcquiringDSUnauthorized, *QueryAcquiringDSForbidden, *QueryAcquiringDSNotFound, *QueryAcquiringDSInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAcquiringDSParams()
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
		ID:                 "queryAcquiringDS",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAcquiringDSReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryAcquiringDSOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryAcquiringDSBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryAcquiringDSUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryAcquiringDSForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryAcquiringDSNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryAcquiringDSInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryAcquiringDSShort query total success and failed claim ds
Query total success and failed claim DS.
*/
func (a *Client) QueryAcquiringDSShort(params *QueryAcquiringDSParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAcquiringDSParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryAcquiringDS",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAcquiringDSReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryAcquiringDSOK:
		return v, nil
	case *QueryAcquiringDSBadRequest:
		return nil, v
	case *QueryAcquiringDSUnauthorized:
		return nil, v
	case *QueryAcquiringDSForbidden:
		return nil, v
	case *QueryAcquiringDSNotFound:
		return nil, v
	case *QueryAcquiringDSInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryAcquiringDSWaitTimeAvgShort instead.

QueryAcquiringDSWaitTimeAvg query acquiring ds wait time average
Query acquiring ds wait time average. time in seconds
*/
func (a *Client) QueryAcquiringDSWaitTimeAvg(params *QueryAcquiringDSWaitTimeAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSWaitTimeAvgOK, *QueryAcquiringDSWaitTimeAvgBadRequest, *QueryAcquiringDSWaitTimeAvgUnauthorized, *QueryAcquiringDSWaitTimeAvgForbidden, *QueryAcquiringDSWaitTimeAvgNotFound, *QueryAcquiringDSWaitTimeAvgInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAcquiringDSWaitTimeAvgParams()
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
		ID:                 "queryAcquiringDSWaitTimeAvg",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAcquiringDSWaitTimeAvgReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryAcquiringDSWaitTimeAvgOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryAcquiringDSWaitTimeAvgBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryAcquiringDSWaitTimeAvgUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryAcquiringDSWaitTimeAvgForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryAcquiringDSWaitTimeAvgNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryAcquiringDSWaitTimeAvgInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryAcquiringDSWaitTimeAvgShort query acquiring ds wait time average
Query acquiring ds wait time average. time in seconds
*/
func (a *Client) QueryAcquiringDSWaitTimeAvgShort(params *QueryAcquiringDSWaitTimeAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSWaitTimeAvgOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAcquiringDSWaitTimeAvgParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryAcquiringDSWaitTimeAvg",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAcquiringDSWaitTimeAvgReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryAcquiringDSWaitTimeAvgOK:
		return v, nil
	case *QueryAcquiringDSWaitTimeAvgBadRequest:
		return nil, v
	case *QueryAcquiringDSWaitTimeAvgUnauthorized:
		return nil, v
	case *QueryAcquiringDSWaitTimeAvgForbidden:
		return nil, v
	case *QueryAcquiringDSWaitTimeAvgNotFound:
		return nil, v
	case *QueryAcquiringDSWaitTimeAvgInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryMatchLengthDurationpAvgShort instead.

QueryMatchLengthDurationpAvg query match length duration avg
Query match length duration avg. time in seconds
*/
func (a *Client) QueryMatchLengthDurationpAvg(params *QueryMatchLengthDurationpAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationpAvgOK, *QueryMatchLengthDurationpAvgBadRequest, *QueryMatchLengthDurationpAvgUnauthorized, *QueryMatchLengthDurationpAvgForbidden, *QueryMatchLengthDurationpAvgNotFound, *QueryMatchLengthDurationpAvgInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchLengthDurationpAvgParams()
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
		ID:                 "queryMatchLengthDurationpAvg",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchLengthDurationpAvgReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryMatchLengthDurationpAvgOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryMatchLengthDurationpAvgBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryMatchLengthDurationpAvgUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryMatchLengthDurationpAvgForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryMatchLengthDurationpAvgNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryMatchLengthDurationpAvgInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchLengthDurationpAvgShort query match length duration avg
Query match length duration avg. time in seconds
*/
func (a *Client) QueryMatchLengthDurationpAvgShort(params *QueryMatchLengthDurationpAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationpAvgOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchLengthDurationpAvgParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryMatchLengthDurationpAvg",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchLengthDurationpAvgReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryMatchLengthDurationpAvgOK:
		return v, nil
	case *QueryMatchLengthDurationpAvgBadRequest:
		return nil, v
	case *QueryMatchLengthDurationpAvgUnauthorized:
		return nil, v
	case *QueryMatchLengthDurationpAvgForbidden:
		return nil, v
	case *QueryMatchLengthDurationpAvgNotFound:
		return nil, v
	case *QueryMatchLengthDurationpAvgInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryMatchLengthDurationp99Short instead.

QueryMatchLengthDurationp99 query match length duration p99
Query match length duration p99. time in seconds
*/
func (a *Client) QueryMatchLengthDurationp99(params *QueryMatchLengthDurationp99Params, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationp99OK, *QueryMatchLengthDurationp99BadRequest, *QueryMatchLengthDurationp99Unauthorized, *QueryMatchLengthDurationp99Forbidden, *QueryMatchLengthDurationp99NotFound, *QueryMatchLengthDurationp99InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchLengthDurationp99Params()
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
		ID:                 "queryMatchLengthDurationp99",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchLengthDurationp99Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryMatchLengthDurationp99OK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryMatchLengthDurationp99BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryMatchLengthDurationp99Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryMatchLengthDurationp99Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryMatchLengthDurationp99NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryMatchLengthDurationp99InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchLengthDurationp99Short query match length duration p99
Query match length duration p99. time in seconds
*/
func (a *Client) QueryMatchLengthDurationp99Short(params *QueryMatchLengthDurationp99Params, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationp99OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchLengthDurationp99Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryMatchLengthDurationp99",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchLengthDurationp99Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryMatchLengthDurationp99OK:
		return v, nil
	case *QueryMatchLengthDurationp99BadRequest:
		return nil, v
	case *QueryMatchLengthDurationp99Unauthorized:
		return nil, v
	case *QueryMatchLengthDurationp99Forbidden:
		return nil, v
	case *QueryMatchLengthDurationp99NotFound:
		return nil, v
	case *QueryMatchLengthDurationp99InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryTotalActiveSessionShort instead.

QueryTotalActiveSession query total active session
Query total active session.
*/
func (a *Client) QueryTotalActiveSession(params *QueryTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalActiveSessionOK, *QueryTotalActiveSessionBadRequest, *QueryTotalActiveSessionUnauthorized, *QueryTotalActiveSessionForbidden, *QueryTotalActiveSessionNotFound, *QueryTotalActiveSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalActiveSessionParams()
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
		ID:                 "queryTotalActiveSession",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalActiveSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryTotalActiveSessionOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryTotalActiveSessionBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryTotalActiveSessionUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryTotalActiveSessionForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryTotalActiveSessionNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryTotalActiveSessionInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalActiveSessionShort query total active session
Query total active session.
*/
func (a *Client) QueryTotalActiveSessionShort(params *QueryTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalActiveSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalActiveSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryTotalActiveSession",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalActiveSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalActiveSessionOK:
		return v, nil
	case *QueryTotalActiveSessionBadRequest:
		return nil, v
	case *QueryTotalActiveSessionUnauthorized:
		return nil, v
	case *QueryTotalActiveSessionForbidden:
		return nil, v
	case *QueryTotalActiveSessionNotFound:
		return nil, v
	case *QueryTotalActiveSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryTotalMatchmakingMatchShort instead.

QueryTotalMatchmakingMatch query total match
Query total match.
*/
func (a *Client) QueryTotalMatchmakingMatch(params *QueryTotalMatchmakingMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchOK, *QueryTotalMatchmakingMatchBadRequest, *QueryTotalMatchmakingMatchUnauthorized, *QueryTotalMatchmakingMatchForbidden, *QueryTotalMatchmakingMatchNotFound, *QueryTotalMatchmakingMatchInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingMatchParams()
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
		ID:                 "queryTotalMatchmakingMatch",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingMatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingMatchOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryTotalMatchmakingMatchBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryTotalMatchmakingMatchUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryTotalMatchmakingMatchForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryTotalMatchmakingMatchNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryTotalMatchmakingMatchInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingMatchShort query total match
Query total match.
*/
func (a *Client) QueryTotalMatchmakingMatchShort(params *QueryTotalMatchmakingMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingMatchParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryTotalMatchmakingMatch",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingMatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingMatchOK:
		return v, nil
	case *QueryTotalMatchmakingMatchBadRequest:
		return nil, v
	case *QueryTotalMatchmakingMatchUnauthorized:
		return nil, v
	case *QueryTotalMatchmakingMatchForbidden:
		return nil, v
	case *QueryTotalMatchmakingMatchNotFound:
		return nil, v
	case *QueryTotalMatchmakingMatchInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryTotalPlayerPersessionShort instead.

QueryTotalPlayerPersession query total player persession average
Query total player persession average.
*/
func (a *Client) QueryTotalPlayerPersession(params *QueryTotalPlayerPersessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalPlayerPersessionOK, *QueryTotalPlayerPersessionBadRequest, *QueryTotalPlayerPersessionUnauthorized, *QueryTotalPlayerPersessionForbidden, *QueryTotalPlayerPersessionNotFound, *QueryTotalPlayerPersessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalPlayerPersessionParams()
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
		ID:                 "queryTotalPlayerPersession",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalPlayerPersessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryTotalPlayerPersessionOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryTotalPlayerPersessionBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryTotalPlayerPersessionUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryTotalPlayerPersessionForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryTotalPlayerPersessionNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryTotalPlayerPersessionInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalPlayerPersessionShort query total player persession average
Query total player persession average.
*/
func (a *Client) QueryTotalPlayerPersessionShort(params *QueryTotalPlayerPersessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalPlayerPersessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalPlayerPersessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryTotalPlayerPersession",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalPlayerPersessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalPlayerPersessionOK:
		return v, nil
	case *QueryTotalPlayerPersessionBadRequest:
		return nil, v
	case *QueryTotalPlayerPersessionUnauthorized:
		return nil, v
	case *QueryTotalPlayerPersessionForbidden:
		return nil, v
	case *QueryTotalPlayerPersessionNotFound:
		return nil, v
	case *QueryTotalPlayerPersessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryTotalMatchmakingCanceledShort instead.

QueryTotalMatchmakingCanceled query total ticket canceled
Query total ticket canceled.
*/
func (a *Client) QueryTotalMatchmakingCanceled(params *QueryTotalMatchmakingCanceledParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCanceledOK, *QueryTotalMatchmakingCanceledBadRequest, *QueryTotalMatchmakingCanceledUnauthorized, *QueryTotalMatchmakingCanceledForbidden, *QueryTotalMatchmakingCanceledNotFound, *QueryTotalMatchmakingCanceledInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingCanceledParams()
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
		ID:                 "queryTotalMatchmakingCanceled",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingCanceledReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingCanceledOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryTotalMatchmakingCanceledBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryTotalMatchmakingCanceledUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryTotalMatchmakingCanceledForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryTotalMatchmakingCanceledNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryTotalMatchmakingCanceledInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingCanceledShort query total ticket canceled
Query total ticket canceled.
*/
func (a *Client) QueryTotalMatchmakingCanceledShort(params *QueryTotalMatchmakingCanceledParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCanceledOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingCanceledParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryTotalMatchmakingCanceled",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingCanceledReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingCanceledOK:
		return v, nil
	case *QueryTotalMatchmakingCanceledBadRequest:
		return nil, v
	case *QueryTotalMatchmakingCanceledUnauthorized:
		return nil, v
	case *QueryTotalMatchmakingCanceledForbidden:
		return nil, v
	case *QueryTotalMatchmakingCanceledNotFound:
		return nil, v
	case *QueryTotalMatchmakingCanceledInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryTotalMatchmakingCreatedShort instead.

QueryTotalMatchmakingCreated query total ticket created
Query total ticket created.
*/
func (a *Client) QueryTotalMatchmakingCreated(params *QueryTotalMatchmakingCreatedParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCreatedOK, *QueryTotalMatchmakingCreatedBadRequest, *QueryTotalMatchmakingCreatedUnauthorized, *QueryTotalMatchmakingCreatedForbidden, *QueryTotalMatchmakingCreatedNotFound, *QueryTotalMatchmakingCreatedInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingCreatedParams()
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
		ID:                 "queryTotalMatchmakingCreated",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingCreatedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingCreatedOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryTotalMatchmakingCreatedBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryTotalMatchmakingCreatedUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryTotalMatchmakingCreatedForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryTotalMatchmakingCreatedNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryTotalMatchmakingCreatedInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingCreatedShort query total ticket created
Query total ticket created.
*/
func (a *Client) QueryTotalMatchmakingCreatedShort(params *QueryTotalMatchmakingCreatedParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCreatedOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingCreatedParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryTotalMatchmakingCreated",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingCreatedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingCreatedOK:
		return v, nil
	case *QueryTotalMatchmakingCreatedBadRequest:
		return nil, v
	case *QueryTotalMatchmakingCreatedUnauthorized:
		return nil, v
	case *QueryTotalMatchmakingCreatedForbidden:
		return nil, v
	case *QueryTotalMatchmakingCreatedNotFound:
		return nil, v
	case *QueryTotalMatchmakingCreatedInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryTotalMatchmakingExpiredShort instead.

QueryTotalMatchmakingExpired query total ticket expired
Query total ticket expired.
*/
func (a *Client) QueryTotalMatchmakingExpired(params *QueryTotalMatchmakingExpiredParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingExpiredOK, *QueryTotalMatchmakingExpiredBadRequest, *QueryTotalMatchmakingExpiredUnauthorized, *QueryTotalMatchmakingExpiredForbidden, *QueryTotalMatchmakingExpiredNotFound, *QueryTotalMatchmakingExpiredInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingExpiredParams()
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
		ID:                 "queryTotalMatchmakingExpired",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingExpiredReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingExpiredOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryTotalMatchmakingExpiredBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryTotalMatchmakingExpiredUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryTotalMatchmakingExpiredForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryTotalMatchmakingExpiredNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryTotalMatchmakingExpiredInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingExpiredShort query total ticket expired
Query total ticket expired.
*/
func (a *Client) QueryTotalMatchmakingExpiredShort(params *QueryTotalMatchmakingExpiredParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingExpiredOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingExpiredParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryTotalMatchmakingExpired",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingExpiredReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingExpiredOK:
		return v, nil
	case *QueryTotalMatchmakingExpiredBadRequest:
		return nil, v
	case *QueryTotalMatchmakingExpiredUnauthorized:
		return nil, v
	case *QueryTotalMatchmakingExpiredForbidden:
		return nil, v
	case *QueryTotalMatchmakingExpiredNotFound:
		return nil, v
	case *QueryTotalMatchmakingExpiredInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryTotalMatchmakingMatchTicketShort instead.

QueryTotalMatchmakingMatchTicket query total ticket match
Query total ticket match.
*/
func (a *Client) QueryTotalMatchmakingMatchTicket(params *QueryTotalMatchmakingMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchTicketOK, *QueryTotalMatchmakingMatchTicketBadRequest, *QueryTotalMatchmakingMatchTicketUnauthorized, *QueryTotalMatchmakingMatchTicketForbidden, *QueryTotalMatchmakingMatchTicketNotFound, *QueryTotalMatchmakingMatchTicketInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingMatchTicketParams()
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
		ID:                 "queryTotalMatchmakingMatchTicket",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingMatchTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingMatchTicketOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryTotalMatchmakingMatchTicketBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryTotalMatchmakingMatchTicketUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryTotalMatchmakingMatchTicketForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryTotalMatchmakingMatchTicketNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryTotalMatchmakingMatchTicketInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingMatchTicketShort query total ticket match
Query total ticket match.
*/
func (a *Client) QueryTotalMatchmakingMatchTicketShort(params *QueryTotalMatchmakingMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchTicketOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingMatchTicketParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryTotalMatchmakingMatchTicket",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingMatchTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingMatchTicketOK:
		return v, nil
	case *QueryTotalMatchmakingMatchTicketBadRequest:
		return nil, v
	case *QueryTotalMatchmakingMatchTicketUnauthorized:
		return nil, v
	case *QueryTotalMatchmakingMatchTicketForbidden:
		return nil, v
	case *QueryTotalMatchmakingMatchTicketNotFound:
		return nil, v
	case *QueryTotalMatchmakingMatchTicketInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryXrayTimelineByTicketIDShort instead.

QueryXrayTimelineByTicketID query xray timeline
Query xray timeline by ticketID
*/
func (a *Client) QueryXrayTimelineByTicketID(params *QueryXrayTimelineByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByTicketIDOK, *QueryXrayTimelineByTicketIDBadRequest, *QueryXrayTimelineByTicketIDUnauthorized, *QueryXrayTimelineByTicketIDForbidden, *QueryXrayTimelineByTicketIDNotFound, *QueryXrayTimelineByTicketIDInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayTimelineByTicketIDParams()
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
		ID:                 "queryXrayTimelineByTicketID",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayTimelineByTicketIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryXrayTimelineByTicketIDOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryXrayTimelineByTicketIDBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryXrayTimelineByTicketIDUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryXrayTimelineByTicketIDForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryXrayTimelineByTicketIDNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryXrayTimelineByTicketIDInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryXrayTimelineByTicketIDShort query xray timeline
Query xray timeline by ticketID
*/
func (a *Client) QueryXrayTimelineByTicketIDShort(params *QueryXrayTimelineByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByTicketIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayTimelineByTicketIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryXrayTimelineByTicketID",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayTimelineByTicketIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryXrayTimelineByTicketIDOK:
		return v, nil
	case *QueryXrayTimelineByTicketIDBadRequest:
		return nil, v
	case *QueryXrayTimelineByTicketIDUnauthorized:
		return nil, v
	case *QueryXrayTimelineByTicketIDForbidden:
		return nil, v
	case *QueryXrayTimelineByTicketIDNotFound:
		return nil, v
	case *QueryXrayTimelineByTicketIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryXrayTimelineByUserIDShort instead.

QueryXrayTimelineByUserID query xray timeline
Query xray timeline by userID or ticketID
*/
func (a *Client) QueryXrayTimelineByUserID(params *QueryXrayTimelineByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByUserIDOK, *QueryXrayTimelineByUserIDBadRequest, *QueryXrayTimelineByUserIDUnauthorized, *QueryXrayTimelineByUserIDForbidden, *QueryXrayTimelineByUserIDNotFound, *QueryXrayTimelineByUserIDInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayTimelineByUserIDParams()
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
		ID:                 "queryXrayTimelineByUserID",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayTimelineByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryXrayTimelineByUserIDOK:
		return v, nil, nil, nil, nil, nil, nil

	case *QueryXrayTimelineByUserIDBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QueryXrayTimelineByUserIDUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QueryXrayTimelineByUserIDForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QueryXrayTimelineByUserIDNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QueryXrayTimelineByUserIDInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryXrayTimelineByUserIDShort query xray timeline
Query xray timeline by userID or ticketID
*/
func (a *Client) QueryXrayTimelineByUserIDShort(params *QueryXrayTimelineByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByUserIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayTimelineByUserIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryXrayTimelineByUserID",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayTimelineByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryXrayTimelineByUserIDOK:
		return v, nil
	case *QueryXrayTimelineByUserIDBadRequest:
		return nil, v
	case *QueryXrayTimelineByUserIDUnauthorized:
		return nil, v
	case *QueryXrayTimelineByUserIDForbidden:
		return nil, v
	case *QueryXrayTimelineByUserIDNotFound:
		return nil, v
	case *QueryXrayTimelineByUserIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
