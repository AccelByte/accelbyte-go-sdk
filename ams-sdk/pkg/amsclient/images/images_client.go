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
	ImageList(params *ImageListParams, authInfo runtime.ClientAuthInfoWriter) (*ImageListOK, *ImageListUnauthorized, *ImageListForbidden, *ImageListNotFound, *ImageListInternalServerError, error)
	ImageListShort(params *ImageListParams, authInfo runtime.ClientAuthInfoWriter) (*ImageListOK, error)
	ImagesStorage(params *ImagesStorageParams, authInfo runtime.ClientAuthInfoWriter) (*ImagesStorageOK, *ImagesStorageUnauthorized, *ImagesStorageForbidden, *ImagesStorageNotFound, *ImagesStorageInternalServerError, error)
	ImagesStorageShort(params *ImagesStorageParams, authInfo runtime.ClientAuthInfoWriter) (*ImagesStorageOK, error)
	ImageGet(params *ImageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ImageGetOK, *ImageGetUnauthorized, *ImageGetForbidden, *ImageGetNotFound, *ImageGetInternalServerError, error)
	ImageGetShort(params *ImageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ImageGetOK, error)
	ImageMarkForDeletion(params *ImageMarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageMarkForDeletionAccepted, *ImageMarkForDeletionUnauthorized, *ImageMarkForDeletionForbidden, *ImageMarkForDeletionNotFound, *ImageMarkForDeletionPreconditionFailed, *ImageMarkForDeletionInternalServerError, error)
	ImageMarkForDeletionShort(params *ImageMarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageMarkForDeletionAccepted, error)
	ImagePatch(params *ImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*ImagePatchOK, *ImagePatchUnauthorized, *ImagePatchForbidden, *ImagePatchNotFound, *ImagePatchInternalServerError, error)
	ImagePatchShort(params *ImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*ImagePatchOK, error)
	ImageUnmarkForDeletion(params *ImageUnmarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageUnmarkForDeletionAccepted, *ImageUnmarkForDeletionUnauthorized, *ImageUnmarkForDeletionForbidden, *ImageUnmarkForDeletionNotFound, *ImageUnmarkForDeletionPreconditionFailed, *ImageUnmarkForDeletionInternalServerError, error)
	ImageUnmarkForDeletionShort(params *ImageUnmarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageUnmarkForDeletionAccepted, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ImageListShort instead.

ImageList get a list of existing images
Returns images which exist (uploaded, uploading, or building) in the linked account. This route fails if no account is linked

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
ImageListShort get a list of existing images
Returns images which exist (uploaded, uploading, or building) in the linked account. This route fails if no account is linked

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]
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
Deprecated: 2022-08-10 - Use ImagesStorageShort instead.

ImagesStorage get current usage for images storage
Returns information regarding the account's usage for images storage including the free tier quota

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]
*/
func (a *Client) ImagesStorage(params *ImagesStorageParams, authInfo runtime.ClientAuthInfoWriter) (*ImagesStorageOK, *ImagesStorageUnauthorized, *ImagesStorageForbidden, *ImagesStorageNotFound, *ImagesStorageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImagesStorageParams()
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
		ID:                 "ImagesStorage",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images-storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImagesStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImagesStorageOK:
		return v, nil, nil, nil, nil, nil

	case *ImagesStorageUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *ImagesStorageForbidden:
		return nil, nil, v, nil, nil, nil

	case *ImagesStorageNotFound:
		return nil, nil, nil, v, nil, nil

	case *ImagesStorageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImagesStorageShort get current usage for images storage
Returns information regarding the account's usage for images storage including the free tier quota

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]
*/
func (a *Client) ImagesStorageShort(params *ImagesStorageParams, authInfo runtime.ClientAuthInfoWriter) (*ImagesStorageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImagesStorageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImagesStorage",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images-storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImagesStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImagesStorageOK:
		return v, nil
	case *ImagesStorageUnauthorized:
		return nil, v
	case *ImagesStorageForbidden:
		return nil, v
	case *ImagesStorageNotFound:
		return nil, v
	case *ImagesStorageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImageGetShort instead.

ImageGet get image details.
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
ImageGetShort get image details.
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]
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
Deprecated: 2022-08-10 - Use ImageMarkForDeletionShort instead.

ImageMarkForDeletion mark the image for deletion
Marks an image for deletion. The image will stop being available for fleets and will eventually be deleted.

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [DELETE]
*/
func (a *Client) ImageMarkForDeletion(params *ImageMarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageMarkForDeletionAccepted, *ImageMarkForDeletionUnauthorized, *ImageMarkForDeletionForbidden, *ImageMarkForDeletionNotFound, *ImageMarkForDeletionPreconditionFailed, *ImageMarkForDeletionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageMarkForDeletionParams()
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
		ID:                 "ImageMarkForDeletion",
		Method:             "DELETE",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageMarkForDeletionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImageMarkForDeletionAccepted:
		return v, nil, nil, nil, nil, nil, nil

	case *ImageMarkForDeletionUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *ImageMarkForDeletionForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *ImageMarkForDeletionNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *ImageMarkForDeletionPreconditionFailed:
		return nil, nil, nil, nil, v, nil, nil

	case *ImageMarkForDeletionInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImageMarkForDeletionShort mark the image for deletion
Marks an image for deletion. The image will stop being available for fleets and will eventually be deleted.

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [DELETE]
*/
func (a *Client) ImageMarkForDeletionShort(params *ImageMarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageMarkForDeletionAccepted, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageMarkForDeletionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImageMarkForDeletion",
		Method:             "DELETE",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageMarkForDeletionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageMarkForDeletionAccepted:
		return v, nil
	case *ImageMarkForDeletionUnauthorized:
		return nil, v
	case *ImageMarkForDeletionForbidden:
		return nil, v
	case *ImageMarkForDeletionNotFound:
		return nil, v
	case *ImageMarkForDeletionPreconditionFailed:
		return nil, v
	case *ImageMarkForDeletionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImagePatchShort instead.

ImagePatch edit the image
This allows editing of the image name, toggling `IsProtected`, or adding & removal of tags

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [UPDATE]
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
ImagePatchShort edit the image
This allows editing of the image name, toggling `IsProtected`, or adding & removal of tags

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [UPDATE]
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

/*
Deprecated: 2022-08-10 - Use ImageUnmarkForDeletionShort instead.

ImageUnmarkForDeletion unmarks the image for deletion
Unmarks an image for deletion. The image will be available for fleets.

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [DELETE]
*/
func (a *Client) ImageUnmarkForDeletion(params *ImageUnmarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageUnmarkForDeletionAccepted, *ImageUnmarkForDeletionUnauthorized, *ImageUnmarkForDeletionForbidden, *ImageUnmarkForDeletionNotFound, *ImageUnmarkForDeletionPreconditionFailed, *ImageUnmarkForDeletionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageUnmarkForDeletionParams()
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
		ID:                 "ImageUnmarkForDeletion",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageUnmarkForDeletionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImageUnmarkForDeletionAccepted:
		return v, nil, nil, nil, nil, nil, nil

	case *ImageUnmarkForDeletionUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *ImageUnmarkForDeletionForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *ImageUnmarkForDeletionNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *ImageUnmarkForDeletionPreconditionFailed:
		return nil, nil, nil, nil, v, nil, nil

	case *ImageUnmarkForDeletionInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImageUnmarkForDeletionShort unmarks the image for deletion
Unmarks an image for deletion. The image will be available for fleets.

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [DELETE]
*/
func (a *Client) ImageUnmarkForDeletionShort(params *ImageUnmarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageUnmarkForDeletionAccepted, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageUnmarkForDeletionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImageUnmarkForDeletion",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageUnmarkForDeletionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageUnmarkForDeletionAccepted:
		return v, nil
	case *ImageUnmarkForDeletionUnauthorized:
		return nil, v
	case *ImageUnmarkForDeletionForbidden:
		return nil, v
	case *ImageUnmarkForDeletionNotFound:
		return nil, v
	case *ImageUnmarkForDeletionPreconditionFailed:
		return nil, v
	case *ImageUnmarkForDeletionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
