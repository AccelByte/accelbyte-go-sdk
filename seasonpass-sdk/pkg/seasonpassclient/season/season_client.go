// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package season

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new season API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for season API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QuerySeasons(params *QuerySeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySeasonsOK, *QuerySeasonsBadRequest, error)
	QuerySeasonsShort(params *QuerySeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySeasonsOK, error)
	CreateSeason(params *CreateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSeasonCreated, *CreateSeasonBadRequest, *CreateSeasonNotFound, *CreateSeasonUnprocessableEntity, error)
	CreateSeasonShort(params *CreateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSeasonCreated, error)
	GetCurrentSeason(params *GetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonOK, *GetCurrentSeasonBadRequest, *GetCurrentSeasonNotFound, error)
	GetCurrentSeasonShort(params *GetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonOK, error)
	BulkGetUserSeasonProgression(params *BulkGetUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUserSeasonProgressionOK, *BulkGetUserSeasonProgressionBadRequest, *BulkGetUserSeasonProgressionNotFound, error)
	BulkGetUserSeasonProgressionShort(params *BulkGetUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUserSeasonProgressionOK, error)
	GetSeason(params *GetSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetSeasonOK, *GetSeasonBadRequest, *GetSeasonNotFound, error)
	GetSeasonShort(params *GetSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetSeasonOK, error)
	DeleteSeason(params *DeleteSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSeasonNoContent, *DeleteSeasonBadRequest, *DeleteSeasonNotFound, *DeleteSeasonConflict, error)
	DeleteSeasonShort(params *DeleteSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSeasonNoContent, error)
	UpdateSeason(params *UpdateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSeasonOK, *UpdateSeasonBadRequest, *UpdateSeasonNotFound, *UpdateSeasonConflict, *UpdateSeasonUnprocessableEntity, error)
	UpdateSeasonShort(params *UpdateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSeasonOK, error)
	CloneSeason(params *CloneSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CloneSeasonOK, *CloneSeasonBadRequest, *CloneSeasonNotFound, *CloneSeasonUnprocessableEntity, error)
	CloneSeasonShort(params *CloneSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CloneSeasonOK, error)
	GetFullSeason(params *GetFullSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetFullSeasonOK, *GetFullSeasonBadRequest, *GetFullSeasonNotFound, error)
	GetFullSeasonShort(params *GetFullSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetFullSeasonOK, error)
	PublishSeason(params *PublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSeasonOK, *PublishSeasonBadRequest, *PublishSeasonNotFound, *PublishSeasonConflict, error)
	PublishSeasonShort(params *PublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSeasonOK, error)
	RetireSeason(params *RetireSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*RetireSeasonOK, *RetireSeasonBadRequest, *RetireSeasonNotFound, *RetireSeasonConflict, error)
	RetireSeasonShort(params *RetireSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*RetireSeasonOK, error)
	UnpublishSeason(params *UnpublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishSeasonOK, *UnpublishSeasonBadRequest, *UnpublishSeasonNotFound, *UnpublishSeasonConflict, error)
	UnpublishSeasonShort(params *UnpublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishSeasonOK, error)
	GetUserParticipatedSeasons(params *GetUserParticipatedSeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserParticipatedSeasonsOK, *GetUserParticipatedSeasonsBadRequest, error)
	GetUserParticipatedSeasonsShort(params *GetUserParticipatedSeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserParticipatedSeasonsOK, error)
	ExistsAnyPassByPassCodes(params *ExistsAnyPassByPassCodesParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyPassByPassCodesOK, *ExistsAnyPassByPassCodesBadRequest, error)
	ExistsAnyPassByPassCodesShort(params *ExistsAnyPassByPassCodesParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyPassByPassCodesOK, error)
	GetCurrentUserSeasonProgression(params *GetCurrentUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentUserSeasonProgressionOK, *GetCurrentUserSeasonProgressionBadRequest, *GetCurrentUserSeasonProgressionNotFound, error)
	GetCurrentUserSeasonProgressionShort(params *GetCurrentUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentUserSeasonProgressionOK, error)
	CheckSeasonPurchasable(params *CheckSeasonPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*CheckSeasonPurchasableNoContent, *CheckSeasonPurchasableBadRequest, *CheckSeasonPurchasableNotFound, *CheckSeasonPurchasableConflict, error)
	CheckSeasonPurchasableShort(params *CheckSeasonPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*CheckSeasonPurchasableNoContent, error)
	ResetUserSeason(params *ResetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserSeasonNoContent, *ResetUserSeasonBadRequest, error)
	ResetUserSeasonShort(params *ResetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserSeasonNoContent, error)
	QueryUserExpGrantHistory(params *QueryUserExpGrantHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryOK, *QueryUserExpGrantHistoryBadRequest, error)
	QueryUserExpGrantHistoryShort(params *QueryUserExpGrantHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryOK, error)
	QueryUserExpGrantHistoryTag(params *QueryUserExpGrantHistoryTagParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryTagOK, *QueryUserExpGrantHistoryTagBadRequest, error)
	QueryUserExpGrantHistoryTagShort(params *QueryUserExpGrantHistoryTagParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryTagOK, error)
	GetUserSeason(params *GetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSeasonOK, *GetUserSeasonBadRequest, *GetUserSeasonNotFound, error)
	GetUserSeasonShort(params *GetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSeasonOK, error)
	PublicGetCurrentSeason(params *PublicGetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentSeasonOK, *PublicGetCurrentSeasonBadRequest, *PublicGetCurrentSeasonUnauthorized, *PublicGetCurrentSeasonNotFound, error)
	PublicGetCurrentSeasonShort(params *PublicGetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentSeasonOK, error)
	PublicGetCurrentUserSeason(params *PublicGetCurrentUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentUserSeasonOK, *PublicGetCurrentUserSeasonBadRequest, *PublicGetCurrentUserSeasonNotFound, error)
	PublicGetCurrentUserSeasonShort(params *PublicGetCurrentUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentUserSeasonOK, error)
	PublicGetUserSeason(params *PublicGetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSeasonOK, *PublicGetUserSeasonBadRequest, *PublicGetUserSeasonNotFound, error)
	PublicGetUserSeasonShort(params *PublicGetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSeasonOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QuerySeasonsShort instead.

QuerySeasons query seasons
This API is used to query seasons, seasons only located in non-publisher namespace.

Other detail info:

  * Returns : the list of season basic info
*/
func (a *Client) QuerySeasons(params *QuerySeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySeasonsOK, *QuerySeasonsBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySeasonsParams()
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
		ID:                 "querySeasons",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySeasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *QuerySeasonsOK:
		return v, nil, nil

	case *QuerySeasonsBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QuerySeasonsShort query seasons
This API is used to query seasons, seasons only located in non-publisher namespace.

Other detail info:

  * Returns : the list of season basic info
*/
func (a *Client) QuerySeasonsShort(params *QuerySeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySeasonsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySeasonsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "querySeasons",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySeasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QuerySeasonsOK:
		return v, nil
	case *QuerySeasonsBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateSeasonShort instead.

CreateSeason create a season
This API is used to create a season, season only allowed in non-publisher namespace.

Other detail info:

  * Returns : created season
*/
func (a *Client) CreateSeason(params *CreateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSeasonCreated, *CreateSeasonBadRequest, *CreateSeasonNotFound, *CreateSeasonUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSeasonParams()
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
		ID:                 "createSeason",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateSeasonCreated:
		return v, nil, nil, nil, nil

	case *CreateSeasonBadRequest:
		return nil, v, nil, nil, nil

	case *CreateSeasonNotFound:
		return nil, nil, v, nil, nil

	case *CreateSeasonUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSeasonShort create a season
This API is used to create a season, season only allowed in non-publisher namespace.

Other detail info:

  * Returns : created season
*/
func (a *Client) CreateSeasonShort(params *CreateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSeasonCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createSeason",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSeasonCreated:
		return v, nil
	case *CreateSeasonBadRequest:
		return nil, v
	case *CreateSeasonNotFound:
		return nil, v
	case *CreateSeasonUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCurrentSeasonShort instead.

GetCurrentSeason get current published season summary
[SERVICE COMMUNICATION ONLY]This API is used to get current published season summary which includes previous published season summary if exists, season only located in non-publisher namespace.

Other detail info:

  * Returns : season summary data
*/
func (a *Client) GetCurrentSeason(params *GetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonOK, *GetCurrentSeasonBadRequest, *GetCurrentSeasonNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentSeasonParams()
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
		ID:                 "getCurrentSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/current",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCurrentSeasonOK:
		return v, nil, nil, nil

	case *GetCurrentSeasonBadRequest:
		return nil, v, nil, nil

	case *GetCurrentSeasonNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentSeasonShort get current published season summary
[SERVICE COMMUNICATION ONLY]This API is used to get current published season summary which includes previous published season summary if exists, season only located in non-publisher namespace.

Other detail info:

  * Returns : season summary data
*/
func (a *Client) GetCurrentSeasonShort(params *GetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCurrentSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/current",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentSeasonOK:
		return v, nil
	case *GetCurrentSeasonBadRequest:
		return nil, v
	case *GetCurrentSeasonNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkGetUserSeasonProgressionShort instead.

BulkGetUserSeasonProgression bulk get user current season progression
This API is used to bulk get user current season progression, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season progression
*/
func (a *Client) BulkGetUserSeasonProgression(params *BulkGetUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUserSeasonProgressionOK, *BulkGetUserSeasonProgressionBadRequest, *BulkGetUserSeasonProgressionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetUserSeasonProgressionParams()
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
		ID:                 "bulkGetUserSeasonProgression",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/current/users/bulk/progression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetUserSeasonProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkGetUserSeasonProgressionOK:
		return v, nil, nil, nil

	case *BulkGetUserSeasonProgressionBadRequest:
		return nil, v, nil, nil

	case *BulkGetUserSeasonProgressionNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetUserSeasonProgressionShort bulk get user current season progression
This API is used to bulk get user current season progression, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season progression
*/
func (a *Client) BulkGetUserSeasonProgressionShort(params *BulkGetUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUserSeasonProgressionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetUserSeasonProgressionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetUserSeasonProgression",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/current/users/bulk/progression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetUserSeasonProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetUserSeasonProgressionOK:
		return v, nil
	case *BulkGetUserSeasonProgressionBadRequest:
		return nil, v
	case *BulkGetUserSeasonProgressionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSeasonShort instead.

GetSeason get a season
This API is used to get a season, season only located in non-publisher namespace.

Other detail info:

  * Returns : season data
*/
func (a *Client) GetSeason(params *GetSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetSeasonOK, *GetSeasonBadRequest, *GetSeasonNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSeasonParams()
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
		ID:                 "getSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetSeasonOK:
		return v, nil, nil, nil

	case *GetSeasonBadRequest:
		return nil, v, nil, nil

	case *GetSeasonNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSeasonShort get a season
This API is used to get a season, season only located in non-publisher namespace.

Other detail info:

  * Returns : season data
*/
func (a *Client) GetSeasonShort(params *GetSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSeasonOK:
		return v, nil
	case *GetSeasonBadRequest:
		return nil, v
	case *GetSeasonNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteSeasonShort instead.

DeleteSeason delete a season
This API is used to delete a season permanently, only draft season can be deleted.
*/
func (a *Client) DeleteSeason(params *DeleteSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSeasonNoContent, *DeleteSeasonBadRequest, *DeleteSeasonNotFound, *DeleteSeasonConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSeasonParams()
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
		ID:                 "deleteSeason",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteSeasonNoContent:
		return v, nil, nil, nil, nil

	case *DeleteSeasonBadRequest:
		return nil, v, nil, nil, nil

	case *DeleteSeasonNotFound:
		return nil, nil, v, nil, nil

	case *DeleteSeasonConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSeasonShort delete a season
This API is used to delete a season permanently, only draft season can be deleted.
*/
func (a *Client) DeleteSeasonShort(params *DeleteSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSeasonNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteSeason",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSeasonNoContent:
		return v, nil
	case *DeleteSeasonBadRequest:
		return nil, v
	case *DeleteSeasonNotFound:
		return nil, v
	case *DeleteSeasonConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateSeasonShort instead.

UpdateSeason update a season
This API is used to update a season. Only draft season can be updated.

Other detail info:

  * Returns : updated season
*/
func (a *Client) UpdateSeason(params *UpdateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSeasonOK, *UpdateSeasonBadRequest, *UpdateSeasonNotFound, *UpdateSeasonConflict, *UpdateSeasonUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSeasonParams()
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
		ID:                 "updateSeason",
		Method:             "PATCH",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateSeasonOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateSeasonBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateSeasonNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdateSeasonConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateSeasonUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSeasonShort update a season
This API is used to update a season. Only draft season can be updated.

Other detail info:

  * Returns : updated season
*/
func (a *Client) UpdateSeasonShort(params *UpdateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateSeason",
		Method:             "PATCH",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSeasonOK:
		return v, nil
	case *UpdateSeasonBadRequest:
		return nil, v
	case *UpdateSeasonNotFound:
		return nil, v
	case *UpdateSeasonConflict:
		return nil, v
	case *UpdateSeasonUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CloneSeasonShort instead.

CloneSeason clone a season
This API is used to clone a season.

Other detail info:

  * Returns : cloned season info
*/
func (a *Client) CloneSeason(params *CloneSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CloneSeasonOK, *CloneSeasonBadRequest, *CloneSeasonNotFound, *CloneSeasonUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCloneSeasonParams()
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
		ID:                 "cloneSeason",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/clone",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CloneSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CloneSeasonOK:
		return v, nil, nil, nil, nil

	case *CloneSeasonBadRequest:
		return nil, v, nil, nil, nil

	case *CloneSeasonNotFound:
		return nil, nil, v, nil, nil

	case *CloneSeasonUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CloneSeasonShort clone a season
This API is used to clone a season.

Other detail info:

  * Returns : cloned season info
*/
func (a *Client) CloneSeasonShort(params *CloneSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CloneSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCloneSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "cloneSeason",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/clone",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CloneSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CloneSeasonOK:
		return v, nil
	case *CloneSeasonBadRequest:
		return nil, v
	case *CloneSeasonNotFound:
		return nil, v
	case *CloneSeasonUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetFullSeasonShort instead.

GetFullSeason get a season full content
This API is used to get a season full content, season only located in non-publisher namespace.

Other detail info:

  * Returns : season data
*/
func (a *Client) GetFullSeason(params *GetFullSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetFullSeasonOK, *GetFullSeasonBadRequest, *GetFullSeasonNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetFullSeasonParams()
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
		ID:                 "getFullSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/full",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetFullSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetFullSeasonOK:
		return v, nil, nil, nil

	case *GetFullSeasonBadRequest:
		return nil, v, nil, nil

	case *GetFullSeasonNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetFullSeasonShort get a season full content
This API is used to get a season full content, season only located in non-publisher namespace.

Other detail info:

  * Returns : season data
*/
func (a *Client) GetFullSeasonShort(params *GetFullSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetFullSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetFullSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getFullSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/full",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetFullSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetFullSeasonOK:
		return v, nil
	case *GetFullSeasonBadRequest:
		return nil, v
	case *GetFullSeasonNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublishSeasonShort instead.

PublishSeason publish a season
This API is used to publish a draft season, only one published season allowed at same time in a namespace.

Other detail info:

  * Returns : published season
*/
func (a *Client) PublishSeason(params *PublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSeasonOK, *PublishSeasonBadRequest, *PublishSeasonNotFound, *PublishSeasonConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishSeasonParams()
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
		ID:                 "publishSeason",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublishSeasonOK:
		return v, nil, nil, nil, nil

	case *PublishSeasonBadRequest:
		return nil, v, nil, nil, nil

	case *PublishSeasonNotFound:
		return nil, nil, v, nil, nil

	case *PublishSeasonConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishSeasonShort publish a season
This API is used to publish a draft season, only one published season allowed at same time in a namespace.

Other detail info:

  * Returns : published season
*/
func (a *Client) PublishSeasonShort(params *PublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publishSeason",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishSeasonOK:
		return v, nil
	case *PublishSeasonBadRequest:
		return nil, v
	case *PublishSeasonNotFound:
		return nil, v
	case *PublishSeasonConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetireSeasonShort instead.

RetireSeason retire a season
This API is used to retire a published season, if the season has not ended it will report error except with force.

Other detail info:

  * Returns : season info
*/
func (a *Client) RetireSeason(params *RetireSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*RetireSeasonOK, *RetireSeasonBadRequest, *RetireSeasonNotFound, *RetireSeasonConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetireSeasonParams()
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
		ID:                 "retireSeason",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetireSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetireSeasonOK:
		return v, nil, nil, nil, nil

	case *RetireSeasonBadRequest:
		return nil, v, nil, nil, nil

	case *RetireSeasonNotFound:
		return nil, nil, v, nil, nil

	case *RetireSeasonConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetireSeasonShort retire a season
This API is used to retire a published season, if the season has not ended it will report error except with force.

Other detail info:

  * Returns : season info
*/
func (a *Client) RetireSeasonShort(params *RetireSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*RetireSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetireSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retireSeason",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetireSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetireSeasonOK:
		return v, nil
	case *RetireSeasonBadRequest:
		return nil, v
	case *RetireSeasonNotFound:
		return nil, v
	case *RetireSeasonConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UnpublishSeasonShort instead.

UnpublishSeason unpublish a season
This API is used to unpublish a published season, if the season already started it will report error except with force.

Other detail info:

  * Returns : season info
*/
func (a *Client) UnpublishSeason(params *UnpublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishSeasonOK, *UnpublishSeasonBadRequest, *UnpublishSeasonNotFound, *UnpublishSeasonConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnpublishSeasonParams()
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
		ID:                 "unpublishSeason",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnpublishSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UnpublishSeasonOK:
		return v, nil, nil, nil, nil

	case *UnpublishSeasonBadRequest:
		return nil, v, nil, nil, nil

	case *UnpublishSeasonNotFound:
		return nil, nil, v, nil, nil

	case *UnpublishSeasonConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnpublishSeasonShort unpublish a season
This API is used to unpublish a published season, if the season already started it will report error except with force.

Other detail info:

  * Returns : season info
*/
func (a *Client) UnpublishSeasonShort(params *UnpublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnpublishSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "unpublishSeason",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnpublishSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnpublishSeasonOK:
		return v, nil
	case *UnpublishSeasonBadRequest:
		return nil, v
	case *UnpublishSeasonNotFound:
		return nil, v
	case *UnpublishSeasonConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserParticipatedSeasonsShort instead.

GetUserParticipatedSeasons get user participated season data
This API is used to get user participated season data, season only located in non-publisher namespace.

Other detail info:

  * Returns : user participated season data
*/
func (a *Client) GetUserParticipatedSeasons(params *GetUserParticipatedSeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserParticipatedSeasonsOK, *GetUserParticipatedSeasonsBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserParticipatedSeasonsParams()
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
		ID:                 "getUserParticipatedSeasons",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserParticipatedSeasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserParticipatedSeasonsOK:
		return v, nil, nil

	case *GetUserParticipatedSeasonsBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserParticipatedSeasonsShort get user participated season data
This API is used to get user participated season data, season only located in non-publisher namespace.

Other detail info:

  * Returns : user participated season data
*/
func (a *Client) GetUserParticipatedSeasonsShort(params *GetUserParticipatedSeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserParticipatedSeasonsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserParticipatedSeasonsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserParticipatedSeasons",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserParticipatedSeasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserParticipatedSeasonsOK:
		return v, nil
	case *GetUserParticipatedSeasonsBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExistsAnyPassByPassCodesShort instead.

ExistsAnyPassByPassCodes get ownership for any pass codes
[SERVICE COMMUNICATION ONLY]This API is used to get ownership for any pass codes, season only located in non-publisher namespace.

Other detail info:

  * Returns : ownership
*/
func (a *Client) ExistsAnyPassByPassCodes(params *ExistsAnyPassByPassCodesParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyPassByPassCodesOK, *ExistsAnyPassByPassCodesBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExistsAnyPassByPassCodesParams()
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
		ID:                 "existsAnyPassByPassCodes",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExistsAnyPassByPassCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ExistsAnyPassByPassCodesOK:
		return v, nil, nil

	case *ExistsAnyPassByPassCodesBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExistsAnyPassByPassCodesShort get ownership for any pass codes
[SERVICE COMMUNICATION ONLY]This API is used to get ownership for any pass codes, season only located in non-publisher namespace.

Other detail info:

  * Returns : ownership
*/
func (a *Client) ExistsAnyPassByPassCodesShort(params *ExistsAnyPassByPassCodesParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyPassByPassCodesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExistsAnyPassByPassCodesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "existsAnyPassByPassCodes",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExistsAnyPassByPassCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExistsAnyPassByPassCodesOK:
		return v, nil
	case *ExistsAnyPassByPassCodesBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCurrentUserSeasonProgressionShort instead.

GetCurrentUserSeasonProgression get current user season progression
This API is used to get current user season progression, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season progression
*/
func (a *Client) GetCurrentUserSeasonProgression(params *GetCurrentUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentUserSeasonProgressionOK, *GetCurrentUserSeasonProgressionBadRequest, *GetCurrentUserSeasonProgressionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentUserSeasonProgressionParams()
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
		ID:                 "getCurrentUserSeasonProgression",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentUserSeasonProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCurrentUserSeasonProgressionOK:
		return v, nil, nil, nil

	case *GetCurrentUserSeasonProgressionBadRequest:
		return nil, v, nil, nil

	case *GetCurrentUserSeasonProgressionNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentUserSeasonProgressionShort get current user season progression
This API is used to get current user season progression, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season progression
*/
func (a *Client) GetCurrentUserSeasonProgressionShort(params *GetCurrentUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentUserSeasonProgressionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentUserSeasonProgressionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCurrentUserSeasonProgression",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentUserSeasonProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentUserSeasonProgressionOK:
		return v, nil
	case *GetCurrentUserSeasonProgressionBadRequest:
		return nil, v
	case *GetCurrentUserSeasonProgressionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CheckSeasonPurchasableShort instead.

CheckSeasonPurchasable check pass or tier purchasable
This API is used to check pass or tier purchasable, season only located in non-publisher namespace.
*/
func (a *Client) CheckSeasonPurchasable(params *CheckSeasonPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*CheckSeasonPurchasableNoContent, *CheckSeasonPurchasableBadRequest, *CheckSeasonPurchasableNotFound, *CheckSeasonPurchasableConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckSeasonPurchasableParams()
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
		ID:                 "checkSeasonPurchasable",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckSeasonPurchasableReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CheckSeasonPurchasableNoContent:
		return v, nil, nil, nil, nil

	case *CheckSeasonPurchasableBadRequest:
		return nil, v, nil, nil, nil

	case *CheckSeasonPurchasableNotFound:
		return nil, nil, v, nil, nil

	case *CheckSeasonPurchasableConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckSeasonPurchasableShort check pass or tier purchasable
This API is used to check pass or tier purchasable, season only located in non-publisher namespace.
*/
func (a *Client) CheckSeasonPurchasableShort(params *CheckSeasonPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*CheckSeasonPurchasableNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckSeasonPurchasableParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "checkSeasonPurchasable",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckSeasonPurchasableReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckSeasonPurchasableNoContent:
		return v, nil
	case *CheckSeasonPurchasableBadRequest:
		return nil, v
	case *CheckSeasonPurchasableNotFound:
		return nil, v
	case *CheckSeasonPurchasableConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ResetUserSeasonShort instead.

ResetUserSeason reset user data in current season
 [TEST FACILITY ONLY] Forbidden in live environment. This API is used to reset user data in current season, it will not revoke the rewarded entitlements.
*/
func (a *Client) ResetUserSeason(params *ResetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserSeasonNoContent, *ResetUserSeasonBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetUserSeasonParams()
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
		ID:                 "resetUserSeason",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ResetUserSeasonNoContent:
		return v, nil, nil

	case *ResetUserSeasonBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetUserSeasonShort reset user data in current season
 [TEST FACILITY ONLY] Forbidden in live environment. This API is used to reset user data in current season, it will not revoke the rewarded entitlements.
*/
func (a *Client) ResetUserSeasonShort(params *ResetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserSeasonNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetUserSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "resetUserSeason",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetUserSeasonNoContent:
		return v, nil
	case *ResetUserSeasonBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryUserExpGrantHistoryShort instead.

QueryUserExpGrantHistory query user season exp acquisition history
This API is used to get user exp acquisition history, season only located in non-publisher namespace.

Other detail info:

  * default will query from current active season
  *  Returns : paginated grant history
*/
func (a *Client) QueryUserExpGrantHistory(params *QueryUserExpGrantHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryOK, *QueryUserExpGrantHistoryBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserExpGrantHistoryParams()
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
		ID:                 "queryUserExpGrantHistory",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserExpGrantHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *QueryUserExpGrantHistoryOK:
		return v, nil, nil

	case *QueryUserExpGrantHistoryBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserExpGrantHistoryShort query user season exp acquisition history
This API is used to get user exp acquisition history, season only located in non-publisher namespace.

Other detail info:

  * default will query from current active season
  *  Returns : paginated grant history
*/
func (a *Client) QueryUserExpGrantHistoryShort(params *QueryUserExpGrantHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserExpGrantHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserExpGrantHistory",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserExpGrantHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserExpGrantHistoryOK:
		return v, nil
	case *QueryUserExpGrantHistoryBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryUserExpGrantHistoryTagShort instead.

QueryUserExpGrantHistoryTag query user season exp acquisition history's reason tag list
This API is used to get user exp acquisition history's tag list.

Other detail info:

  * default will query from current active season
  *  Returns : exp grant history tags list
*/
func (a *Client) QueryUserExpGrantHistoryTag(params *QueryUserExpGrantHistoryTagParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryTagOK, *QueryUserExpGrantHistoryTagBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserExpGrantHistoryTagParams()
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
		ID:                 "queryUserExpGrantHistoryTag",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserExpGrantHistoryTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *QueryUserExpGrantHistoryTagOK:
		return v, nil, nil

	case *QueryUserExpGrantHistoryTagBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserExpGrantHistoryTagShort query user season exp acquisition history's reason tag list
This API is used to get user exp acquisition history's tag list.

Other detail info:

  * default will query from current active season
  *  Returns : exp grant history tags list
*/
func (a *Client) QueryUserExpGrantHistoryTagShort(params *QueryUserExpGrantHistoryTagParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryTagOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserExpGrantHistoryTagParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserExpGrantHistoryTag",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserExpGrantHistoryTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserExpGrantHistoryTagOK:
		return v, nil
	case *QueryUserExpGrantHistoryTagBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserSeasonShort instead.

GetUserSeason get user season data
This API is used to get user season data, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) GetUserSeason(params *GetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSeasonOK, *GetUserSeasonBadRequest, *GetUserSeasonNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserSeasonParams()
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
		ID:                 "getUserSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserSeasonOK:
		return v, nil, nil, nil

	case *GetUserSeasonBadRequest:
		return nil, v, nil, nil

	case *GetUserSeasonNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserSeasonShort get user season data
This API is used to get user season data, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) GetUserSeasonShort(params *GetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserSeasonOK:
		return v, nil
	case *GetUserSeasonBadRequest:
		return nil, v
	case *GetUserSeasonNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetCurrentSeasonShort instead.

PublicGetCurrentSeason get current published season
This API is used to get current published season, season only located in non-publisher namespace.

Other detail info:

  * Returns : localized season data
*/
func (a *Client) PublicGetCurrentSeason(params *PublicGetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentSeasonOK, *PublicGetCurrentSeasonBadRequest, *PublicGetCurrentSeasonUnauthorized, *PublicGetCurrentSeasonNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCurrentSeasonParams()
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
		ID:                 "publicGetCurrentSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/seasons/current",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCurrentSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetCurrentSeasonOK:
		return v, nil, nil, nil, nil

	case *PublicGetCurrentSeasonBadRequest:
		return nil, v, nil, nil, nil

	case *PublicGetCurrentSeasonUnauthorized:
		return nil, nil, v, nil, nil

	case *PublicGetCurrentSeasonNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCurrentSeasonShort get current published season
This API is used to get current published season, season only located in non-publisher namespace.

Other detail info:

  * Returns : localized season data
*/
func (a *Client) PublicGetCurrentSeasonShort(params *PublicGetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCurrentSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetCurrentSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/seasons/current",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCurrentSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCurrentSeasonOK:
		return v, nil
	case *PublicGetCurrentSeasonBadRequest:
		return nil, v
	case *PublicGetCurrentSeasonUnauthorized:
		return nil, v
	case *PublicGetCurrentSeasonNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetCurrentUserSeasonShort instead.

PublicGetCurrentUserSeason get current user season data
This API is used to get current user season data, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicGetCurrentUserSeason(params *PublicGetCurrentUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentUserSeasonOK, *PublicGetCurrentUserSeasonBadRequest, *PublicGetCurrentUserSeasonNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCurrentUserSeasonParams()
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
		ID:                 "publicGetCurrentUserSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCurrentUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetCurrentUserSeasonOK:
		return v, nil, nil, nil

	case *PublicGetCurrentUserSeasonBadRequest:
		return nil, v, nil, nil

	case *PublicGetCurrentUserSeasonNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCurrentUserSeasonShort get current user season data
This API is used to get current user season data, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicGetCurrentUserSeasonShort(params *PublicGetCurrentUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentUserSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCurrentUserSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetCurrentUserSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCurrentUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCurrentUserSeasonOK:
		return v, nil
	case *PublicGetCurrentUserSeasonBadRequest:
		return nil, v
	case *PublicGetCurrentUserSeasonNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserSeasonShort instead.

PublicGetUserSeason get user season data
This API is used to get user season data, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicGetUserSeason(params *PublicGetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSeasonOK, *PublicGetUserSeasonBadRequest, *PublicGetUserSeasonNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserSeasonParams()
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
		ID:                 "publicGetUserSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserSeasonOK:
		return v, nil, nil, nil

	case *PublicGetUserSeasonBadRequest:
		return nil, v, nil, nil

	case *PublicGetUserSeasonNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserSeasonShort get user season data
This API is used to get user season data, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicGetUserSeasonShort(params *PublicGetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSeasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserSeasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserSeasonOK:
		return v, nil
	case *PublicGetUserSeasonBadRequest:
		return nil, v
	case *PublicGetUserSeasonNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
