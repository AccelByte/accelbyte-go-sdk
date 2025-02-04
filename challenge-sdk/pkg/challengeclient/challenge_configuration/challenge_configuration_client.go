// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package challenge_configuration

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new challenge configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for challenge configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetChallenges(params *AdminGetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengesOK, *AdminGetChallengesBadRequest, *AdminGetChallengesUnauthorized, *AdminGetChallengesForbidden, *AdminGetChallengesInternalServerError, error)
	AdminGetChallengesShort(params *AdminGetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengesOK, error)
	AdminCreateChallenge(params *AdminCreateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChallengeCreated, *AdminCreateChallengeBadRequest, *AdminCreateChallengeUnauthorized, *AdminCreateChallengeForbidden, *AdminCreateChallengeConflict, *AdminCreateChallengeUnprocessableEntity, *AdminCreateChallengeInternalServerError, error)
	AdminCreateChallengeShort(params *AdminCreateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChallengeCreated, error)
	AdminGetActiveChallenges(params *AdminGetActiveChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetActiveChallengesOK, *AdminGetActiveChallengesUnauthorized, *AdminGetActiveChallengesForbidden, *AdminGetActiveChallengesInternalServerError, error)
	AdminGetActiveChallengesShort(params *AdminGetActiveChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetActiveChallengesOK, error)
	AdminGetChallenge(params *AdminGetChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengeOK, *AdminGetChallengeUnauthorized, *AdminGetChallengeForbidden, *AdminGetChallengeNotFound, *AdminGetChallengeInternalServerError, error)
	AdminGetChallengeShort(params *AdminGetChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengeOK, error)
	AdminUpdateChallenge(params *AdminUpdateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChallengeOK, *AdminUpdateChallengeBadRequest, *AdminUpdateChallengeUnauthorized, *AdminUpdateChallengeForbidden, *AdminUpdateChallengeNotFound, *AdminUpdateChallengeUnprocessableEntity, *AdminUpdateChallengeInternalServerError, error)
	AdminUpdateChallengeShort(params *AdminUpdateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChallengeOK, error)
	AdminDeleteChallenge(params *AdminDeleteChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChallengeNoContent, *AdminDeleteChallengeBadRequest, *AdminDeleteChallengeUnauthorized, *AdminDeleteChallengeForbidden, *AdminDeleteChallengeNotFound, *AdminDeleteChallengeInternalServerError, error)
	AdminDeleteChallengeShort(params *AdminDeleteChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChallengeNoContent, error)
	AdminGetPeriods(params *AdminGetPeriodsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPeriodsOK, *AdminGetPeriodsUnauthorized, *AdminGetPeriodsForbidden, *AdminGetPeriodsNotFound, *AdminGetPeriodsInternalServerError, error)
	AdminGetPeriodsShort(params *AdminGetPeriodsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPeriodsOK, error)
	AdminRandomizeChallenge(params *AdminRandomizeChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRandomizeChallengeOK, *AdminRandomizeChallengeBadRequest, *AdminRandomizeChallengeUnauthorized, *AdminRandomizeChallengeForbidden, *AdminRandomizeChallengeNotFound, *AdminRandomizeChallengeInternalServerError, error)
	AdminRandomizeChallengeShort(params *AdminRandomizeChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRandomizeChallengeOK, error)
	AdminDeleteTiedChallenge(params *AdminDeleteTiedChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTiedChallengeNoContent, *AdminDeleteTiedChallengeBadRequest, *AdminDeleteTiedChallengeUnauthorized, *AdminDeleteTiedChallengeForbidden, *AdminDeleteTiedChallengeNotFound, *AdminDeleteTiedChallengeInternalServerError, error)
	AdminDeleteTiedChallengeShort(params *AdminDeleteTiedChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTiedChallengeNoContent, error)
	AdminUpdateTiedChallengeSchedule(params *AdminUpdateTiedChallengeScheduleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTiedChallengeScheduleOK, *AdminUpdateTiedChallengeScheduleBadRequest, *AdminUpdateTiedChallengeScheduleUnauthorized, *AdminUpdateTiedChallengeScheduleForbidden, *AdminUpdateTiedChallengeScheduleNotFound, *AdminUpdateTiedChallengeScheduleInternalServerError, error)
	AdminUpdateTiedChallengeScheduleShort(params *AdminUpdateTiedChallengeScheduleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTiedChallengeScheduleOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetChallengesShort instead.

AdminGetChallenges list challenges
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetChallenges(params *AdminGetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengesOK, *AdminGetChallengesBadRequest, *AdminGetChallengesUnauthorized, *AdminGetChallengesForbidden, *AdminGetChallengesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChallengesParams()
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
		ID:                 "adminGetChallenges",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChallengesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetChallengesOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetChallengesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetChallengesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetChallengesForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetChallengesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetChallengesShort list challenges
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetChallengesShort(params *AdminGetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChallengesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetChallenges",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChallengesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetChallengesOK:
		return v, nil
	case *AdminGetChallengesBadRequest:
		return nil, v
	case *AdminGetChallengesUnauthorized:
		return nil, v
	case *AdminGetChallengesForbidden:
		return nil, v
	case *AdminGetChallengesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateChallengeShort instead.

AdminCreateChallenge create new challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]
Challenge is a collection of goals that can be completed by players. Challenge can have rules that specify what and when goals will be available for players to be taken.
#### Request body:
- code: only lowercase letters, numbers, and the separator - are allowed; must start and end with letter
- name: name of the challenge
- description: text describing about the challenge (optional)
- startDate: timestamp of when the challenge is started
- endDate: timestamp of when the challenge is ended (optional)
- endAfter: describe number of period challenge will be retired after (optional). To configure challenge that never end, leave the endDate and endAfter field null/empty.
- repeatAfter: describe number of period challenge's goals will be repeated after. Leave it empty if you don't want to repeat the challenge.
- rotation: describe how long goals in a challenge will be available for players to progress before rotated with another goals. (DAILY|WEEKLY|MONTHLY|NONE)
- activeGoalsPerRotation: number of goals per rotation (currently only applicable for RANDOMIZE assignment)
- assignmentRule: describe how the goals will be assigned and scheduled to users. (FIXED|RANDOMIZED|UNSCHEDULED|CUSTOM)
- goalsVisibility: describe whether users can see all goals under challenge, or only active goal in one rotation period only. (SHOWALL|PERIODONLY)
- resetConfig: describe when rotation reset will happen (optional).
- resetTime: Reset time must follow hours:minutes in 24 hours format (e.g. 01:30, 23:15) and in UTC timezone. Default to "00:00"
- resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Default to 1 in WEEKLY rotation.
- resetDate: Reset Date must be a number 1 - 31. Default to 1 in MONTHLY rotation.
- randomizedPerRotation:
- true: each goal will be randomly assigned to multiple periods
- false: a goal will only be assigned to one period
- tags: challenge's labels.
*/
func (a *Client) AdminCreateChallenge(params *AdminCreateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChallengeCreated, *AdminCreateChallengeBadRequest, *AdminCreateChallengeUnauthorized, *AdminCreateChallengeForbidden, *AdminCreateChallengeConflict, *AdminCreateChallengeUnprocessableEntity, *AdminCreateChallengeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateChallengeParams()
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
		ID:                 "adminCreateChallenge",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateChallengeCreated:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminCreateChallengeBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminCreateChallengeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminCreateChallengeForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminCreateChallengeConflict:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminCreateChallengeUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminCreateChallengeInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateChallengeShort create new challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]
Challenge is a collection of goals that can be completed by players. Challenge can have rules that specify what and when goals will be available for players to be taken.
#### Request body:
- code: only lowercase letters, numbers, and the separator - are allowed; must start and end with letter
- name: name of the challenge
- description: text describing about the challenge (optional)
- startDate: timestamp of when the challenge is started
- endDate: timestamp of when the challenge is ended (optional)
- endAfter: describe number of period challenge will be retired after (optional). To configure challenge that never end, leave the endDate and endAfter field null/empty.
- repeatAfter: describe number of period challenge's goals will be repeated after. Leave it empty if you don't want to repeat the challenge.
- rotation: describe how long goals in a challenge will be available for players to progress before rotated with another goals. (DAILY|WEEKLY|MONTHLY|NONE)
- activeGoalsPerRotation: number of goals per rotation (currently only applicable for RANDOMIZE assignment)
- assignmentRule: describe how the goals will be assigned and scheduled to users. (FIXED|RANDOMIZED|UNSCHEDULED|CUSTOM)
- goalsVisibility: describe whether users can see all goals under challenge, or only active goal in one rotation period only. (SHOWALL|PERIODONLY)
- resetConfig: describe when rotation reset will happen (optional).
- resetTime: Reset time must follow hours:minutes in 24 hours format (e.g. 01:30, 23:15) and in UTC timezone. Default to "00:00"
- resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Default to 1 in WEEKLY rotation.
- resetDate: Reset Date must be a number 1 - 31. Default to 1 in MONTHLY rotation.
- randomizedPerRotation:
- true: each goal will be randomly assigned to multiple periods
- false: a goal will only be assigned to one period
- tags: challenge's labels.
*/
func (a *Client) AdminCreateChallengeShort(params *AdminCreateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChallengeCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateChallengeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateChallenge",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateChallengeCreated:
		return v, nil
	case *AdminCreateChallengeBadRequest:
		return nil, v
	case *AdminCreateChallengeUnauthorized:
		return nil, v
	case *AdminCreateChallengeForbidden:
		return nil, v
	case *AdminCreateChallengeConflict:
		return nil, v
	case *AdminCreateChallengeUnprocessableEntity:
		return nil, v
	case *AdminCreateChallengeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetActiveChallengesShort instead.

AdminGetActiveChallenges list user's active challenges
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
The endpoint provides you an access to list of currently active challenges in which the player is participating
*/
func (a *Client) AdminGetActiveChallenges(params *AdminGetActiveChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetActiveChallengesOK, *AdminGetActiveChallengesUnauthorized, *AdminGetActiveChallengesForbidden, *AdminGetActiveChallengesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetActiveChallengesParams()
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
		ID:                 "adminGetActiveChallenges",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetActiveChallengesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetActiveChallengesOK:
		return v, nil, nil, nil, nil

	case *AdminGetActiveChallengesUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetActiveChallengesForbidden:
		return nil, nil, v, nil, nil

	case *AdminGetActiveChallengesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetActiveChallengesShort list user's active challenges
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
The endpoint provides you an access to list of currently active challenges in which the player is participating
*/
func (a *Client) AdminGetActiveChallengesShort(params *AdminGetActiveChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetActiveChallengesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetActiveChallengesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetActiveChallenges",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetActiveChallengesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetActiveChallengesOK:
		return v, nil
	case *AdminGetActiveChallengesUnauthorized:
		return nil, v
	case *AdminGetActiveChallengesForbidden:
		return nil, v
	case *AdminGetActiveChallengesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetChallengeShort instead.

AdminGetChallenge get a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetChallenge(params *AdminGetChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengeOK, *AdminGetChallengeUnauthorized, *AdminGetChallengeForbidden, *AdminGetChallengeNotFound, *AdminGetChallengeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChallengeParams()
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
		ID:                 "adminGetChallenge",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetChallengeOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetChallengeUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetChallengeForbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetChallengeNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetChallengeInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetChallengeShort get a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetChallengeShort(params *AdminGetChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChallengeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetChallenge",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetChallengeOK:
		return v, nil
	case *AdminGetChallengeUnauthorized:
		return nil, v
	case *AdminGetChallengeForbidden:
		return nil, v
	case *AdminGetChallengeNotFound:
		return nil, v
	case *AdminGetChallengeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateChallengeShort instead.

AdminUpdateChallenge update a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
Request body:
- name: name of the challenge
- description: text describing about the challenge (optional)
- startDate: timestamp of when the challenge is started
- endDate: timestamp of when the challenge is ended (optional)
- endAfter: describe number of period challenge will be retired after (optional). To configure challenge that never end, leave the endDate and endAfter field null/empty.
- repeatAfter: describe number of period challenge's goals will be repeated after. Leave it empty if you don't want to repeat the challenge.
- rotation: describe how long goals in a challenge will be available for players to progress before rotated with another goals. (DAILY|WEEKLY|MONTHLY|NONE)
- activeGoalsPerRotation: number of goals per rotation (currently only applicable for RANDOMIZE assignment)
- assignmentRule: describe how the goals will be assigned and scheduled to users. (FIXED|RANDOMIZED|UNSCHEDULED|CUSTOM)
- goalsVisibility: describe whether users can see all goals under challenge, or only active goal in one rotation period only. (SHOWALL|PERIODONLY)
- resetConfig: describe when rotation reset will happen (optional).
- resetTime: Reset time must follow hours:minutes in 24 hours format (e.g. 01:30, 23:15) and in UTC timezone. Default to "00:00"
- resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Default to 1 in WEEKLY rotation.
- resetDate: Reset Date must be a number 1 - 31. Default to 1 in MONTHLY rotation.
- randomizedPerRotation:
- true: each goal will be randomly assigned to multiple periods
- false: a goal will only be assigned to one period
- tags: challenge's labels.
*/
func (a *Client) AdminUpdateChallenge(params *AdminUpdateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChallengeOK, *AdminUpdateChallengeBadRequest, *AdminUpdateChallengeUnauthorized, *AdminUpdateChallengeForbidden, *AdminUpdateChallengeNotFound, *AdminUpdateChallengeUnprocessableEntity, *AdminUpdateChallengeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateChallengeParams()
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
		ID:                 "adminUpdateChallenge",
		Method:             "PUT",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateChallengeOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminUpdateChallengeBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateChallengeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateChallengeForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateChallengeNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateChallengeUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateChallengeInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateChallengeShort update a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
Request body:
- name: name of the challenge
- description: text describing about the challenge (optional)
- startDate: timestamp of when the challenge is started
- endDate: timestamp of when the challenge is ended (optional)
- endAfter: describe number of period challenge will be retired after (optional). To configure challenge that never end, leave the endDate and endAfter field null/empty.
- repeatAfter: describe number of period challenge's goals will be repeated after. Leave it empty if you don't want to repeat the challenge.
- rotation: describe how long goals in a challenge will be available for players to progress before rotated with another goals. (DAILY|WEEKLY|MONTHLY|NONE)
- activeGoalsPerRotation: number of goals per rotation (currently only applicable for RANDOMIZE assignment)
- assignmentRule: describe how the goals will be assigned and scheduled to users. (FIXED|RANDOMIZED|UNSCHEDULED|CUSTOM)
- goalsVisibility: describe whether users can see all goals under challenge, or only active goal in one rotation period only. (SHOWALL|PERIODONLY)
- resetConfig: describe when rotation reset will happen (optional).
- resetTime: Reset time must follow hours:minutes in 24 hours format (e.g. 01:30, 23:15) and in UTC timezone. Default to "00:00"
- resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Default to 1 in WEEKLY rotation.
- resetDate: Reset Date must be a number 1 - 31. Default to 1 in MONTHLY rotation.
- randomizedPerRotation:
- true: each goal will be randomly assigned to multiple periods
- false: a goal will only be assigned to one period
- tags: challenge's labels.
*/
func (a *Client) AdminUpdateChallengeShort(params *AdminUpdateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChallengeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateChallengeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateChallenge",
		Method:             "PUT",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateChallengeOK:
		return v, nil
	case *AdminUpdateChallengeBadRequest:
		return nil, v
	case *AdminUpdateChallengeUnauthorized:
		return nil, v
	case *AdminUpdateChallengeForbidden:
		return nil, v
	case *AdminUpdateChallengeNotFound:
		return nil, v
	case *AdminUpdateChallengeUnprocessableEntity:
		return nil, v
	case *AdminUpdateChallengeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteChallengeShort instead.

AdminDeleteChallenge delete a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]
*/
func (a *Client) AdminDeleteChallenge(params *AdminDeleteChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChallengeNoContent, *AdminDeleteChallengeBadRequest, *AdminDeleteChallengeUnauthorized, *AdminDeleteChallengeForbidden, *AdminDeleteChallengeNotFound, *AdminDeleteChallengeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChallengeParams()
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
		ID:                 "adminDeleteChallenge",
		Method:             "DELETE",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChallengeNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeleteChallengeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeleteChallengeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeleteChallengeForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeleteChallengeNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeleteChallengeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteChallengeShort delete a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]
*/
func (a *Client) AdminDeleteChallengeShort(params *AdminDeleteChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChallengeNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChallengeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteChallenge",
		Method:             "DELETE",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChallengeNoContent:
		return v, nil
	case *AdminDeleteChallengeBadRequest:
		return nil, v
	case *AdminDeleteChallengeUnauthorized:
		return nil, v
	case *AdminDeleteChallengeForbidden:
		return nil, v
	case *AdminDeleteChallengeNotFound:
		return nil, v
	case *AdminDeleteChallengeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetPeriodsShort instead.

AdminGetPeriods get challenge's periods
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetPeriods(params *AdminGetPeriodsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPeriodsOK, *AdminGetPeriodsUnauthorized, *AdminGetPeriodsForbidden, *AdminGetPeriodsNotFound, *AdminGetPeriodsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPeriodsParams()
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
		ID:                 "adminGetPeriods",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPeriodsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPeriodsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetPeriodsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetPeriodsForbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetPeriodsNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetPeriodsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPeriodsShort get challenge's periods
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetPeriodsShort(params *AdminGetPeriodsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPeriodsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPeriodsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPeriods",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPeriodsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPeriodsOK:
		return v, nil
	case *AdminGetPeriodsUnauthorized:
		return nil, v
	case *AdminGetPeriodsForbidden:
		return nil, v
	case *AdminGetPeriodsNotFound:
		return nil, v
	case *AdminGetPeriodsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminRandomizeChallengeShort instead.

AdminRandomizeChallenge randomize goals of a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
This is a utility endpoint to execute randomize goals schedule on challenge that the assignmentRule is RANDOMIZED and RandomizePerRotation assigned with true.
*/
func (a *Client) AdminRandomizeChallenge(params *AdminRandomizeChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRandomizeChallengeOK, *AdminRandomizeChallengeBadRequest, *AdminRandomizeChallengeUnauthorized, *AdminRandomizeChallengeForbidden, *AdminRandomizeChallengeNotFound, *AdminRandomizeChallengeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRandomizeChallengeParams()
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
		ID:                 "adminRandomizeChallenge",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRandomizeChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminRandomizeChallengeOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminRandomizeChallengeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminRandomizeChallengeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminRandomizeChallengeForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminRandomizeChallengeNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminRandomizeChallengeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRandomizeChallengeShort randomize goals of a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
This is a utility endpoint to execute randomize goals schedule on challenge that the assignmentRule is RANDOMIZED and RandomizePerRotation assigned with true.
*/
func (a *Client) AdminRandomizeChallengeShort(params *AdminRandomizeChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRandomizeChallengeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRandomizeChallengeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminRandomizeChallenge",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRandomizeChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRandomizeChallengeOK:
		return v, nil
	case *AdminRandomizeChallengeBadRequest:
		return nil, v
	case *AdminRandomizeChallengeUnauthorized:
		return nil, v
	case *AdminRandomizeChallengeForbidden:
		return nil, v
	case *AdminRandomizeChallengeNotFound:
		return nil, v
	case *AdminRandomizeChallengeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteTiedChallengeShort instead.

AdminDeleteTiedChallenge delete tied challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]
- This endpoint will delete the combination of related data: CHALLENGES, GOALS, SCHEDULES, PLAYER PROGRESSIONS
*/
func (a *Client) AdminDeleteTiedChallenge(params *AdminDeleteTiedChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTiedChallengeNoContent, *AdminDeleteTiedChallengeBadRequest, *AdminDeleteTiedChallengeUnauthorized, *AdminDeleteTiedChallengeForbidden, *AdminDeleteTiedChallengeNotFound, *AdminDeleteTiedChallengeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTiedChallengeParams()
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
		ID:                 "adminDeleteTiedChallenge",
		Method:             "DELETE",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTiedChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTiedChallengeNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeleteTiedChallengeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeleteTiedChallengeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeleteTiedChallengeForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeleteTiedChallengeNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeleteTiedChallengeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTiedChallengeShort delete tied challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]
- This endpoint will delete the combination of related data: CHALLENGES, GOALS, SCHEDULES, PLAYER PROGRESSIONS
*/
func (a *Client) AdminDeleteTiedChallengeShort(params *AdminDeleteTiedChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTiedChallengeNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTiedChallengeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteTiedChallenge",
		Method:             "DELETE",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTiedChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTiedChallengeNoContent:
		return v, nil
	case *AdminDeleteTiedChallengeBadRequest:
		return nil, v
	case *AdminDeleteTiedChallengeUnauthorized:
		return nil, v
	case *AdminDeleteTiedChallengeForbidden:
		return nil, v
	case *AdminDeleteTiedChallengeNotFound:
		return nil, v
	case *AdminDeleteTiedChallengeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateTiedChallengeScheduleShort instead.

AdminUpdateTiedChallengeSchedule update tied challenge schedule
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
### Request body:
- action: Update the challenge schedule. The available options are:
- STOP: Ends the challenge, changing its status to RETIRED. This option supports all types of challenges.
- ACCELERATE: Speeds up the challenge's end time. Note that this option does not apply to challenges with an 'endAfter' value.
- endDate: The timestamp specifying when the challenge should end (required if the action is ACCELERATE).
*/
func (a *Client) AdminUpdateTiedChallengeSchedule(params *AdminUpdateTiedChallengeScheduleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTiedChallengeScheduleOK, *AdminUpdateTiedChallengeScheduleBadRequest, *AdminUpdateTiedChallengeScheduleUnauthorized, *AdminUpdateTiedChallengeScheduleForbidden, *AdminUpdateTiedChallengeScheduleNotFound, *AdminUpdateTiedChallengeScheduleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTiedChallengeScheduleParams()
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
		ID:                 "adminUpdateTiedChallengeSchedule",
		Method:             "PUT",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateTiedChallengeScheduleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTiedChallengeScheduleOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateTiedChallengeScheduleBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateTiedChallengeScheduleUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateTiedChallengeScheduleForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateTiedChallengeScheduleNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateTiedChallengeScheduleInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateTiedChallengeScheduleShort update tied challenge schedule
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
### Request body:
- action: Update the challenge schedule. The available options are:
- STOP: Ends the challenge, changing its status to RETIRED. This option supports all types of challenges.
- ACCELERATE: Speeds up the challenge's end time. Note that this option does not apply to challenges with an 'endAfter' value.
- endDate: The timestamp specifying when the challenge should end (required if the action is ACCELERATE).
*/
func (a *Client) AdminUpdateTiedChallengeScheduleShort(params *AdminUpdateTiedChallengeScheduleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTiedChallengeScheduleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTiedChallengeScheduleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateTiedChallengeSchedule",
		Method:             "PUT",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateTiedChallengeScheduleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTiedChallengeScheduleOK:
		return v, nil
	case *AdminUpdateTiedChallengeScheduleBadRequest:
		return nil, v
	case *AdminUpdateTiedChallengeScheduleUnauthorized:
		return nil, v
	case *AdminUpdateTiedChallengeScheduleForbidden:
		return nil, v
	case *AdminUpdateTiedChallengeScheduleNotFound:
		return nil, v
	case *AdminUpdateTiedChallengeScheduleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
