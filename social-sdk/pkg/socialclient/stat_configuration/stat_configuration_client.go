// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package stat_configuration

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new stat configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for stat configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetStats(params *GetStatsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatsOK, error)
	GetStatsShort(params *GetStatsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatsOK, error)
	CreateStat(params *CreateStatParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCreated, *CreateStatNotFound, *CreateStatConflict, error)
	CreateStatShort(params *CreateStatParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCreated, error)
	ExportStats(params *ExportStatsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatsOK, error)
	ExportStatsShort(params *ExportStatsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatsOK, error)
	ImportStats(params *ImportStatsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatsCreated, *ImportStatsBadRequest, error)
	ImportStatsShort(params *ImportStatsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatsCreated, error)
	QueryStats(params *QueryStatsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryStatsOK, error)
	QueryStatsShort(params *QueryStatsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryStatsOK, error)
	GetStat(params *GetStatParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatOK, *GetStatNotFound, error)
	GetStatShort(params *GetStatParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatOK, error)
	DeleteStat(params *DeleteStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatNoContent, *DeleteStatNotFound, error)
	DeleteStatShort(params *DeleteStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatNoContent, error)
	UpdateStat(params *UpdateStatParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatOK, *UpdateStatNotFound, error)
	UpdateStatShort(params *UpdateStatParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatOK, error)
	DeleteTiedStat(params *DeleteTiedStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTiedStatNoContent, *DeleteTiedStatConflict, error)
	DeleteTiedStatShort(params *DeleteTiedStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTiedStatNoContent, error)
	CreateStat1(params *CreateStat1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateStat1Created, *CreateStat1NotFound, *CreateStat1Conflict, error)
	CreateStat1Short(params *CreateStat1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateStat1Created, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetStatsShort instead.

GetStats list stats
List stats by pagination.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
                      *  Returns : stats
*/
func (a *Client) GetStats(params *GetStatsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStats",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatsShort list stats
List stats by pagination.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
                      *  Returns : stats
*/
func (a *Client) GetStatsShort(params *GetStatsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStats",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateStatShort instead.

CreateStat create stat
Create stat.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=1 (CREATE)
                      *  Returns : created stat template
                      * default minimum value is 0
                      * default maximum value is 1.7976931348623157e+308
*/
func (a *Client) CreateStat(params *CreateStatParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCreated, *CreateStatNotFound, *CreateStatConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createStat",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateStatCreated:
		return v, nil, nil, nil

	case *CreateStatNotFound:
		return nil, v, nil, nil

	case *CreateStatConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateStatShort create stat
Create stat.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=1 (CREATE)
                      *  Returns : created stat template
                      * default minimum value is 0
                      * default maximum value is 1.7976931348623157e+308
*/
func (a *Client) CreateStatShort(params *CreateStatParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createStat",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateStatCreated:
		return v, nil
	case *CreateStatNotFound:
		return nil, v
	case *CreateStatConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExportStatsShort instead.

ExportStats export all stat configurations
Export all stat configurations for a given namespace into file At current, only JSON file is supported.

Other detail info:
                      *  *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
*/
func (a *Client) ExportStats(params *ExportStatsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStatsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportStats",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStatsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportStatsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportStatsShort export all stat configurations
Export all stat configurations for a given namespace into file At current, only JSON file is supported.

Other detail info:
                      *  *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
*/
func (a *Client) ExportStatsShort(params *ExportStatsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStatsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportStats",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStatsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportStatsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImportStatsShort instead.

ImportStats import stat configurations
Import stat configurations for a given namespace from file. At current, only JSON file is supported.

Other detail info:
                      *  *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:STAT", action=1 (CREATE)
*/
func (a *Client) ImportStats(params *ImportStatsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatsCreated, *ImportStatsBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStatsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "importStats",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ImportStatsCreated:
		return v, nil, nil

	case *ImportStatsBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportStatsShort import stat configurations
Import stat configurations for a given namespace from file. At current, only JSON file is supported.

Other detail info:
                      *  *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:STAT", action=1 (CREATE)
*/
func (a *Client) ImportStatsShort(params *ImportStatsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatsCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStatsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "importStats",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportStatsCreated:
		return v, nil
	case *ImportStatsBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryStatsShort instead.

QueryStats query stats by keyword
Query stats by keyword.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
                      *  Returns : stats
*/
func (a *Client) QueryStats(params *QueryStatsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryStatsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryStatsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryStats",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryStatsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryStatsShort query stats by keyword
Query stats by keyword.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
                      *  Returns : stats
*/
func (a *Client) QueryStatsShort(params *QueryStatsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryStatsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryStatsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryStats",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryStatsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetStatShort instead.

GetStat get stat by statcode
Get stat by statCode.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
                      *  Returns : stat info
*/
func (a *Client) GetStat(params *GetStatParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatOK, *GetStatNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStat",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetStatOK:
		return v, nil, nil

	case *GetStatNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatShort get stat by statcode
Get stat by statCode.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
                      *  Returns : stat info
*/
func (a *Client) GetStatShort(params *GetStatParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStat",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatOK:
		return v, nil
	case *GetStatNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteStatShort instead.

DeleteStat deletes stat
Deletes stat template.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=8 (DELETE)
*/
func (a *Client) DeleteStat(params *DeleteStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatNoContent, *DeleteStatNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteStatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteStat",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteStatNoContent:
		return v, nil, nil

	case *DeleteStatNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteStatShort deletes stat
Deletes stat template.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=8 (DELETE)
*/
func (a *Client) DeleteStatShort(params *DeleteStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteStatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteStat",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteStatNoContent:
		return v, nil
	case *DeleteStatNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateStatShort instead.

UpdateStat update stat
Update stat.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=4 (UPDATE)
                      *  Returns : updated stat
*/
func (a *Client) UpdateStat(params *UpdateStatParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatOK, *UpdateStatNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateStat",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateStatOK:
		return v, nil, nil

	case *UpdateStatNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateStatShort update stat
Update stat.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=4 (UPDATE)
                      *  Returns : updated stat
*/
func (a *Client) UpdateStatShort(params *UpdateStatParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateStat",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateStatOK:
		return v, nil
	case *UpdateStatNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteTiedStatShort instead.

DeleteTiedStat deletes tied stat
Deletes stat template.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=8 (DELETE)
*/
func (a *Client) DeleteTiedStat(params *DeleteTiedStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTiedStatNoContent, *DeleteTiedStatConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTiedStatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTiedStat",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}/tied",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTiedStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteTiedStatNoContent:
		return v, nil, nil

	case *DeleteTiedStatConflict:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTiedStatShort deletes tied stat
Deletes stat template.
Other detail info:
                      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=8 (DELETE)
*/
func (a *Client) DeleteTiedStatShort(params *DeleteTiedStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTiedStatNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTiedStatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTiedStat",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}/tied",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTiedStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTiedStatNoContent:
		return v, nil
	case *DeleteTiedStatConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateStat1Short instead.

CreateStat1 create stat
Create stat.
Other detail info:
                      *  Required permission : resource="NAMESPACE:{namespace}:STAT", action=1 (CREATE)
                      *  Returns : created stat template
                      * default minimum value is 0
                      * default maximum value is 1.7976931348623157e+308
*/
func (a *Client) CreateStat1(params *CreateStat1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateStat1Created, *CreateStat1NotFound, *CreateStat1Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStat1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createStat_1",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStat1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateStat1Created:
		return v, nil, nil, nil

	case *CreateStat1NotFound:
		return nil, v, nil, nil

	case *CreateStat1Conflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateStat1Short create stat
Create stat.
Other detail info:
                      *  Required permission : resource="NAMESPACE:{namespace}:STAT", action=1 (CREATE)
                      *  Returns : created stat template
                      * default minimum value is 0
                      * default maximum value is 1.7976931348623157e+308
*/
func (a *Client) CreateStat1Short(params *CreateStat1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateStat1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStat1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createStat_1",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStat1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateStat1Created:
		return v, nil
	case *CreateStat1NotFound:
		return nil, v
	case *CreateStat1Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
