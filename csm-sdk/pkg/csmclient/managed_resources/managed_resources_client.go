// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package managed_resources

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new managed resources API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for managed resources API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateNoSQLDatabaseCredentialV2(params *CreateNoSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseCredentialV2OK, *CreateNoSQLDatabaseCredentialV2BadRequest, *CreateNoSQLDatabaseCredentialV2Unauthorized, *CreateNoSQLDatabaseCredentialV2Forbidden, *CreateNoSQLDatabaseCredentialV2NotFound, *CreateNoSQLDatabaseCredentialV2Conflict, *CreateNoSQLDatabaseCredentialV2InternalServerError, *CreateNoSQLDatabaseCredentialV2ServiceUnavailable, error)
	CreateNoSQLDatabaseCredentialV2Short(params *CreateNoSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseCredentialV2OK, error)
	GetNoSQLDatabaseV2(params *GetNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLDatabaseV2OK, *GetNoSQLDatabaseV2Unauthorized, *GetNoSQLDatabaseV2Forbidden, *GetNoSQLDatabaseV2NotFound, *GetNoSQLDatabaseV2InternalServerError, error)
	GetNoSQLDatabaseV2Short(params *GetNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLDatabaseV2OK, error)
	CreateNoSQLDatabaseV2(params *CreateNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseV2OK, *CreateNoSQLDatabaseV2BadRequest, *CreateNoSQLDatabaseV2Unauthorized, *CreateNoSQLDatabaseV2Forbidden, *CreateNoSQLDatabaseV2NotFound, *CreateNoSQLDatabaseV2Conflict, *CreateNoSQLDatabaseV2InternalServerError, *CreateNoSQLDatabaseV2ServiceUnavailable, error)
	CreateNoSQLDatabaseV2Short(params *CreateNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseV2OK, error)
	DeleteNoSQLDatabaseV2(params *DeleteNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLDatabaseV2OK, *DeleteNoSQLDatabaseV2BadRequest, *DeleteNoSQLDatabaseV2Unauthorized, *DeleteNoSQLDatabaseV2Forbidden, *DeleteNoSQLDatabaseV2NotFound, *DeleteNoSQLDatabaseV2InternalServerError, *DeleteNoSQLDatabaseV2ServiceUnavailable, error)
	DeleteNoSQLDatabaseV2Short(params *DeleteNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLDatabaseV2OK, error)
	GetNoSQLClusterV2(params *GetNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLClusterV2OK, *GetNoSQLClusterV2BadRequest, *GetNoSQLClusterV2Unauthorized, *GetNoSQLClusterV2Forbidden, *GetNoSQLClusterV2NotFound, *GetNoSQLClusterV2InternalServerError, error)
	GetNoSQLClusterV2Short(params *GetNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLClusterV2OK, error)
	UpdateNoSQLClusterV2(params *UpdateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateNoSQLClusterV2OK, *UpdateNoSQLClusterV2BadRequest, *UpdateNoSQLClusterV2Unauthorized, *UpdateNoSQLClusterV2Forbidden, *UpdateNoSQLClusterV2NotFound, *UpdateNoSQLClusterV2InternalServerError, *UpdateNoSQLClusterV2ServiceUnavailable, error)
	UpdateNoSQLClusterV2Short(params *UpdateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateNoSQLClusterV2OK, error)
	CreateNoSQLClusterV2(params *CreateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLClusterV2OK, *CreateNoSQLClusterV2BadRequest, *CreateNoSQLClusterV2Unauthorized, *CreateNoSQLClusterV2Forbidden, *CreateNoSQLClusterV2Conflict, *CreateNoSQLClusterV2InternalServerError, error)
	CreateNoSQLClusterV2Short(params *CreateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLClusterV2OK, error)
	DeleteNoSQLClusterV2(params *DeleteNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLClusterV2OK, *DeleteNoSQLClusterV2Unauthorized, *DeleteNoSQLClusterV2Forbidden, *DeleteNoSQLClusterV2NotFound, *DeleteNoSQLClusterV2Conflict, *DeleteNoSQLClusterV2InternalServerError, error)
	DeleteNoSQLClusterV2Short(params *DeleteNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLClusterV2OK, error)
	StartNoSQLClusterV2(params *StartNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartNoSQLClusterV2NoContent, *StartNoSQLClusterV2BadRequest, *StartNoSQLClusterV2Unauthorized, *StartNoSQLClusterV2Forbidden, *StartNoSQLClusterV2NotFound, *StartNoSQLClusterV2InternalServerError, *StartNoSQLClusterV2ServiceUnavailable, error)
	StartNoSQLClusterV2Short(params *StartNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartNoSQLClusterV2NoContent, error)
	StopNoSQLClusterV2(params *StopNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopNoSQLClusterV2NoContent, *StopNoSQLClusterV2BadRequest, *StopNoSQLClusterV2Unauthorized, *StopNoSQLClusterV2Forbidden, *StopNoSQLClusterV2NotFound, *StopNoSQLClusterV2InternalServerError, *StopNoSQLClusterV2ServiceUnavailable, error)
	StopNoSQLClusterV2Short(params *StopNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopNoSQLClusterV2NoContent, error)
	GetNoSQLAccessTunnelV2(params *GetNoSQLAccessTunnelV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLAccessTunnelV2OK, *GetNoSQLAccessTunnelV2Unauthorized, *GetNoSQLAccessTunnelV2NotFound, *GetNoSQLAccessTunnelV2InternalServerError, *GetNoSQLAccessTunnelV2ServiceUnavailable, error)
	GetNoSQLAccessTunnelV2Short(params *GetNoSQLAccessTunnelV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLAccessTunnelV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateNoSQLDatabaseCredentialV2Short instead.

CreateNoSQLDatabaseCredentialV2 creates a new database credential for the customer
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASECREDENTIALS [CREATE]`

Creates a new database credential for the customer. This will soft-delete the old credential and create a new one.
*/
func (a *Client) CreateNoSQLDatabaseCredentialV2(params *CreateNoSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseCredentialV2OK, *CreateNoSQLDatabaseCredentialV2BadRequest, *CreateNoSQLDatabaseCredentialV2Unauthorized, *CreateNoSQLDatabaseCredentialV2Forbidden, *CreateNoSQLDatabaseCredentialV2NotFound, *CreateNoSQLDatabaseCredentialV2Conflict, *CreateNoSQLDatabaseCredentialV2InternalServerError, *CreateNoSQLDatabaseCredentialV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNoSQLDatabaseCredentialV2Params()
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
		ID:                 "CreateNoSQLDatabaseCredentialV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNoSQLDatabaseCredentialV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateNoSQLDatabaseCredentialV2OK:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *CreateNoSQLDatabaseCredentialV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *CreateNoSQLDatabaseCredentialV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *CreateNoSQLDatabaseCredentialV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *CreateNoSQLDatabaseCredentialV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *CreateNoSQLDatabaseCredentialV2Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *CreateNoSQLDatabaseCredentialV2InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *CreateNoSQLDatabaseCredentialV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNoSQLDatabaseCredentialV2Short creates a new database credential for the customer
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASECREDENTIALS [CREATE]`

Creates a new database credential for the customer. This will soft-delete the old credential and create a new one.
*/
func (a *Client) CreateNoSQLDatabaseCredentialV2Short(params *CreateNoSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseCredentialV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNoSQLDatabaseCredentialV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateNoSQLDatabaseCredentialV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNoSQLDatabaseCredentialV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNoSQLDatabaseCredentialV2OK:
		return v, nil
	case *CreateNoSQLDatabaseCredentialV2BadRequest:
		return nil, v
	case *CreateNoSQLDatabaseCredentialV2Unauthorized:
		return nil, v
	case *CreateNoSQLDatabaseCredentialV2Forbidden:
		return nil, v
	case *CreateNoSQLDatabaseCredentialV2NotFound:
		return nil, v
	case *CreateNoSQLDatabaseCredentialV2Conflict:
		return nil, v
	case *CreateNoSQLDatabaseCredentialV2InternalServerError:
		return nil, v
	case *CreateNoSQLDatabaseCredentialV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetNoSQLDatabaseV2Short instead.

GetNoSQLDatabaseV2 get nosql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [READ]`

Get a NoSQL database information returns the NoSQL database related information by given game namespace
and app name.

`resourceStatus` field - indicates the NoSQL cluster status:
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
- `available` : The cluster is accessible.
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max DCU).
- `creating` : The cluster or instance is being created and is not yet accessible.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
*/
func (a *Client) GetNoSQLDatabaseV2(params *GetNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLDatabaseV2OK, *GetNoSQLDatabaseV2Unauthorized, *GetNoSQLDatabaseV2Forbidden, *GetNoSQLDatabaseV2NotFound, *GetNoSQLDatabaseV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNoSQLDatabaseV2Params()
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
		ID:                 "GetNoSQLDatabaseV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNoSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetNoSQLDatabaseV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetNoSQLDatabaseV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetNoSQLDatabaseV2Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetNoSQLDatabaseV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetNoSQLDatabaseV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNoSQLDatabaseV2Short get nosql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [READ]`

Get a NoSQL database information returns the NoSQL database related information by given game namespace
and app name.

`resourceStatus` field - indicates the NoSQL cluster status:
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
- `available` : The cluster is accessible.
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max DCU).
- `creating` : The cluster or instance is being created and is not yet accessible.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
*/
func (a *Client) GetNoSQLDatabaseV2Short(params *GetNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLDatabaseV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNoSQLDatabaseV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetNoSQLDatabaseV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNoSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNoSQLDatabaseV2OK:
		return v, nil
	case *GetNoSQLDatabaseV2Unauthorized:
		return nil, v
	case *GetNoSQLDatabaseV2Forbidden:
		return nil, v
	case *GetNoSQLDatabaseV2NotFound:
		return nil, v
	case *GetNoSQLDatabaseV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateNoSQLDatabaseV2Short instead.

CreateNoSQLDatabaseV2 creates nosql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [CREATE]`

Creates a NoSQL database along with its credentials associated with given extend app. The database will be created in the provisioned NoSQL cluster.
*/
func (a *Client) CreateNoSQLDatabaseV2(params *CreateNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseV2OK, *CreateNoSQLDatabaseV2BadRequest, *CreateNoSQLDatabaseV2Unauthorized, *CreateNoSQLDatabaseV2Forbidden, *CreateNoSQLDatabaseV2NotFound, *CreateNoSQLDatabaseV2Conflict, *CreateNoSQLDatabaseV2InternalServerError, *CreateNoSQLDatabaseV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNoSQLDatabaseV2Params()
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
		ID:                 "CreateNoSQLDatabaseV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNoSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateNoSQLDatabaseV2OK:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *CreateNoSQLDatabaseV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *CreateNoSQLDatabaseV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *CreateNoSQLDatabaseV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *CreateNoSQLDatabaseV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *CreateNoSQLDatabaseV2Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *CreateNoSQLDatabaseV2InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *CreateNoSQLDatabaseV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNoSQLDatabaseV2Short creates nosql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [CREATE]`

Creates a NoSQL database along with its credentials associated with given extend app. The database will be created in the provisioned NoSQL cluster.
*/
func (a *Client) CreateNoSQLDatabaseV2Short(params *CreateNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNoSQLDatabaseV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateNoSQLDatabaseV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNoSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNoSQLDatabaseV2OK:
		return v, nil
	case *CreateNoSQLDatabaseV2BadRequest:
		return nil, v
	case *CreateNoSQLDatabaseV2Unauthorized:
		return nil, v
	case *CreateNoSQLDatabaseV2Forbidden:
		return nil, v
	case *CreateNoSQLDatabaseV2NotFound:
		return nil, v
	case *CreateNoSQLDatabaseV2Conflict:
		return nil, v
	case *CreateNoSQLDatabaseV2InternalServerError:
		return nil, v
	case *CreateNoSQLDatabaseV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteNoSQLDatabaseV2Short instead.

DeleteNoSQLDatabaseV2 deletes nosql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [DELETE]`

Deletes a NoSQL database and its credentials associated with given extend app and game namespace. The database will be removed from the provisioned NoSQL cluster.
*/
func (a *Client) DeleteNoSQLDatabaseV2(params *DeleteNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLDatabaseV2OK, *DeleteNoSQLDatabaseV2BadRequest, *DeleteNoSQLDatabaseV2Unauthorized, *DeleteNoSQLDatabaseV2Forbidden, *DeleteNoSQLDatabaseV2NotFound, *DeleteNoSQLDatabaseV2InternalServerError, *DeleteNoSQLDatabaseV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNoSQLDatabaseV2Params()
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
		ID:                 "DeleteNoSQLDatabaseV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNoSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteNoSQLDatabaseV2OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *DeleteNoSQLDatabaseV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *DeleteNoSQLDatabaseV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *DeleteNoSQLDatabaseV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *DeleteNoSQLDatabaseV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *DeleteNoSQLDatabaseV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *DeleteNoSQLDatabaseV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNoSQLDatabaseV2Short deletes nosql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [DELETE]`

Deletes a NoSQL database and its credentials associated with given extend app and game namespace. The database will be removed from the provisioned NoSQL cluster.
*/
func (a *Client) DeleteNoSQLDatabaseV2Short(params *DeleteNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLDatabaseV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNoSQLDatabaseV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteNoSQLDatabaseV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNoSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNoSQLDatabaseV2OK:
		return v, nil
	case *DeleteNoSQLDatabaseV2BadRequest:
		return nil, v
	case *DeleteNoSQLDatabaseV2Unauthorized:
		return nil, v
	case *DeleteNoSQLDatabaseV2Forbidden:
		return nil, v
	case *DeleteNoSQLDatabaseV2NotFound:
		return nil, v
	case *DeleteNoSQLDatabaseV2InternalServerError:
		return nil, v
	case *DeleteNoSQLDatabaseV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetNoSQLClusterV2Short instead.

GetNoSQLClusterV2 get nosql cluster information
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [READ]`

Get NoSQL cluster information returns the NoSQL cluster related information by given studio/publisher namespace.

`status` field - indicates the NoSQL cluster status:
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max DCU).
- `creating` : The cluster or instance is being created and is not yet accessible.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
- `available` : The cluster is accessible.
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
*/
func (a *Client) GetNoSQLClusterV2(params *GetNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLClusterV2OK, *GetNoSQLClusterV2BadRequest, *GetNoSQLClusterV2Unauthorized, *GetNoSQLClusterV2Forbidden, *GetNoSQLClusterV2NotFound, *GetNoSQLClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNoSQLClusterV2Params()
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
		ID:                 "GetNoSQLClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetNoSQLClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetNoSQLClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetNoSQLClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetNoSQLClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetNoSQLClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetNoSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNoSQLClusterV2Short get nosql cluster information
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [READ]`

Get NoSQL cluster information returns the NoSQL cluster related information by given studio/publisher namespace.

`status` field - indicates the NoSQL cluster status:
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max DCU).
- `creating` : The cluster or instance is being created and is not yet accessible.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
- `available` : The cluster is accessible.
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
*/
func (a *Client) GetNoSQLClusterV2Short(params *GetNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNoSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetNoSQLClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNoSQLClusterV2OK:
		return v, nil
	case *GetNoSQLClusterV2BadRequest:
		return nil, v
	case *GetNoSQLClusterV2Unauthorized:
		return nil, v
	case *GetNoSQLClusterV2Forbidden:
		return nil, v
	case *GetNoSQLClusterV2NotFound:
		return nil, v
	case *GetNoSQLClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateNoSQLClusterV2Short instead.

UpdateNoSQLClusterV2 update nosql cluster configurations
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

Update NoSQL cluster configurations such as min/max DCU (Database Capacity Units) for the NoSQL cluster in the given studio/publisher namespace.
The cluster must be in an available state to allow configuration updates.

Configuration update process may take some time to complete, you can check the updated status from the `status` field of the resource response.
*/
func (a *Client) UpdateNoSQLClusterV2(params *UpdateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateNoSQLClusterV2OK, *UpdateNoSQLClusterV2BadRequest, *UpdateNoSQLClusterV2Unauthorized, *UpdateNoSQLClusterV2Forbidden, *UpdateNoSQLClusterV2NotFound, *UpdateNoSQLClusterV2InternalServerError, *UpdateNoSQLClusterV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNoSQLClusterV2Params()
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
		ID:                 "UpdateNoSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateNoSQLClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *UpdateNoSQLClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *UpdateNoSQLClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *UpdateNoSQLClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *UpdateNoSQLClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *UpdateNoSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *UpdateNoSQLClusterV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateNoSQLClusterV2Short update nosql cluster configurations
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

Update NoSQL cluster configurations such as min/max DCU (Database Capacity Units) for the NoSQL cluster in the given studio/publisher namespace.
The cluster must be in an available state to allow configuration updates.

Configuration update process may take some time to complete, you can check the updated status from the `status` field of the resource response.
*/
func (a *Client) UpdateNoSQLClusterV2Short(params *UpdateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateNoSQLClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNoSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateNoSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateNoSQLClusterV2OK:
		return v, nil
	case *UpdateNoSQLClusterV2BadRequest:
		return nil, v
	case *UpdateNoSQLClusterV2Unauthorized:
		return nil, v
	case *UpdateNoSQLClusterV2Forbidden:
		return nil, v
	case *UpdateNoSQLClusterV2NotFound:
		return nil, v
	case *UpdateNoSQLClusterV2InternalServerError:
		return nil, v
	case *UpdateNoSQLClusterV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateNoSQLClusterV2Short instead.

CreateNoSQLClusterV2 creates nosql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [CREATE]`

Provision NoSQL database cluster and instances that can be used by extend apps in game namespace within the studio.
Only one NoSQL resource can be created for one studio/publisher namespace.

Provisioning process is done asynchronously, you can check from the `status` field of the resource response.
*/
func (a *Client) CreateNoSQLClusterV2(params *CreateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLClusterV2OK, *CreateNoSQLClusterV2BadRequest, *CreateNoSQLClusterV2Unauthorized, *CreateNoSQLClusterV2Forbidden, *CreateNoSQLClusterV2Conflict, *CreateNoSQLClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNoSQLClusterV2Params()
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
		ID:                 "CreateNoSQLClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateNoSQLClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateNoSQLClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateNoSQLClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateNoSQLClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateNoSQLClusterV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateNoSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNoSQLClusterV2Short creates nosql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [CREATE]`

Provision NoSQL database cluster and instances that can be used by extend apps in game namespace within the studio.
Only one NoSQL resource can be created for one studio/publisher namespace.

Provisioning process is done asynchronously, you can check from the `status` field of the resource response.
*/
func (a *Client) CreateNoSQLClusterV2Short(params *CreateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNoSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateNoSQLClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNoSQLClusterV2OK:
		return v, nil
	case *CreateNoSQLClusterV2BadRequest:
		return nil, v
	case *CreateNoSQLClusterV2Unauthorized:
		return nil, v
	case *CreateNoSQLClusterV2Forbidden:
		return nil, v
	case *CreateNoSQLClusterV2Conflict:
		return nil, v
	case *CreateNoSQLClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteNoSQLClusterV2Short instead.

DeleteNoSQLClusterV2 delete nosql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [DELETE]`

You can only delete the cluster when its status is "available".

Deleting the cluster will:
- Remove NoSQL integration.
- Remove all the data from the NoSQL
- Remove all the credentials, including the Extend Appâs credentials.
*/
func (a *Client) DeleteNoSQLClusterV2(params *DeleteNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLClusterV2OK, *DeleteNoSQLClusterV2Unauthorized, *DeleteNoSQLClusterV2Forbidden, *DeleteNoSQLClusterV2NotFound, *DeleteNoSQLClusterV2Conflict, *DeleteNoSQLClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNoSQLClusterV2Params()
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
		ID:                 "DeleteNoSQLClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteNoSQLClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteNoSQLClusterV2Unauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteNoSQLClusterV2Forbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteNoSQLClusterV2NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteNoSQLClusterV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteNoSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNoSQLClusterV2Short delete nosql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [DELETE]`

You can only delete the cluster when its status is "available".

Deleting the cluster will:
- Remove NoSQL integration.
- Remove all the data from the NoSQL
- Remove all the credentials, including the Extend Appâs credentials.
*/
func (a *Client) DeleteNoSQLClusterV2Short(params *DeleteNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNoSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteNoSQLClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNoSQLClusterV2OK:
		return v, nil
	case *DeleteNoSQLClusterV2Unauthorized:
		return nil, v
	case *DeleteNoSQLClusterV2Forbidden:
		return nil, v
	case *DeleteNoSQLClusterV2NotFound:
		return nil, v
	case *DeleteNoSQLClusterV2Conflict:
		return nil, v
	case *DeleteNoSQLClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use StartNoSQLClusterV2Short instead.

StartNoSQLClusterV2 start nosql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

Start NoSQL cluster.
You can only start the cluster when its status is "stopped".

Cluster starting process may take some time to complete.
*/
func (a *Client) StartNoSQLClusterV2(params *StartNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartNoSQLClusterV2NoContent, *StartNoSQLClusterV2BadRequest, *StartNoSQLClusterV2Unauthorized, *StartNoSQLClusterV2Forbidden, *StartNoSQLClusterV2NotFound, *StartNoSQLClusterV2InternalServerError, *StartNoSQLClusterV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStartNoSQLClusterV2Params()
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
		ID:                 "StartNoSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters/start",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StartNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *StartNoSQLClusterV2NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *StartNoSQLClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *StartNoSQLClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *StartNoSQLClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *StartNoSQLClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *StartNoSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *StartNoSQLClusterV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StartNoSQLClusterV2Short start nosql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

Start NoSQL cluster.
You can only start the cluster when its status is "stopped".

Cluster starting process may take some time to complete.
*/
func (a *Client) StartNoSQLClusterV2Short(params *StartNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartNoSQLClusterV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStartNoSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "StartNoSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters/start",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StartNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StartNoSQLClusterV2NoContent:
		return v, nil
	case *StartNoSQLClusterV2BadRequest:
		return nil, v
	case *StartNoSQLClusterV2Unauthorized:
		return nil, v
	case *StartNoSQLClusterV2Forbidden:
		return nil, v
	case *StartNoSQLClusterV2NotFound:
		return nil, v
	case *StartNoSQLClusterV2InternalServerError:
		return nil, v
	case *StartNoSQLClusterV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use StopNoSQLClusterV2Short instead.

StopNoSQLClusterV2 stop nosql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

Stop NoSQL cluster.
You can only start the cluster when its status is "available".

Cluster stopping process may take some time to complete.
*/
func (a *Client) StopNoSQLClusterV2(params *StopNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopNoSQLClusterV2NoContent, *StopNoSQLClusterV2BadRequest, *StopNoSQLClusterV2Unauthorized, *StopNoSQLClusterV2Forbidden, *StopNoSQLClusterV2NotFound, *StopNoSQLClusterV2InternalServerError, *StopNoSQLClusterV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStopNoSQLClusterV2Params()
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
		ID:                 "StopNoSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StopNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *StopNoSQLClusterV2NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *StopNoSQLClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *StopNoSQLClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *StopNoSQLClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *StopNoSQLClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *StopNoSQLClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *StopNoSQLClusterV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StopNoSQLClusterV2Short stop nosql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

Stop NoSQL cluster.
You can only start the cluster when its status is "available".

Cluster stopping process may take some time to complete.
*/
func (a *Client) StopNoSQLClusterV2Short(params *StopNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopNoSQLClusterV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStopNoSQLClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "StopNoSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StopNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StopNoSQLClusterV2NoContent:
		return v, nil
	case *StopNoSQLClusterV2BadRequest:
		return nil, v
	case *StopNoSQLClusterV2Unauthorized:
		return nil, v
	case *StopNoSQLClusterV2Forbidden:
		return nil, v
	case *StopNoSQLClusterV2NotFound:
		return nil, v
	case *StopNoSQLClusterV2InternalServerError:
		return nil, v
	case *StopNoSQLClusterV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetNoSQLAccessTunnelV2Short instead.

GetNoSQLAccessTunnelV2 get nosql access tunnel
Returns the NoSQL access tunnel information for a specified game namespace
*/
func (a *Client) GetNoSQLAccessTunnelV2(params *GetNoSQLAccessTunnelV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLAccessTunnelV2OK, *GetNoSQLAccessTunnelV2Unauthorized, *GetNoSQLAccessTunnelV2NotFound, *GetNoSQLAccessTunnelV2InternalServerError, *GetNoSQLAccessTunnelV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNoSQLAccessTunnelV2Params()
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
		ID:                 "GetNoSQLAccessTunnelV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/tunnels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNoSQLAccessTunnelV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetNoSQLAccessTunnelV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetNoSQLAccessTunnelV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetNoSQLAccessTunnelV2NotFound:
		return nil, nil, v, nil, nil, nil

	case *GetNoSQLAccessTunnelV2InternalServerError:
		return nil, nil, nil, v, nil, nil

	case *GetNoSQLAccessTunnelV2ServiceUnavailable:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNoSQLAccessTunnelV2Short get nosql access tunnel
Returns the NoSQL access tunnel information for a specified game namespace
*/
func (a *Client) GetNoSQLAccessTunnelV2Short(params *GetNoSQLAccessTunnelV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLAccessTunnelV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNoSQLAccessTunnelV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetNoSQLAccessTunnelV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/tunnels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNoSQLAccessTunnelV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNoSQLAccessTunnelV2OK:
		return v, nil
	case *GetNoSQLAccessTunnelV2Unauthorized:
		return nil, v
	case *GetNoSQLAccessTunnelV2NotFound:
		return nil, v
	case *GetNoSQLAccessTunnelV2InternalServerError:
		return nil, v
	case *GetNoSQLAccessTunnelV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
