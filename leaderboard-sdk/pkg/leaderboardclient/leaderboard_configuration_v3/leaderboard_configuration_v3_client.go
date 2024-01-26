// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package leaderboard_configuration_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new leaderboard configuration v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for leaderboard configuration v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetLeaderboardConfigurationsAdminV3(params *GetLeaderboardConfigurationsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV3OK, *GetLeaderboardConfigurationsAdminV3BadRequest, *GetLeaderboardConfigurationsAdminV3Unauthorized, *GetLeaderboardConfigurationsAdminV3Forbidden, *GetLeaderboardConfigurationsAdminV3InternalServerError, error)
	GetLeaderboardConfigurationsAdminV3Short(params *GetLeaderboardConfigurationsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV3OK, error)
	CreateLeaderboardConfigurationAdminV3(params *CreateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV3Created, *CreateLeaderboardConfigurationAdminV3BadRequest, *CreateLeaderboardConfigurationAdminV3Unauthorized, *CreateLeaderboardConfigurationAdminV3Forbidden, *CreateLeaderboardConfigurationAdminV3Conflict, *CreateLeaderboardConfigurationAdminV3InternalServerError, error)
	CreateLeaderboardConfigurationAdminV3Short(params *CreateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV3Created, error)
	DeleteBulkLeaderboardConfigurationAdminV3(params *DeleteBulkLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV3OK, *DeleteBulkLeaderboardConfigurationAdminV3BadRequest, *DeleteBulkLeaderboardConfigurationAdminV3Unauthorized, *DeleteBulkLeaderboardConfigurationAdminV3Forbidden, *DeleteBulkLeaderboardConfigurationAdminV3InternalServerError, error)
	DeleteBulkLeaderboardConfigurationAdminV3Short(params *DeleteBulkLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV3OK, error)
	GetLeaderboardConfigurationAdminV3(params *GetLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV3OK, *GetLeaderboardConfigurationAdminV3BadRequest, *GetLeaderboardConfigurationAdminV3Unauthorized, *GetLeaderboardConfigurationAdminV3Forbidden, *GetLeaderboardConfigurationAdminV3NotFound, *GetLeaderboardConfigurationAdminV3InternalServerError, error)
	GetLeaderboardConfigurationAdminV3Short(params *GetLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV3OK, error)
	UpdateLeaderboardConfigurationAdminV3(params *UpdateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV3OK, *UpdateLeaderboardConfigurationAdminV3BadRequest, *UpdateLeaderboardConfigurationAdminV3Unauthorized, *UpdateLeaderboardConfigurationAdminV3Forbidden, *UpdateLeaderboardConfigurationAdminV3NotFound, *UpdateLeaderboardConfigurationAdminV3InternalServerError, error)
	UpdateLeaderboardConfigurationAdminV3Short(params *UpdateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV3OK, error)
	DeleteLeaderboardConfigurationAdminV3(params *DeleteLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV3NoContent, *DeleteLeaderboardConfigurationAdminV3BadRequest, *DeleteLeaderboardConfigurationAdminV3Unauthorized, *DeleteLeaderboardConfigurationAdminV3Forbidden, *DeleteLeaderboardConfigurationAdminV3NotFound, *DeleteLeaderboardConfigurationAdminV3InternalServerError, error)
	DeleteLeaderboardConfigurationAdminV3Short(params *DeleteLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV3NoContent, error)
	HardDeleteLeaderboardAdminV3(params *HardDeleteLeaderboardAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV3NoContent, *HardDeleteLeaderboardAdminV3BadRequest, *HardDeleteLeaderboardAdminV3Unauthorized, *HardDeleteLeaderboardAdminV3Forbidden, *HardDeleteLeaderboardAdminV3NotFound, *HardDeleteLeaderboardAdminV3InternalServerError, error)
	HardDeleteLeaderboardAdminV3Short(params *HardDeleteLeaderboardAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV3NoContent, error)
	GetLeaderboardConfigurationsPublicV3(params *GetLeaderboardConfigurationsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV3OK, *GetLeaderboardConfigurationsPublicV3BadRequest, *GetLeaderboardConfigurationsPublicV3Unauthorized, *GetLeaderboardConfigurationsPublicV3Forbidden, *GetLeaderboardConfigurationsPublicV3InternalServerError, error)
	GetLeaderboardConfigurationsPublicV3Short(params *GetLeaderboardConfigurationsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV3OK, error)
	GetLeaderboardConfigurationPublicV3(params *GetLeaderboardConfigurationPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationPublicV3OK, *GetLeaderboardConfigurationPublicV3BadRequest, *GetLeaderboardConfigurationPublicV3Unauthorized, *GetLeaderboardConfigurationPublicV3Forbidden, *GetLeaderboardConfigurationPublicV3NotFound, *GetLeaderboardConfigurationPublicV3InternalServerError, error)
	GetLeaderboardConfigurationPublicV3Short(params *GetLeaderboardConfigurationPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationPublicV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetLeaderboardConfigurationsAdminV3Short instead.

GetLeaderboardConfigurationsAdminV3 list all leaderboards by given namespace


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsAdminV3(params *GetLeaderboardConfigurationsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV3OK, *GetLeaderboardConfigurationsAdminV3BadRequest, *GetLeaderboardConfigurationsAdminV3Unauthorized, *GetLeaderboardConfigurationsAdminV3Forbidden, *GetLeaderboardConfigurationsAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsAdminV3Params()
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
		ID:                 "getLeaderboardConfigurationsAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsAdminV3OK:
		return v, nil, nil, nil, nil, nil

	case *GetLeaderboardConfigurationsAdminV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetLeaderboardConfigurationsAdminV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetLeaderboardConfigurationsAdminV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetLeaderboardConfigurationsAdminV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationsAdminV3Short list all leaderboards by given namespace


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsAdminV3Short(params *GetLeaderboardConfigurationsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLeaderboardConfigurationsAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsAdminV3OK:
		return v, nil
	case *GetLeaderboardConfigurationsAdminV3BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationsAdminV3Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationsAdminV3Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationsAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateLeaderboardConfigurationAdminV3Short instead.

CreateLeaderboardConfigurationAdminV3 create new leaderboard


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [CREATE]'

 Fields :




  * leaderboardCode: unique leaderboard config code must be lowercase and maximum length is 48 characters. (required).


  * name: leaderboard name, maximum length for leaderboard name is 128 characters. (required).


  * description: leaderboard description, maximum length for leaderboard description is 2048 characters. (optional).


  * iconURL: leaderboard icon image url. (optional).


  * allTime: if true, all time leaderboard will be created. (required).


  * descending: leaderboard order. If true, the points will be sorted in descending order. (required).


  * statCode: Stat Code is related with statistic code in statistic service. (required).


  * cycleIds: Statistic cycle ids that will be tracked in the leaderboard. (required).
*/
func (a *Client) CreateLeaderboardConfigurationAdminV3(params *CreateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV3Created, *CreateLeaderboardConfigurationAdminV3BadRequest, *CreateLeaderboardConfigurationAdminV3Unauthorized, *CreateLeaderboardConfigurationAdminV3Forbidden, *CreateLeaderboardConfigurationAdminV3Conflict, *CreateLeaderboardConfigurationAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLeaderboardConfigurationAdminV3Params()
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
		ID:                 "createLeaderboardConfigurationAdminV3",
		Method:             "POST",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateLeaderboardConfigurationAdminV3Created:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateLeaderboardConfigurationAdminV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateLeaderboardConfigurationAdminV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateLeaderboardConfigurationAdminV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateLeaderboardConfigurationAdminV3Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateLeaderboardConfigurationAdminV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateLeaderboardConfigurationAdminV3Short create new leaderboard


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [CREATE]'

 Fields :




  * leaderboardCode: unique leaderboard config code must be lowercase and maximum length is 48 characters. (required).


  * name: leaderboard name, maximum length for leaderboard name is 128 characters. (required).


  * description: leaderboard description, maximum length for leaderboard description is 2048 characters. (optional).


  * iconURL: leaderboard icon image url. (optional).


  * allTime: if true, all time leaderboard will be created. (required).


  * descending: leaderboard order. If true, the points will be sorted in descending order. (required).


  * statCode: Stat Code is related with statistic code in statistic service. (required).


  * cycleIds: Statistic cycle ids that will be tracked in the leaderboard. (required).
*/
func (a *Client) CreateLeaderboardConfigurationAdminV3Short(params *CreateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLeaderboardConfigurationAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createLeaderboardConfigurationAdminV3",
		Method:             "POST",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateLeaderboardConfigurationAdminV3Created:
		return v, nil
	case *CreateLeaderboardConfigurationAdminV3BadRequest:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV3Unauthorized:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV3Forbidden:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV3Conflict:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteBulkLeaderboardConfigurationAdminV3Short instead.

DeleteBulkLeaderboardConfigurationAdminV3 delete bulk leaderboards. response body will contains failed leaderboard with the reason why it's failed to delete


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint delete multiple leaderboards configuration in one request
*/
func (a *Client) DeleteBulkLeaderboardConfigurationAdminV3(params *DeleteBulkLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV3OK, *DeleteBulkLeaderboardConfigurationAdminV3BadRequest, *DeleteBulkLeaderboardConfigurationAdminV3Unauthorized, *DeleteBulkLeaderboardConfigurationAdminV3Forbidden, *DeleteBulkLeaderboardConfigurationAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBulkLeaderboardConfigurationAdminV3Params()
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
		ID:                 "deleteBulkLeaderboardConfigurationAdminV3",
		Method:             "POST",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/delete",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBulkLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteBulkLeaderboardConfigurationAdminV3OK:
		return v, nil, nil, nil, nil, nil

	case *DeleteBulkLeaderboardConfigurationAdminV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteBulkLeaderboardConfigurationAdminV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteBulkLeaderboardConfigurationAdminV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteBulkLeaderboardConfigurationAdminV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteBulkLeaderboardConfigurationAdminV3Short delete bulk leaderboards. response body will contains failed leaderboard with the reason why it's failed to delete


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint delete multiple leaderboards configuration in one request
*/
func (a *Client) DeleteBulkLeaderboardConfigurationAdminV3Short(params *DeleteBulkLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBulkLeaderboardConfigurationAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteBulkLeaderboardConfigurationAdminV3",
		Method:             "POST",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/delete",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBulkLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteBulkLeaderboardConfigurationAdminV3OK:
		return v, nil
	case *DeleteBulkLeaderboardConfigurationAdminV3BadRequest:
		return nil, v
	case *DeleteBulkLeaderboardConfigurationAdminV3Unauthorized:
		return nil, v
	case *DeleteBulkLeaderboardConfigurationAdminV3Forbidden:
		return nil, v
	case *DeleteBulkLeaderboardConfigurationAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetLeaderboardConfigurationAdminV3Short instead.

GetLeaderboardConfigurationAdminV3 get leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




This endpoint returns a leaderboard configuration
*/
func (a *Client) GetLeaderboardConfigurationAdminV3(params *GetLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV3OK, *GetLeaderboardConfigurationAdminV3BadRequest, *GetLeaderboardConfigurationAdminV3Unauthorized, *GetLeaderboardConfigurationAdminV3Forbidden, *GetLeaderboardConfigurationAdminV3NotFound, *GetLeaderboardConfigurationAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationAdminV3Params()
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
		ID:                 "getLeaderboardConfigurationAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationAdminV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetLeaderboardConfigurationAdminV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetLeaderboardConfigurationAdminV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetLeaderboardConfigurationAdminV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetLeaderboardConfigurationAdminV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetLeaderboardConfigurationAdminV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationAdminV3Short get leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




This endpoint returns a leaderboard configuration
*/
func (a *Client) GetLeaderboardConfigurationAdminV3Short(params *GetLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLeaderboardConfigurationAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationAdminV3OK:
		return v, nil
	case *GetLeaderboardConfigurationAdminV3BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationAdminV3Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationAdminV3Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationAdminV3NotFound:
		return nil, v
	case *GetLeaderboardConfigurationAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateLeaderboardConfigurationAdminV3Short instead.

UpdateLeaderboardConfigurationAdminV3 update leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [UPDATE]'

 Fields :




  * leaderboardCode: unique leaderboard config code must be lowercase and maximum length is 48 characters. (required).


  * name: leaderboard name, maximum length for leaderboard name is 128 characters. (required).


  * description: leaderboard description, maximum length for leaderboard description is 2048 characters. (optional).


  * iconURL: leaderboard icon image url. (optional).


  * allTime: if true, all time leaderboard will be created. (required).


  * descending: leaderboard order. If true, the points will be sorted in descending order. (required).


  * statCode: Stat Code is related with statistic code in statistic service. (required).


  * cycleIds: Statistic cycle ids that will be tracked in the leaderboard. (required).
*/
func (a *Client) UpdateLeaderboardConfigurationAdminV3(params *UpdateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV3OK, *UpdateLeaderboardConfigurationAdminV3BadRequest, *UpdateLeaderboardConfigurationAdminV3Unauthorized, *UpdateLeaderboardConfigurationAdminV3Forbidden, *UpdateLeaderboardConfigurationAdminV3NotFound, *UpdateLeaderboardConfigurationAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLeaderboardConfigurationAdminV3Params()
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
		ID:                 "updateLeaderboardConfigurationAdminV3",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateLeaderboardConfigurationAdminV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateLeaderboardConfigurationAdminV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateLeaderboardConfigurationAdminV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateLeaderboardConfigurationAdminV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateLeaderboardConfigurationAdminV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateLeaderboardConfigurationAdminV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLeaderboardConfigurationAdminV3Short update leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [UPDATE]'

 Fields :




  * leaderboardCode: unique leaderboard config code must be lowercase and maximum length is 48 characters. (required).


  * name: leaderboard name, maximum length for leaderboard name is 128 characters. (required).


  * description: leaderboard description, maximum length for leaderboard description is 2048 characters. (optional).


  * iconURL: leaderboard icon image url. (optional).


  * allTime: if true, all time leaderboard will be created. (required).


  * descending: leaderboard order. If true, the points will be sorted in descending order. (required).


  * statCode: Stat Code is related with statistic code in statistic service. (required).


  * cycleIds: Statistic cycle ids that will be tracked in the leaderboard. (required).
*/
func (a *Client) UpdateLeaderboardConfigurationAdminV3Short(params *UpdateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLeaderboardConfigurationAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateLeaderboardConfigurationAdminV3",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLeaderboardConfigurationAdminV3OK:
		return v, nil
	case *UpdateLeaderboardConfigurationAdminV3BadRequest:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV3Unauthorized:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV3Forbidden:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV3NotFound:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteLeaderboardConfigurationAdminV3Short instead.

DeleteLeaderboardConfigurationAdminV3 delete leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint delete a leaderboard configuration
*/
func (a *Client) DeleteLeaderboardConfigurationAdminV3(params *DeleteLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV3NoContent, *DeleteLeaderboardConfigurationAdminV3BadRequest, *DeleteLeaderboardConfigurationAdminV3Unauthorized, *DeleteLeaderboardConfigurationAdminV3Forbidden, *DeleteLeaderboardConfigurationAdminV3NotFound, *DeleteLeaderboardConfigurationAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLeaderboardConfigurationAdminV3Params()
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
		ID:                 "deleteLeaderboardConfigurationAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteLeaderboardConfigurationAdminV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteLeaderboardConfigurationAdminV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteLeaderboardConfigurationAdminV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteLeaderboardConfigurationAdminV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteLeaderboardConfigurationAdminV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteLeaderboardConfigurationAdminV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteLeaderboardConfigurationAdminV3Short delete leaderboard by leaderboardcode


Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint delete a leaderboard configuration
*/
func (a *Client) DeleteLeaderboardConfigurationAdminV3Short(params *DeleteLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLeaderboardConfigurationAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteLeaderboardConfigurationAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteLeaderboardConfigurationAdminV3NoContent:
		return v, nil
	case *DeleteLeaderboardConfigurationAdminV3BadRequest:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV3Unauthorized:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV3Forbidden:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV3NotFound:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use HardDeleteLeaderboardAdminV3Short instead.

HardDeleteLeaderboardAdminV3 hard delete leaderboard config and data by leaderboard code


[Test Facility Only]




Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint will delete leaderboard configuration and its data




Note: this endpoint only works on development environment, you might want to use archive endpoint instead hard delete.
*/
func (a *Client) HardDeleteLeaderboardAdminV3(params *HardDeleteLeaderboardAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV3NoContent, *HardDeleteLeaderboardAdminV3BadRequest, *HardDeleteLeaderboardAdminV3Unauthorized, *HardDeleteLeaderboardAdminV3Forbidden, *HardDeleteLeaderboardAdminV3NotFound, *HardDeleteLeaderboardAdminV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHardDeleteLeaderboardAdminV3Params()
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
		ID:                 "hardDeleteLeaderboardAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HardDeleteLeaderboardAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *HardDeleteLeaderboardAdminV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *HardDeleteLeaderboardAdminV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *HardDeleteLeaderboardAdminV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *HardDeleteLeaderboardAdminV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *HardDeleteLeaderboardAdminV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *HardDeleteLeaderboardAdminV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
HardDeleteLeaderboardAdminV3Short hard delete leaderboard config and data by leaderboard code


 [Test Facility Only]




Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




This endpoint will delete leaderboard configuration and its data




Note: this endpoint only works on development environment, you might want to use archive endpoint instead hard delete.
*/
func (a *Client) HardDeleteLeaderboardAdminV3Short(params *HardDeleteLeaderboardAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHardDeleteLeaderboardAdminV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "hardDeleteLeaderboardAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HardDeleteLeaderboardAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *HardDeleteLeaderboardAdminV3NoContent:
		return v, nil
	case *HardDeleteLeaderboardAdminV3BadRequest:
		return nil, v
	case *HardDeleteLeaderboardAdminV3Unauthorized:
		return nil, v
	case *HardDeleteLeaderboardAdminV3Forbidden:
		return nil, v
	case *HardDeleteLeaderboardAdminV3NotFound:
		return nil, v
	case *HardDeleteLeaderboardAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetLeaderboardConfigurationsPublicV3Short instead.

GetLeaderboardConfigurationsPublicV3 list all leaderboards by given namespace


This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsPublicV3(params *GetLeaderboardConfigurationsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV3OK, *GetLeaderboardConfigurationsPublicV3BadRequest, *GetLeaderboardConfigurationsPublicV3Unauthorized, *GetLeaderboardConfigurationsPublicV3Forbidden, *GetLeaderboardConfigurationsPublicV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsPublicV3Params()
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
		ID:                 "getLeaderboardConfigurationsPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsPublicV3OK:
		return v, nil, nil, nil, nil, nil

	case *GetLeaderboardConfigurationsPublicV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetLeaderboardConfigurationsPublicV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetLeaderboardConfigurationsPublicV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetLeaderboardConfigurationsPublicV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationsPublicV3Short list all leaderboards by given namespace


This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsPublicV3Short(params *GetLeaderboardConfigurationsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsPublicV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLeaderboardConfigurationsPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsPublicV3OK:
		return v, nil
	case *GetLeaderboardConfigurationsPublicV3BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV3Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV3Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetLeaderboardConfigurationPublicV3Short instead.

GetLeaderboardConfigurationPublicV3 get leaderboard by leaderboardcode


This endpoint returns a leaderboard configuration
*/
func (a *Client) GetLeaderboardConfigurationPublicV3(params *GetLeaderboardConfigurationPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationPublicV3OK, *GetLeaderboardConfigurationPublicV3BadRequest, *GetLeaderboardConfigurationPublicV3Unauthorized, *GetLeaderboardConfigurationPublicV3Forbidden, *GetLeaderboardConfigurationPublicV3NotFound, *GetLeaderboardConfigurationPublicV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationPublicV3Params()
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
		ID:                 "getLeaderboardConfigurationPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationPublicV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetLeaderboardConfigurationPublicV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetLeaderboardConfigurationPublicV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetLeaderboardConfigurationPublicV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetLeaderboardConfigurationPublicV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetLeaderboardConfigurationPublicV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationPublicV3Short get leaderboard by leaderboardcode


This endpoint returns a leaderboard configuration
*/
func (a *Client) GetLeaderboardConfigurationPublicV3Short(params *GetLeaderboardConfigurationPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationPublicV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLeaderboardConfigurationPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationPublicV3OK:
		return v, nil
	case *GetLeaderboardConfigurationPublicV3BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationPublicV3Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationPublicV3Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationPublicV3NotFound:
		return nil, v
	case *GetLeaderboardConfigurationPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
