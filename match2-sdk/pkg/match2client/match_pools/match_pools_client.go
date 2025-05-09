// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package match_pools

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new match pools API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for match pools API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	MatchPoolList(params *MatchPoolListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolListOK, *MatchPoolListUnauthorized, *MatchPoolListForbidden, *MatchPoolListInternalServerError, error)
	MatchPoolListShort(params *MatchPoolListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolListOK, error)
	CreateMatchPool(params *CreateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchPoolCreated, *CreateMatchPoolBadRequest, *CreateMatchPoolUnauthorized, *CreateMatchPoolForbidden, *CreateMatchPoolConflict, *CreateMatchPoolInternalServerError, error)
	CreateMatchPoolShort(params *CreateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchPoolCreated, error)
	MatchPoolDetails(params *MatchPoolDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolDetailsOK, *MatchPoolDetailsUnauthorized, *MatchPoolDetailsForbidden, *MatchPoolDetailsNotFound, *MatchPoolDetailsInternalServerError, error)
	MatchPoolDetailsShort(params *MatchPoolDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolDetailsOK, error)
	UpdateMatchPool(params *UpdateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchPoolOK, *UpdateMatchPoolBadRequest, *UpdateMatchPoolUnauthorized, *UpdateMatchPoolForbidden, *UpdateMatchPoolNotFound, *UpdateMatchPoolInternalServerError, error)
	UpdateMatchPoolShort(params *UpdateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchPoolOK, error)
	DeleteMatchPool(params *DeleteMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchPoolNoContent, *DeleteMatchPoolUnauthorized, *DeleteMatchPoolForbidden, *DeleteMatchPoolNotFound, *DeleteMatchPoolInternalServerError, error)
	DeleteMatchPoolShort(params *DeleteMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchPoolNoContent, error)
	MatchPoolMetric(params *MatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolMetricOK, *MatchPoolMetricUnauthorized, *MatchPoolMetricForbidden, *MatchPoolMetricNotFound, *MatchPoolMetricInternalServerError, error)
	MatchPoolMetricShort(params *MatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolMetricOK, error)
	PostMatchErrorMetric(params *PostMatchErrorMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PostMatchErrorMetricNoContent, *PostMatchErrorMetricBadRequest, *PostMatchErrorMetricUnauthorized, *PostMatchErrorMetricForbidden, *PostMatchErrorMetricNotFound, *PostMatchErrorMetricInternalServerError, error)
	PostMatchErrorMetricShort(params *PostMatchErrorMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PostMatchErrorMetricNoContent, error)
	GetPlayerMetric(params *GetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerMetricOK, *GetPlayerMetricUnauthorized, *GetPlayerMetricForbidden, *GetPlayerMetricNotFound, *GetPlayerMetricInternalServerError, error)
	GetPlayerMetricShort(params *GetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerMetricOK, error)
	AdminGetMatchPoolTickets(params *AdminGetMatchPoolTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchPoolTicketsOK, *AdminGetMatchPoolTicketsUnauthorized, *AdminGetMatchPoolTicketsForbidden, *AdminGetMatchPoolTicketsNotFound, *AdminGetMatchPoolTicketsInternalServerError, error)
	AdminGetMatchPoolTicketsShort(params *AdminGetMatchPoolTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchPoolTicketsOK, error)
	PublicGetPlayerMetric(params *PublicGetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerMetricOK, *PublicGetPlayerMetricUnauthorized, *PublicGetPlayerMetricForbidden, *PublicGetPlayerMetricNotFound, *PublicGetPlayerMetricInternalServerError, error)
	PublicGetPlayerMetricShort(params *PublicGetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerMetricOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use MatchPoolListShort instead.

MatchPoolList list match pools
List matchmaking pools.
*/
func (a *Client) MatchPoolList(params *MatchPoolListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolListOK, *MatchPoolListUnauthorized, *MatchPoolListForbidden, *MatchPoolListInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchPoolListParams()
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
		ID:                 "MatchPoolList",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchPoolListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *MatchPoolListOK:
		return v, nil, nil, nil, nil

	case *MatchPoolListUnauthorized:
		return nil, v, nil, nil, nil

	case *MatchPoolListForbidden:
		return nil, nil, v, nil, nil

	case *MatchPoolListInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MatchPoolListShort list match pools
List matchmaking pools.
*/
func (a *Client) MatchPoolListShort(params *MatchPoolListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchPoolListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "MatchPoolList",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchPoolListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MatchPoolListOK:
		return v, nil
	case *MatchPoolListUnauthorized:
		return nil, v
	case *MatchPoolListForbidden:
		return nil, v
	case *MatchPoolListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateMatchPoolShort instead.

CreateMatchPool create a match pool
Creates a new matchmaking pool.

A pool is isolated from other pools (i.e. tickets may be matched with other tickets in the same pool, but not with tickets in other pools).
Each pool has its own matchmaking rules and/or logic.

ticket_expiration_seconds and backfill_ticket_expiration_seconds will be set to 300 seconds (5 minutes) by default if not filled.

Match Function holds information about the name of the match logic server that matchmaking can refers to. By default we provide ("default" and "basic").
Match Function will be used as reference value for Match Function Overrides if not set.
In case Customer would like to use matchmaking service default match logic, then specify it in "match_function_overrides".
This sample configuration will let matchmaking service will use "default" match logic for make matches, while validation will hit both "default" and "custom" match logics.
e.g.
{
"match_function": "custom",
"match_function_overrides": {
"validation": []{"default","custom"},
"make_matches": "default",
}
}
*/
func (a *Client) CreateMatchPool(params *CreateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchPoolCreated, *CreateMatchPoolBadRequest, *CreateMatchPoolUnauthorized, *CreateMatchPoolForbidden, *CreateMatchPoolConflict, *CreateMatchPoolInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMatchPoolParams()
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
		ID:                 "CreateMatchPool",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateMatchPoolCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateMatchPoolBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateMatchPoolUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateMatchPoolForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateMatchPoolConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateMatchPoolInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateMatchPoolShort create a match pool
Creates a new matchmaking pool.

A pool is isolated from other pools (i.e. tickets may be matched with other tickets in the same pool, but not with tickets in other pools).
Each pool has its own matchmaking rules and/or logic.

ticket_expiration_seconds and backfill_ticket_expiration_seconds will be set to 300 seconds (5 minutes) by default if not filled.

Match Function holds information about the name of the match logic server that matchmaking can refers to. By default we provide ("default" and "basic").
Match Function will be used as reference value for Match Function Overrides if not set.
In case Customer would like to use matchmaking service default match logic, then specify it in "match_function_overrides".
This sample configuration will let matchmaking service will use "default" match logic for make matches, while validation will hit both "default" and "custom" match logics.
e.g.
{
"match_function": "custom",
"match_function_overrides": {
"validation": []{"default","custom"},
"make_matches": "default",
}
}
*/
func (a *Client) CreateMatchPoolShort(params *CreateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchPoolCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMatchPoolParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateMatchPool",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateMatchPoolCreated:
		return v, nil
	case *CreateMatchPoolBadRequest:
		return nil, v
	case *CreateMatchPoolUnauthorized:
		return nil, v
	case *CreateMatchPoolForbidden:
		return nil, v
	case *CreateMatchPoolConflict:
		return nil, v
	case *CreateMatchPoolInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use MatchPoolDetailsShort instead.

MatchPoolDetails get details for a specific match pool
Get details for a specific match pool
*/
func (a *Client) MatchPoolDetails(params *MatchPoolDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolDetailsOK, *MatchPoolDetailsUnauthorized, *MatchPoolDetailsForbidden, *MatchPoolDetailsNotFound, *MatchPoolDetailsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchPoolDetailsParams()
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
		ID:                 "MatchPoolDetails",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchPoolDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *MatchPoolDetailsOK:
		return v, nil, nil, nil, nil, nil

	case *MatchPoolDetailsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *MatchPoolDetailsForbidden:
		return nil, nil, v, nil, nil, nil

	case *MatchPoolDetailsNotFound:
		return nil, nil, nil, v, nil, nil

	case *MatchPoolDetailsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MatchPoolDetailsShort get details for a specific match pool
Get details for a specific match pool
*/
func (a *Client) MatchPoolDetailsShort(params *MatchPoolDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolDetailsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchPoolDetailsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "MatchPoolDetails",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchPoolDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MatchPoolDetailsOK:
		return v, nil
	case *MatchPoolDetailsUnauthorized:
		return nil, v
	case *MatchPoolDetailsForbidden:
		return nil, v
	case *MatchPoolDetailsNotFound:
		return nil, v
	case *MatchPoolDetailsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateMatchPoolShort instead.

UpdateMatchPool update a match pool
Updates an existing matchmaking pool.

ticket_expiration_seconds and backfill_ticket_expiration_seconds will be set to 300 seconds (5 minutes) by default if not filled.

Match Function holds information about the name of the match logic server that matchmaking can refers to. By default we provide ("default" and "basic").
Match Function will be used as reference value for Match Function Overrides if not set.
In case Customer would like to use matchmaking service default match logic, then specify it in "match_function_overrides".
This sample configuration will let matchmaking service will use "default" match logic for make matches, while validation will hit both "default" and "custom" match logics.
e.g.
{
"match_function": "custom",
"match_function_overrides": {
"validation": []{"default","custom"},
"make_matches": "default",
}
}
*/
func (a *Client) UpdateMatchPool(params *UpdateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchPoolOK, *UpdateMatchPoolBadRequest, *UpdateMatchPoolUnauthorized, *UpdateMatchPoolForbidden, *UpdateMatchPoolNotFound, *UpdateMatchPoolInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMatchPoolParams()
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
		ID:                 "UpdateMatchPool",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateMatchPoolOK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateMatchPoolBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateMatchPoolUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateMatchPoolForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateMatchPoolNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateMatchPoolInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMatchPoolShort update a match pool
Updates an existing matchmaking pool.

ticket_expiration_seconds and backfill_ticket_expiration_seconds will be set to 300 seconds (5 minutes) by default if not filled.

Match Function holds information about the name of the match logic server that matchmaking can refers to. By default we provide ("default" and "basic").
Match Function will be used as reference value for Match Function Overrides if not set.
In case Customer would like to use matchmaking service default match logic, then specify it in "match_function_overrides".
This sample configuration will let matchmaking service will use "default" match logic for make matches, while validation will hit both "default" and "custom" match logics.
e.g.
{
"match_function": "custom",
"match_function_overrides": {
"validation": []{"default","custom"},
"make_matches": "default",
}
}
*/
func (a *Client) UpdateMatchPoolShort(params *UpdateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchPoolOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMatchPoolParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateMatchPool",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMatchPoolOK:
		return v, nil
	case *UpdateMatchPoolBadRequest:
		return nil, v
	case *UpdateMatchPoolUnauthorized:
		return nil, v
	case *UpdateMatchPoolForbidden:
		return nil, v
	case *UpdateMatchPoolNotFound:
		return nil, v
	case *UpdateMatchPoolInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteMatchPoolShort instead.

DeleteMatchPool delete a match pool
Deletes an existing matchmaking pool.
*/
func (a *Client) DeleteMatchPool(params *DeleteMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchPoolNoContent, *DeleteMatchPoolUnauthorized, *DeleteMatchPoolForbidden, *DeleteMatchPoolNotFound, *DeleteMatchPoolInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteMatchPoolParams()
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
		ID:                 "DeleteMatchPool",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteMatchPoolNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteMatchPoolUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteMatchPoolForbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteMatchPoolNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteMatchPoolInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteMatchPoolShort delete a match pool
Deletes an existing matchmaking pool.
*/
func (a *Client) DeleteMatchPoolShort(params *DeleteMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchPoolNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteMatchPoolParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteMatchPool",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteMatchPoolNoContent:
		return v, nil
	case *DeleteMatchPoolUnauthorized:
		return nil, v
	case *DeleteMatchPoolForbidden:
		return nil, v
	case *DeleteMatchPoolNotFound:
		return nil, v
	case *DeleteMatchPoolInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use MatchPoolMetricShort instead.

MatchPoolMetric get metrics for a specific match pool
Get metric for a specific match pool

Result: queueTime in seconds
*/
func (a *Client) MatchPoolMetric(params *MatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolMetricOK, *MatchPoolMetricUnauthorized, *MatchPoolMetricForbidden, *MatchPoolMetricNotFound, *MatchPoolMetricInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchPoolMetricParams()
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
		ID:                 "MatchPoolMetric",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchPoolMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *MatchPoolMetricOK:
		return v, nil, nil, nil, nil, nil

	case *MatchPoolMetricUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *MatchPoolMetricForbidden:
		return nil, nil, v, nil, nil, nil

	case *MatchPoolMetricNotFound:
		return nil, nil, nil, v, nil, nil

	case *MatchPoolMetricInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MatchPoolMetricShort get metrics for a specific match pool
Get metric for a specific match pool

Result: queueTime in seconds
*/
func (a *Client) MatchPoolMetricShort(params *MatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolMetricOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchPoolMetricParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "MatchPoolMetric",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchPoolMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MatchPoolMetricOK:
		return v, nil
	case *MatchPoolMetricUnauthorized:
		return nil, v
	case *MatchPoolMetricForbidden:
		return nil, v
	case *MatchPoolMetricNotFound:
		return nil, v
	case *MatchPoolMetricInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PostMatchErrorMetricShort instead.

PostMatchErrorMetric post metrics for external flow failure in a specific match pool
Post metrics for external flow failure in a specific match pool
*/
func (a *Client) PostMatchErrorMetric(params *PostMatchErrorMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PostMatchErrorMetricNoContent, *PostMatchErrorMetricBadRequest, *PostMatchErrorMetricUnauthorized, *PostMatchErrorMetricForbidden, *PostMatchErrorMetricNotFound, *PostMatchErrorMetricInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostMatchErrorMetricParams()
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
		ID:                 "PostMatchErrorMetric",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/external-failure",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostMatchErrorMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PostMatchErrorMetricNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PostMatchErrorMetricBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PostMatchErrorMetricUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PostMatchErrorMetricForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PostMatchErrorMetricNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PostMatchErrorMetricInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostMatchErrorMetricShort post metrics for external flow failure in a specific match pool
Post metrics for external flow failure in a specific match pool
*/
func (a *Client) PostMatchErrorMetricShort(params *PostMatchErrorMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PostMatchErrorMetricNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostMatchErrorMetricParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PostMatchErrorMetric",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/external-failure",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostMatchErrorMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostMatchErrorMetricNoContent:
		return v, nil
	case *PostMatchErrorMetricBadRequest:
		return nil, v
	case *PostMatchErrorMetricUnauthorized:
		return nil, v
	case *PostMatchErrorMetricForbidden:
		return nil, v
	case *PostMatchErrorMetricNotFound:
		return nil, v
	case *PostMatchErrorMetricInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPlayerMetricShort instead.

GetPlayerMetric get metrics player for a specific match pool
Get player metric for a specific match pool
*/
func (a *Client) GetPlayerMetric(params *GetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerMetricOK, *GetPlayerMetricUnauthorized, *GetPlayerMetricForbidden, *GetPlayerMetricNotFound, *GetPlayerMetricInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerMetricParams()
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
		ID:                 "GetPlayerMetric",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPlayerMetricOK:
		return v, nil, nil, nil, nil, nil

	case *GetPlayerMetricUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetPlayerMetricForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetPlayerMetricNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetPlayerMetricInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerMetricShort get metrics player for a specific match pool
Get player metric for a specific match pool
*/
func (a *Client) GetPlayerMetricShort(params *GetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerMetricOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerMetricParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetPlayerMetric",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayerMetricOK:
		return v, nil
	case *GetPlayerMetricUnauthorized:
		return nil, v
	case *GetPlayerMetricForbidden:
		return nil, v
	case *GetPlayerMetricNotFound:
		return nil, v
	case *GetPlayerMetricInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetMatchPoolTicketsShort instead.

AdminGetMatchPoolTickets get tickets in queue for a specific match pool
Get tickets in queue for a specific match pool

Result: number of tickets and list of ticket detail in a match pool.
*/
func (a *Client) AdminGetMatchPoolTickets(params *AdminGetMatchPoolTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchPoolTicketsOK, *AdminGetMatchPoolTicketsUnauthorized, *AdminGetMatchPoolTicketsForbidden, *AdminGetMatchPoolTicketsNotFound, *AdminGetMatchPoolTicketsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMatchPoolTicketsParams()
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
		ID:                 "adminGetMatchPoolTickets",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMatchPoolTicketsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetMatchPoolTicketsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetMatchPoolTicketsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetMatchPoolTicketsForbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetMatchPoolTicketsNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetMatchPoolTicketsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMatchPoolTicketsShort get tickets in queue for a specific match pool
Get tickets in queue for a specific match pool

Result: number of tickets and list of ticket detail in a match pool.
*/
func (a *Client) AdminGetMatchPoolTicketsShort(params *AdminGetMatchPoolTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchPoolTicketsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMatchPoolTicketsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetMatchPoolTickets",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMatchPoolTicketsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMatchPoolTicketsOK:
		return v, nil
	case *AdminGetMatchPoolTicketsUnauthorized:
		return nil, v
	case *AdminGetMatchPoolTicketsForbidden:
		return nil, v
	case *AdminGetMatchPoolTicketsNotFound:
		return nil, v
	case *AdminGetMatchPoolTicketsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetPlayerMetricShort instead.

PublicGetPlayerMetric get metrics player for a specific match pool
Public get player metric for a specific match pool
*/
func (a *Client) PublicGetPlayerMetric(params *PublicGetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerMetricOK, *PublicGetPlayerMetricUnauthorized, *PublicGetPlayerMetricForbidden, *PublicGetPlayerMetricNotFound, *PublicGetPlayerMetricInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerMetricParams()
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
		ID:                 "PublicGetPlayerMetric",
		Method:             "GET",
		PathPattern:        "/match2/v1/public/namespaces/{namespace}/match-pools/{pool}/metrics/player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerMetricOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetPlayerMetricUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicGetPlayerMetricForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicGetPlayerMetricNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGetPlayerMetricInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPlayerMetricShort get metrics player for a specific match pool
Public get player metric for a specific match pool
*/
func (a *Client) PublicGetPlayerMetricShort(params *PublicGetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerMetricOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerMetricParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetPlayerMetric",
		Method:             "GET",
		PathPattern:        "/match2/v1/public/namespaces/{namespace}/match-pools/{pool}/metrics/player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerMetricOK:
		return v, nil
	case *PublicGetPlayerMetricUnauthorized:
		return nil, v
	case *PublicGetPlayerMetricForbidden:
		return nil, v
	case *PublicGetPlayerMetricNotFound:
		return nil, v
	case *PublicGetPlayerMetricInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
