// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package fulfillment_script

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new fulfillment script API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for fulfillment script API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListFulfillmentScripts(params *ListFulfillmentScriptsParams, authInfo runtime.ClientAuthInfoWriter) (*ListFulfillmentScriptsOK, error)
	ListFulfillmentScriptsShort(params *ListFulfillmentScriptsParams, authInfo runtime.ClientAuthInfoWriter) (*ListFulfillmentScriptsOK, error)
	GetFulfillmentScript(params *GetFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*GetFulfillmentScriptOK, *GetFulfillmentScriptNotFound, error)
	GetFulfillmentScriptShort(params *GetFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*GetFulfillmentScriptOK, error)
	CreateFulfillmentScript(params *CreateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*CreateFulfillmentScriptCreated, *CreateFulfillmentScriptConflict, error)
	CreateFulfillmentScriptShort(params *CreateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*CreateFulfillmentScriptCreated, error)
	DeleteFulfillmentScript(params *DeleteFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteFulfillmentScriptNoContent, error)
	DeleteFulfillmentScriptShort(params *DeleteFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteFulfillmentScriptNoContent, error)
	UpdateFulfillmentScript(params *UpdateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateFulfillmentScriptOK, *UpdateFulfillmentScriptBadRequest, error)
	UpdateFulfillmentScriptShort(params *UpdateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateFulfillmentScriptOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListFulfillmentScriptsShort instead.

ListFulfillmentScripts list all fulfillment scripts
[Not supported yet in AGS Shared Cloud] List all fulfillment scripts.
*/
func (a *Client) ListFulfillmentScripts(params *ListFulfillmentScriptsParams, authInfo runtime.ClientAuthInfoWriter) (*ListFulfillmentScriptsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListFulfillmentScriptsParams()
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
		ID:                 "listFulfillmentScripts",
		Method:             "GET",
		PathPattern:        "/platform/admin/fulfillment/scripts",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListFulfillmentScriptsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListFulfillmentScriptsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListFulfillmentScriptsShort list all fulfillment scripts
 [Not supported yet in AGS Shared Cloud] List all fulfillment scripts.
*/
func (a *Client) ListFulfillmentScriptsShort(params *ListFulfillmentScriptsParams, authInfo runtime.ClientAuthInfoWriter) (*ListFulfillmentScriptsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListFulfillmentScriptsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listFulfillmentScripts",
		Method:             "GET",
		PathPattern:        "/platform/admin/fulfillment/scripts",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListFulfillmentScriptsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListFulfillmentScriptsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetFulfillmentScriptShort instead.

GetFulfillmentScript get fulfillment script by id
 [Not supported yet in AGS Shared Cloud] Get fulfillment script by id.
Other detail info:

  * Returns : get fulfillment script
*/
func (a *Client) GetFulfillmentScript(params *GetFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*GetFulfillmentScriptOK, *GetFulfillmentScriptNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetFulfillmentScriptParams()
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
		ID:                 "getFulfillmentScript",
		Method:             "GET",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetFulfillmentScriptOK:
		return v, nil, nil

	case *GetFulfillmentScriptNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetFulfillmentScriptShort get fulfillment script by id
 [Not supported yet in AGS Shared Cloud] Get fulfillment script by id.
Other detail info:

  * Returns : get fulfillment script
*/
func (a *Client) GetFulfillmentScriptShort(params *GetFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*GetFulfillmentScriptOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetFulfillmentScriptParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getFulfillmentScript",
		Method:             "GET",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetFulfillmentScriptOK:
		return v, nil
	case *GetFulfillmentScriptNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateFulfillmentScriptShort instead.

CreateFulfillmentScript create fulfillment script
 [Not supported yet in AGS Shared Cloud] Create fulfillment script.
Other detail info:


Fulfillment scripts are used for adding custom fulfillment logic based on ITEM_TYPE : [MEDIA,INGAMEITEM] for now, and the custom scripts only cover grantDays.
Example for grantDays:
`order && ((order.currency && order.currency.currencyCode) == 'LP' || order.isFree) ? 30 : -1`
*/
func (a *Client) CreateFulfillmentScript(params *CreateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*CreateFulfillmentScriptCreated, *CreateFulfillmentScriptConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateFulfillmentScriptParams()
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
		ID:                 "createFulfillmentScript",
		Method:             "POST",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *CreateFulfillmentScriptCreated:
		return v, nil, nil

	case *CreateFulfillmentScriptConflict:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateFulfillmentScriptShort create fulfillment script
 [Not supported yet in AGS Shared Cloud] Create fulfillment script.
Other detail info:


Fulfillment scripts are used for adding custom fulfillment logic based on ITEM_TYPE : [MEDIA,INGAMEITEM] for now, and the custom scripts only cover grantDays.
Example for grantDays:
`order && ((order.currency && order.currency.currencyCode) == 'LP' || order.isFree) ? 30 : -1`
*/
func (a *Client) CreateFulfillmentScriptShort(params *CreateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*CreateFulfillmentScriptCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateFulfillmentScriptParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createFulfillmentScript",
		Method:             "POST",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateFulfillmentScriptCreated:
		return v, nil
	case *CreateFulfillmentScriptConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteFulfillmentScriptShort instead.

DeleteFulfillmentScript delete fulfillment script
 [Not supported yet in AGS Shared Cloud] Delete fulfillment script.
*/
func (a *Client) DeleteFulfillmentScript(params *DeleteFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteFulfillmentScriptNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteFulfillmentScriptParams()
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
		ID:                 "deleteFulfillmentScript",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteFulfillmentScriptNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteFulfillmentScriptShort delete fulfillment script
 [Not supported yet in AGS Shared Cloud] Delete fulfillment script.
*/
func (a *Client) DeleteFulfillmentScriptShort(params *DeleteFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteFulfillmentScriptNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteFulfillmentScriptParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteFulfillmentScript",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteFulfillmentScriptNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateFulfillmentScriptShort instead.

UpdateFulfillmentScript update fulfillment script
 [Not supported yet in AGS Shared Cloud] Update fulfillment script.
*/
func (a *Client) UpdateFulfillmentScript(params *UpdateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateFulfillmentScriptOK, *UpdateFulfillmentScriptBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateFulfillmentScriptParams()
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
		ID:                 "updateFulfillmentScript",
		Method:             "PATCH",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateFulfillmentScriptOK:
		return v, nil, nil

	case *UpdateFulfillmentScriptBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateFulfillmentScriptShort update fulfillment script
 [Not supported yet in AGS Shared Cloud] Update fulfillment script.
*/
func (a *Client) UpdateFulfillmentScriptShort(params *UpdateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateFulfillmentScriptOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateFulfillmentScriptParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateFulfillmentScript",
		Method:             "PATCH",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateFulfillmentScriptOK:
		return v, nil
	case *UpdateFulfillmentScriptBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
