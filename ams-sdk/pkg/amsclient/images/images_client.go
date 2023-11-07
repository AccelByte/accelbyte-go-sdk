// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package images

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new images API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for images API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	FleetArtifactSamplingRulesGet(params *FleetArtifactSamplingRulesGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesGetOK, *FleetArtifactSamplingRulesGetBadRequest, *FleetArtifactSamplingRulesGetUnauthorized, *FleetArtifactSamplingRulesGetForbidden, *FleetArtifactSamplingRulesGetNotFound, *FleetArtifactSamplingRulesGetInternalServerError, error)
	FleetArtifactSamplingRulesGetShort(params *FleetArtifactSamplingRulesGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesGetOK, error)
	ImageList(params *ImageListParams, authInfo runtime.ClientAuthInfoWriter) (*ImageListOK, *ImageListUnauthorized, *ImageListForbidden, *ImageListNotFound, *ImageListInternalServerError, error)
	ImageListShort(params *ImageListParams, authInfo runtime.ClientAuthInfoWriter) (*ImageListOK, error)
	ImageGet(params *ImageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ImageGetOK, *ImageGetUnauthorized, *ImageGetForbidden, *ImageGetNotFound, *ImageGetInternalServerError, error)
	ImageGetShort(params *ImageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ImageGetOK, error)
	ImagePatch(params *ImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*ImagePatchOK, *ImagePatchUnauthorized, *ImagePatchForbidden, *ImagePatchNotFound, *ImagePatchInternalServerError, error)
	ImagePatchShort(params *ImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*ImagePatchOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use FleetArtifactSamplingRulesGetShort instead.

FleetArtifactSamplingRulesGet get the sampling rules for a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACTS [READ]
*/
func (a *Client) FleetArtifactSamplingRulesGet(params *FleetArtifactSamplingRulesGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesGetOK, *FleetArtifactSamplingRulesGetBadRequest, *FleetArtifactSamplingRulesGetUnauthorized, *FleetArtifactSamplingRulesGetForbidden, *FleetArtifactSamplingRulesGetNotFound, *FleetArtifactSamplingRulesGetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetArtifactSamplingRulesGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "FleetArtifactSamplingRulesGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetArtifactSamplingRulesGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *FleetArtifactSamplingRulesGetOK:
		return v, nil, nil, nil, nil, nil, nil

	case *FleetArtifactSamplingRulesGetBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *FleetArtifactSamplingRulesGetUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *FleetArtifactSamplingRulesGetForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *FleetArtifactSamplingRulesGetNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *FleetArtifactSamplingRulesGetInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetArtifactSamplingRulesGetShort get the sampling rules for a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACTS [READ]
*/
func (a *Client) FleetArtifactSamplingRulesGetShort(params *FleetArtifactSamplingRulesGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetArtifactSamplingRulesGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "FleetArtifactSamplingRulesGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetArtifactSamplingRulesGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetArtifactSamplingRulesGetOK:
		return v, nil
	case *FleetArtifactSamplingRulesGetBadRequest:
		return nil, v
	case *FleetArtifactSamplingRulesGetUnauthorized:
		return nil, v
	case *FleetArtifactSamplingRulesGetForbidden:
		return nil, v
	case *FleetArtifactSamplingRulesGetNotFound:
		return nil, v
	case *FleetArtifactSamplingRulesGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImageListShort instead.

ImageList get a list of images which exist (uploaded, uploading, or building) in the linked account.  fails if no account is linked
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) ImageList(params *ImageListParams, authInfo runtime.ClientAuthInfoWriter) (*ImageListOK, *ImageListUnauthorized, *ImageListForbidden, *ImageListNotFound, *ImageListInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImageList",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImageListOK:
		return v, nil, nil, nil, nil, nil

	case *ImageListUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *ImageListForbidden:
		return nil, nil, v, nil, nil, nil

	case *ImageListNotFound:
		return nil, nil, nil, v, nil, nil

	case *ImageListInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImageListShort get a list of images which exist (uploaded, uploading, or building) in the linked account.  fails if no account is linked
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) ImageListShort(params *ImageListParams, authInfo runtime.ClientAuthInfoWriter) (*ImageListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImageList",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageListOK:
		return v, nil
	case *ImageListUnauthorized:
		return nil, v
	case *ImageListForbidden:
		return nil, v
	case *ImageListNotFound:
		return nil, v
	case *ImageListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImageGetShort instead.

ImageGet get details about an image.
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) ImageGet(params *ImageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ImageGetOK, *ImageGetUnauthorized, *ImageGetForbidden, *ImageGetNotFound, *ImageGetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImageGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImageGetOK:
		return v, nil, nil, nil, nil, nil

	case *ImageGetUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *ImageGetForbidden:
		return nil, nil, v, nil, nil, nil

	case *ImageGetNotFound:
		return nil, nil, nil, v, nil, nil

	case *ImageGetInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImageGetShort get details about an image.
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) ImageGetShort(params *ImageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ImageGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImageGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageGetOK:
		return v, nil
	case *ImageGetUnauthorized:
		return nil, v
	case *ImageGetForbidden:
		return nil, v
	case *ImageGetNotFound:
		return nil, v
	case *ImageGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImagePatchShort instead.

ImagePatch edit the image name, toggle isprotected, or add/remove tags
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [UPDATE]
*/
func (a *Client) ImagePatch(params *ImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*ImagePatchOK, *ImagePatchUnauthorized, *ImagePatchForbidden, *ImagePatchNotFound, *ImagePatchInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImagePatchParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImagePatch",
		Method:             "PATCH",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImagePatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImagePatchOK:
		return v, nil, nil, nil, nil, nil

	case *ImagePatchUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *ImagePatchForbidden:
		return nil, nil, v, nil, nil, nil

	case *ImagePatchNotFound:
		return nil, nil, nil, v, nil, nil

	case *ImagePatchInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImagePatchShort edit the image name, toggle isprotected, or add/remove tags
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [UPDATE]
*/
func (a *Client) ImagePatchShort(params *ImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*ImagePatchOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImagePatchParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImagePatch",
		Method:             "PATCH",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImagePatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImagePatchOK:
		return v, nil
	case *ImagePatchUnauthorized:
		return nil, v
	case *ImagePatchForbidden:
		return nil, v
	case *ImagePatchNotFound:
		return nil, v
	case *ImagePatchInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
