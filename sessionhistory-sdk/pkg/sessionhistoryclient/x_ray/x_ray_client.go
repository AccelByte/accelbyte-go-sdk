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
	CreateXrayTicketObservability(params *CreateXrayTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayTicketObservabilityOK, *CreateXrayTicketObservabilityBadRequest, *CreateXrayTicketObservabilityUnauthorized, *CreateXrayTicketObservabilityForbidden, *CreateXrayTicketObservabilityInternalServerError, error)
	CreateXrayTicketObservabilityShort(params *CreateXrayTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayTicketObservabilityOK, error)
	CreateXrayBulkTicketObservability(params *CreateXrayBulkTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayBulkTicketObservabilityOK, *CreateXrayBulkTicketObservabilityBadRequest, *CreateXrayBulkTicketObservabilityUnauthorized, *CreateXrayBulkTicketObservabilityForbidden, *CreateXrayBulkTicketObservabilityInternalServerError, error)
	CreateXrayBulkTicketObservabilityShort(params *CreateXrayBulkTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayBulkTicketObservabilityOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateXrayTicketObservabilityShort instead.

CreateXrayTicketObservability create ticket observability request
Create ticket observability request
Request body details (all attributes are optional):
Timestamp : timestamp when calling this endpoint
Action : support one of the following value:
1. "matchFound"
2. "matchNotFound"
3. "flexed"
TicketID : ticket ID
MatchID : match ID will be filled only when match found
Namespace : ticket current namespace
GameMode : ticket current matchpool
ActiveAllianceRule : current active alliance ruleset
ActiveMatchingRule : current active matching ruleset
Function : name of the function that called the endpoint
Iteration : total iteration before match found
TimeToMatchSec : time to match (in seconds) will be filled only when match found
UnmatchReason : reason when unable to find match
RemainingTickets : remaining ticket when unable to find match
RemainingPlayersPerTicket : remaining players when unable to find match
UnbackfillReason : reason when unable to backfill
IsBackfillMatch : flag to distinguish between new match and backfill match
IsRuleSetFlexed : flag if ruleset is getting flexed
TickID : tick id for the matchmaking tick
SessionTickID : session tick id for differentiate session when doing matches
*/
func (a *Client) CreateXrayTicketObservability(params *CreateXrayTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayTicketObservabilityOK, *CreateXrayTicketObservabilityBadRequest, *CreateXrayTicketObservabilityUnauthorized, *CreateXrayTicketObservabilityForbidden, *CreateXrayTicketObservabilityInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateXrayTicketObservabilityParams()
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
		ID:                 "createXrayTicketObservability",
		Method:             "POST",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateXrayTicketObservabilityReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateXrayTicketObservabilityOK:
		return v, nil, nil, nil, nil, nil

	case *CreateXrayTicketObservabilityBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateXrayTicketObservabilityUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateXrayTicketObservabilityForbidden:
		return nil, nil, nil, v, nil, nil

	case *CreateXrayTicketObservabilityInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateXrayTicketObservabilityShort create ticket observability request
Create ticket observability request
Request body details (all attributes are optional):
Timestamp : timestamp when calling this endpoint
Action : support one of the following value:
1. "matchFound"
2. "matchNotFound"
3. "flexed"
TicketID : ticket ID
MatchID : match ID will be filled only when match found
Namespace : ticket current namespace
GameMode : ticket current matchpool
ActiveAllianceRule : current active alliance ruleset
ActiveMatchingRule : current active matching ruleset
Function : name of the function that called the endpoint
Iteration : total iteration before match found
TimeToMatchSec : time to match (in seconds) will be filled only when match found
UnmatchReason : reason when unable to find match
RemainingTickets : remaining ticket when unable to find match
RemainingPlayersPerTicket : remaining players when unable to find match
UnbackfillReason : reason when unable to backfill
IsBackfillMatch : flag to distinguish between new match and backfill match
IsRuleSetFlexed : flag if ruleset is getting flexed
TickID : tick id for the matchmaking tick
SessionTickID : session tick id for differentiate session when doing matches
*/
func (a *Client) CreateXrayTicketObservabilityShort(params *CreateXrayTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayTicketObservabilityOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateXrayTicketObservabilityParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createXrayTicketObservability",
		Method:             "POST",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateXrayTicketObservabilityReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateXrayTicketObservabilityOK:
		return v, nil
	case *CreateXrayTicketObservabilityBadRequest:
		return nil, v
	case *CreateXrayTicketObservabilityUnauthorized:
		return nil, v
	case *CreateXrayTicketObservabilityForbidden:
		return nil, v
	case *CreateXrayTicketObservabilityInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateXrayBulkTicketObservabilityShort instead.

CreateXrayBulkTicketObservability create bulk ticket observability request
Create bulk ticket observability request
Request body details (all attributes are optional):
Timestamp : timestamp when calling this endpoint
Action : support one of the following value:
1. "matchFound"
2. "matchNotFound"
3. "flexed"
PartyID : ticket Party ID
MatchID : match ID will be filled only when match found
Namespace : ticket current namespace
GameMode : ticket current matchpool
ActiveAllianceRule : current active alliance ruleset
ActiveMatchingRule : current active matching ruleset
Function : name of the function that called the endpoint
Iteration : total iteration before match found
TimeToMatchSec : time to match (in seconds) will be filled only when match found
UnmatchReason : reason when unable to find match
RemainingTickets : remaining ticket when unable to find match
RemainingPlayersPerTicket : remaining players when unable to find match
UnbackfillReason : reason when unable to backfill
IsBackfillMatch : flag to distinguish between new match and backfill match
IsRuleSetFlexed : flag if ruleset is getting flexed
TickID : tick id for the matchmaking tick
SessionTickID : session tick id for differentiate session when doing matches
*/
func (a *Client) CreateXrayBulkTicketObservability(params *CreateXrayBulkTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayBulkTicketObservabilityOK, *CreateXrayBulkTicketObservabilityBadRequest, *CreateXrayBulkTicketObservabilityUnauthorized, *CreateXrayBulkTicketObservabilityForbidden, *CreateXrayBulkTicketObservabilityInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateXrayBulkTicketObservabilityParams()
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
		ID:                 "createXrayBulkTicketObservability",
		Method:             "POST",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateXrayBulkTicketObservabilityReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateXrayBulkTicketObservabilityOK:
		return v, nil, nil, nil, nil, nil

	case *CreateXrayBulkTicketObservabilityBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateXrayBulkTicketObservabilityUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateXrayBulkTicketObservabilityForbidden:
		return nil, nil, nil, v, nil, nil

	case *CreateXrayBulkTicketObservabilityInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateXrayBulkTicketObservabilityShort create bulk ticket observability request
Create bulk ticket observability request
Request body details (all attributes are optional):
Timestamp : timestamp when calling this endpoint
Action : support one of the following value:
1. "matchFound"
2. "matchNotFound"
3. "flexed"
PartyID : ticket Party ID
MatchID : match ID will be filled only when match found
Namespace : ticket current namespace
GameMode : ticket current matchpool
ActiveAllianceRule : current active alliance ruleset
ActiveMatchingRule : current active matching ruleset
Function : name of the function that called the endpoint
Iteration : total iteration before match found
TimeToMatchSec : time to match (in seconds) will be filled only when match found
UnmatchReason : reason when unable to find match
RemainingTickets : remaining ticket when unable to find match
RemainingPlayersPerTicket : remaining players when unable to find match
UnbackfillReason : reason when unable to backfill
IsBackfillMatch : flag to distinguish between new match and backfill match
IsRuleSetFlexed : flag if ruleset is getting flexed
TickID : tick id for the matchmaking tick
SessionTickID : session tick id for differentiate session when doing matches
*/
func (a *Client) CreateXrayBulkTicketObservabilityShort(params *CreateXrayBulkTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayBulkTicketObservabilityOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateXrayBulkTicketObservabilityParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createXrayBulkTicketObservability",
		Method:             "POST",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateXrayBulkTicketObservabilityReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateXrayBulkTicketObservabilityOK:
		return v, nil
	case *CreateXrayBulkTicketObservabilityBadRequest:
		return nil, v
	case *CreateXrayBulkTicketObservabilityUnauthorized:
		return nil, v
	case *CreateXrayBulkTicketObservabilityForbidden:
		return nil, v
	case *CreateXrayBulkTicketObservabilityInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
