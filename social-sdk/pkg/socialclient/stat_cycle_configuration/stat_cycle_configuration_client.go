// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package stat_cycle_configuration

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new stat cycle configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for stat cycle configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetStatCycles(params *GetStatCyclesParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCyclesOK, *GetStatCyclesUnauthorized, *GetStatCyclesForbidden, *GetStatCyclesInternalServerError, error)
	GetStatCyclesShort(params *GetStatCyclesParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCyclesOK, error)
	CreateStatCycle(params *CreateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCycleCreated, *CreateStatCycleBadRequest, *CreateStatCycleUnauthorized, *CreateStatCycleForbidden, *CreateStatCycleUnprocessableEntity, *CreateStatCycleInternalServerError, error)
	CreateStatCycleShort(params *CreateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCycleCreated, error)
	BulkGetStatCycle(params *BulkGetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycleOK, *BulkGetStatCycleBadRequest, *BulkGetStatCycleUnauthorized, *BulkGetStatCycleForbidden, *BulkGetStatCycleUnprocessableEntity, *BulkGetStatCycleInternalServerError, error)
	BulkGetStatCycleShort(params *BulkGetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycleOK, error)
	ExportStatCycle(params *ExportStatCycleParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatCycleOK, *ExportStatCycleUnauthorized, *ExportStatCycleForbidden, *ExportStatCycleInternalServerError, error)
	ExportStatCycleShort(params *ExportStatCycleParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatCycleOK, error)
	ImportStatCycle(params *ImportStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatCycleCreated, *ImportStatCycleBadRequest, *ImportStatCycleUnauthorized, *ImportStatCycleForbidden, *ImportStatCycleInternalServerError, error)
	ImportStatCycleShort(params *ImportStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatCycleCreated, error)
	GetStatCycle(params *GetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycleOK, *GetStatCycleUnauthorized, *GetStatCycleForbidden, *GetStatCycleNotFound, *GetStatCycleInternalServerError, error)
	GetStatCycleShort(params *GetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycleOK, error)
	UpdateStatCycle(params *UpdateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatCycleOK, *UpdateStatCycleBadRequest, *UpdateStatCycleUnauthorized, *UpdateStatCycleForbidden, *UpdateStatCycleNotFound, *UpdateStatCycleConflict, *UpdateStatCycleUnprocessableEntity, *UpdateStatCycleInternalServerError, error)
	UpdateStatCycleShort(params *UpdateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatCycleOK, error)
	DeleteStatCycle(params *DeleteStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatCycleNoContent, *DeleteStatCycleUnauthorized, *DeleteStatCycleForbidden, *DeleteStatCycleNotFound, *DeleteStatCycleInternalServerError, error)
	DeleteStatCycleShort(params *DeleteStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatCycleNoContent, error)
	BulkAddStats(params *BulkAddStatsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAddStatsOK, *BulkAddStatsBadRequest, *BulkAddStatsUnauthorized, *BulkAddStatsForbidden, *BulkAddStatsNotFound, *BulkAddStatsUnprocessableEntity, *BulkAddStatsInternalServerError, error)
	BulkAddStatsShort(params *BulkAddStatsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAddStatsOK, error)
	StopStatCycle(params *StopStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*StopStatCycleOK, *StopStatCycleUnauthorized, *StopStatCycleForbidden, *StopStatCycleNotFound, *StopStatCycleConflict, *StopStatCycleInternalServerError, error)
	StopStatCycleShort(params *StopStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*StopStatCycleOK, error)
	GetStatCycles1(params *GetStatCycles1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycles1OK, *GetStatCycles1Unauthorized, *GetStatCycles1Forbidden, *GetStatCycles1InternalServerError, error)
	GetStatCycles1Short(params *GetStatCycles1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycles1OK, error)
	BulkGetStatCycle1(params *BulkGetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycle1OK, *BulkGetStatCycle1BadRequest, *BulkGetStatCycle1Unauthorized, *BulkGetStatCycle1Forbidden, *BulkGetStatCycle1UnprocessableEntity, *BulkGetStatCycle1InternalServerError, error)
	BulkGetStatCycle1Short(params *BulkGetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycle1OK, error)
	GetStatCycle1(params *GetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycle1OK, *GetStatCycle1Unauthorized, *GetStatCycle1Forbidden, *GetStatCycle1NotFound, *GetStatCycle1InternalServerError, error)
	GetStatCycle1Short(params *GetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycle1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetStatCyclesShort instead.

GetStatCycles list stat cycles
List stat cycles by pagination.
Other detail info:
              *  Returns : stat cycles
*/
func (a *Client) GetStatCycles(params *GetStatCyclesParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCyclesOK, *GetStatCyclesUnauthorized, *GetStatCyclesForbidden, *GetStatCyclesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCyclesParams()
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
		ID:                 "getStatCycles",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCyclesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetStatCyclesOK:
		return v, nil, nil, nil, nil

	case *GetStatCyclesUnauthorized:
		return nil, v, nil, nil, nil

	case *GetStatCyclesForbidden:
		return nil, nil, v, nil, nil

	case *GetStatCyclesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatCyclesShort list stat cycles
List stat cycles by pagination.
Other detail info:
              *  Returns : stat cycles
*/
func (a *Client) GetStatCyclesShort(params *GetStatCyclesParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCyclesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCyclesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStatCycles",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCyclesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatCyclesOK:
		return v, nil
	case *GetStatCyclesUnauthorized:
		return nil, v
	case *GetStatCyclesForbidden:
		return nil, v
	case *GetStatCyclesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateStatCycleShort instead.

CreateStatCycle create stat cycle
Create stat cycle.
Fields:
              * name: Cycle name, maximum length is 128 characters. (required).
              * resetTime: Reset time must follow hours:minutes in 24 hours format e.g. 01:30, 23:15. (required)
              * resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Required when cycleType is WEEKLY.
              * resetDate: Reset Date must be a number 1 - 31. Required when cycleType is MONTHLY or ANNUALLY.
              * resetMonth: Reset Month must be a number 1 - 12. Required when cycleType is ANNUALLY.
              * seasonPeriod: Season period must be a number greater than or equal to 1 (days). Required when cycleType is SEASONAL.
              * start: Start time must follow RFC3339 standard. e.g. 2023-02-24T05:10:24.865Z. (required)
              * end: End time must follow RFC3339 standard. e.g. 2023-02-24T05:10:24.865Z.
Other detail info:
              *  Returns : created stat cycle
*/
func (a *Client) CreateStatCycle(params *CreateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCycleCreated, *CreateStatCycleBadRequest, *CreateStatCycleUnauthorized, *CreateStatCycleForbidden, *CreateStatCycleUnprocessableEntity, *CreateStatCycleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStatCycleParams()
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
		ID:                 "createStatCycle",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateStatCycleCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateStatCycleBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateStatCycleUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateStatCycleForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateStatCycleUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateStatCycleInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateStatCycleShort create stat cycle
Create stat cycle.
Fields:
              * name: Cycle name, maximum length is 128 characters. (required).
              * resetTime: Reset time must follow hours:minutes in 24 hours format e.g. 01:30, 23:15. (required)
              * resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Required when cycleType is WEEKLY.
              * resetDate: Reset Date must be a number 1 - 31. Required when cycleType is MONTHLY or ANNUALLY.
              * resetMonth: Reset Month must be a number 1 - 12. Required when cycleType is ANNUALLY.
              * seasonPeriod: Season period must be a number greater than or equal to 1 (days). Required when cycleType is SEASONAL.
              * start: Start time must follow RFC3339 standard. e.g. 2023-02-24T05:10:24.865Z. (required)
              * end: End time must follow RFC3339 standard. e.g. 2023-02-24T05:10:24.865Z.
Other detail info:
              *  Returns : created stat cycle
*/
func (a *Client) CreateStatCycleShort(params *CreateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCycleCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStatCycleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createStatCycle",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateStatCycleCreated:
		return v, nil
	case *CreateStatCycleBadRequest:
		return nil, v
	case *CreateStatCycleUnauthorized:
		return nil, v
	case *CreateStatCycleForbidden:
		return nil, v
	case *CreateStatCycleUnprocessableEntity:
		return nil, v
	case *CreateStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkGetStatCycleShort instead.

BulkGetStatCycle bulk get stat cycle
Bulk get stat cycle.
Other detail info:
              *  Returns : list of stat cycles
*/
func (a *Client) BulkGetStatCycle(params *BulkGetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycleOK, *BulkGetStatCycleBadRequest, *BulkGetStatCycleUnauthorized, *BulkGetStatCycleForbidden, *BulkGetStatCycleUnprocessableEntity, *BulkGetStatCycleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetStatCycleParams()
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
		ID:                 "bulkGetStatCycle",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkGetStatCycleOK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkGetStatCycleBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkGetStatCycleUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkGetStatCycleForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkGetStatCycleUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkGetStatCycleInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetStatCycleShort bulk get stat cycle
Bulk get stat cycle.
Other detail info:
              *  Returns : list of stat cycles
*/
func (a *Client) BulkGetStatCycleShort(params *BulkGetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetStatCycleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetStatCycle",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetStatCycleOK:
		return v, nil
	case *BulkGetStatCycleBadRequest:
		return nil, v
	case *BulkGetStatCycleUnauthorized:
		return nil, v
	case *BulkGetStatCycleForbidden:
		return nil, v
	case *BulkGetStatCycleUnprocessableEntity:
		return nil, v
	case *BulkGetStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExportStatCycleShort instead.

ExportStatCycle export all stat cycle configurations
Export all stat cycle configurations for a given namespace into file At current, only JSON file is supported.
*/
func (a *Client) ExportStatCycle(params *ExportStatCycleParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatCycleOK, *ExportStatCycleUnauthorized, *ExportStatCycleForbidden, *ExportStatCycleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStatCycleParams()
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
		ID:                 "exportStatCycle",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStatCycleReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ExportStatCycleOK:
		return v, nil, nil, nil, nil

	case *ExportStatCycleUnauthorized:
		return nil, v, nil, nil, nil

	case *ExportStatCycleForbidden:
		return nil, nil, v, nil, nil

	case *ExportStatCycleInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportStatCycleShort export all stat cycle configurations
Export all stat cycle configurations for a given namespace into file At current, only JSON file is supported.
*/
func (a *Client) ExportStatCycleShort(params *ExportStatCycleParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatCycleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStatCycleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportStatCycle",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStatCycleReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportStatCycleOK:
		return v, nil
	case *ExportStatCycleUnauthorized:
		return nil, v
	case *ExportStatCycleForbidden:
		return nil, v
	case *ExportStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImportStatCycleShort instead.

ImportStatCycle import stat cycle configurations
Import stat cycle configurations for a given namespace from file. At current, only JSON file is supported.
*/
func (a *Client) ImportStatCycle(params *ImportStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatCycleCreated, *ImportStatCycleBadRequest, *ImportStatCycleUnauthorized, *ImportStatCycleForbidden, *ImportStatCycleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStatCycleParams()
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
		ID:                 "importStatCycle",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImportStatCycleCreated:
		return v, nil, nil, nil, nil, nil

	case *ImportStatCycleBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ImportStatCycleUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *ImportStatCycleForbidden:
		return nil, nil, nil, v, nil, nil

	case *ImportStatCycleInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportStatCycleShort import stat cycle configurations
Import stat cycle configurations for a given namespace from file. At current, only JSON file is supported.
*/
func (a *Client) ImportStatCycleShort(params *ImportStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatCycleCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStatCycleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "importStatCycle",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportStatCycleCreated:
		return v, nil
	case *ImportStatCycleBadRequest:
		return nil, v
	case *ImportStatCycleUnauthorized:
		return nil, v
	case *ImportStatCycleForbidden:
		return nil, v
	case *ImportStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetStatCycleShort instead.

GetStatCycle get stat cycle
Get stat cycle.
Other detail info:
              *  Returns : stat cycle info
*/
func (a *Client) GetStatCycle(params *GetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycleOK, *GetStatCycleUnauthorized, *GetStatCycleForbidden, *GetStatCycleNotFound, *GetStatCycleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCycleParams()
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
		ID:                 "getStatCycle",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetStatCycleOK:
		return v, nil, nil, nil, nil, nil

	case *GetStatCycleUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetStatCycleForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetStatCycleNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetStatCycleInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatCycleShort get stat cycle
Get stat cycle.
Other detail info:
              *  Returns : stat cycle info
*/
func (a *Client) GetStatCycleShort(params *GetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCycleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStatCycle",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatCycleOK:
		return v, nil
	case *GetStatCycleUnauthorized:
		return nil, v
	case *GetStatCycleForbidden:
		return nil, v
	case *GetStatCycleNotFound:
		return nil, v
	case *GetStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateStatCycleShort instead.

UpdateStatCycle update stat cycle
Update stat cycle.
Other detail info:
              *  Returns : updated stat cycle
*/
func (a *Client) UpdateStatCycle(params *UpdateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatCycleOK, *UpdateStatCycleBadRequest, *UpdateStatCycleUnauthorized, *UpdateStatCycleForbidden, *UpdateStatCycleNotFound, *UpdateStatCycleConflict, *UpdateStatCycleUnprocessableEntity, *UpdateStatCycleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStatCycleParams()
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
		ID:                 "updateStatCycle",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateStatCycleOK:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *UpdateStatCycleBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *UpdateStatCycleUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *UpdateStatCycleForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *UpdateStatCycleNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *UpdateStatCycleConflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *UpdateStatCycleUnprocessableEntity:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *UpdateStatCycleInternalServerError:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateStatCycleShort update stat cycle
Update stat cycle.
Other detail info:
              *  Returns : updated stat cycle
*/
func (a *Client) UpdateStatCycleShort(params *UpdateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatCycleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStatCycleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateStatCycle",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateStatCycleOK:
		return v, nil
	case *UpdateStatCycleBadRequest:
		return nil, v
	case *UpdateStatCycleUnauthorized:
		return nil, v
	case *UpdateStatCycleForbidden:
		return nil, v
	case *UpdateStatCycleNotFound:
		return nil, v
	case *UpdateStatCycleConflict:
		return nil, v
	case *UpdateStatCycleUnprocessableEntity:
		return nil, v
	case *UpdateStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteStatCycleShort instead.

DeleteStatCycle deletes stat cycle
Deletes stat cycle.
*/
func (a *Client) DeleteStatCycle(params *DeleteStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatCycleNoContent, *DeleteStatCycleUnauthorized, *DeleteStatCycleForbidden, *DeleteStatCycleNotFound, *DeleteStatCycleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteStatCycleParams()
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
		ID:                 "deleteStatCycle",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteStatCycleNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteStatCycleUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteStatCycleForbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteStatCycleNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteStatCycleInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteStatCycleShort deletes stat cycle
Deletes stat cycle.
*/
func (a *Client) DeleteStatCycleShort(params *DeleteStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatCycleNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteStatCycleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteStatCycle",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteStatCycleNoContent:
		return v, nil
	case *DeleteStatCycleUnauthorized:
		return nil, v
	case *DeleteStatCycleForbidden:
		return nil, v
	case *DeleteStatCycleNotFound:
		return nil, v
	case *DeleteStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkAddStatsShort instead.

BulkAddStats bulk add stat cycle to stats
Bulk add stat cycle to stats.
*/
func (a *Client) BulkAddStats(params *BulkAddStatsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAddStatsOK, *BulkAddStatsBadRequest, *BulkAddStatsUnauthorized, *BulkAddStatsForbidden, *BulkAddStatsNotFound, *BulkAddStatsUnprocessableEntity, *BulkAddStatsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkAddStatsParams()
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
		ID:                 "bulkAddStats",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkAddStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkAddStatsOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *BulkAddStatsBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *BulkAddStatsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *BulkAddStatsForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *BulkAddStatsNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *BulkAddStatsUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *BulkAddStatsInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkAddStatsShort bulk add stat cycle to stats
Bulk add stat cycle to stats.
*/
func (a *Client) BulkAddStatsShort(params *BulkAddStatsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAddStatsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkAddStatsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkAddStats",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkAddStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkAddStatsOK:
		return v, nil
	case *BulkAddStatsBadRequest:
		return nil, v
	case *BulkAddStatsUnauthorized:
		return nil, v
	case *BulkAddStatsForbidden:
		return nil, v
	case *BulkAddStatsNotFound:
		return nil, v
	case *BulkAddStatsUnprocessableEntity:
		return nil, v
	case *BulkAddStatsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use StopStatCycleShort instead.

StopStatCycle stop stat cycle
Stop stat cycle.
Other detail info:
              *  Returns : updated stat cycle
*/
func (a *Client) StopStatCycle(params *StopStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*StopStatCycleOK, *StopStatCycleUnauthorized, *StopStatCycleForbidden, *StopStatCycleNotFound, *StopStatCycleConflict, *StopStatCycleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStopStatCycleParams()
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
		ID:                 "stopStatCycle",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StopStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *StopStatCycleOK:
		return v, nil, nil, nil, nil, nil, nil

	case *StopStatCycleUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *StopStatCycleForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *StopStatCycleNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *StopStatCycleConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *StopStatCycleInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StopStatCycleShort stop stat cycle
Stop stat cycle.
Other detail info:
              *  Returns : updated stat cycle
*/
func (a *Client) StopStatCycleShort(params *StopStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*StopStatCycleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStopStatCycleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "stopStatCycle",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StopStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StopStatCycleOK:
		return v, nil
	case *StopStatCycleUnauthorized:
		return nil, v
	case *StopStatCycleForbidden:
		return nil, v
	case *StopStatCycleNotFound:
		return nil, v
	case *StopStatCycleConflict:
		return nil, v
	case *StopStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetStatCycles1Short instead.

GetStatCycles1 list stat cycles
List stat cycles by pagination.
Other detail info:
              *  Returns : stat cycles
*/
func (a *Client) GetStatCycles1(params *GetStatCycles1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycles1OK, *GetStatCycles1Unauthorized, *GetStatCycles1Forbidden, *GetStatCycles1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCycles1Params()
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
		ID:                 "getStatCycles_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statCycles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCycles1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetStatCycles1OK:
		return v, nil, nil, nil, nil

	case *GetStatCycles1Unauthorized:
		return nil, v, nil, nil, nil

	case *GetStatCycles1Forbidden:
		return nil, nil, v, nil, nil

	case *GetStatCycles1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatCycles1Short list stat cycles
List stat cycles by pagination.
Other detail info:
              *  Returns : stat cycles
*/
func (a *Client) GetStatCycles1Short(params *GetStatCycles1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycles1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCycles1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStatCycles_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statCycles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCycles1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatCycles1OK:
		return v, nil
	case *GetStatCycles1Unauthorized:
		return nil, v
	case *GetStatCycles1Forbidden:
		return nil, v
	case *GetStatCycles1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkGetStatCycle1Short instead.

BulkGetStatCycle1 bulk get stat cycle
Bulk get stat cycle.
Other detail info:
              *  Returns : list of stat cycles
*/
func (a *Client) BulkGetStatCycle1(params *BulkGetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycle1OK, *BulkGetStatCycle1BadRequest, *BulkGetStatCycle1Unauthorized, *BulkGetStatCycle1Forbidden, *BulkGetStatCycle1UnprocessableEntity, *BulkGetStatCycle1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetStatCycle1Params()
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
		ID:                 "bulkGetStatCycle_1",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statCycles/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetStatCycle1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkGetStatCycle1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkGetStatCycle1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkGetStatCycle1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkGetStatCycle1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkGetStatCycle1UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkGetStatCycle1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetStatCycle1Short bulk get stat cycle
Bulk get stat cycle.
Other detail info:
              *  Returns : list of stat cycles
*/
func (a *Client) BulkGetStatCycle1Short(params *BulkGetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycle1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetStatCycle1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetStatCycle_1",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statCycles/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetStatCycle1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetStatCycle1OK:
		return v, nil
	case *BulkGetStatCycle1BadRequest:
		return nil, v
	case *BulkGetStatCycle1Unauthorized:
		return nil, v
	case *BulkGetStatCycle1Forbidden:
		return nil, v
	case *BulkGetStatCycle1UnprocessableEntity:
		return nil, v
	case *BulkGetStatCycle1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetStatCycle1Short instead.

GetStatCycle1 get stat cycle
Get stat cycle.
Other detail info:
              *  Returns : stat cycle info
*/
func (a *Client) GetStatCycle1(params *GetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycle1OK, *GetStatCycle1Unauthorized, *GetStatCycle1Forbidden, *GetStatCycle1NotFound, *GetStatCycle1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCycle1Params()
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
		ID:                 "getStatCycle_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCycle1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetStatCycle1OK:
		return v, nil, nil, nil, nil, nil

	case *GetStatCycle1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetStatCycle1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetStatCycle1NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetStatCycle1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatCycle1Short get stat cycle
Get stat cycle.
Other detail info:
              *  Returns : stat cycle info
*/
func (a *Client) GetStatCycle1Short(params *GetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycle1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCycle1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStatCycle_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCycle1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatCycle1OK:
		return v, nil
	case *GetStatCycle1Unauthorized:
		return nil, v
	case *GetStatCycle1Forbidden:
		return nil, v
	case *GetStatCycle1NotFound:
		return nil, v
	case *GetStatCycle1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
