// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package reward

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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
	CheckEventCondition(params *CheckEventConditionParams, authInfo runtime.ClientAuthInfoWriter) (*CheckEventConditionOK, *CheckEventConditionNotFound, error)
	CheckEventConditionShort(params *CheckEventConditionParams, authInfo runtime.ClientAuthInfoWriter) (*CheckEventConditionOK, error)
	CreateReward(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardOK, *CreateRewardNotFound, *CreateRewardConflict, *CreateRewardUnprocessableEntity, error)
	CreateRewardShort(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardOK, error)
	DeleteReward(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardOK, *DeleteRewardNotFound, error)
	DeleteRewardShort(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardOK, error)
	ExportRewards(params *ExportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ExportRewardsOK, error)
	ExportRewardsShort(params *ExportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ExportRewardsOK, error)
	GetReward(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardOK, *GetRewardNotFound, error)
	GetRewardShort(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardOK, error)
	GetRewardByCode(params *GetRewardByCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardByCodeOK, *GetRewardByCodeNotFound, error)
	GetRewardByCodeShort(params *GetRewardByCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardByCodeOK, error)
	GetReward1(params *GetReward1Params, authInfo runtime.ClientAuthInfoWriter) (*GetReward1OK, *GetReward1NotFound, error)
	GetReward1Short(params *GetReward1Params, authInfo runtime.ClientAuthInfoWriter) (*GetReward1OK, error)
	ImportRewards(params *ImportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportRewardsOK, *ImportRewardsBadRequest, error)
	ImportRewardsShort(params *ImportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportRewardsOK, error)
	QueryRewards(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsOK, *QueryRewardsUnprocessableEntity, error)
	QueryRewardsShort(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsOK, error)
	QueryRewards1(params *QueryRewards1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryRewards1OK, *QueryRewards1UnprocessableEntity, error)
	QueryRewards1Short(params *QueryRewards1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryRewards1OK, error)
	UpdateReward(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardOK, *UpdateRewardNotFound, *UpdateRewardConflict, error)
	UpdateRewardShort(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  CheckEventCondition checks if event payload match reward condition

  &lt;b&gt;[TEST FACILITY ONLY] Forbidden in live environment. &lt;/b&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:REWARD&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: match result&lt;/li&gt;&lt;/ul&gt;
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
  CreateReward creates a reward

  This API is used to create a reward.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:REWARD&#34;, action=1 (CREATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: created reward data&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) CreateReward(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardOK, *CreateRewardNotFound, *CreateRewardConflict, *CreateRewardUnprocessableEntity, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateRewardOK:
		return v, nil, nil, nil, nil

	case *CreateRewardNotFound:
		return nil, v, nil, nil, nil

	case *CreateRewardConflict:
		return nil, nil, v, nil, nil

	case *CreateRewardUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) CreateRewardShort(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardOK, error) {
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

	case *CreateRewardOK:
		return v, nil
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
  DeleteReward deletes a reward

  This API is used to delete a reward by reward Id. &lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:REWARD&#34;, action=8 (DELETE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: the deleted reward data&lt;/li&gt;&lt;/ul&gt;
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
  ExportRewards exports all reward configurations

  Export reward configurations for a given namespace into file. At current, only JSON file is supported.&lt;p&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;*Required permission*: resource=&#34;ADMIN:NAMESPACE:{namespace}:REWARD&#34;, action=2 (READ)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) ExportRewards(params *ExportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ExportRewardsOK, error) {
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
		Reader:             &ExportRewardsReader{formats: a.formats},
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

func (a *Client) ExportRewardsShort(params *ExportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ExportRewardsOK, error) {
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
		Reader:             &ExportRewardsReader{formats: a.formats},
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
  GetReward gets a reward

  This API is used to get reward by reward Id.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:REWARD&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: reward instance&lt;/li&gt;&lt;/ul&gt;
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
  GetRewardByCode gets a reward by code

  This API is used to get reward by reward code.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:REWARD&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: reward instance&lt;/li&gt;&lt;/ul&gt;
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
  GetReward1 gets a reward

  This API is used to get reward by reward Id.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:REWARD&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: reward instance&lt;/li&gt;&lt;/ul&gt;
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

/*
  ImportRewards imports reward configurations

  Import reward configurations for a given namespace from file. At current, only JSON file is supported.&lt;p&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;*Required permission*: resource=&#34;ADMIN:NAMESPACE:{namespace}:REWARD&#34;, action=1 (CREATE)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) ImportRewards(params *ImportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportRewardsOK, *ImportRewardsBadRequest, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ImportRewardsOK:
		return v, nil, nil

	case *ImportRewardsBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  QueryRewards queries rewards by criteria

  This API is used to query rewards by criteria.&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:REWARD&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: the list of rewards&lt;/li&gt;&lt;/ul&gt;
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
  QueryRewards1 queries rewards by criteria

  This API is used to query rewards by criteria.&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:REWARD&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: the list of rewards&lt;/li&gt;&lt;/ul&gt;
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
  UpdateReward updates a reward

  This API is used to update a reward.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:REWARD&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: reward instance&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) UpdateReward(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardOK, *UpdateRewardNotFound, *UpdateRewardConflict, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateRewardOK:
		return v, nil, nil, nil

	case *UpdateRewardNotFound:
		return nil, v, nil, nil

	case *UpdateRewardConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

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
	case *UpdateRewardNotFound:
		return nil, v
	case *UpdateRewardConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
