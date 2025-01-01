// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package schedules

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new schedules API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for schedules API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListSchedulesByGoal(params *AdminListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesByGoalOK, *AdminListSchedulesByGoalBadRequest, *AdminListSchedulesByGoalUnauthorized, *AdminListSchedulesByGoalForbidden, *AdminListSchedulesByGoalNotFound, *AdminListSchedulesByGoalInternalServerError, error)
	AdminListSchedulesByGoalShort(params *AdminListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesByGoalOK, error)
	AdminListSchedules(params *AdminListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesOK, *AdminListSchedulesBadRequest, *AdminListSchedulesUnauthorized, *AdminListSchedulesForbidden, *AdminListSchedulesNotFound, *AdminListSchedulesInternalServerError, error)
	AdminListSchedulesShort(params *AdminListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesOK, error)
	PublicListSchedulesByGoal(params *PublicListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesByGoalOK, *PublicListSchedulesByGoalBadRequest, *PublicListSchedulesByGoalUnauthorized, *PublicListSchedulesByGoalForbidden, *PublicListSchedulesByGoalNotFound, *PublicListSchedulesByGoalInternalServerError, error)
	PublicListSchedulesByGoalShort(params *PublicListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesByGoalOK, error)
	PublicListSchedules(params *PublicListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesOK, *PublicListSchedulesBadRequest, *PublicListSchedulesUnauthorized, *PublicListSchedulesForbidden, *PublicListSchedulesNotFound, *PublicListSchedulesInternalServerError, error)
	PublicListSchedulesShort(params *PublicListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminListSchedulesByGoalShort instead.

AdminListSchedulesByGoal get goal's schedules


  * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given goal in a challenge for specific user.
*/
func (a *Client) AdminListSchedulesByGoal(params *AdminListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesByGoalOK, *AdminListSchedulesByGoalBadRequest, *AdminListSchedulesByGoalUnauthorized, *AdminListSchedulesByGoalForbidden, *AdminListSchedulesByGoalNotFound, *AdminListSchedulesByGoalInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListSchedulesByGoalParams()
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
		ID:                 "adminListSchedulesByGoal",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListSchedulesByGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListSchedulesByGoalOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminListSchedulesByGoalBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminListSchedulesByGoalUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminListSchedulesByGoalForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminListSchedulesByGoalNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminListSchedulesByGoalInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListSchedulesByGoalShort get goal's schedules

  * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given goal in a challenge for specific user.
*/
func (a *Client) AdminListSchedulesByGoalShort(params *AdminListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesByGoalOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListSchedulesByGoalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminListSchedulesByGoal",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListSchedulesByGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListSchedulesByGoalOK:
		return v, nil
	case *AdminListSchedulesByGoalBadRequest:
		return nil, v
	case *AdminListSchedulesByGoalUnauthorized:
		return nil, v
	case *AdminListSchedulesByGoalForbidden:
		return nil, v
	case *AdminListSchedulesByGoalNotFound:
		return nil, v
	case *AdminListSchedulesByGoalInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminListSchedulesShort instead.

AdminListSchedules get challenge's schedules

  * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given challenge for specific user. To query schedules prior to specific date time, use dateTime parameter.
*/
func (a *Client) AdminListSchedules(params *AdminListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesOK, *AdminListSchedulesBadRequest, *AdminListSchedulesUnauthorized, *AdminListSchedulesForbidden, *AdminListSchedulesNotFound, *AdminListSchedulesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListSchedulesParams()
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
		ID:                 "adminListSchedules",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListSchedulesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListSchedulesOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminListSchedulesBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminListSchedulesUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminListSchedulesForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminListSchedulesNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminListSchedulesInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListSchedulesShort get challenge's schedules

  * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given challenge for specific user. To query schedules prior to specific date time, use dateTime parameter.
*/
func (a *Client) AdminListSchedulesShort(params *AdminListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListSchedulesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminListSchedules",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListSchedulesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListSchedulesOK:
		return v, nil
	case *AdminListSchedulesBadRequest:
		return nil, v
	case *AdminListSchedulesUnauthorized:
		return nil, v
	case *AdminListSchedulesForbidden:
		return nil, v
	case *AdminListSchedulesNotFound:
		return nil, v
	case *AdminListSchedulesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListSchedulesByGoalShort instead.

PublicListSchedulesByGoal get goal's schedules

  * Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given goal in a challenge for specific user.
*/
func (a *Client) PublicListSchedulesByGoal(params *PublicListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesByGoalOK, *PublicListSchedulesByGoalBadRequest, *PublicListSchedulesByGoalUnauthorized, *PublicListSchedulesByGoalForbidden, *PublicListSchedulesByGoalNotFound, *PublicListSchedulesByGoalInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListSchedulesByGoalParams()
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
		ID:                 "publicListSchedulesByGoal",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListSchedulesByGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListSchedulesByGoalOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicListSchedulesByGoalBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicListSchedulesByGoalUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicListSchedulesByGoalForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicListSchedulesByGoalNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicListSchedulesByGoalInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListSchedulesByGoalShort get goal's schedules

  * Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given goal in a challenge for specific user.
*/
func (a *Client) PublicListSchedulesByGoalShort(params *PublicListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesByGoalOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListSchedulesByGoalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListSchedulesByGoal",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListSchedulesByGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListSchedulesByGoalOK:
		return v, nil
	case *PublicListSchedulesByGoalBadRequest:
		return nil, v
	case *PublicListSchedulesByGoalUnauthorized:
		return nil, v
	case *PublicListSchedulesByGoalForbidden:
		return nil, v
	case *PublicListSchedulesByGoalNotFound:
		return nil, v
	case *PublicListSchedulesByGoalInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListSchedulesShort instead.

PublicListSchedules get challenge's schedules

  * Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given challenge for specific user. To query schedules prior to specific date time, use dateTime parameter.
*/
func (a *Client) PublicListSchedules(params *PublicListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesOK, *PublicListSchedulesBadRequest, *PublicListSchedulesUnauthorized, *PublicListSchedulesForbidden, *PublicListSchedulesNotFound, *PublicListSchedulesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListSchedulesParams()
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
		ID:                 "publicListSchedules",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListSchedulesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListSchedulesOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicListSchedulesBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicListSchedulesUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicListSchedulesForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicListSchedulesNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicListSchedulesInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListSchedulesShort get challenge's schedules

  * Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given challenge for specific user. To query schedules prior to specific date time, use dateTime parameter.
*/
func (a *Client) PublicListSchedulesShort(params *PublicListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListSchedulesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListSchedules",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListSchedulesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListSchedulesOK:
		return v, nil
	case *PublicListSchedulesBadRequest:
		return nil, v
	case *PublicListSchedulesUnauthorized:
		return nil, v
	case *PublicListSchedulesForbidden:
		return nil, v
	case *PublicListSchedulesNotFound:
		return nil, v
	case *PublicListSchedulesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
