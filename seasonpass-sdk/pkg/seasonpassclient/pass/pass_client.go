// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package pass

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new pass API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for pass API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryPasses(params *QueryPassesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPassesOK, *QueryPassesBadRequest, *QueryPassesNotFound, error)
	QueryPassesShort(params *QueryPassesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPassesOK, error)
	CreatePass(params *CreatePassParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePassCreated, *CreatePassBadRequest, *CreatePassNotFound, *CreatePassConflict, *CreatePassUnprocessableEntity, error)
	CreatePassShort(params *CreatePassParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePassCreated, error)
	GetPass(params *GetPassParams, authInfo runtime.ClientAuthInfoWriter) (*GetPassOK, *GetPassBadRequest, *GetPassNotFound, error)
	GetPassShort(params *GetPassParams, authInfo runtime.ClientAuthInfoWriter) (*GetPassOK, error)
	DeletePass(params *DeletePassParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePassNoContent, *DeletePassBadRequest, *DeletePassNotFound, *DeletePassConflict, error)
	DeletePassShort(params *DeletePassParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePassNoContent, error)
	UpdatePass(params *UpdatePassParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePassOK, *UpdatePassBadRequest, *UpdatePassNotFound, *UpdatePassConflict, *UpdatePassUnprocessableEntity, error)
	UpdatePassShort(params *UpdatePassParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePassOK, error)
	GrantUserPass(params *GrantUserPassParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserPassOK, *GrantUserPassBadRequest, error)
	GrantUserPassShort(params *GrantUserPassParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserPassOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryPassesShort instead.

QueryPasses query all passes for a season
This API is used to query all passes for a season.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=2 (READ)
  *  Returns : the list of passes
*/
func (a *Client) QueryPasses(params *QueryPassesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPassesOK, *QueryPassesBadRequest, *QueryPassesNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPassesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryPasses",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPassesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryPassesOK:
		return v, nil, nil, nil

	case *QueryPassesBadRequest:
		return nil, v, nil, nil

	case *QueryPassesNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryPassesShort query all passes for a season
This API is used to query all passes for a season.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=2 (READ)
  *  Returns : the list of passes
*/
func (a *Client) QueryPassesShort(params *QueryPassesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPassesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPassesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryPasses",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPassesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryPassesOK:
		return v, nil
	case *QueryPassesBadRequest:
		return nil, v
	case *QueryPassesNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreatePassShort instead.

CreatePass create a pass
This API is used to create a pass for a draft season.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=1 (CREATE)
  *  Returns : created pass
*/
func (a *Client) CreatePass(params *CreatePassParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePassCreated, *CreatePassBadRequest, *CreatePassNotFound, *CreatePassConflict, *CreatePassUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePassParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createPass",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreatePassCreated:
		return v, nil, nil, nil, nil, nil

	case *CreatePassBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreatePassNotFound:
		return nil, nil, v, nil, nil, nil

	case *CreatePassConflict:
		return nil, nil, nil, v, nil, nil

	case *CreatePassUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePassShort create a pass
This API is used to create a pass for a draft season.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=1 (CREATE)
  *  Returns : created pass
*/
func (a *Client) CreatePassShort(params *CreatePassParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePassCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePassParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createPass",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePassCreated:
		return v, nil
	case *CreatePassBadRequest:
		return nil, v
	case *CreatePassNotFound:
		return nil, v
	case *CreatePassConflict:
		return nil, v
	case *CreatePassUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPassShort instead.

GetPass get a pass
This API is used to get a pass for a season.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=2 (READ)
  *  Returns : pass data
*/
func (a *Client) GetPass(params *GetPassParams, authInfo runtime.ClientAuthInfoWriter) (*GetPassOK, *GetPassBadRequest, *GetPassNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPassParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPass",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPassOK:
		return v, nil, nil, nil

	case *GetPassBadRequest:
		return nil, v, nil, nil

	case *GetPassNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPassShort get a pass
This API is used to get a pass for a season.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=2 (READ)
  *  Returns : pass data
*/
func (a *Client) GetPassShort(params *GetPassParams, authInfo runtime.ClientAuthInfoWriter) (*GetPassOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPassParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPass",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPassOK:
		return v, nil
	case *GetPassBadRequest:
		return nil, v
	case *GetPassNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeletePassShort instead.

DeletePass delete a pass
This API is used to delete a pass permanently, only draft season pass can be deleted.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=8 (DELETE)
*/
func (a *Client) DeletePass(params *DeletePassParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePassNoContent, *DeletePassBadRequest, *DeletePassNotFound, *DeletePassConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePassParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePass",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeletePassNoContent:
		return v, nil, nil, nil, nil

	case *DeletePassBadRequest:
		return nil, v, nil, nil, nil

	case *DeletePassNotFound:
		return nil, nil, v, nil, nil

	case *DeletePassConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePassShort delete a pass
This API is used to delete a pass permanently, only draft season pass can be deleted.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=8 (DELETE)
*/
func (a *Client) DeletePassShort(params *DeletePassParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePassNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePassParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePass",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePassNoContent:
		return v, nil
	case *DeletePassBadRequest:
		return nil, v
	case *DeletePassNotFound:
		return nil, v
	case *DeletePassConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePassShort instead.

UpdatePass update a pass
This API is used to update a pass. Only draft season pass can be updated.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=4 (UPDATE)
  *  Returns : updated pass
*/
func (a *Client) UpdatePass(params *UpdatePassParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePassOK, *UpdatePassBadRequest, *UpdatePassNotFound, *UpdatePassConflict, *UpdatePassUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePassParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePass",
		Method:             "PATCH",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePassOK:
		return v, nil, nil, nil, nil, nil

	case *UpdatePassBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdatePassNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdatePassConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdatePassUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePassShort update a pass
This API is used to update a pass. Only draft season pass can be updated.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=4 (UPDATE)
  *  Returns : updated pass
*/
func (a *Client) UpdatePassShort(params *UpdatePassParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePassOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePassParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePass",
		Method:             "PATCH",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePassOK:
		return v, nil
	case *UpdatePassBadRequest:
		return nil, v
	case *UpdatePassNotFound:
		return nil, v
	case *UpdatePassConflict:
		return nil, v
	case *UpdatePassUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GrantUserPassShort instead.

GrantUserPass grant pass to user
This API is used to grant pass to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SEASONPASS", action=4 (UPDATE)
  *  Returns : user season data
*/
func (a *Client) GrantUserPass(params *GrantUserPassParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserPassOK, *GrantUserPassBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserPassParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "grantUserPass",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserPassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GrantUserPassOK:
		return v, nil, nil

	case *GrantUserPassBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GrantUserPassShort grant pass to user
This API is used to grant pass to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SEASONPASS", action=4 (UPDATE)
  *  Returns : user season data
*/
func (a *Client) GrantUserPassShort(params *GrantUserPassParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserPassOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserPassParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "grantUserPass",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserPassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GrantUserPassOK:
		return v, nil
	case *GrantUserPassBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
