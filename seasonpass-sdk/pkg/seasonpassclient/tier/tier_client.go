// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package tier

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new tier API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for tier API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryTiers(params *QueryTiersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTiersOK, *QueryTiersBadRequest, *QueryTiersNotFound, error)
	QueryTiersShort(params *QueryTiersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTiersOK, error)
	CreateTier(params *CreateTierParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTierCreated, *CreateTierBadRequest, *CreateTierNotFound, *CreateTierConflict, *CreateTierUnprocessableEntity, error)
	CreateTierShort(params *CreateTierParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTierCreated, error)
	UpdateTier(params *UpdateTierParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTierOK, *UpdateTierBadRequest, *UpdateTierNotFound, *UpdateTierConflict, *UpdateTierUnprocessableEntity, error)
	UpdateTierShort(params *UpdateTierParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTierOK, error)
	DeleteTier(params *DeleteTierParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTierNoContent, *DeleteTierBadRequest, *DeleteTierNotFound, *DeleteTierConflict, error)
	DeleteTierShort(params *DeleteTierParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTierNoContent, error)
	ReorderTier(params *ReorderTierParams, authInfo runtime.ClientAuthInfoWriter) (*ReorderTierOK, *ReorderTierBadRequest, *ReorderTierNotFound, *ReorderTierConflict, *ReorderTierUnprocessableEntity, error)
	ReorderTierShort(params *ReorderTierParams, authInfo runtime.ClientAuthInfoWriter) (*ReorderTierOK, error)
	GrantUserExp(params *GrantUserExpParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserExpOK, *GrantUserExpBadRequest, error)
	GrantUserExpShort(params *GrantUserExpParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserExpOK, error)
	GrantUserTier(params *GrantUserTierParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserTierOK, *GrantUserTierBadRequest, *GrantUserTierNotFound, error)
	GrantUserTierShort(params *GrantUserTierParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserTierOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryTiersShort instead.

QueryTiers query paginated tiers for a season
This API is used to query paginated tiers for a season.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=2 (READ)
  *  Returns : the list of passes
*/
func (a *Client) QueryTiers(params *QueryTiersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTiersOK, *QueryTiersBadRequest, *QueryTiersNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTiersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryTiers",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTiersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryTiersOK:
		return v, nil, nil, nil

	case *QueryTiersBadRequest:
		return nil, v, nil, nil

	case *QueryTiersNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTiersShort query paginated tiers for a season
This API is used to query paginated tiers for a season.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=2 (READ)
  *  Returns : the list of passes
*/
func (a *Client) QueryTiersShort(params *QueryTiersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTiersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTiersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryTiers",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTiersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTiersOK:
		return v, nil
	case *QueryTiersBadRequest:
		return nil, v
	case *QueryTiersNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateTierShort instead.

CreateTier create tier
This API is used to create tier for a draft season, can create multiple tiers at same time.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=1 (CREATE)
*/
func (a *Client) CreateTier(params *CreateTierParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTierCreated, *CreateTierBadRequest, *CreateTierNotFound, *CreateTierConflict, *CreateTierUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTierParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createTier",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateTierCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateTierBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateTierNotFound:
		return nil, nil, v, nil, nil, nil

	case *CreateTierConflict:
		return nil, nil, nil, v, nil, nil

	case *CreateTierUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateTierShort create tier
This API is used to create tier for a draft season, can create multiple tiers at same time.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=1 (CREATE)
*/
func (a *Client) CreateTierShort(params *CreateTierParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTierCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTierParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createTier",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateTierCreated:
		return v, nil
	case *CreateTierBadRequest:
		return nil, v
	case *CreateTierNotFound:
		return nil, v
	case *CreateTierConflict:
		return nil, v
	case *CreateTierUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateTierShort instead.

UpdateTier update a tier
This API is used to update a tier. Only draft season pass can be updated.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=4 (UPDATE)
*/
func (a *Client) UpdateTier(params *UpdateTierParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTierOK, *UpdateTierBadRequest, *UpdateTierNotFound, *UpdateTierConflict, *UpdateTierUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTierParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateTier",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateTierOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateTierBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateTierNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdateTierConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateTierUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateTierShort update a tier
This API is used to update a tier. Only draft season pass can be updated.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=4 (UPDATE)
*/
func (a *Client) UpdateTierShort(params *UpdateTierParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTierOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTierParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateTier",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateTierOK:
		return v, nil
	case *UpdateTierBadRequest:
		return nil, v
	case *UpdateTierNotFound:
		return nil, v
	case *UpdateTierConflict:
		return nil, v
	case *UpdateTierUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteTierShort instead.

DeleteTier delete a tier
This API is used to delete a tier permanently, only draft season pass can be deleted.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=8 (DELETE)
*/
func (a *Client) DeleteTier(params *DeleteTierParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTierNoContent, *DeleteTierBadRequest, *DeleteTierNotFound, *DeleteTierConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTierParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTier",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteTierNoContent:
		return v, nil, nil, nil, nil

	case *DeleteTierBadRequest:
		return nil, v, nil, nil, nil

	case *DeleteTierNotFound:
		return nil, nil, v, nil, nil

	case *DeleteTierConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTierShort delete a tier
This API is used to delete a tier permanently, only draft season pass can be deleted.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=8 (DELETE)
*/
func (a *Client) DeleteTierShort(params *DeleteTierParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTierNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTierParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTier",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTierNoContent:
		return v, nil
	case *DeleteTierBadRequest:
		return nil, v
	case *DeleteTierNotFound:
		return nil, v
	case *DeleteTierConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ReorderTierShort instead.

ReorderTier reorder a tier
This API is used to reorder a tier. Only draft season pass can be updated.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=4 (UPDATE)
*/
func (a *Client) ReorderTier(params *ReorderTierParams, authInfo runtime.ClientAuthInfoWriter) (*ReorderTierOK, *ReorderTierBadRequest, *ReorderTierNotFound, *ReorderTierConflict, *ReorderTierUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewReorderTierParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "reorderTier",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}/reorder",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ReorderTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ReorderTierOK:
		return v, nil, nil, nil, nil, nil

	case *ReorderTierBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ReorderTierNotFound:
		return nil, nil, v, nil, nil, nil

	case *ReorderTierConflict:
		return nil, nil, nil, v, nil, nil

	case *ReorderTierUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ReorderTierShort reorder a tier
This API is used to reorder a tier. Only draft season pass can be updated.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=4 (UPDATE)
*/
func (a *Client) ReorderTierShort(params *ReorderTierParams, authInfo runtime.ClientAuthInfoWriter) (*ReorderTierOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewReorderTierParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "reorderTier",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}/reorder",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ReorderTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ReorderTierOK:
		return v, nil
	case *ReorderTierBadRequest:
		return nil, v
	case *ReorderTierNotFound:
		return nil, v
	case *ReorderTierConflict:
		return nil, v
	case *ReorderTierUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GrantUserExpShort instead.

GrantUserExp grant exp to user
This API is used to grant exp to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SEASONPASS", action=4 (UPDATE)
  *  Returns : user season data
*/
func (a *Client) GrantUserExp(params *GrantUserExpParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserExpOK, *GrantUserExpBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserExpParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "grantUserExp",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/exp",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserExpReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GrantUserExpOK:
		return v, nil, nil

	case *GrantUserExpBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GrantUserExpShort grant exp to user
This API is used to grant exp to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SEASONPASS", action=4 (UPDATE)
  *  Returns : user season data
*/
func (a *Client) GrantUserExpShort(params *GrantUserExpParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserExpOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserExpParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "grantUserExp",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/exp",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserExpReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GrantUserExpOK:
		return v, nil
	case *GrantUserExpBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GrantUserTierShort instead.

GrantUserTier grant tier to user
This API is used to grant tier to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SEASONPASS", action=4 (UPDATE)
  *  Returns : user season data
*/
func (a *Client) GrantUserTier(params *GrantUserTierParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserTierOK, *GrantUserTierBadRequest, *GrantUserTierNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserTierParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "grantUserTier",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GrantUserTierOK:
		return v, nil, nil, nil

	case *GrantUserTierBadRequest:
		return nil, v, nil, nil

	case *GrantUserTierNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GrantUserTierShort grant tier to user
This API is used to grant tier to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SEASONPASS", action=4 (UPDATE)
  *  Returns : user season data
*/
func (a *Client) GrantUserTierShort(params *GrantUserTierParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserTierOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserTierParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "grantUserTier",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GrantUserTierOK:
		return v, nil
	case *GrantUserTierBadRequest:
		return nil, v
	case *GrantUserTierNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
