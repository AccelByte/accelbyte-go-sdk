// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package reward

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new reward API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for reward API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryRewards(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsOK, *QueryRewardsBadRequest, *QueryRewardsNotFound, error)
	QueryRewardsShort(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsOK, error)
	CreateReward(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardCreated, *CreateRewardBadRequest, *CreateRewardNotFound, *CreateRewardConflict, *CreateRewardUnprocessableEntity, error)
	CreateRewardShort(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardCreated, error)
	GetReward(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardOK, *GetRewardBadRequest, *GetRewardNotFound, error)
	GetRewardShort(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardOK, error)
	DeleteReward(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardNoContent, *DeleteRewardBadRequest, *DeleteRewardNotFound, *DeleteRewardConflict, error)
	DeleteRewardShort(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardNoContent, error)
	UpdateReward(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardOK, *UpdateRewardBadRequest, *UpdateRewardNotFound, *UpdateRewardConflict, *UpdateRewardUnprocessableEntity, error)
	UpdateRewardShort(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardOK, error)
	PublicClaimUserReward(params *PublicClaimUserRewardParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardOK, *PublicClaimUserRewardBadRequest, *PublicClaimUserRewardNotFound, *PublicClaimUserRewardConflict, error)
	PublicClaimUserRewardShort(params *PublicClaimUserRewardParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardOK, error)
	PublicBulkClaimUserRewards(params *PublicBulkClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkClaimUserRewardsOK, *PublicBulkClaimUserRewardsBadRequest, *PublicBulkClaimUserRewardsNotFound, error)
	PublicBulkClaimUserRewardsShort(params *PublicBulkClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkClaimUserRewardsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryRewardsShort instead.

QueryRewards query all rewards for a season
This API is used to query rewards for a season.

Other detail info:

  * Returns : the list of rewards
*/
func (a *Client) QueryRewards(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsOK, *QueryRewardsBadRequest, *QueryRewardsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRewardsParams()
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
		ID:                 "queryRewards",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryRewardsOK:
		return v, nil, nil, nil

	case *QueryRewardsBadRequest:
		return nil, v, nil, nil

	case *QueryRewardsNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryRewardsShort query all rewards for a season
This API is used to query rewards for a season.

Other detail info:

  * Returns : the list of rewards
*/
func (a *Client) QueryRewardsShort(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRewardsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryRewards",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRewardsOK:
		return v, nil
	case *QueryRewardsBadRequest:
		return nil, v
	case *QueryRewardsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateRewardShort instead.

CreateReward create a reward
This API is used to create a reward for a draft season.

Other detail info:

  * Returns : created reward
*/
func (a *Client) CreateReward(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardCreated, *CreateRewardBadRequest, *CreateRewardNotFound, *CreateRewardConflict, *CreateRewardUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRewardParams()
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
		ID:                 "createReward",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateRewardCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateRewardBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateRewardNotFound:
		return nil, nil, v, nil, nil, nil

	case *CreateRewardConflict:
		return nil, nil, nil, v, nil, nil

	case *CreateRewardUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateRewardShort create a reward
This API is used to create a reward for a draft season.

Other detail info:

  * Returns : created reward
*/
func (a *Client) CreateRewardShort(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRewardParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createReward",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateRewardCreated:
		return v, nil
	case *CreateRewardBadRequest:
		return nil, v
	case *CreateRewardNotFound:
		return nil, v
	case *CreateRewardConflict:
		return nil, v
	case *CreateRewardUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetRewardShort instead.

GetReward get a reward
This API is used to get a reward for a season.

Other detail info:

  * Returns : reward data
*/
func (a *Client) GetReward(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardOK, *GetRewardBadRequest, *GetRewardNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRewardParams()
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
		ID:                 "getReward",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetRewardOK:
		return v, nil, nil, nil

	case *GetRewardBadRequest:
		return nil, v, nil, nil

	case *GetRewardNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRewardShort get a reward
This API is used to get a reward for a season.

Other detail info:

  * Returns : reward data
*/
func (a *Client) GetRewardShort(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRewardParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getReward",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRewardOK:
		return v, nil
	case *GetRewardBadRequest:
		return nil, v
	case *GetRewardNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteRewardShort instead.

DeleteReward delete a reward
This API is used to delete a reward permanently, only draft season reward can be deleted.

Other detail info:
*/
func (a *Client) DeleteReward(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardNoContent, *DeleteRewardBadRequest, *DeleteRewardNotFound, *DeleteRewardConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRewardParams()
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
		ID:                 "deleteReward",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteRewardNoContent:
		return v, nil, nil, nil, nil

	case *DeleteRewardBadRequest:
		return nil, v, nil, nil, nil

	case *DeleteRewardNotFound:
		return nil, nil, v, nil, nil

	case *DeleteRewardConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRewardShort delete a reward
This API is used to delete a reward permanently, only draft season reward can be deleted.

Other detail info:
*/
func (a *Client) DeleteRewardShort(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRewardParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteReward",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRewardNoContent:
		return v, nil
	case *DeleteRewardBadRequest:
		return nil, v
	case *DeleteRewardNotFound:
		return nil, v
	case *DeleteRewardConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateRewardShort instead.

UpdateReward update a reward
This API is used to update a reward. Only draft season reward can be updated.

Other detail info:

  * Returns : updated reward
*/
func (a *Client) UpdateReward(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardOK, *UpdateRewardBadRequest, *UpdateRewardNotFound, *UpdateRewardConflict, *UpdateRewardUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRewardParams()
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
		ID:                 "updateReward",
		Method:             "PATCH",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateRewardOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateRewardBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateRewardNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdateRewardConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateRewardUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRewardShort update a reward
This API is used to update a reward. Only draft season reward can be updated.

Other detail info:

  * Returns : updated reward
*/
func (a *Client) UpdateRewardShort(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRewardParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateReward",
		Method:             "PATCH",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRewardOK:
		return v, nil
	case *UpdateRewardBadRequest:
		return nil, v
	case *UpdateRewardNotFound:
		return nil, v
	case *UpdateRewardConflict:
		return nil, v
	case *UpdateRewardUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicClaimUserRewardShort instead.

PublicClaimUserReward claim tier reward
This API is used to claim reward, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicClaimUserReward(params *PublicClaimUserRewardParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardOK, *PublicClaimUserRewardBadRequest, *PublicClaimUserRewardNotFound, *PublicClaimUserRewardConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicClaimUserRewardParams()
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
		ID:                 "publicClaimUserReward",
		Method:             "POST",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicClaimUserRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicClaimUserRewardOK:
		return v, nil, nil, nil, nil

	case *PublicClaimUserRewardBadRequest:
		return nil, v, nil, nil, nil

	case *PublicClaimUserRewardNotFound:
		return nil, nil, v, nil, nil

	case *PublicClaimUserRewardConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicClaimUserRewardShort claim tier reward
This API is used to claim reward, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicClaimUserRewardShort(params *PublicClaimUserRewardParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicClaimUserRewardParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicClaimUserReward",
		Method:             "POST",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicClaimUserRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicClaimUserRewardOK:
		return v, nil
	case *PublicClaimUserRewardBadRequest:
		return nil, v
	case *PublicClaimUserRewardNotFound:
		return nil, v
	case *PublicClaimUserRewardConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicBulkClaimUserRewardsShort instead.

PublicBulkClaimUserRewards bulk claim all remained rewards
This API is used to bulk claim all remained rewards, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicBulkClaimUserRewards(params *PublicBulkClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkClaimUserRewardsOK, *PublicBulkClaimUserRewardsBadRequest, *PublicBulkClaimUserRewardsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkClaimUserRewardsParams()
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
		ID:                 "publicBulkClaimUserRewards",
		Method:             "POST",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkClaimUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBulkClaimUserRewardsOK:
		return v, nil, nil, nil

	case *PublicBulkClaimUserRewardsBadRequest:
		return nil, v, nil, nil

	case *PublicBulkClaimUserRewardsNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkClaimUserRewardsShort bulk claim all remained rewards
This API is used to bulk claim all remained rewards, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicBulkClaimUserRewardsShort(params *PublicBulkClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkClaimUserRewardsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkClaimUserRewardsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicBulkClaimUserRewards",
		Method:             "POST",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkClaimUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkClaimUserRewardsOK:
		return v, nil
	case *PublicBulkClaimUserRewardsBadRequest:
		return nil, v
	case *PublicBulkClaimUserRewardsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
