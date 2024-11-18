// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package image

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new image API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for image API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAppImageListV1(params *GetAppImageListV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV1OK, *GetAppImageListV1Unauthorized, *GetAppImageListV1Forbidden, *GetAppImageListV1NotFound, *GetAppImageListV1InternalServerError, error)
	GetAppImageListV1Short(params *GetAppImageListV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV1OK, error)
	DeleteAppImagesV1(params *DeleteAppImagesV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV1NoContent, *DeleteAppImagesV1Unauthorized, *DeleteAppImagesV1Forbidden, *DeleteAppImagesV1NotFound, *DeleteAppImagesV1InternalServerError, error)
	DeleteAppImagesV1Short(params *DeleteAppImagesV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV1NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetAppImageListV1Short instead.

GetAppImageListV1 get a list of container images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [READ]`

Get a list of container images

Default 'cached' parameter is 'true'
*/
func (a *Client) GetAppImageListV1(params *GetAppImageListV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV1OK, *GetAppImageListV1Unauthorized, *GetAppImageListV1Forbidden, *GetAppImageListV1NotFound, *GetAppImageListV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppImageListV1Params()
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
		ID:                 "GetAppImageListV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppImageListV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAppImageListV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetAppImageListV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetAppImageListV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetAppImageListV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetAppImageListV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppImageListV1Short get a list of container images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [READ]`

Get a list of container images

Default 'cached' parameter is 'true'
*/
func (a *Client) GetAppImageListV1Short(params *GetAppImageListV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppImageListV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAppImageListV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppImageListV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppImageListV1OK:
		return v, nil
	case *GetAppImageListV1Unauthorized:
		return nil, v
	case *GetAppImageListV1Forbidden:
		return nil, v
	case *GetAppImageListV1NotFound:
		return nil, v
	case *GetAppImageListV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteAppImagesV1Short instead.

DeleteAppImagesV1 deletes the images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [DELETE]`

Deletes the images uploaded to the repository
*/
func (a *Client) DeleteAppImagesV1(params *DeleteAppImagesV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV1NoContent, *DeleteAppImagesV1Unauthorized, *DeleteAppImagesV1Forbidden, *DeleteAppImagesV1NotFound, *DeleteAppImagesV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppImagesV1Params()
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
		ID:                 "DeleteAppImagesV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppImagesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteAppImagesV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteAppImagesV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteAppImagesV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteAppImagesV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteAppImagesV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAppImagesV1Short deletes the images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [DELETE]`

Deletes the images uploaded to the repository
*/
func (a *Client) DeleteAppImagesV1Short(params *DeleteAppImagesV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppImagesV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAppImagesV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppImagesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAppImagesV1NoContent:
		return v, nil
	case *DeleteAppImagesV1Unauthorized:
		return nil, v
	case *DeleteAppImagesV1Forbidden:
		return nil, v
	case *DeleteAppImagesV1NotFound:
		return nil, v
	case *DeleteAppImagesV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
