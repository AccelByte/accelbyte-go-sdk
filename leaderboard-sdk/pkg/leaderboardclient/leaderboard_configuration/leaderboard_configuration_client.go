// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package leaderboard_configuration

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new leaderboard configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for leaderboard configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetLeaderboardConfigurationsAdminV1(params *GetLeaderboardConfigurationsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV1OK, *GetLeaderboardConfigurationsAdminV1BadRequest, *GetLeaderboardConfigurationsAdminV1Unauthorized, *GetLeaderboardConfigurationsAdminV1Forbidden, *GetLeaderboardConfigurationsAdminV1InternalServerError, error)
	GetLeaderboardConfigurationsAdminV1Short(params *GetLeaderboardConfigurationsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV1OK, error)
	CreateLeaderboardConfigurationAdminV1(params *CreateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV1Created, *CreateLeaderboardConfigurationAdminV1BadRequest, *CreateLeaderboardConfigurationAdminV1Unauthorized, *CreateLeaderboardConfigurationAdminV1Forbidden, *CreateLeaderboardConfigurationAdminV1Conflict, *CreateLeaderboardConfigurationAdminV1InternalServerError, error)
	CreateLeaderboardConfigurationAdminV1Short(params *CreateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV1Created, error)
	DeleteBulkLeaderboardConfigurationAdminV1(params *DeleteBulkLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV1OK, *DeleteBulkLeaderboardConfigurationAdminV1BadRequest, *DeleteBulkLeaderboardConfigurationAdminV1Unauthorized, *DeleteBulkLeaderboardConfigurationAdminV1Forbidden, *DeleteBulkLeaderboardConfigurationAdminV1InternalServerError, error)
	DeleteBulkLeaderboardConfigurationAdminV1Short(params *DeleteBulkLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV1OK, error)
	GetLeaderboardConfigurationAdminV1(params *GetLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV1OK, *GetLeaderboardConfigurationAdminV1BadRequest, *GetLeaderboardConfigurationAdminV1Unauthorized, *GetLeaderboardConfigurationAdminV1Forbidden, *GetLeaderboardConfigurationAdminV1NotFound, *GetLeaderboardConfigurationAdminV1InternalServerError, error)
	GetLeaderboardConfigurationAdminV1Short(params *GetLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV1OK, error)
	UpdateLeaderboardConfigurationAdminV1(params *UpdateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV1OK, *UpdateLeaderboardConfigurationAdminV1BadRequest, *UpdateLeaderboardConfigurationAdminV1Unauthorized, *UpdateLeaderboardConfigurationAdminV1Forbidden, *UpdateLeaderboardConfigurationAdminV1NotFound, *UpdateLeaderboardConfigurationAdminV1Conflict, *UpdateLeaderboardConfigurationAdminV1InternalServerError, error)
	UpdateLeaderboardConfigurationAdminV1Short(params *UpdateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV1OK, error)
	DeleteLeaderboardConfigurationAdminV1(params *DeleteLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV1NoContent, *DeleteLeaderboardConfigurationAdminV1BadRequest, *DeleteLeaderboardConfigurationAdminV1Unauthorized, *DeleteLeaderboardConfigurationAdminV1Forbidden, *DeleteLeaderboardConfigurationAdminV1NotFound, *DeleteLeaderboardConfigurationAdminV1InternalServerError, error)
	DeleteLeaderboardConfigurationAdminV1Short(params *DeleteLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV1NoContent, error)
	HardDeleteLeaderboardAdminV1(params *HardDeleteLeaderboardAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV1NoContent, *HardDeleteLeaderboardAdminV1BadRequest, *HardDeleteLeaderboardAdminV1Unauthorized, *HardDeleteLeaderboardAdminV1Forbidden, *HardDeleteLeaderboardAdminV1NotFound, *HardDeleteLeaderboardAdminV1InternalServerError, error)
	HardDeleteLeaderboardAdminV1Short(params *HardDeleteLeaderboardAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV1NoContent, error)
	GetLeaderboardConfigurationsPublicV1(params *GetLeaderboardConfigurationsPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV1OK, *GetLeaderboardConfigurationsPublicV1BadRequest, *GetLeaderboardConfigurationsPublicV1Unauthorized, *GetLeaderboardConfigurationsPublicV1Forbidden, *GetLeaderboardConfigurationsPublicV1InternalServerError, error)
	GetLeaderboardConfigurationsPublicV1Short(params *GetLeaderboardConfigurationsPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV1OK, error)
	CreateLeaderboardConfigurationPublicV1(params *CreateLeaderboardConfigurationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationPublicV1Created, *CreateLeaderboardConfigurationPublicV1BadRequest, *CreateLeaderboardConfigurationPublicV1Unauthorized, *CreateLeaderboardConfigurationPublicV1Forbidden, *CreateLeaderboardConfigurationPublicV1Conflict, *CreateLeaderboardConfigurationPublicV1InternalServerError, error)
	CreateLeaderboardConfigurationPublicV1Short(params *CreateLeaderboardConfigurationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationPublicV1Created, error)
	GetLeaderboardConfigurationsPublicV2(params *GetLeaderboardConfigurationsPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV2OK, *GetLeaderboardConfigurationsPublicV2BadRequest, *GetLeaderboardConfigurationsPublicV2Unauthorized, *GetLeaderboardConfigurationsPublicV2Forbidden, *GetLeaderboardConfigurationsPublicV2InternalServerError, error)
	GetLeaderboardConfigurationsPublicV2Short(params *GetLeaderboardConfigurationsPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetLeaderboardConfigurationsAdminV1Short instead.

GetLeaderboardConfigurationsAdminV1 list all leaderboards by given namespace
Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsAdminV1(params *GetLeaderboardConfigurationsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV1OK, *GetLeaderboardConfigurationsAdminV1BadRequest, *GetLeaderboardConfigurationsAdminV1Unauthorized, *GetLeaderboardConfigurationsAdminV1Forbidden, *GetLeaderboardConfigurationsAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsAdminV1Params()
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
		ID:                 "getLeaderboardConfigurationsAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsAdminV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetLeaderboardConfigurationsAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetLeaderboardConfigurationsAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetLeaderboardConfigurationsAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetLeaderboardConfigurationsAdminV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationsAdminV1Short list all leaderboards by given namespace


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsAdminV1Short(params *GetLeaderboardConfigurationsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLeaderboardConfigurationsAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsAdminV1OK:
		return v, nil
	case *GetLeaderboardConfigurationsAdminV1BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationsAdminV1Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationsAdminV1Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationsAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateLeaderboardConfigurationAdminV1Short instead.

CreateLeaderboardConfigurationAdminV1 create new leaderboard


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [CREATE]'




Fields :




  * LeaderboardConfig code must be lowercase and maximum length is 48 characters. (required).


  * Maximum length for leaderboard name is 128 characters. (required).


  * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z (required).


  * Season period must be greater than 31 days.


  * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


  * Reset Date must be a number 1 - 31. Default is '1'.


  * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


  * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.Default is '00:00'.


  * Stat Code is related with statistic code in statistic service. (required).
*/
func (a *Client) CreateLeaderboardConfigurationAdminV1(params *CreateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV1Created, *CreateLeaderboardConfigurationAdminV1BadRequest, *CreateLeaderboardConfigurationAdminV1Unauthorized, *CreateLeaderboardConfigurationAdminV1Forbidden, *CreateLeaderboardConfigurationAdminV1Conflict, *CreateLeaderboardConfigurationAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLeaderboardConfigurationAdminV1Params()
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
		ID:                 "createLeaderboardConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateLeaderboardConfigurationAdminV1Created:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateLeaderboardConfigurationAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateLeaderboardConfigurationAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateLeaderboardConfigurationAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateLeaderboardConfigurationAdminV1Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateLeaderboardConfigurationAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateLeaderboardConfigurationAdminV1Short create new leaderboard


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [CREATE]'




Fields :




  * LeaderboardConfig code must be lowercase and maximum length is 48 characters. (required).


  * Maximum length for leaderboard name is 128 characters. (required).


  * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z (required).


  * Season period must be greater than 31 days.


  * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


  * Reset Date must be a number 1 - 31. Default is '1'.


  * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


  * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.Default is '00:00'.


  * Stat Code is related with statistic code in statistic service. (required).
*/
func (a *Client) CreateLeaderboardConfigurationAdminV1Short(params *CreateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLeaderboardConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createLeaderboardConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateLeaderboardConfigurationAdminV1Created:
		return v, nil
	case *CreateLeaderboardConfigurationAdminV1BadRequest:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV1Unauthorized:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV1Forbidden:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV1Conflict:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteBulkLeaderboardConfigurationAdminV1Short instead.

DeleteBulkLeaderboardConfigurationAdminV1 delete bulk leaderboards. response body will contains failed leaderboard with the reason why it's failed to delete


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint delete multiple leaderboards configuration in one request
*/
func (a *Client) DeleteBulkLeaderboardConfigurationAdminV1(params *DeleteBulkLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV1OK, *DeleteBulkLeaderboardConfigurationAdminV1BadRequest, *DeleteBulkLeaderboardConfigurationAdminV1Unauthorized, *DeleteBulkLeaderboardConfigurationAdminV1Forbidden, *DeleteBulkLeaderboardConfigurationAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBulkLeaderboardConfigurationAdminV1Params()
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
		ID:                 "deleteBulkLeaderboardConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBulkLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteBulkLeaderboardConfigurationAdminV1OK:
		return v, nil, nil, nil, nil, nil

	case *DeleteBulkLeaderboardConfigurationAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteBulkLeaderboardConfigurationAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteBulkLeaderboardConfigurationAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteBulkLeaderboardConfigurationAdminV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteBulkLeaderboardConfigurationAdminV1Short delete bulk leaderboards. response body will contains failed leaderboard with the reason why it's failed to delete


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint delete multiple leaderboards configuration in one request
*/
func (a *Client) DeleteBulkLeaderboardConfigurationAdminV1Short(params *DeleteBulkLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBulkLeaderboardConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteBulkLeaderboardConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBulkLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteBulkLeaderboardConfigurationAdminV1OK:
		return v, nil
	case *DeleteBulkLeaderboardConfigurationAdminV1BadRequest:
		return nil, v
	case *DeleteBulkLeaderboardConfigurationAdminV1Unauthorized:
		return nil, v
	case *DeleteBulkLeaderboardConfigurationAdminV1Forbidden:
		return nil, v
	case *DeleteBulkLeaderboardConfigurationAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetLeaderboardConfigurationAdminV1Short instead.

GetLeaderboardConfigurationAdminV1 get leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




This endpoint returns a leaderboard configuration
*/
func (a *Client) GetLeaderboardConfigurationAdminV1(params *GetLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV1OK, *GetLeaderboardConfigurationAdminV1BadRequest, *GetLeaderboardConfigurationAdminV1Unauthorized, *GetLeaderboardConfigurationAdminV1Forbidden, *GetLeaderboardConfigurationAdminV1NotFound, *GetLeaderboardConfigurationAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationAdminV1Params()
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
		ID:                 "getLeaderboardConfigurationAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetLeaderboardConfigurationAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetLeaderboardConfigurationAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetLeaderboardConfigurationAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetLeaderboardConfigurationAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetLeaderboardConfigurationAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationAdminV1Short get leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




This endpoint returns a leaderboard configuration
*/
func (a *Client) GetLeaderboardConfigurationAdminV1Short(params *GetLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLeaderboardConfigurationAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationAdminV1OK:
		return v, nil
	case *GetLeaderboardConfigurationAdminV1BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationAdminV1Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationAdminV1Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationAdminV1NotFound:
		return nil, v
	case *GetLeaderboardConfigurationAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateLeaderboardConfigurationAdminV1Short instead.

UpdateLeaderboardConfigurationAdminV1 update leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [UPDATE]'




Fields :






  * Maximum length for leaderboard name is 128 characters.


  * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z


  * Season period must be greater than 31 days.


  * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


  * Reset Date must be a number 1 - 31. Default is '1'.


  * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


  * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.
*/
func (a *Client) UpdateLeaderboardConfigurationAdminV1(params *UpdateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV1OK, *UpdateLeaderboardConfigurationAdminV1BadRequest, *UpdateLeaderboardConfigurationAdminV1Unauthorized, *UpdateLeaderboardConfigurationAdminV1Forbidden, *UpdateLeaderboardConfigurationAdminV1NotFound, *UpdateLeaderboardConfigurationAdminV1Conflict, *UpdateLeaderboardConfigurationAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLeaderboardConfigurationAdminV1Params()
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
		ID:                 "updateLeaderboardConfigurationAdminV1",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateLeaderboardConfigurationAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *UpdateLeaderboardConfigurationAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *UpdateLeaderboardConfigurationAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *UpdateLeaderboardConfigurationAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *UpdateLeaderboardConfigurationAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *UpdateLeaderboardConfigurationAdminV1Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *UpdateLeaderboardConfigurationAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLeaderboardConfigurationAdminV1Short update leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [UPDATE]'




Fields :






  * Maximum length for leaderboard name is 128 characters.


  * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z


  * Season period must be greater than 31 days.


  * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


  * Reset Date must be a number 1 - 31. Default is '1'.


  * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


  * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.
*/
func (a *Client) UpdateLeaderboardConfigurationAdminV1Short(params *UpdateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLeaderboardConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateLeaderboardConfigurationAdminV1",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLeaderboardConfigurationAdminV1OK:
		return v, nil
	case *UpdateLeaderboardConfigurationAdminV1BadRequest:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV1Unauthorized:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV1Forbidden:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV1NotFound:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV1Conflict:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteLeaderboardConfigurationAdminV1Short instead.

DeleteLeaderboardConfigurationAdminV1 delete leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint delete a leaderboard configuration
*/
func (a *Client) DeleteLeaderboardConfigurationAdminV1(params *DeleteLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV1NoContent, *DeleteLeaderboardConfigurationAdminV1BadRequest, *DeleteLeaderboardConfigurationAdminV1Unauthorized, *DeleteLeaderboardConfigurationAdminV1Forbidden, *DeleteLeaderboardConfigurationAdminV1NotFound, *DeleteLeaderboardConfigurationAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLeaderboardConfigurationAdminV1Params()
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
		ID:                 "deleteLeaderboardConfigurationAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteLeaderboardConfigurationAdminV1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteLeaderboardConfigurationAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteLeaderboardConfigurationAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteLeaderboardConfigurationAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteLeaderboardConfigurationAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteLeaderboardConfigurationAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteLeaderboardConfigurationAdminV1Short delete leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint delete a leaderboard configuration
*/
func (a *Client) DeleteLeaderboardConfigurationAdminV1Short(params *DeleteLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLeaderboardConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteLeaderboardConfigurationAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteLeaderboardConfigurationAdminV1NoContent:
		return v, nil
	case *DeleteLeaderboardConfigurationAdminV1BadRequest:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV1Unauthorized:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV1Forbidden:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV1NotFound:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use HardDeleteLeaderboardAdminV1Short instead.

HardDeleteLeaderboardAdminV1 hard delete leaderboard config and data by leaderboard code


[Test Facility Only]




Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint will delete leaderboard configuration and its data




Note: this endpoint only works on development environment, you might want to use archive endpoint instead hard delete.
*/
func (a *Client) HardDeleteLeaderboardAdminV1(params *HardDeleteLeaderboardAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV1NoContent, *HardDeleteLeaderboardAdminV1BadRequest, *HardDeleteLeaderboardAdminV1Unauthorized, *HardDeleteLeaderboardAdminV1Forbidden, *HardDeleteLeaderboardAdminV1NotFound, *HardDeleteLeaderboardAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHardDeleteLeaderboardAdminV1Params()
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
		ID:                 "hardDeleteLeaderboardAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HardDeleteLeaderboardAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *HardDeleteLeaderboardAdminV1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *HardDeleteLeaderboardAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *HardDeleteLeaderboardAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *HardDeleteLeaderboardAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *HardDeleteLeaderboardAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *HardDeleteLeaderboardAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
HardDeleteLeaderboardAdminV1Short hard delete leaderboard config and data by leaderboard code


 [Test Facility Only]




Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint will delete leaderboard configuration and its data




Note: this endpoint only works on development environment, you might want to use archive endpoint instead hard delete.
*/
func (a *Client) HardDeleteLeaderboardAdminV1Short(params *HardDeleteLeaderboardAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHardDeleteLeaderboardAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "hardDeleteLeaderboardAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HardDeleteLeaderboardAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *HardDeleteLeaderboardAdminV1NoContent:
		return v, nil
	case *HardDeleteLeaderboardAdminV1BadRequest:
		return nil, v
	case *HardDeleteLeaderboardAdminV1Unauthorized:
		return nil, v
	case *HardDeleteLeaderboardAdminV1Forbidden:
		return nil, v
	case *HardDeleteLeaderboardAdminV1NotFound:
		return nil, v
	case *HardDeleteLeaderboardAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetLeaderboardConfigurationsPublicV1Short instead.

GetLeaderboardConfigurationsPublicV1 list all leaderboards by given namespace


This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsPublicV1(params *GetLeaderboardConfigurationsPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV1OK, *GetLeaderboardConfigurationsPublicV1BadRequest, *GetLeaderboardConfigurationsPublicV1Unauthorized, *GetLeaderboardConfigurationsPublicV1Forbidden, *GetLeaderboardConfigurationsPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsPublicV1Params()
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
		ID:                 "getLeaderboardConfigurationsPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsPublicV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetLeaderboardConfigurationsPublicV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetLeaderboardConfigurationsPublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetLeaderboardConfigurationsPublicV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetLeaderboardConfigurationsPublicV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationsPublicV1Short list all leaderboards by given namespace


This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsPublicV1Short(params *GetLeaderboardConfigurationsPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLeaderboardConfigurationsPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsPublicV1OK:
		return v, nil
	case *GetLeaderboardConfigurationsPublicV1BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV1Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV1Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateLeaderboardConfigurationPublicV1Short instead.

CreateLeaderboardConfigurationPublicV1 create new leaderboard
Public endpoint to create a new leaderboard.



Required permission 'NAMESPACE:{namespace}:LEADERBOARD [CREATE]'




 Fields :




  * LeaderboardConfig code must be lowercase and maximum length is 48 characters. (required).


  * Maximum length for leaderboard name is 128 characters. (required).


  * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z (required).


  * Season period must be greater than 31 days.


  * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


  * Reset Date must be a number 1 - 31. Default is '1'.


  * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


  * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.Default is '00:00'.


  * Stat Code is related with statistic code in statistic service. (required).
*/
func (a *Client) CreateLeaderboardConfigurationPublicV1(params *CreateLeaderboardConfigurationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationPublicV1Created, *CreateLeaderboardConfigurationPublicV1BadRequest, *CreateLeaderboardConfigurationPublicV1Unauthorized, *CreateLeaderboardConfigurationPublicV1Forbidden, *CreateLeaderboardConfigurationPublicV1Conflict, *CreateLeaderboardConfigurationPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLeaderboardConfigurationPublicV1Params()
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
		ID:                 "createLeaderboardConfigurationPublicV1",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLeaderboardConfigurationPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateLeaderboardConfigurationPublicV1Created:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateLeaderboardConfigurationPublicV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateLeaderboardConfigurationPublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateLeaderboardConfigurationPublicV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateLeaderboardConfigurationPublicV1Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateLeaderboardConfigurationPublicV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateLeaderboardConfigurationPublicV1Short create new leaderboard
Public endpoint to create a new leaderboard.



Required permission 'NAMESPACE:{namespace}:LEADERBOARD [CREATE]'




 Fields :




  * LeaderboardConfig code must be lowercase and maximum length is 48 characters. (required).


  * Maximum length for leaderboard name is 128 characters. (required).


  * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z (required).


  * Season period must be greater than 31 days.


  * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


  * Reset Date must be a number 1 - 31. Default is '1'.


  * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


  * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.Default is '00:00'.


  * Stat Code is related with statistic code in statistic service. (required).
*/
func (a *Client) CreateLeaderboardConfigurationPublicV1Short(params *CreateLeaderboardConfigurationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationPublicV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLeaderboardConfigurationPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createLeaderboardConfigurationPublicV1",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLeaderboardConfigurationPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateLeaderboardConfigurationPublicV1Created:
		return v, nil
	case *CreateLeaderboardConfigurationPublicV1BadRequest:
		return nil, v
	case *CreateLeaderboardConfigurationPublicV1Unauthorized:
		return nil, v
	case *CreateLeaderboardConfigurationPublicV1Forbidden:
		return nil, v
	case *CreateLeaderboardConfigurationPublicV1Conflict:
		return nil, v
	case *CreateLeaderboardConfigurationPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetLeaderboardConfigurationsPublicV2Short instead.

GetLeaderboardConfigurationsPublicV2 list all leaderboards by given namespace
This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsPublicV2(params *GetLeaderboardConfigurationsPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV2OK, *GetLeaderboardConfigurationsPublicV2BadRequest, *GetLeaderboardConfigurationsPublicV2Unauthorized, *GetLeaderboardConfigurationsPublicV2Forbidden, *GetLeaderboardConfigurationsPublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsPublicV2Params()
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
		ID:                 "GetLeaderboardConfigurationsPublicV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsPublicV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetLeaderboardConfigurationsPublicV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetLeaderboardConfigurationsPublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetLeaderboardConfigurationsPublicV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetLeaderboardConfigurationsPublicV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationsPublicV2Short list all leaderboards by given namespace
This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsPublicV2Short(params *GetLeaderboardConfigurationsPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetLeaderboardConfigurationsPublicV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsPublicV2OK:
		return v, nil
	case *GetLeaderboardConfigurationsPublicV2BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV2Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV2Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
