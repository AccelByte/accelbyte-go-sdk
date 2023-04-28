// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package campaign

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new campaign API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for campaign API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryCampaigns(params *QueryCampaignsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCampaignsOK, error)
	QueryCampaignsShort(params *QueryCampaignsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCampaignsOK, error)
	CreateCampaign(params *CreateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCampaignCreated, *CreateCampaignConflict, *CreateCampaignUnprocessableEntity, error)
	CreateCampaignShort(params *CreateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCampaignCreated, error)
	GetCampaign(params *GetCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignOK, *GetCampaignNotFound, error)
	GetCampaignShort(params *GetCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignOK, error)
	UpdateCampaign(params *UpdateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCampaignOK, *UpdateCampaignNotFound, *UpdateCampaignConflict, *UpdateCampaignUnprocessableEntity, error)
	UpdateCampaignShort(params *UpdateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCampaignOK, error)
	GetCampaignDynamic(params *GetCampaignDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignDynamicOK, *GetCampaignDynamicNotFound, error)
	GetCampaignDynamicShort(params *GetCampaignDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignDynamicOK, error)
	QueryCodes(params *QueryCodesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCodesOK, error)
	QueryCodesShort(params *QueryCodesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCodesOK, error)
	CreateCodes(params *CreateCodesParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCodesCreated, *CreateCodesNotFound, *CreateCodesUnprocessableEntity, error)
	CreateCodesShort(params *CreateCodesParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCodesCreated, error)
	Download(params *DownloadParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadOK, error)
	DownloadShort(params *DownloadParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadOK, error)
	BulkDisableCodes(params *BulkDisableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDisableCodesOK, error)
	BulkDisableCodesShort(params *BulkDisableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDisableCodesOK, error)
	BulkEnableCodes(params *BulkEnableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkEnableCodesOK, error)
	BulkEnableCodesShort(params *BulkEnableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkEnableCodesOK, error)
	QueryRedeemHistory(params *QueryRedeemHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRedeemHistoryOK, error)
	QueryRedeemHistoryShort(params *QueryRedeemHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRedeemHistoryOK, error)
	GetCode(params *GetCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetCodeOK, *GetCodeNotFound, *GetCodeConflict, error)
	GetCodeShort(params *GetCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetCodeOK, error)
	DisableCode(params *DisableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DisableCodeOK, *DisableCodeNotFound, error)
	DisableCodeShort(params *DisableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DisableCodeOK, error)
	EnableCode(params *EnableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*EnableCodeOK, *EnableCodeNotFound, error)
	EnableCodeShort(params *EnableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*EnableCodeOK, error)
	ApplyUserRedemption(params *ApplyUserRedemptionParams, authInfo runtime.ClientAuthInfoWriter) (*ApplyUserRedemptionOK, *ApplyUserRedemptionNotFound, *ApplyUserRedemptionConflict, *ApplyUserRedemptionUnprocessableEntity, error)
	ApplyUserRedemptionShort(params *ApplyUserRedemptionParams, authInfo runtime.ClientAuthInfoWriter) (*ApplyUserRedemptionOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryCampaignsShort instead.

QueryCampaigns query campaigns
Query campaigns, if name is presented, it's fuzzy match.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ) (READ)
  *  Returns : slice of campaigns
*/
func (a *Client) QueryCampaigns(params *QueryCampaignsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCampaignsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryCampaignsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryCampaigns",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryCampaignsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryCampaignsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryCampaignsShort query campaigns
Query campaigns, if name is presented, it's fuzzy match.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ) (READ)
  *  Returns : slice of campaigns
*/
func (a *Client) QueryCampaignsShort(params *QueryCampaignsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCampaignsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryCampaignsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryCampaigns",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryCampaignsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryCampaignsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateCampaignShort instead.

CreateCampaign create campaign
Create campaign.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=1 (CREATE)
  *  Returns : created campaign
*/
func (a *Client) CreateCampaign(params *CreateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCampaignCreated, *CreateCampaignConflict, *CreateCampaignUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateCampaignParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createCampaign",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateCampaignReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateCampaignCreated:
		return v, nil, nil, nil

	case *CreateCampaignConflict:
		return nil, v, nil, nil

	case *CreateCampaignUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateCampaignShort create campaign
Create campaign.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=1 (CREATE)
  *  Returns : created campaign
*/
func (a *Client) CreateCampaignShort(params *CreateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCampaignCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateCampaignParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createCampaign",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateCampaignReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateCampaignCreated:
		return v, nil
	case *CreateCampaignConflict:
		return nil, v
	case *CreateCampaignUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCampaignShort instead.

GetCampaign get campaign
Get campaign info.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ)
  *  Returns : campaign info
*/
func (a *Client) GetCampaign(params *GetCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignOK, *GetCampaignNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCampaignParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCampaign",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCampaignReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetCampaignOK:
		return v, nil, nil

	case *GetCampaignNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCampaignShort get campaign
Get campaign info.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ)
  *  Returns : campaign info
*/
func (a *Client) GetCampaignShort(params *GetCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCampaignParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCampaign",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCampaignReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCampaignOK:
		return v, nil
	case *GetCampaignNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateCampaignShort instead.

UpdateCampaign update campaign
Update campaign.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=4 (UPDATE)
  *  Returns : updated campaign
*/
func (a *Client) UpdateCampaign(params *UpdateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCampaignOK, *UpdateCampaignNotFound, *UpdateCampaignConflict, *UpdateCampaignUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCampaignParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateCampaign",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCampaignReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateCampaignOK:
		return v, nil, nil, nil, nil

	case *UpdateCampaignNotFound:
		return nil, v, nil, nil, nil

	case *UpdateCampaignConflict:
		return nil, nil, v, nil, nil

	case *UpdateCampaignUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCampaignShort update campaign
Update campaign.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=4 (UPDATE)
  *  Returns : updated campaign
*/
func (a *Client) UpdateCampaignShort(params *UpdateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCampaignOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCampaignParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateCampaign",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCampaignReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCampaignOK:
		return v, nil
	case *UpdateCampaignNotFound:
		return nil, v
	case *UpdateCampaignConflict:
		return nil, v
	case *UpdateCampaignUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCampaignDynamicShort instead.

GetCampaignDynamic get campaign dynamic
Get campaign dynamic.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ)
  *  Returns : campaign dynamic
*/
func (a *Client) GetCampaignDynamic(params *GetCampaignDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignDynamicOK, *GetCampaignDynamicNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCampaignDynamicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCampaignDynamic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCampaignDynamicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetCampaignDynamicOK:
		return v, nil, nil

	case *GetCampaignDynamicNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCampaignDynamicShort get campaign dynamic
Get campaign dynamic.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ)
  *  Returns : campaign dynamic
*/
func (a *Client) GetCampaignDynamicShort(params *GetCampaignDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignDynamicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCampaignDynamicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCampaignDynamic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCampaignDynamicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCampaignDynamicOK:
		return v, nil
	case *GetCampaignDynamicNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryCodesShort instead.

QueryCodes query codes
Query campaign codes.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ) (READ)
  *  Returns : list of codes
*/
func (a *Client) QueryCodes(params *QueryCodesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCodesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryCodesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryCodes",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryCodesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryCodesShort query codes
Query campaign codes.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ) (READ)
  *  Returns : list of codes
*/
func (a *Client) QueryCodesShort(params *QueryCodesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCodesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryCodesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryCodes",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryCodesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateCodesShort instead.

CreateCodes create campaign codes
This API is used to create campaign codes, it will increase the batch No. based on last creation.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=1 (CREATE)
  *  Returns : number of codes created
*/
func (a *Client) CreateCodes(params *CreateCodesParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCodesCreated, *CreateCodesNotFound, *CreateCodesUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateCodesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createCodes",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateCodesCreated:
		return v, nil, nil, nil

	case *CreateCodesNotFound:
		return nil, v, nil, nil

	case *CreateCodesUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateCodesShort create campaign codes
This API is used to create campaign codes, it will increase the batch No. based on last creation.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=1 (CREATE)
  *  Returns : number of codes created
*/
func (a *Client) CreateCodesShort(params *CreateCodesParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCodesCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateCodesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createCodes",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateCodesCreated:
		return v, nil
	case *CreateCodesNotFound:
		return nil, v
	case *CreateCodesUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DownloadShort instead.

Download download codes
Download all or a batch of campaign's codes as a csv file.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ)
  *  Returns : codes csv file
*/
func (a *Client) Download(params *DownloadParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "download",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/codes.csv",
		ProducesMediaTypes: []string{"text/csv"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DownloadShort download codes
Download all or a batch of campaign's codes as a csv file.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ)
  *  Returns : codes csv file
*/
func (a *Client) DownloadShort(params *DownloadParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "download",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/codes.csv",
		ProducesMediaTypes: []string{"text/csv"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkDisableCodesShort instead.

BulkDisableCodes bulk disable codes
Bulk disable codes.

Bulk disable campaign codes, all matched codes will be disabled except those have already been redeemed.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=4 (UPDATE)
  *  Returns : the number of code actually disabled
*/
func (a *Client) BulkDisableCodes(params *BulkDisableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDisableCodesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkDisableCodesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkDisableCodes",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkDisableCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkDisableCodesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkDisableCodesShort bulk disable codes
Bulk disable codes.

Bulk disable campaign codes, all matched codes will be disabled except those have already been redeemed.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=4 (UPDATE)
  *  Returns : the number of code actually disabled
*/
func (a *Client) BulkDisableCodesShort(params *BulkDisableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDisableCodesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkDisableCodesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkDisableCodes",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkDisableCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkDisableCodesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkEnableCodesShort instead.

BulkEnableCodes bulk enable codes
Bulk enable campaign codes.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=4 (UPDATE)
  *  Returns : the number of code actually enabled
*/
func (a *Client) BulkEnableCodes(params *BulkEnableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkEnableCodesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkEnableCodesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkEnableCodes",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/enable/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkEnableCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkEnableCodesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkEnableCodesShort bulk enable codes
Bulk enable campaign codes.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=4 (UPDATE)
  *  Returns : the number of code actually enabled
*/
func (a *Client) BulkEnableCodesShort(params *BulkEnableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkEnableCodesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkEnableCodesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkEnableCodes",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/enable/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkEnableCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkEnableCodesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryRedeemHistoryShort instead.

QueryRedeemHistory query redeem history
Query redeem history.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ)
  *  Returns : slice of redeem history
*/
func (a *Client) QueryRedeemHistory(params *QueryRedeemHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRedeemHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRedeemHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryRedeemHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRedeemHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRedeemHistoryOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryRedeemHistoryShort query redeem history
Query redeem history.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ)
  *  Returns : slice of redeem history
*/
func (a *Client) QueryRedeemHistoryShort(params *QueryRedeemHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRedeemHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRedeemHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryRedeemHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRedeemHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRedeemHistoryOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCodeShort instead.

GetCode get code info
Get campaign code, it will check code whether available to redeem if redeemable true.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ) (READ)
  *  Returns : code info
*/
func (a *Client) GetCode(params *GetCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetCodeOK, *GetCodeNotFound, *GetCodeConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCode",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCodeOK:
		return v, nil, nil, nil

	case *GetCodeNotFound:
		return nil, v, nil, nil

	case *GetCodeConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCodeShort get code info
Get campaign code, it will check code whether available to redeem if redeemable true.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ) (READ)
  *  Returns : code info
*/
func (a *Client) GetCodeShort(params *GetCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCode",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCodeOK:
		return v, nil
	case *GetCodeNotFound:
		return nil, v
	case *GetCodeConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DisableCodeShort instead.

DisableCode disable code
Disable code.

Disable an active code, the code can't be disabled if it has already been redeemed.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=4 (UPDATE)
  *  Returns : disabled code
*/
func (a *Client) DisableCode(params *DisableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DisableCodeOK, *DisableCodeNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "disableCode",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/{code}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DisableCodeOK:
		return v, nil, nil

	case *DisableCodeNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableCodeShort disable code
Disable code.

Disable an active code, the code can't be disabled if it has already been redeemed.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=4 (UPDATE)
  *  Returns : disabled code
*/
func (a *Client) DisableCodeShort(params *DisableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DisableCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "disableCode",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/{code}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableCodeOK:
		return v, nil
	case *DisableCodeNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use EnableCodeShort instead.

EnableCode enable code
Enable code.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=4 (UPDATE)
  *  Returns : enabled code
*/
func (a *Client) EnableCode(params *EnableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*EnableCodeOK, *EnableCodeNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "enableCode",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/{code}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *EnableCodeOK:
		return v, nil, nil

	case *EnableCodeNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableCodeShort enable code
Enable code.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=4 (UPDATE)
  *  Returns : enabled code
*/
func (a *Client) EnableCodeShort(params *EnableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*EnableCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "enableCode",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/{code}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableCodeOK:
		return v, nil
	case *EnableCodeNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ApplyUserRedemptionShort instead.

ApplyUserRedemption redeem code
 [SERVICE COMMUNICATION ONLY] Redeem code. If the campaign which the code belongs to is INACTIVE, the code couldn't be redeemed even if its status is ACTIVE.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:REDEMPTION", action=1 (CREATE)
  *  Returns : Redeem result
*/
func (a *Client) ApplyUserRedemption(params *ApplyUserRedemptionParams, authInfo runtime.ClientAuthInfoWriter) (*ApplyUserRedemptionOK, *ApplyUserRedemptionNotFound, *ApplyUserRedemptionConflict, *ApplyUserRedemptionUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewApplyUserRedemptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "applyUserRedemption",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/redemption",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ApplyUserRedemptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ApplyUserRedemptionOK:
		return v, nil, nil, nil, nil

	case *ApplyUserRedemptionNotFound:
		return nil, v, nil, nil, nil

	case *ApplyUserRedemptionConflict:
		return nil, nil, v, nil, nil

	case *ApplyUserRedemptionUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ApplyUserRedemptionShort redeem code
 [SERVICE COMMUNICATION ONLY] Redeem code. If the campaign which the code belongs to is INACTIVE, the code couldn't be redeemed even if its status is ACTIVE.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:REDEMPTION", action=1 (CREATE)
  *  Returns : Redeem result
*/
func (a *Client) ApplyUserRedemptionShort(params *ApplyUserRedemptionParams, authInfo runtime.ClientAuthInfoWriter) (*ApplyUserRedemptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewApplyUserRedemptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "applyUserRedemption",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/redemption",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ApplyUserRedemptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ApplyUserRedemptionOK:
		return v, nil
	case *ApplyUserRedemptionNotFound:
		return nil, v
	case *ApplyUserRedemptionConflict:
		return nil, v
	case *ApplyUserRedemptionUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
