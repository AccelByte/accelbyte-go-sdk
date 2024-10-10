// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package reward

import (
	"context"
	"fmt"
	"io"
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
	CreateReward(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardCreated, *CreateRewardBadRequest, *CreateRewardNotFound, *CreateRewardConflict, *CreateRewardUnprocessableEntity, error)
	CreateRewardShort(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardCreated, error)
	QueryRewards(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsOK, *QueryRewardsUnprocessableEntity, error)
	QueryRewardsShort(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsOK, error)
	ExportRewards(params *ExportRewardsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportRewardsOK, error)
	ExportRewardsShort(params *ExportRewardsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportRewardsOK, error)
	ImportRewards(params *ImportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportRewardsOK, *ImportRewardsBadRequest, *ImportRewardsConflict, error)
	ImportRewardsShort(params *ImportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportRewardsOK, error)
	GetReward(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardOK, *GetRewardNotFound, error)
	GetRewardShort(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardOK, error)
	UpdateReward(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardOK, *UpdateRewardBadRequest, *UpdateRewardNotFound, *UpdateRewardConflict, error)
	UpdateRewardShort(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardOK, error)
	DeleteReward(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardOK, *DeleteRewardNotFound, error)
	DeleteRewardShort(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardOK, error)
	CheckEventCondition(params *CheckEventConditionParams, authInfo runtime.ClientAuthInfoWriter) (*CheckEventConditionOK, *CheckEventConditionNotFound, error)
	CheckEventConditionShort(params *CheckEventConditionParams, authInfo runtime.ClientAuthInfoWriter) (*CheckEventConditionOK, error)
	DeleteRewardConditionRecord(params *DeleteRewardConditionRecordParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardConditionRecordNoContent, error)
	DeleteRewardConditionRecordShort(params *DeleteRewardConditionRecordParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardConditionRecordNoContent, error)
	GetRewardByCode(params *GetRewardByCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardByCodeOK, *GetRewardByCodeNotFound, error)
	GetRewardByCodeShort(params *GetRewardByCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardByCodeOK, error)
	QueryRewards1(params *QueryRewards1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryRewards1OK, *QueryRewards1UnprocessableEntity, error)
	QueryRewards1Short(params *QueryRewards1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryRewards1OK, error)
	GetReward1(params *GetReward1Params, authInfo runtime.ClientAuthInfoWriter) (*GetReward1OK, *GetReward1NotFound, error)
	GetReward1Short(params *GetReward1Params, authInfo runtime.ClientAuthInfoWriter) (*GetReward1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateRewardShort instead.

CreateReward create a reward
This API is used to create a reward.
Other detail info:

  * Returns : created reward data
  *  Acceptable values for rewardItem's identityType are : ITEM_ID or ITEM_SKU
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
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards",
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
This API is used to create a reward.
Other detail info:

  * Returns : created reward data
  *  Acceptable values for rewardItem's identityType are : ITEM_ID or ITEM_SKU
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
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards",
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
Deprecated: 2022-08-10 - Use QueryRewardsShort instead.

QueryRewards query rewards by criteria
This API is used to query rewards by criteria.

Other detail info:

  * Returns : the list of rewards
*/
func (a *Client) QueryRewards(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsOK, *QueryRewardsUnprocessableEntity, error) {
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
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/byCriteria",
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *QueryRewardsOK:
		return v, nil, nil

	case *QueryRewardsUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryRewardsShort query rewards by criteria
This API is used to query rewards by criteria.

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
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/byCriteria",
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
	case *QueryRewardsUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExportRewardsShort instead.

ExportRewards export all reward configurations
Export reward configurations for a given namespace into file. At current, only JSON file is supported.
*/
func (a *Client) ExportRewards(params *ExportRewardsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportRewardsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportRewardsParams()
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
		ID:                 "exportRewards",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportRewardsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportRewardsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportRewardsShort export all reward configurations
Export reward configurations for a given namespace into file. At current, only JSON file is supported.
*/
func (a *Client) ExportRewardsShort(params *ExportRewardsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportRewardsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportRewardsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportRewards",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportRewardsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportRewardsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImportRewardsShort instead.

ImportRewards import reward configurations
Import reward configurations for a given namespace from file. At current, only JSON file is supported.
*/
func (a *Client) ImportRewards(params *ImportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportRewardsOK, *ImportRewardsBadRequest, *ImportRewardsConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportRewardsParams()
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
		ID:                 "importRewards",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImportRewardsOK:
		return v, nil, nil, nil

	case *ImportRewardsBadRequest:
		return nil, v, nil, nil

	case *ImportRewardsConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportRewardsShort import reward configurations
Import reward configurations for a given namespace from file. At current, only JSON file is supported.
*/
func (a *Client) ImportRewardsShort(params *ImportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportRewardsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportRewardsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "importRewards",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportRewardsOK:
		return v, nil
	case *ImportRewardsBadRequest:
		return nil, v
	case *ImportRewardsConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetRewardShort instead.

GetReward get a reward
This API is used to get reward by reward Id.
Other detail info:

  * Returns : reward instance
*/
func (a *Client) GetReward(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardOK, *GetRewardNotFound, error) {
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
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}",
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetRewardOK:
		return v, nil, nil

	case *GetRewardNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRewardShort get a reward
This API is used to get reward by reward Id.
Other detail info:

  * Returns : reward instance
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
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}",
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
	case *GetRewardNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateRewardShort instead.

UpdateReward update a reward
This API is used to update a reward.
Other detail info:

  * Returns : reward instance
  *  Acceptable values for rewardItem's identityType are : ITEM_ID or ITEM_SKU
*/
func (a *Client) UpdateReward(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardOK, *UpdateRewardBadRequest, *UpdateRewardNotFound, *UpdateRewardConflict, error) {
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
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}",
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateRewardOK:
		return v, nil, nil, nil, nil

	case *UpdateRewardBadRequest:
		return nil, v, nil, nil, nil

	case *UpdateRewardNotFound:
		return nil, nil, v, nil, nil

	case *UpdateRewardConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRewardShort update a reward
This API is used to update a reward.
Other detail info:

  * Returns : reward instance
  *  Acceptable values for rewardItem's identityType are : ITEM_ID or ITEM_SKU
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
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}",
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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteRewardShort instead.

DeleteReward delete a reward
This API is used to delete a reward by reward Id.

Other detail info:

  * Returns : the deleted reward data
*/
func (a *Client) DeleteReward(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardOK, *DeleteRewardNotFound, error) {
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
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}",
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteRewardOK:
		return v, nil, nil

	case *DeleteRewardNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRewardShort delete a reward
This API is used to delete a reward by reward Id.

Other detail info:

  * Returns : the deleted reward data
*/
func (a *Client) DeleteRewardShort(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardOK, error) {
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
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}",
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

	case *DeleteRewardOK:
		return v, nil
	case *DeleteRewardNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CheckEventConditionShort instead.

CheckEventCondition check if event payload match reward condition
 [TEST FACILITY ONLY] Forbidden in live environment. Other detail info:

  * Returns : match result
*/
func (a *Client) CheckEventCondition(params *CheckEventConditionParams, authInfo runtime.ClientAuthInfoWriter) (*CheckEventConditionOK, *CheckEventConditionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckEventConditionParams()
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
		ID:                 "checkEventCondition",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}/match",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckEventConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *CheckEventConditionOK:
		return v, nil, nil

	case *CheckEventConditionNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckEventConditionShort check if event payload match reward condition
 [TEST FACILITY ONLY] Forbidden in live environment. Other detail info:

  * Returns : match result
*/
func (a *Client) CheckEventConditionShort(params *CheckEventConditionParams, authInfo runtime.ClientAuthInfoWriter) (*CheckEventConditionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckEventConditionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "checkEventCondition",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}/match",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckEventConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckEventConditionOK:
		return v, nil
	case *CheckEventConditionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteRewardConditionRecordShort instead.

DeleteRewardConditionRecord delete a reward condition record
 [TEST FACILITY ONLY] Forbidden in live environment. This API is used to delete a reward condition record by reward Id and condition Name (optional).

Other detail info:

  * Returns : 204 No Content
*/
func (a *Client) DeleteRewardConditionRecord(params *DeleteRewardConditionRecordParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardConditionRecordNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRewardConditionRecordParams()
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
		ID:                 "deleteRewardConditionRecord",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}/record",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRewardConditionRecordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRewardConditionRecordNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRewardConditionRecordShort delete a reward condition record
[TEST FACILITY ONLY] Forbidden in live environment. This API is used to delete a reward condition record by reward Id and condition Name (optional).

Other detail info:

  * Returns : 204 No Content
*/
func (a *Client) DeleteRewardConditionRecordShort(params *DeleteRewardConditionRecordParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardConditionRecordNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRewardConditionRecordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteRewardConditionRecord",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}/record",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRewardConditionRecordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRewardConditionRecordNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetRewardByCodeShort instead.

GetRewardByCode get a reward by code
This API is used to get reward by reward code.
Other detail info:

  * Returns : reward instance
*/
func (a *Client) GetRewardByCode(params *GetRewardByCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardByCodeOK, *GetRewardByCodeNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRewardByCodeParams()
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
		ID:                 "getRewardByCode",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/rewards/byCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRewardByCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetRewardByCodeOK:
		return v, nil, nil

	case *GetRewardByCodeNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRewardByCodeShort get a reward by code
This API is used to get reward by reward code.
Other detail info:

  * Returns : reward instance
*/
func (a *Client) GetRewardByCodeShort(params *GetRewardByCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardByCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRewardByCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getRewardByCode",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/rewards/byCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRewardByCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRewardByCodeOK:
		return v, nil
	case *GetRewardByCodeNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryRewards1Short instead.

QueryRewards1 query rewards by criteria
This API is used to query rewards by criteria.

Other detail info:

  * Returns : the list of rewards
*/
func (a *Client) QueryRewards1(params *QueryRewards1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryRewards1OK, *QueryRewards1UnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRewards1Params()
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
		ID:                 "queryRewards_1",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/rewards/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRewards1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *QueryRewards1OK:
		return v, nil, nil

	case *QueryRewards1UnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryRewards1Short query rewards by criteria
This API is used to query rewards by criteria.

Other detail info:

  * Returns : the list of rewards
*/
func (a *Client) QueryRewards1Short(params *QueryRewards1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryRewards1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRewards1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryRewards_1",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/rewards/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRewards1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRewards1OK:
		return v, nil
	case *QueryRewards1UnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetReward1Short instead.

GetReward1 get a reward
This API is used to get reward by reward Id.
Other detail info:

  * Returns : reward instance
*/
func (a *Client) GetReward1(params *GetReward1Params, authInfo runtime.ClientAuthInfoWriter) (*GetReward1OK, *GetReward1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetReward1Params()
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
		ID:                 "getReward_1",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/rewards/{rewardId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReward1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetReward1OK:
		return v, nil, nil

	case *GetReward1NotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetReward1Short get a reward
This API is used to get reward by reward Id.
Other detail info:

  * Returns : reward instance
*/
func (a *Client) GetReward1Short(params *GetReward1Params, authInfo runtime.ClientAuthInfoWriter) (*GetReward1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetReward1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getReward_1",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/rewards/{rewardId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReward1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetReward1OK:
		return v, nil
	case *GetReward1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
