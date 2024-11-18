// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package deployment

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new deployment API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for deployment API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateDeploymentV1(params *CreateDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV1Created, *CreateDeploymentV1BadRequest, *CreateDeploymentV1Unauthorized, *CreateDeploymentV1Forbidden, *CreateDeploymentV1NotFound, *CreateDeploymentV1InternalServerError, error)
	CreateDeploymentV1Short(params *CreateDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV1Created, error)
	GetListOfDeploymentV1(params *GetListOfDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV1OK, *GetListOfDeploymentV1BadRequest, *GetListOfDeploymentV1Unauthorized, *GetListOfDeploymentV1Forbidden, *GetListOfDeploymentV1InternalServerError, error)
	GetListOfDeploymentV1Short(params *GetListOfDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV1OK, error)
	GetDeploymentV1(params *GetDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV1OK, *GetDeploymentV1Unauthorized, *GetDeploymentV1Forbidden, *GetDeploymentV1NotFound, *GetDeploymentV1InternalServerError, error)
	GetDeploymentV1Short(params *GetDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV1OK, error)
	DeleteDeploymentV1(params *DeleteDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV1NoContent, *DeleteDeploymentV1Unauthorized, *DeleteDeploymentV1Forbidden, *DeleteDeploymentV1NotFound, *DeleteDeploymentV1InternalServerError, error)
	DeleteDeploymentV1Short(params *DeleteDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV1NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateDeploymentV1Short instead.

CreateDeploymentV1 creates deployment
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [CREATE]`

Creates Deployment for extend service

This endpoint intended to apply the helm release or deploying the custom service image.
Logic in this endpoint:
- Getting the repo from AppHistory table and image tag from request
- Getting the Helm Manifest template from S3
- Filling the Helm Manifest values
- Installing the Helm Manifest to deploy the custom service image into K8s based on given namespace
- Storing the filled Helm Manifest to S3
- Storing the Deployment information to Database

Required: Valid Access Token
*/
func (a *Client) CreateDeploymentV1(params *CreateDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV1Created, *CreateDeploymentV1BadRequest, *CreateDeploymentV1Unauthorized, *CreateDeploymentV1Forbidden, *CreateDeploymentV1NotFound, *CreateDeploymentV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateDeploymentV1Params()
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
		ID:                 "CreateDeploymentV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateDeploymentV1Created:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateDeploymentV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateDeploymentV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateDeploymentV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateDeploymentV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateDeploymentV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateDeploymentV1Short creates deployment
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [CREATE]`

Creates Deployment for extend service

This endpoint intended to apply the helm release or deploying the custom service image.
Logic in this endpoint:
- Getting the repo from AppHistory table and image tag from request
- Getting the Helm Manifest template from S3
- Filling the Helm Manifest values
- Installing the Helm Manifest to deploy the custom service image into K8s based on given namespace
- Storing the filled Helm Manifest to S3
- Storing the Deployment information to Database

Required: Valid Access Token
*/
func (a *Client) CreateDeploymentV1Short(params *CreateDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateDeploymentV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateDeploymentV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateDeploymentV1Created:
		return v, nil
	case *CreateDeploymentV1BadRequest:
		return nil, v
	case *CreateDeploymentV1Unauthorized:
		return nil, v
	case *CreateDeploymentV1Forbidden:
		return nil, v
	case *CreateDeploymentV1NotFound:
		return nil, v
	case *CreateDeploymentV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetListOfDeploymentV1Short instead.

GetListOfDeploymentV1 fetches the list of deployments
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

Filters the List of Deployments

This endpoint intended to get list of Deployment done for the given publisher and game.

Required: Valid Access Token
*/
func (a *Client) GetListOfDeploymentV1(params *GetListOfDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV1OK, *GetListOfDeploymentV1BadRequest, *GetListOfDeploymentV1Unauthorized, *GetListOfDeploymentV1Forbidden, *GetListOfDeploymentV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfDeploymentV1Params()
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
		ID:                 "GetListOfDeploymentV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListOfDeploymentV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetListOfDeploymentV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetListOfDeploymentV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetListOfDeploymentV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetListOfDeploymentV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListOfDeploymentV1Short fetches the list of deployments
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

Filters the List of Deployments

This endpoint intended to get list of Deployment done for the given publisher and game.

Required: Valid Access Token
*/
func (a *Client) GetListOfDeploymentV1Short(params *GetListOfDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfDeploymentV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListOfDeploymentV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListOfDeploymentV1OK:
		return v, nil
	case *GetListOfDeploymentV1BadRequest:
		return nil, v
	case *GetListOfDeploymentV1Unauthorized:
		return nil, v
	case *GetListOfDeploymentV1Forbidden:
		return nil, v
	case *GetListOfDeploymentV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetDeploymentV1Short instead.

GetDeploymentV1 get deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

Get Deployment information by given DeploymentID

This endpoint intended to get Deployment information by given Deployment ID from Deployment Table.

Required: Valid Access Token
*/
func (a *Client) GetDeploymentV1(params *GetDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV1OK, *GetDeploymentV1Unauthorized, *GetDeploymentV1Forbidden, *GetDeploymentV1NotFound, *GetDeploymentV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDeploymentV1Params()
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
		ID:                 "GetDeploymentV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetDeploymentV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetDeploymentV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetDeploymentV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetDeploymentV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetDeploymentV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetDeploymentV1Short get deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

Get Deployment information by given DeploymentID

This endpoint intended to get Deployment information by given Deployment ID from Deployment Table.

Required: Valid Access Token
*/
func (a *Client) GetDeploymentV1Short(params *GetDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDeploymentV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetDeploymentV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDeploymentV1OK:
		return v, nil
	case *GetDeploymentV1Unauthorized:
		return nil, v
	case *GetDeploymentV1Forbidden:
		return nil, v
	case *GetDeploymentV1NotFound:
		return nil, v
	case *GetDeploymentV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteDeploymentV1Short instead.

DeleteDeploymentV1 delete deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [DELETE]`

Delete Deployment information by given DeploymentID

This endpoint intended to delete helm release object and update the deleted_at in DB by given Deployment ID.

Required: Valid Access Token
*/
func (a *Client) DeleteDeploymentV1(params *DeleteDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV1NoContent, *DeleteDeploymentV1Unauthorized, *DeleteDeploymentV1Forbidden, *DeleteDeploymentV1NotFound, *DeleteDeploymentV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDeploymentV1Params()
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
		ID:                 "DeleteDeploymentV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteDeploymentV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteDeploymentV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteDeploymentV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteDeploymentV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteDeploymentV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteDeploymentV1Short delete deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [DELETE]`

Delete Deployment information by given DeploymentID

This endpoint intended to delete helm release object and update the deleted_at in DB by given Deployment ID.

Required: Valid Access Token
*/
func (a *Client) DeleteDeploymentV1Short(params *DeleteDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDeploymentV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteDeploymentV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDeploymentV1NoContent:
		return v, nil
	case *DeleteDeploymentV1Unauthorized:
		return nil, v
	case *DeleteDeploymentV1Forbidden:
		return nil, v
	case *DeleteDeploymentV1NotFound:
		return nil, v
	case *DeleteDeploymentV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
