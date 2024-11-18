// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package deployment_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new deployment v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for deployment v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateDeploymentV2(params *CreateDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV2Created, *CreateDeploymentV2BadRequest, *CreateDeploymentV2Unauthorized, *CreateDeploymentV2Forbidden, *CreateDeploymentV2NotFound, *CreateDeploymentV2InternalServerError, error)
	CreateDeploymentV2Short(params *CreateDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV2Created, error)
	GetListOfDeploymentV2(params *GetListOfDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV2OK, *GetListOfDeploymentV2BadRequest, *GetListOfDeploymentV2Unauthorized, *GetListOfDeploymentV2Forbidden, *GetListOfDeploymentV2InternalServerError, error)
	GetListOfDeploymentV2Short(params *GetListOfDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV2OK, error)
	GetDeploymentV2(params *GetDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV2OK, *GetDeploymentV2Unauthorized, *GetDeploymentV2Forbidden, *GetDeploymentV2NotFound, *GetDeploymentV2InternalServerError, error)
	GetDeploymentV2Short(params *GetDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV2OK, error)
	DeleteDeploymentV2(params *DeleteDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV2NoContent, *DeleteDeploymentV2Unauthorized, *DeleteDeploymentV2Forbidden, *DeleteDeploymentV2NotFound, *DeleteDeploymentV2InternalServerError, error)
	DeleteDeploymentV2Short(params *DeleteDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV2NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateDeploymentV2Short instead.

CreateDeploymentV2 creates deployment
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [CREATE]`

Creates Deployment for extend service

This Endpoint will create new deployment and apply all of the secrets and variable as environment variable

Required:
- Valid Access Token
- Valid Image Version Created on Uploading image with docker or other method
- Valid App name
- Valid Namespace name
*/
func (a *Client) CreateDeploymentV2(params *CreateDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV2Created, *CreateDeploymentV2BadRequest, *CreateDeploymentV2Unauthorized, *CreateDeploymentV2Forbidden, *CreateDeploymentV2NotFound, *CreateDeploymentV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateDeploymentV2Params()
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
		ID:                 "CreateDeploymentV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateDeploymentV2Created:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateDeploymentV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateDeploymentV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateDeploymentV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateDeploymentV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateDeploymentV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateDeploymentV2Short creates deployment
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [CREATE]`

Creates Deployment for extend service

This Endpoint will create new deployment and apply all of the secrets and variable as environment variable

Required:
- Valid Access Token
- Valid Image Version Created on Uploading image with docker or other method
- Valid App name
- Valid Namespace name
*/
func (a *Client) CreateDeploymentV2Short(params *CreateDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateDeploymentV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateDeploymentV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateDeploymentV2Created:
		return v, nil
	case *CreateDeploymentV2BadRequest:
		return nil, v
	case *CreateDeploymentV2Unauthorized:
		return nil, v
	case *CreateDeploymentV2Forbidden:
		return nil, v
	case *CreateDeploymentV2NotFound:
		return nil, v
	case *CreateDeploymentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetListOfDeploymentV2Short instead.

GetListOfDeploymentV2 fetches the list of deployments
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

Filters the List of Deployments

This endpoint intended to get list of Deployment done for the given publisher and game.
Request :
- appIds : list of app ids
- deploymentIds: list of deployment ids
- statuses:
deployment-in-progress
deployment-failed
deployment-timeout
deployment-running
deployment-down
Required: Valid Access Token
*/
func (a *Client) GetListOfDeploymentV2(params *GetListOfDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV2OK, *GetListOfDeploymentV2BadRequest, *GetListOfDeploymentV2Unauthorized, *GetListOfDeploymentV2Forbidden, *GetListOfDeploymentV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfDeploymentV2Params()
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
		ID:                 "GetListOfDeploymentV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListOfDeploymentV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetListOfDeploymentV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetListOfDeploymentV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetListOfDeploymentV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetListOfDeploymentV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListOfDeploymentV2Short fetches the list of deployments
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

Filters the List of Deployments

This endpoint intended to get list of Deployment done for the given publisher and game.
Request :
- appIds : list of app ids
- deploymentIds: list of deployment ids
- statuses:
deployment-in-progress
deployment-failed
deployment-timeout
deployment-running
deployment-down
Required: Valid Access Token
*/
func (a *Client) GetListOfDeploymentV2Short(params *GetListOfDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfDeploymentV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListOfDeploymentV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListOfDeploymentV2OK:
		return v, nil
	case *GetListOfDeploymentV2BadRequest:
		return nil, v
	case *GetListOfDeploymentV2Unauthorized:
		return nil, v
	case *GetListOfDeploymentV2Forbidden:
		return nil, v
	case *GetListOfDeploymentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetDeploymentV2Short instead.

GetDeploymentV2 get deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

Get Deployment information by given DeploymentID

This endpoint intended to get Deployment information.

Required: Valid Access Token
*/
func (a *Client) GetDeploymentV2(params *GetDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV2OK, *GetDeploymentV2Unauthorized, *GetDeploymentV2Forbidden, *GetDeploymentV2NotFound, *GetDeploymentV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDeploymentV2Params()
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
		ID:                 "GetDeploymentV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetDeploymentV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetDeploymentV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetDeploymentV2Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetDeploymentV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetDeploymentV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetDeploymentV2Short get deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

Get Deployment information by given DeploymentID

This endpoint intended to get Deployment information.

Required: Valid Access Token
*/
func (a *Client) GetDeploymentV2Short(params *GetDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDeploymentV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetDeploymentV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDeploymentV2OK:
		return v, nil
	case *GetDeploymentV2Unauthorized:
		return nil, v
	case *GetDeploymentV2Forbidden:
		return nil, v
	case *GetDeploymentV2NotFound:
		return nil, v
	case *GetDeploymentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteDeploymentV2Short instead.

DeleteDeploymentV2 delete deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [DELETE]`

Delete Deployment information by given DeploymentID

This endpoint will delete release object for the service deployment in the cluster

Required: Valid Access Token
*/
func (a *Client) DeleteDeploymentV2(params *DeleteDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV2NoContent, *DeleteDeploymentV2Unauthorized, *DeleteDeploymentV2Forbidden, *DeleteDeploymentV2NotFound, *DeleteDeploymentV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDeploymentV2Params()
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
		ID:                 "DeleteDeploymentV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteDeploymentV2NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteDeploymentV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteDeploymentV2Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteDeploymentV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteDeploymentV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteDeploymentV2Short delete deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [DELETE]`

Delete Deployment information by given DeploymentID

This endpoint will delete release object for the service deployment in the cluster

Required: Valid Access Token
*/
func (a *Client) DeleteDeploymentV2Short(params *DeleteDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDeploymentV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteDeploymentV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDeploymentV2NoContent:
		return v, nil
	case *DeleteDeploymentV2Unauthorized:
		return nil, v
	case *DeleteDeploymentV2Forbidden:
		return nil, v
	case *DeleteDeploymentV2NotFound:
		return nil, v
	case *DeleteDeploymentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
