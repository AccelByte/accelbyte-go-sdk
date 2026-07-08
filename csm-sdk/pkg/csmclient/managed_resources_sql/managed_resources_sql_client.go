// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package managed_resources_sql

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new managed resources sql API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for managed resources sql API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateSQLDatabaseCredentialV2(params *CreateSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseCredentialV2OK, *CreateSQLDatabaseCredentialV2BadRequest, *CreateSQLDatabaseCredentialV2Unauthorized, *CreateSQLDatabaseCredentialV2Forbidden, *CreateSQLDatabaseCredentialV2NotFound, *CreateSQLDatabaseCredentialV2Conflict, *CreateSQLDatabaseCredentialV2InternalServerError, *CreateSQLDatabaseCredentialV2ServiceUnavailable, error)
	CreateSQLDatabaseCredentialV2Short(params *CreateSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseCredentialV2OK, error)
	GetSQLDatabaseV2(params *GetSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLDatabaseV2OK, *GetSQLDatabaseV2Unauthorized, *GetSQLDatabaseV2Forbidden, *GetSQLDatabaseV2NotFound, *GetSQLDatabaseV2InternalServerError, error)
	GetSQLDatabaseV2Short(params *GetSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLDatabaseV2OK, error)
	CreateSQLDatabaseV2(params *CreateSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseV2OK, *CreateSQLDatabaseV2BadRequest, *CreateSQLDatabaseV2Unauthorized, *CreateSQLDatabaseV2Forbidden, *CreateSQLDatabaseV2NotFound, *CreateSQLDatabaseV2Conflict, *CreateSQLDatabaseV2InternalServerError, *CreateSQLDatabaseV2ServiceUnavailable, error)
	CreateSQLDatabaseV2Short(params *CreateSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseV2OK, error)
	DeleteSQLDatabaseV2(params *DeleteSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLDatabaseV2OK, *DeleteSQLDatabaseV2BadRequest, *DeleteSQLDatabaseV2Unauthorized, *DeleteSQLDatabaseV2Forbidden, *DeleteSQLDatabaseV2NotFound, *DeleteSQLDatabaseV2InternalServerError, *DeleteSQLDatabaseV2ServiceUnavailable, error)
	DeleteSQLDatabaseV2Short(params *DeleteSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLDatabaseV2OK, error)
	GetSQLClusterV2(params *GetSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLClusterV2OK, *GetSQLClusterV2BadRequest, *GetSQLClusterV2Unauthorized, *GetSQLClusterV2Forbidden, *GetSQLClusterV2NotFound, *GetSQLClusterV2InternalServerError, error)
	GetSQLClusterV2Short(params *GetSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLClusterV2OK, error)
	UpdateSQLClusterV2(params *UpdateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSQLClusterV2OK, *UpdateSQLClusterV2BadRequest, *UpdateSQLClusterV2Unauthorized, *UpdateSQLClusterV2Forbidden, *UpdateSQLClusterV2NotFound, *UpdateSQLClusterV2InternalServerError, *UpdateSQLClusterV2ServiceUnavailable, error)
	UpdateSQLClusterV2Short(params *UpdateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSQLClusterV2OK, error)
	CreateSQLClusterV2(params *CreateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLClusterV2OK, *CreateSQLClusterV2BadRequest, *CreateSQLClusterV2Unauthorized, *CreateSQLClusterV2Forbidden, *CreateSQLClusterV2Conflict, *CreateSQLClusterV2InternalServerError, error)
	CreateSQLClusterV2Short(params *CreateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLClusterV2OK, error)
	DeleteSQLClusterV2(params *DeleteSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLClusterV2OK, *DeleteSQLClusterV2Unauthorized, *DeleteSQLClusterV2Forbidden, *DeleteSQLClusterV2NotFound, *DeleteSQLClusterV2Conflict, *DeleteSQLClusterV2InternalServerError, error)
	DeleteSQLClusterV2Short(params *DeleteSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLClusterV2OK, error)
	StartSQLClusterV2(params *StartSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartSQLClusterV2NoContent, *StartSQLClusterV2BadRequest, *StartSQLClusterV2Unauthorized, *StartSQLClusterV2Forbidden, *StartSQLClusterV2NotFound, *StartSQLClusterV2InternalServerError, *StartSQLClusterV2ServiceUnavailable, error)
	StartSQLClusterV2Short(params *StartSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartSQLClusterV2NoContent, error)
	StopSQLClusterV2(params *StopSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopSQLClusterV2NoContent, *StopSQLClusterV2BadRequest, *StopSQLClusterV2Unauthorized, *StopSQLClusterV2Forbidden, *StopSQLClusterV2NotFound, *StopSQLClusterV2InternalServerError, *StopSQLClusterV2ServiceUnavailable, error)
	StopSQLClusterV2Short(params *StopSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopSQLClusterV2NoContent, error)
	GetSQLAppListV2(params *GetSQLAppListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLAppListV2OK, *GetSQLAppListV2BadRequest, *GetSQLAppListV2Unauthorized, *GetSQLAppListV2Forbidden, *GetSQLAppListV2InternalServerError, error)
	GetSQLAppListV2Short(params *GetSQLAppListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLAppListV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateSQLDatabaseCredentialV2Short instead.

CreateSQLDatabaseCredentialV2 creates a new database credential for the customer
Creates a new database credential for the customer. This will soft-delete the old credential and create a new one.
*/
func (a *Client) CreateSQLDatabaseCredentialV2(params *CreateSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseCredentialV2OK, *CreateSQLDatabaseCredentialV2BadRequest, *CreateSQLDatabaseCredentialV2Unauthorized, *CreateSQLDatabaseCredentialV2Forbidden, *CreateSQLDatabaseCredentialV2NotFound, *CreateSQLDatabaseCredentialV2Conflict, *CreateSQLDatabaseCredentialV2InternalServerError, *CreateSQLDatabaseCredentialV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSQLDatabaseCredentialV2Params()
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
		ID:                 "CreateSQLDatabaseCredentialV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSQLDatabaseCredentialV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateSQLDatabaseCredentialV2OK:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *CreateSQLDatabaseCredentialV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *CreateSQLDatabaseCredentialV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *CreateSQLDatabaseCredentialV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *CreateSQLDatabaseCredentialV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *CreateSQLDatabaseCredentialV2Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *CreateSQLDatabaseCredentialV2InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *CreateSQLDatabaseCredentialV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSQLDatabaseCredentialV2Short creates a new database credential for the customer
Creates a new database credential for the customer. This will soft-delete the old credential and create a new one.
*/
func (a *Client) CreateSQLDatabaseCredentialV2Short(params *CreateSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseCredentialV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSQLDatabaseCredentialV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateSQLDatabaseCredentialV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSQLDatabaseCredentialV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSQLDatabaseCredentialV2OK:
		return v, nil
	case *CreateSQLDatabaseCredentialV2BadRequest:
		return nil, v
	case *CreateSQLDatabaseCredentialV2Unauthorized:
		return nil, v
	case *CreateSQLDatabaseCredentialV2Forbidden:
		return nil, v
	case *CreateSQLDatabaseCredentialV2NotFound:
		return nil, v
	case *CreateSQLDatabaseCredentialV2Conflict:
		return nil, v
	case *CreateSQLDatabaseCredentialV2InternalServerError:
		return nil, v
	case *CreateSQLDatabaseCredentialV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSQLDatabaseV2Short instead.

GetSQLDatabaseV2 get sql database for extend app
Get a SQL database information returns the SQL database related information by given game namespace
and app name.

`resourceStatus` field - indicates the SQL cluster status:
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `creating` : The cluster or instance is being created and is not yet accessible.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
- `available` : The cluster is accessible.
*/
func (a *Client) GetSQLDatabaseV2(params *GetSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLDatabaseV2OK, *GetSQLDatabaseV2Unauthorized, *GetSQLDatabaseV2Forbidden, *GetSQLDatabaseV2NotFound, *GetSQLDatabaseV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSQLDatabaseV2Params()
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
		ID:                 "GetSQLDatabaseV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetSQLDatabaseV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetSQLDatabaseV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetSQLDatabaseV2Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetSQLDatabaseV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetSQLDatabaseV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSQLDatabaseV2Short get sql database for extend app
Get a SQL database information returns the SQL database related information by given game namespace
and app name.

`resourceStatus` field - indicates the SQL cluster status:
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `creating` : The cluster or instance is being created and is not yet accessible.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
- `available` : The cluster is accessible.
*/
func (a *Client) GetSQLDatabaseV2Short(params *GetSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLDatabaseV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSQLDatabaseV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetSQLDatabaseV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSQLDatabaseV2OK:
		return v, nil
	case *GetSQLDatabaseV2Unauthorized:
		return nil, v
	case *GetSQLDatabaseV2Forbidden:
		return nil, v
	case *GetSQLDatabaseV2NotFound:
		return nil, v
	case *GetSQLDatabaseV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateSQLDatabaseV2Short instead.

CreateSQLDatabaseV2 creates sql database for extend app
Creates a SQL database along with its credentials associated with given extend app. The database will be created in the provisioned SQL cluster.
*/
func (a *Client) CreateSQLDatabaseV2(params *CreateSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseV2OK, *CreateSQLDatabaseV2BadRequest, *CreateSQLDatabaseV2Unauthorized, *CreateSQLDatabaseV2Forbidden, *CreateSQLDatabaseV2NotFound, *CreateSQLDatabaseV2Conflict, *CreateSQLDatabaseV2InternalServerError, *CreateSQLDatabaseV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSQLDatabaseV2Params()
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
		ID:                 "CreateSQLDatabaseV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateSQLDatabaseV2OK:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *CreateSQLDatabaseV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *CreateSQLDatabaseV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *CreateSQLDatabaseV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *CreateSQLDatabaseV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *CreateSQLDatabaseV2Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *CreateSQLDatabaseV2InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *CreateSQLDatabaseV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSQLDatabaseV2Short creates sql database for extend app
Creates a SQL database along with its credentials associated with given extend app. The database will be created in the provisioned SQL cluster.
*/
func (a *Client) CreateSQLDatabaseV2Short(params *CreateSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSQLDatabaseV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateSQLDatabaseV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSQLDatabaseV2OK:
		return v, nil
	case *CreateSQLDatabaseV2BadRequest:
		return nil, v
	case *CreateSQLDatabaseV2Unauthorized:
		return nil, v
	case *CreateSQLDatabaseV2Forbidden:
		return nil, v
	case *CreateSQLDatabaseV2NotFound:
		return nil, v
	case *CreateSQLDatabaseV2Conflict:
		return nil, v
	case *CreateSQLDatabaseV2InternalServerError:
		return nil, v
	case *CreateSQLDatabaseV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteSQLDatabaseV2Short instead.

DeleteSQLDatabaseV2 deletes sql database for extend app
Deletes a SQL database and its credentials associated with given extend app and game namespace. The database will be removed from the provisioned SQL cluster.
*/
func (a *Client) DeleteSQLDatabaseV2(params *DeleteSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLDatabaseV2OK, *DeleteSQLDatabaseV2BadRequest, *DeleteSQLDatabaseV2Unauthorized, *DeleteSQLDatabaseV2Forbidden, *DeleteSQLDatabaseV2NotFound, *DeleteSQLDatabaseV2InternalServerError, *DeleteSQLDatabaseV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSQLDatabaseV2Params()
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
		ID:                 "DeleteSQLDatabaseV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteSQLDatabaseV2OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *DeleteSQLDatabaseV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *DeleteSQLDatabaseV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *DeleteSQLDatabaseV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *DeleteSQLDatabaseV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *DeleteSQLDatabaseV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *DeleteSQLDatabaseV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSQLDatabaseV2Short deletes sql database for extend app
Deletes a SQL database and its credentials associated with given extend app and game namespace. The database will be removed from the provisioned SQL cluster.
*/
func (a *Client) DeleteSQLDatabaseV2Short(params *DeleteSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLDatabaseV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSQLDatabaseV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteSQLDatabaseV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSQLDatabaseV2OK:
		return v, nil
	case *DeleteSQLDatabaseV2BadRequest:
		return nil, v
	case *DeleteSQLDatabaseV2Unauthorized:
		return nil, v
	case *DeleteSQLDatabaseV2Forbidden:
		return nil, v
	case *DeleteSQLDatabaseV2NotFound:
		return nil, v
	case *DeleteSQLDatabaseV2InternalServerError:
		return nil, v
	case *DeleteSQLDatabaseV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSQLClusterV2Short instead.

GetSQLClusterV2 get sql cluster information
Get SQL cluster information returns the SQL cluster related information by given studio/publisher namespace.

`status` field - indicates the SQL cluster status:
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `creating` : The cluster or instance is being created and is not yet accessible.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
- `available` : The cluster is accessible.
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
*/
func (a *Client) GetSQLClusterV2(params *GetSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLClusterV2OK, *GetSQLClusterV2BadRequest, *GetSQLClusterV2Unauthorized, *GetSQLClusterV2Forbidden, *GetSQLClusterV2NotFound, *GetSQLClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSQLClusterV2Params()
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
		ID:                 "GetSQLClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetSQLClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetSQLClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetSQLClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetSQLClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetSQLClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSQLClusterV2Short get sql cluster information
Get SQL cluster information returns the SQL cluster related information by given studio/publisher namespace.

`status` field - indicates the SQL cluster status:
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `creating` : The cluster or instance is being created and is not yet accessible.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
- `available` : The cluster is accessible.
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
*/
func (a *Client) GetSQLClusterV2Short(params *GetSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetSQLClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSQLClusterV2OK:
		return v, nil
	case *GetSQLClusterV2BadRequest:
		return nil, v
	case *GetSQLClusterV2Unauthorized:
		return nil, v
	case *GetSQLClusterV2Forbidden:
		return nil, v
	case *GetSQLClusterV2NotFound:
		return nil, v
	case *GetSQLClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateSQLClusterV2Short instead.

UpdateSQLClusterV2 update sql cluster configurations
Update SQL cluster configurations such as min/max ACU (AuroraDB Capacity Units) for the SQL cluster in the given studio/publisher namespace.
The cluster must be in an available state to allow configuration updates.

Configuration update process may take some time to complete, you can check the updated status from the `status` field of the resource response.
*/
func (a *Client) UpdateSQLClusterV2(params *UpdateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSQLClusterV2OK, *UpdateSQLClusterV2BadRequest, *UpdateSQLClusterV2Unauthorized, *UpdateSQLClusterV2Forbidden, *UpdateSQLClusterV2NotFound, *UpdateSQLClusterV2InternalServerError, *UpdateSQLClusterV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSQLClusterV2Params()
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
		ID:                 "UpdateSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateSQLClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *UpdateSQLClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *UpdateSQLClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *UpdateSQLClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *UpdateSQLClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *UpdateSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *UpdateSQLClusterV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSQLClusterV2Short update sql cluster configurations
Update SQL cluster configurations such as min/max ACU (AuroraDB Capacity Units) for the SQL cluster in the given studio/publisher namespace.
The cluster must be in an available state to allow configuration updates.

Configuration update process may take some time to complete, you can check the updated status from the `status` field of the resource response.
*/
func (a *Client) UpdateSQLClusterV2Short(params *UpdateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSQLClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSQLClusterV2OK:
		return v, nil
	case *UpdateSQLClusterV2BadRequest:
		return nil, v
	case *UpdateSQLClusterV2Unauthorized:
		return nil, v
	case *UpdateSQLClusterV2Forbidden:
		return nil, v
	case *UpdateSQLClusterV2NotFound:
		return nil, v
	case *UpdateSQLClusterV2InternalServerError:
		return nil, v
	case *UpdateSQLClusterV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateSQLClusterV2Short instead.

CreateSQLClusterV2 creates sql cluster
Provision SQL database cluster and instances that can be used by extend apps in game namespace within the studio.
Only one SQL resource can be created for one studio/publisher namespace.

Provisioning process is done asynchronously, you can check from the `status` field of the resource response.
*/
func (a *Client) CreateSQLClusterV2(params *CreateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLClusterV2OK, *CreateSQLClusterV2BadRequest, *CreateSQLClusterV2Unauthorized, *CreateSQLClusterV2Forbidden, *CreateSQLClusterV2Conflict, *CreateSQLClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSQLClusterV2Params()
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
		ID:                 "CreateSQLClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateSQLClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateSQLClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateSQLClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateSQLClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateSQLClusterV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSQLClusterV2Short creates sql cluster
Provision SQL database cluster and instances that can be used by extend apps in game namespace within the studio.
Only one SQL resource can be created for one studio/publisher namespace.

Provisioning process is done asynchronously, you can check from the `status` field of the resource response.
*/
func (a *Client) CreateSQLClusterV2Short(params *CreateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateSQLClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSQLClusterV2OK:
		return v, nil
	case *CreateSQLClusterV2BadRequest:
		return nil, v
	case *CreateSQLClusterV2Unauthorized:
		return nil, v
	case *CreateSQLClusterV2Forbidden:
		return nil, v
	case *CreateSQLClusterV2Conflict:
		return nil, v
	case *CreateSQLClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteSQLClusterV2Short instead.

DeleteSQLClusterV2 delete sql cluster
You can only delete the cluster when its status is "available".

Deleting the cluster will:
- Remove SQL integration.
- Remove all the data from the SQL
- Remove all the credentials, including the Extend Appâs credentials.
*/
func (a *Client) DeleteSQLClusterV2(params *DeleteSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLClusterV2OK, *DeleteSQLClusterV2Unauthorized, *DeleteSQLClusterV2Forbidden, *DeleteSQLClusterV2NotFound, *DeleteSQLClusterV2Conflict, *DeleteSQLClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSQLClusterV2Params()
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
		ID:                 "DeleteSQLClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteSQLClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteSQLClusterV2Unauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteSQLClusterV2Forbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteSQLClusterV2NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteSQLClusterV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSQLClusterV2Short delete sql cluster
You can only delete the cluster when its status is "available".

Deleting the cluster will:
- Remove SQL integration.
- Remove all the data from the SQL
- Remove all the credentials, including the Extend Appâs credentials.
*/
func (a *Client) DeleteSQLClusterV2Short(params *DeleteSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteSQLClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSQLClusterV2OK:
		return v, nil
	case *DeleteSQLClusterV2Unauthorized:
		return nil, v
	case *DeleteSQLClusterV2Forbidden:
		return nil, v
	case *DeleteSQLClusterV2NotFound:
		return nil, v
	case *DeleteSQLClusterV2Conflict:
		return nil, v
	case *DeleteSQLClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use StartSQLClusterV2Short instead.

StartSQLClusterV2 start sql cluster
Start SQL cluster.
You can only start the cluster when its status is "stopped".

Cluster starting process may take some time to complete.
*/
func (a *Client) StartSQLClusterV2(params *StartSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartSQLClusterV2NoContent, *StartSQLClusterV2BadRequest, *StartSQLClusterV2Unauthorized, *StartSQLClusterV2Forbidden, *StartSQLClusterV2NotFound, *StartSQLClusterV2InternalServerError, *StartSQLClusterV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStartSQLClusterV2Params()
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
		ID:                 "StartSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters/start",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StartSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *StartSQLClusterV2NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *StartSQLClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *StartSQLClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *StartSQLClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *StartSQLClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *StartSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *StartSQLClusterV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StartSQLClusterV2Short start sql cluster
Start SQL cluster.
You can only start the cluster when its status is "stopped".

Cluster starting process may take some time to complete.
*/
func (a *Client) StartSQLClusterV2Short(params *StartSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartSQLClusterV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStartSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "StartSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters/start",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StartSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StartSQLClusterV2NoContent:
		return v, nil
	case *StartSQLClusterV2BadRequest:
		return nil, v
	case *StartSQLClusterV2Unauthorized:
		return nil, v
	case *StartSQLClusterV2Forbidden:
		return nil, v
	case *StartSQLClusterV2NotFound:
		return nil, v
	case *StartSQLClusterV2InternalServerError:
		return nil, v
	case *StartSQLClusterV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use StopSQLClusterV2Short instead.

StopSQLClusterV2 stop sql cluster
Stop SQL cluster.
You can only start the cluster when its status is "available".

Cluster stopping process may take some time to complete.
*/
func (a *Client) StopSQLClusterV2(params *StopSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopSQLClusterV2NoContent, *StopSQLClusterV2BadRequest, *StopSQLClusterV2Unauthorized, *StopSQLClusterV2Forbidden, *StopSQLClusterV2NotFound, *StopSQLClusterV2InternalServerError, *StopSQLClusterV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStopSQLClusterV2Params()
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
		ID:                 "StopSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters/stop",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StopSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *StopSQLClusterV2NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *StopSQLClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *StopSQLClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *StopSQLClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *StopSQLClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *StopSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *StopSQLClusterV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StopSQLClusterV2Short stop sql cluster
Stop SQL cluster.
You can only start the cluster when its status is "available".

Cluster stopping process may take some time to complete.
*/
func (a *Client) StopSQLClusterV2Short(params *StopSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopSQLClusterV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStopSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "StopSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters/stop",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StopSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StopSQLClusterV2NoContent:
		return v, nil
	case *StopSQLClusterV2BadRequest:
		return nil, v
	case *StopSQLClusterV2Unauthorized:
		return nil, v
	case *StopSQLClusterV2Forbidden:
		return nil, v
	case *StopSQLClusterV2NotFound:
		return nil, v
	case *StopSQLClusterV2InternalServerError:
		return nil, v
	case *StopSQLClusterV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSQLAppListV2Short instead.

GetSQLAppListV2 get list of extend app using sql
Get List of Extend App using SQL database by given studio/publisher namespace and the SQL cluster resourceId.
- `available` : The cluster is accessible.
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `creating` : The cluster or instance is being created and is not yet accessible.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
*/
func (a *Client) GetSQLAppListV2(params *GetSQLAppListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLAppListV2OK, *GetSQLAppListV2BadRequest, *GetSQLAppListV2Unauthorized, *GetSQLAppListV2Forbidden, *GetSQLAppListV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSQLAppListV2Params()
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
		ID:                 "GetSQLAppListV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSQLAppListV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetSQLAppListV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetSQLAppListV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetSQLAppListV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetSQLAppListV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetSQLAppListV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSQLAppListV2Short get list of extend app using sql
Get List of Extend App using SQL database by given studio/publisher namespace and the SQL cluster resourceId.
- `available` : The cluster is accessible.
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `creating` : The cluster or instance is being created and is not yet accessible.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
*/
func (a *Client) GetSQLAppListV2Short(params *GetSQLAppListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLAppListV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSQLAppListV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetSQLAppListV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSQLAppListV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSQLAppListV2OK:
		return v, nil
	case *GetSQLAppListV2BadRequest:
		return nil, v
	case *GetSQLAppListV2Unauthorized:
		return nil, v
	case *GetSQLAppListV2Forbidden:
		return nil, v
	case *GetSQLAppListV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
