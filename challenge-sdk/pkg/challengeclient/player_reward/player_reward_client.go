// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package player_reward

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new player reward API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for player reward API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminClaimUsersRewards(params *AdminClaimUsersRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUsersRewardsOK, *AdminClaimUsersRewardsBadRequest, *AdminClaimUsersRewardsUnauthorized, *AdminClaimUsersRewardsForbidden, *AdminClaimUsersRewardsNotFound, *AdminClaimUsersRewardsInternalServerError, error)
	AdminClaimUsersRewardsShort(params *AdminClaimUsersRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUsersRewardsOK, error)
	AdminClaimUserRewardsByGoalCode(params *AdminClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsByGoalCodeOK, *AdminClaimUserRewardsByGoalCodeBadRequest, *AdminClaimUserRewardsByGoalCodeUnauthorized, *AdminClaimUserRewardsByGoalCodeForbidden, *AdminClaimUserRewardsByGoalCodeNotFound, *AdminClaimUserRewardsByGoalCodeUnprocessableEntity, *AdminClaimUserRewardsByGoalCodeInternalServerError, error)
	AdminClaimUserRewardsByGoalCodeShort(params *AdminClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsByGoalCodeOK, error)
	AdminGetUserRewards(params *AdminGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserRewardsOK, *AdminGetUserRewardsUnauthorized, *AdminGetUserRewardsForbidden, *AdminGetUserRewardsInternalServerError, error)
	AdminGetUserRewardsShort(params *AdminGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserRewardsOK, error)
	AdminClaimUserRewards(params *AdminClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsOK, *AdminClaimUserRewardsUnauthorized, *AdminClaimUserRewardsForbidden, *AdminClaimUserRewardsNotFound, *AdminClaimUserRewardsUnprocessableEntity, *AdminClaimUserRewardsInternalServerError, error)
	AdminClaimUserRewardsShort(params *AdminClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsOK, error)
	PublicClaimUserRewardsByGoalCode(params *PublicClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsByGoalCodeOK, *PublicClaimUserRewardsByGoalCodeBadRequest, *PublicClaimUserRewardsByGoalCodeUnauthorized, *PublicClaimUserRewardsByGoalCodeForbidden, *PublicClaimUserRewardsByGoalCodeNotFound, *PublicClaimUserRewardsByGoalCodeUnprocessableEntity, *PublicClaimUserRewardsByGoalCodeInternalServerError, error)
	PublicClaimUserRewardsByGoalCodeShort(params *PublicClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsByGoalCodeOK, error)
	PublicGetUserRewards(params *PublicGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserRewardsOK, *PublicGetUserRewardsUnauthorized, *PublicGetUserRewardsForbidden, *PublicGetUserRewardsInternalServerError, error)
	PublicGetUserRewardsShort(params *PublicGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserRewardsOK, error)
	PublicClaimUserRewards(params *PublicClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsOK, *PublicClaimUserRewardsUnauthorized, *PublicClaimUserRewardsForbidden, *PublicClaimUserRewardsNotFound, *PublicClaimUserRewardsUnprocessableEntity, *PublicClaimUserRewardsInternalServerError, error)
	PublicClaimUserRewardsShort(params *PublicClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminClaimUsersRewardsShort instead.

AdminClaimUsersRewards claim  rewards of multiple users
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) AdminClaimUsersRewards(params *AdminClaimUsersRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUsersRewardsOK, *AdminClaimUsersRewardsBadRequest, *AdminClaimUsersRewardsUnauthorized, *AdminClaimUsersRewardsForbidden, *AdminClaimUsersRewardsNotFound, *AdminClaimUsersRewardsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminClaimUsersRewardsParams()
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
		ID:                 "adminClaimUsersRewards",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminClaimUsersRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminClaimUsersRewardsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminClaimUsersRewardsBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminClaimUsersRewardsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminClaimUsersRewardsForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminClaimUsersRewardsNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminClaimUsersRewardsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminClaimUsersRewardsShort claim  rewards of multiple users
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) AdminClaimUsersRewardsShort(params *AdminClaimUsersRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUsersRewardsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminClaimUsersRewardsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminClaimUsersRewards",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminClaimUsersRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminClaimUsersRewardsOK:
		return v, nil
	case *AdminClaimUsersRewardsBadRequest:
		return nil, v
	case *AdminClaimUsersRewardsUnauthorized:
		return nil, v
	case *AdminClaimUsersRewardsForbidden:
		return nil, v
	case *AdminClaimUsersRewardsNotFound:
		return nil, v
	case *AdminClaimUsersRewardsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminClaimUserRewardsByGoalCodeShort instead.

AdminClaimUserRewardsByGoalCode claim rewards of a single user by goal code
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) AdminClaimUserRewardsByGoalCode(params *AdminClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsByGoalCodeOK, *AdminClaimUserRewardsByGoalCodeBadRequest, *AdminClaimUserRewardsByGoalCodeUnauthorized, *AdminClaimUserRewardsByGoalCodeForbidden, *AdminClaimUserRewardsByGoalCodeNotFound, *AdminClaimUserRewardsByGoalCodeUnprocessableEntity, *AdminClaimUserRewardsByGoalCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminClaimUserRewardsByGoalCodeParams()
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
		ID:                 "adminClaimUserRewardsByGoalCode",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminClaimUserRewardsByGoalCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminClaimUserRewardsByGoalCodeOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminClaimUserRewardsByGoalCodeBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminClaimUserRewardsByGoalCodeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminClaimUserRewardsByGoalCodeForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminClaimUserRewardsByGoalCodeNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminClaimUserRewardsByGoalCodeUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminClaimUserRewardsByGoalCodeInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminClaimUserRewardsByGoalCodeShort claim rewards of a single user by goal code
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) AdminClaimUserRewardsByGoalCodeShort(params *AdminClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsByGoalCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminClaimUserRewardsByGoalCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminClaimUserRewardsByGoalCode",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminClaimUserRewardsByGoalCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminClaimUserRewardsByGoalCodeOK:
		return v, nil
	case *AdminClaimUserRewardsByGoalCodeBadRequest:
		return nil, v
	case *AdminClaimUserRewardsByGoalCodeUnauthorized:
		return nil, v
	case *AdminClaimUserRewardsByGoalCodeForbidden:
		return nil, v
	case *AdminClaimUserRewardsByGoalCodeNotFound:
		return nil, v
	case *AdminClaimUserRewardsByGoalCodeUnprocessableEntity:
		return nil, v
	case *AdminClaimUserRewardsByGoalCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserRewardsShort instead.

AdminGetUserRewards list user's rewards
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]
*/
func (a *Client) AdminGetUserRewards(params *AdminGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserRewardsOK, *AdminGetUserRewardsUnauthorized, *AdminGetUserRewardsForbidden, *AdminGetUserRewardsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserRewardsParams()
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
		ID:                 "adminGetUserRewards",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserRewardsOK:
		return v, nil, nil, nil, nil

	case *AdminGetUserRewardsUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetUserRewardsForbidden:
		return nil, nil, v, nil, nil

	case *AdminGetUserRewardsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserRewardsShort list user's rewards
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]
*/
func (a *Client) AdminGetUserRewardsShort(params *AdminGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserRewardsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserRewardsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetUserRewards",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserRewardsOK:
		return v, nil
	case *AdminGetUserRewardsUnauthorized:
		return nil, v
	case *AdminGetUserRewardsForbidden:
		return nil, v
	case *AdminGetUserRewardsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminClaimUserRewardsShort instead.

AdminClaimUserRewards claim rewards of a single user
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) AdminClaimUserRewards(params *AdminClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsOK, *AdminClaimUserRewardsUnauthorized, *AdminClaimUserRewardsForbidden, *AdminClaimUserRewardsNotFound, *AdminClaimUserRewardsUnprocessableEntity, *AdminClaimUserRewardsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminClaimUserRewardsParams()
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
		ID:                 "adminClaimUserRewards",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminClaimUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminClaimUserRewardsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminClaimUserRewardsUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminClaimUserRewardsForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminClaimUserRewardsNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminClaimUserRewardsUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminClaimUserRewardsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminClaimUserRewardsShort claim rewards of a single user
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) AdminClaimUserRewardsShort(params *AdminClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminClaimUserRewardsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminClaimUserRewards",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminClaimUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminClaimUserRewardsOK:
		return v, nil
	case *AdminClaimUserRewardsUnauthorized:
		return nil, v
	case *AdminClaimUserRewardsForbidden:
		return nil, v
	case *AdminClaimUserRewardsNotFound:
		return nil, v
	case *AdminClaimUserRewardsUnprocessableEntity:
		return nil, v
	case *AdminClaimUserRewardsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicClaimUserRewardsByGoalCodeShort instead.

PublicClaimUserRewardsByGoalCode claim user's rewards by goal code
- Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) PublicClaimUserRewardsByGoalCode(params *PublicClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsByGoalCodeOK, *PublicClaimUserRewardsByGoalCodeBadRequest, *PublicClaimUserRewardsByGoalCodeUnauthorized, *PublicClaimUserRewardsByGoalCodeForbidden, *PublicClaimUserRewardsByGoalCodeNotFound, *PublicClaimUserRewardsByGoalCodeUnprocessableEntity, *PublicClaimUserRewardsByGoalCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicClaimUserRewardsByGoalCodeParams()
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
		ID:                 "publicClaimUserRewardsByGoalCode",
		Method:             "POST",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicClaimUserRewardsByGoalCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicClaimUserRewardsByGoalCodeOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicClaimUserRewardsByGoalCodeBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicClaimUserRewardsByGoalCodeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicClaimUserRewardsByGoalCodeForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicClaimUserRewardsByGoalCodeNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicClaimUserRewardsByGoalCodeUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicClaimUserRewardsByGoalCodeInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicClaimUserRewardsByGoalCodeShort claim user's rewards by goal code
- Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) PublicClaimUserRewardsByGoalCodeShort(params *PublicClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsByGoalCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicClaimUserRewardsByGoalCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicClaimUserRewardsByGoalCode",
		Method:             "POST",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicClaimUserRewardsByGoalCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicClaimUserRewardsByGoalCodeOK:
		return v, nil
	case *PublicClaimUserRewardsByGoalCodeBadRequest:
		return nil, v
	case *PublicClaimUserRewardsByGoalCodeUnauthorized:
		return nil, v
	case *PublicClaimUserRewardsByGoalCodeForbidden:
		return nil, v
	case *PublicClaimUserRewardsByGoalCodeNotFound:
		return nil, v
	case *PublicClaimUserRewardsByGoalCodeUnprocessableEntity:
		return nil, v
	case *PublicClaimUserRewardsByGoalCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserRewardsShort instead.

PublicGetUserRewards list user's rewards
- Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]
*/
func (a *Client) PublicGetUserRewards(params *PublicGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserRewardsOK, *PublicGetUserRewardsUnauthorized, *PublicGetUserRewardsForbidden, *PublicGetUserRewardsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserRewardsParams()
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
		ID:                 "publicGetUserRewards",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserRewardsOK:
		return v, nil, nil, nil, nil

	case *PublicGetUserRewardsUnauthorized:
		return nil, v, nil, nil, nil

	case *PublicGetUserRewardsForbidden:
		return nil, nil, v, nil, nil

	case *PublicGetUserRewardsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserRewardsShort list user's rewards
- Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]
*/
func (a *Client) PublicGetUserRewardsShort(params *PublicGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserRewardsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserRewardsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserRewards",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserRewardsOK:
		return v, nil
	case *PublicGetUserRewardsUnauthorized:
		return nil, v
	case *PublicGetUserRewardsForbidden:
		return nil, v
	case *PublicGetUserRewardsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicClaimUserRewardsShort instead.

PublicClaimUserRewards claim user's rewards
- Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) PublicClaimUserRewards(params *PublicClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsOK, *PublicClaimUserRewardsUnauthorized, *PublicClaimUserRewardsForbidden, *PublicClaimUserRewardsNotFound, *PublicClaimUserRewardsUnprocessableEntity, *PublicClaimUserRewardsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicClaimUserRewardsParams()
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
		ID:                 "publicClaimUserRewards",
		Method:             "POST",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicClaimUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicClaimUserRewardsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicClaimUserRewardsUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicClaimUserRewardsForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicClaimUserRewardsNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicClaimUserRewardsUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicClaimUserRewardsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicClaimUserRewardsShort claim user's rewards
- Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) PublicClaimUserRewardsShort(params *PublicClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicClaimUserRewardsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicClaimUserRewards",
		Method:             "POST",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicClaimUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicClaimUserRewardsOK:
		return v, nil
	case *PublicClaimUserRewardsUnauthorized:
		return nil, v
	case *PublicClaimUserRewardsForbidden:
		return nil, v
	case *PublicClaimUserRewardsNotFound:
		return nil, v
	case *PublicClaimUserRewardsUnprocessableEntity:
		return nil, v
	case *PublicClaimUserRewardsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
