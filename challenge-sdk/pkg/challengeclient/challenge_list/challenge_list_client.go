// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package challenge_list

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new challenge list API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for challenge list API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetChallenges(params *GetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChallengesOK, *GetChallengesUnauthorized, *GetChallengesForbidden, *GetChallengesInternalServerError, error)
	GetChallengesShort(params *GetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChallengesOK, error)
	PublicGetScheduledGoals(params *PublicGetScheduledGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetScheduledGoalsOK, *PublicGetScheduledGoalsUnauthorized, *PublicGetScheduledGoalsForbidden, *PublicGetScheduledGoalsNotFound, *PublicGetScheduledGoalsInternalServerError, error)
	PublicGetScheduledGoalsShort(params *PublicGetScheduledGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetScheduledGoalsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetChallengesShort instead.

GetChallenges list challenges
- Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) GetChallenges(params *GetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChallengesOK, *GetChallengesUnauthorized, *GetChallengesForbidden, *GetChallengesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetChallengesParams()
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
		ID:                 "GetChallenges",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetChallengesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetChallengesOK:
		return v, nil, nil, nil, nil

	case *GetChallengesUnauthorized:
		return nil, v, nil, nil, nil

	case *GetChallengesForbidden:
		return nil, nil, v, nil, nil

	case *GetChallengesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetChallengesShort list challenges
- Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) GetChallengesShort(params *GetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChallengesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetChallengesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetChallenges",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetChallengesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetChallengesOK:
		return v, nil
	case *GetChallengesUnauthorized:
		return nil, v
	case *GetChallengesForbidden:
		return nil, v
	case *GetChallengesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetScheduledGoalsShort instead.

PublicGetScheduledGoals list goals of a challenge
- Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) PublicGetScheduledGoals(params *PublicGetScheduledGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetScheduledGoalsOK, *PublicGetScheduledGoalsUnauthorized, *PublicGetScheduledGoalsForbidden, *PublicGetScheduledGoalsNotFound, *PublicGetScheduledGoalsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetScheduledGoalsParams()
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
		ID:                 "publicGetScheduledGoals",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetScheduledGoalsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetScheduledGoalsOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetScheduledGoalsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicGetScheduledGoalsForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicGetScheduledGoalsNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGetScheduledGoalsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetScheduledGoalsShort list goals of a challenge
- Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) PublicGetScheduledGoalsShort(params *PublicGetScheduledGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetScheduledGoalsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetScheduledGoalsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetScheduledGoals",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetScheduledGoalsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetScheduledGoalsOK:
		return v, nil
	case *PublicGetScheduledGoalsUnauthorized:
		return nil, v
	case *PublicGetScheduledGoalsForbidden:
		return nil, v
	case *PublicGetScheduledGoalsNotFound:
		return nil, v
	case *PublicGetScheduledGoalsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
