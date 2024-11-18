// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package image_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new image v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for image v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAppImageListV2(params *GetAppImageListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV2OK, *GetAppImageListV2Unauthorized, *GetAppImageListV2Forbidden, *GetAppImageListV2NotFound, *GetAppImageListV2InternalServerError, error)
	GetAppImageListV2Short(params *GetAppImageListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV2OK, error)
	DeleteAppImagesV2(params *DeleteAppImagesV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV2NoContent, *DeleteAppImagesV2Unauthorized, *DeleteAppImagesV2Forbidden, *DeleteAppImagesV2NotFound, *DeleteAppImagesV2InternalServerError, error)
	DeleteAppImagesV2Short(params *DeleteAppImagesV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV2NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetAppImageListV2Short instead.

GetAppImageListV2 get a list of container images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [READ]`

Get a list of container images

Default 'cached' parameter is 'true'
*/
func (a *Client) GetAppImageListV2(params *GetAppImageListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV2OK, *GetAppImageListV2Unauthorized, *GetAppImageListV2Forbidden, *GetAppImageListV2NotFound, *GetAppImageListV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppImageListV2Params()
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
		ID:                 "GetAppImageListV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppImageListV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAppImageListV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetAppImageListV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetAppImageListV2Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetAppImageListV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetAppImageListV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppImageListV2Short get a list of container images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [READ]`

Get a list of container images

Default 'cached' parameter is 'true'
*/
func (a *Client) GetAppImageListV2Short(params *GetAppImageListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppImageListV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAppImageListV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppImageListV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppImageListV2OK:
		return v, nil
	case *GetAppImageListV2Unauthorized:
		return nil, v
	case *GetAppImageListV2Forbidden:
		return nil, v
	case *GetAppImageListV2NotFound:
		return nil, v
	case *GetAppImageListV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteAppImagesV2Short instead.

DeleteAppImagesV2 delete app images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [DELETE]`

Deletes list of provided image tags from the app image repository
*/
func (a *Client) DeleteAppImagesV2(params *DeleteAppImagesV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV2NoContent, *DeleteAppImagesV2Unauthorized, *DeleteAppImagesV2Forbidden, *DeleteAppImagesV2NotFound, *DeleteAppImagesV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppImagesV2Params()
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
		ID:                 "DeleteAppImagesV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppImagesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteAppImagesV2NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteAppImagesV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteAppImagesV2Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteAppImagesV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteAppImagesV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAppImagesV2Short delete app images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [DELETE]`

Deletes list of provided image tags from the app image repository
*/
func (a *Client) DeleteAppImagesV2Short(params *DeleteAppImagesV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppImagesV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAppImagesV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppImagesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAppImagesV2NoContent:
		return v, nil
	case *DeleteAppImagesV2Unauthorized:
		return nil, v
	case *DeleteAppImagesV2Forbidden:
		return nil, v
	case *DeleteAppImagesV2NotFound:
		return nil, v
	case *DeleteAppImagesV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
