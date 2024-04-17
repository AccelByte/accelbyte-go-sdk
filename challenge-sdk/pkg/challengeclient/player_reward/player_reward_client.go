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
	AdminGetUserRewards(params *AdminGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserRewardsOK, *AdminGetUserRewardsUnauthorized, *AdminGetUserRewardsForbidden, *AdminGetUserRewardsInternalServerError, error)
	AdminGetUserRewardsShort(params *AdminGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserRewardsOK, error)
	PublicGetUserRewards(params *PublicGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserRewardsOK, *PublicGetUserRewardsUnauthorized, *PublicGetUserRewardsForbidden, *PublicGetUserRewardsInternalServerError, error)
	PublicGetUserRewardsShort(params *PublicGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserRewardsOK, error)
	PublicClaimUserRewards(params *PublicClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsOK, *PublicClaimUserRewardsUnauthorized, *PublicClaimUserRewardsForbidden, *PublicClaimUserRewardsNotFound, *PublicClaimUserRewardsInternalServerError, error)
	PublicClaimUserRewardsShort(params *PublicClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserRewardsShort instead.

AdminGetUserRewards list user's rewards

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]
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

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]
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
Deprecated: 2022-08-10 - Use PublicGetUserRewardsShort instead.

PublicGetUserRewards list user's rewards

      * Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]
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

      * Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]
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

      * Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) PublicClaimUserRewards(params *PublicClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsOK, *PublicClaimUserRewardsUnauthorized, *PublicClaimUserRewardsForbidden, *PublicClaimUserRewardsNotFound, *PublicClaimUserRewardsInternalServerError, error) {
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicClaimUserRewardsOK:
		return v, nil, nil, nil, nil, nil

	case *PublicClaimUserRewardsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicClaimUserRewardsForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicClaimUserRewardsNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicClaimUserRewardsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicClaimUserRewardsShort claim user's rewards

      * Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
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
