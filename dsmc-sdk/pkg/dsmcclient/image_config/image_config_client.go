// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package image_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new image config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for image config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	UpdateImage(params *UpdateImageParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateImageNoContent, *UpdateImageBadRequest, *UpdateImageUnauthorized, *UpdateImageInternalServerError, error)
	UpdateImageShort(params *UpdateImageParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateImageNoContent, error)
	CreateImage(params *CreateImageParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImageNoContent, *CreateImageBadRequest, *CreateImageUnauthorized, *CreateImageConflict, *CreateImageInternalServerError, error)
	CreateImageShort(params *CreateImageParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImageNoContent, error)
	ImportImages(params *ImportImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ImportImagesOK, *ImportImagesBadRequest, *ImportImagesUnauthorized, *ImportImagesForbidden, *ImportImagesInternalServerError, error)
	ImportImagesShort(params *ImportImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ImportImagesOK, error)
	CreateImagePatch(params *CreateImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImagePatchCreated, *CreateImagePatchBadRequest, *CreateImagePatchUnauthorized, *CreateImagePatchConflict, *CreateImagePatchInternalServerError, error)
	CreateImagePatchShort(params *CreateImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImagePatchCreated, error)
	ListImages(params *ListImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ListImagesOK, *ListImagesBadRequest, *ListImagesUnauthorized, *ListImagesInternalServerError, error)
	ListImagesShort(params *ListImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ListImagesOK, error)
	DeleteImage(params *DeleteImageParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImageNoContent, *DeleteImageBadRequest, *DeleteImageUnauthorized, *DeleteImageNotFound, *DeleteImageUnprocessableEntity, *DeleteImageInternalServerError, error)
	DeleteImageShort(params *DeleteImageParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImageNoContent, error)
	ExportImages(params *ExportImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ExportImagesOK, *ExportImagesUnauthorized, *ExportImagesForbidden, *ExportImagesNotFound, *ExportImagesInternalServerError, error)
	ExportImagesShort(params *ExportImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ExportImagesOK, error)
	GetImageLimit(params *GetImageLimitParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageLimitOK, *GetImageLimitBadRequest, *GetImageLimitUnauthorized, *GetImageLimitInternalServerError, error)
	GetImageLimitShort(params *GetImageLimitParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageLimitOK, error)
	DeleteImagePatch(params *DeleteImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImagePatchNoContent, *DeleteImagePatchBadRequest, *DeleteImagePatchUnauthorized, *DeleteImagePatchNotFound, *DeleteImagePatchUnprocessableEntity, *DeleteImagePatchInternalServerError, error)
	DeleteImagePatchShort(params *DeleteImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImagePatchNoContent, error)
	GetImageDetail(params *GetImageDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageDetailOK, *GetImageDetailUnauthorized, *GetImageDetailNotFound, *GetImageDetailInternalServerError, error)
	GetImageDetailShort(params *GetImageDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageDetailOK, error)
	GetImagePatches(params *GetImagePatchesParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchesOK, *GetImagePatchesUnauthorized, *GetImagePatchesInternalServerError, error)
	GetImagePatchesShort(params *GetImagePatchesParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchesOK, error)
	GetImagePatchDetail(params *GetImagePatchDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchDetailOK, *GetImagePatchDetailUnauthorized, *GetImagePatchDetailNotFound, *GetImagePatchDetailInternalServerError, error)
	GetImagePatchDetailShort(params *GetImagePatchDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchDetailOK, error)
	ImageLimitClient(params *ImageLimitClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageLimitClientOK, *ImageLimitClientBadRequest, *ImageLimitClientUnauthorized, *ImageLimitClientInternalServerError, error)
	ImageLimitClientShort(params *ImageLimitClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageLimitClientOK, error)
	ImageDetailClient(params *ImageDetailClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageDetailClientOK, *ImageDetailClientUnauthorized, *ImageDetailClientNotFound, *ImageDetailClientInternalServerError, error)
	ImageDetailClientShort(params *ImageDetailClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageDetailClientOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use UpdateImageShort instead.

UpdateImage update image
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]
Required scope: social

This endpoint will update an image name and/or image persistent flag.

Sample image:
{
"namespace":"dewa",
"version":"1.0.0",
"image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0",
"persistent":false
}
```
*/
func (a *Client) UpdateImage(params *UpdateImageParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateImageNoContent, *UpdateImageBadRequest, *UpdateImageUnauthorized, *UpdateImageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateImageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateImage",
		Method:             "PUT",
		PathPattern:        "/dsmcontroller/admin/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateImageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateImageNoContent:
		return v, nil, nil, nil, nil

	case *UpdateImageBadRequest:
		return nil, v, nil, nil, nil

	case *UpdateImageUnauthorized:
		return nil, nil, v, nil, nil

	case *UpdateImageInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateImageShort update image
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]
Required scope: social

This endpoint will update an image name and/or image persistent flag.

Sample image:
{
"namespace":"dewa",
"version":"1.0.0",
"image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0",
"persistent":false
}
```
*/
func (a *Client) UpdateImageShort(params *UpdateImageParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateImageNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateImageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateImage",
		Method:             "PUT",
		PathPattern:        "/dsmcontroller/admin/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateImageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateImageNoContent:
		return v, nil
	case *UpdateImageBadRequest:
		return nil, v
	case *UpdateImageUnauthorized:
		return nil, v
	case *UpdateImageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateImageShort instead.

CreateImage create image
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint will create image.

Sample image:
{
"namespace":"dewa",
"version":"1.0.0",
"image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0",
"persistent":false
}
```
*/
func (a *Client) CreateImage(params *CreateImageParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImageNoContent, *CreateImageBadRequest, *CreateImageUnauthorized, *CreateImageConflict, *CreateImageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateImageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateImage",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateImageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateImageNoContent:
		return v, nil, nil, nil, nil, nil

	case *CreateImageBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateImageUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateImageConflict:
		return nil, nil, nil, v, nil, nil

	case *CreateImageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateImageShort create image
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint will create image.

Sample image:
{
"namespace":"dewa",
"version":"1.0.0",
"image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0",
"persistent":false
}
```
*/
func (a *Client) CreateImageShort(params *CreateImageParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImageNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateImageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateImage",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateImageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateImageNoContent:
		return v, nil
	case *CreateImageBadRequest:
		return nil, v
	case *CreateImageUnauthorized:
		return nil, v
	case *CreateImageConflict:
		return nil, v
	case *CreateImageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImportImagesShort instead.

ImportImages import images for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint import a dedicated servers images in a namespace.

The image will be upsert. Existing version will be replaced with imported image, will create new one if not found.

Example data inside imported file
[
{
"namespace": "dewa",
"image": "123456789.dkr.ecr.us-west-2.amazonaws.com/ds-dewa:0.0.1-alpha",
"version": "0.0.1",
"persistent": true
}
]
*/
func (a *Client) ImportImages(params *ImportImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ImportImagesOK, *ImportImagesBadRequest, *ImportImagesUnauthorized, *ImportImagesForbidden, *ImportImagesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportImagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImportImages",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/images/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportImagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImportImagesOK:
		return v, nil, nil, nil, nil, nil

	case *ImportImagesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ImportImagesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *ImportImagesForbidden:
		return nil, nil, nil, v, nil, nil

	case *ImportImagesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportImagesShort import images for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint import a dedicated servers images in a namespace.

The image will be upsert. Existing version will be replaced with imported image, will create new one if not found.

Example data inside imported file
[
{
"namespace": "dewa",
"image": "123456789.dkr.ecr.us-west-2.amazonaws.com/ds-dewa:0.0.1-alpha",
"version": "0.0.1",
"persistent": true
}
]
*/
func (a *Client) ImportImagesShort(params *ImportImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ImportImagesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportImagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImportImages",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/images/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportImagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportImagesOK:
		return v, nil
	case *ImportImagesBadRequest:
		return nil, v
	case *ImportImagesUnauthorized:
		return nil, v
	case *ImportImagesForbidden:
		return nil, v
	case *ImportImagesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateImagePatchShort instead.

CreateImagePatch create image patch
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint will create image patch.

Sample image:
{
"namespace":"dewa",
"version":"1.0.0",
"patchVersion":"1.0.0-patch",
"image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0-patch",
"persistent":false
}
```
*/
func (a *Client) CreateImagePatch(params *CreateImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImagePatchCreated, *CreateImagePatchBadRequest, *CreateImagePatchUnauthorized, *CreateImagePatchConflict, *CreateImagePatchInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateImagePatchParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateImagePatch",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/images/patches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateImagePatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateImagePatchCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateImagePatchBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateImagePatchUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateImagePatchConflict:
		return nil, nil, nil, v, nil, nil

	case *CreateImagePatchInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateImagePatchShort create image patch
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint will create image patch.

Sample image:
{
"namespace":"dewa",
"version":"1.0.0",
"patchVersion":"1.0.0-patch",
"image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0-patch",
"persistent":false
}
```
*/
func (a *Client) CreateImagePatchShort(params *CreateImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImagePatchCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateImagePatchParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateImagePatch",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/images/patches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateImagePatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateImagePatchCreated:
		return v, nil
	case *CreateImagePatchBadRequest:
		return nil, v
	case *CreateImagePatchUnauthorized:
		return nil, v
	case *CreateImagePatchConflict:
		return nil, v
	case *CreateImagePatchInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListImagesShort instead.

ListImages list all ds images
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint lists all of dedicated servers images.

Parameter Offset and Count is Required
*/
func (a *Client) ListImages(params *ListImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ListImagesOK, *ListImagesBadRequest, *ListImagesUnauthorized, *ListImagesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListImagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListImages",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListImagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListImagesOK:
		return v, nil, nil, nil, nil

	case *ListImagesBadRequest:
		return nil, v, nil, nil, nil

	case *ListImagesUnauthorized:
		return nil, nil, v, nil, nil

	case *ListImagesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListImagesShort list all ds images
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint lists all of dedicated servers images.

Parameter Offset and Count is Required
*/
func (a *Client) ListImagesShort(params *ListImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ListImagesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListImagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListImages",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListImagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListImagesOK:
		return v, nil
	case *ListImagesBadRequest:
		return nil, v
	case *ListImagesUnauthorized:
		return nil, v
	case *ListImagesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteImageShort instead.

DeleteImage delete an image
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social.

This endpoint will delete an image that specified in the request parameter.

Default image is cannot be deleted and will throw error 422 (Unprocessable entity).
*/
func (a *Client) DeleteImage(params *DeleteImageParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImageNoContent, *DeleteImageBadRequest, *DeleteImageUnauthorized, *DeleteImageNotFound, *DeleteImageUnprocessableEntity, *DeleteImageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteImageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteImage",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteImageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteImageNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteImageBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteImageUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteImageNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteImageUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteImageInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteImageShort delete an image
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social.

This endpoint will delete an image that specified in the request parameter.

Default image is cannot be deleted and will throw error 422 (Unprocessable entity).
*/
func (a *Client) DeleteImageShort(params *DeleteImageParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImageNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteImageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteImage",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteImageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteImageNoContent:
		return v, nil
	case *DeleteImageBadRequest:
		return nil, v
	case *DeleteImageUnauthorized:
		return nil, v
	case *DeleteImageNotFound:
		return nil, v
	case *DeleteImageUnprocessableEntity:
		return nil, v
	case *DeleteImageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExportImagesShort instead.

ExportImages export dsm controller images for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint export a dedicated servers images in a namespace.
*/
func (a *Client) ExportImages(params *ExportImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ExportImagesOK, *ExportImagesUnauthorized, *ExportImagesForbidden, *ExportImagesNotFound, *ExportImagesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportImagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ExportImages",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportImagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ExportImagesOK:
		return v, nil, nil, nil, nil, nil

	case *ExportImagesUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *ExportImagesForbidden:
		return nil, nil, v, nil, nil, nil

	case *ExportImagesNotFound:
		return nil, nil, nil, v, nil, nil

	case *ExportImagesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportImagesShort export dsm controller images for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint export a dedicated servers images in a namespace.
*/
func (a *Client) ExportImagesShort(params *ExportImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ExportImagesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportImagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ExportImages",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportImagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportImagesOK:
		return v, nil
	case *ExportImagesUnauthorized:
		return nil, v
	case *ExportImagesForbidden:
		return nil, v
	case *ExportImagesNotFound:
		return nil, v
	case *ExportImagesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetImageLimitShort instead.

GetImageLimit ds image limit
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get ds image limit for specific namespace
*/
func (a *Client) GetImageLimit(params *GetImageLimitParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageLimitOK, *GetImageLimitBadRequest, *GetImageLimitUnauthorized, *GetImageLimitInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImageLimitParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetImageLimit",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/limit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImageLimitReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetImageLimitOK:
		return v, nil, nil, nil, nil

	case *GetImageLimitBadRequest:
		return nil, v, nil, nil, nil

	case *GetImageLimitUnauthorized:
		return nil, nil, v, nil, nil

	case *GetImageLimitInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetImageLimitShort ds image limit
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get ds image limit for specific namespace
*/
func (a *Client) GetImageLimitShort(params *GetImageLimitParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageLimitOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImageLimitParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetImageLimit",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/limit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImageLimitReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetImageLimitOK:
		return v, nil
	case *GetImageLimitBadRequest:
		return nil, v
	case *GetImageLimitUnauthorized:
		return nil, v
	case *GetImageLimitInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteImagePatchShort instead.

DeleteImagePatch delete an image patch
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint will delete an image patch that specified in the request parameter
*/
func (a *Client) DeleteImagePatch(params *DeleteImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImagePatchNoContent, *DeleteImagePatchBadRequest, *DeleteImagePatchUnauthorized, *DeleteImagePatchNotFound, *DeleteImagePatchUnprocessableEntity, *DeleteImagePatchInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteImagePatchParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteImagePatch",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/patches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteImagePatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteImagePatchNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteImagePatchBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteImagePatchUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteImagePatchNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteImagePatchUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteImagePatchInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteImagePatchShort delete an image patch
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint will delete an image patch that specified in the request parameter
*/
func (a *Client) DeleteImagePatchShort(params *DeleteImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImagePatchNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteImagePatchParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteImagePatch",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/patches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteImagePatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteImagePatchNoContent:
		return v, nil
	case *DeleteImagePatchBadRequest:
		return nil, v
	case *DeleteImagePatchUnauthorized:
		return nil, v
	case *DeleteImagePatchNotFound:
		return nil, v
	case *DeleteImagePatchUnprocessableEntity:
		return nil, v
	case *DeleteImagePatchInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetImageDetailShort instead.

GetImageDetail ds image detail
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get specific version of dedicated servers images.
*/
func (a *Client) GetImageDetail(params *GetImageDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageDetailOK, *GetImageDetailUnauthorized, *GetImageDetailNotFound, *GetImageDetailInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImageDetailParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetImageDetail",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImageDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetImageDetailOK:
		return v, nil, nil, nil, nil

	case *GetImageDetailUnauthorized:
		return nil, v, nil, nil, nil

	case *GetImageDetailNotFound:
		return nil, nil, v, nil, nil

	case *GetImageDetailInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetImageDetailShort ds image detail
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get specific version of dedicated servers images.
*/
func (a *Client) GetImageDetailShort(params *GetImageDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageDetailOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImageDetailParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetImageDetail",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImageDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetImageDetailOK:
		return v, nil
	case *GetImageDetailUnauthorized:
		return nil, v
	case *GetImageDetailNotFound:
		return nil, v
	case *GetImageDetailInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetImagePatchesShort instead.

GetImagePatches get all image patches by version
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get image patches by version.

Image Size unit is byte.
*/
func (a *Client) GetImagePatches(params *GetImagePatchesParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchesOK, *GetImagePatchesUnauthorized, *GetImagePatchesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImagePatchesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetImagePatches",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImagePatchesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetImagePatchesOK:
		return v, nil, nil, nil

	case *GetImagePatchesUnauthorized:
		return nil, v, nil, nil

	case *GetImagePatchesInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetImagePatchesShort get all image patches by version
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get image patches by version.

Image Size unit is byte.
*/
func (a *Client) GetImagePatchesShort(params *GetImagePatchesParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImagePatchesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetImagePatches",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImagePatchesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetImagePatchesOK:
		return v, nil
	case *GetImagePatchesUnauthorized:
		return nil, v
	case *GetImagePatchesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetImagePatchDetailShort instead.

GetImagePatchDetail ds image patch detail
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get specific image patch version of dedicated servers version.
*/
func (a *Client) GetImagePatchDetail(params *GetImagePatchDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchDetailOK, *GetImagePatchDetailUnauthorized, *GetImagePatchDetailNotFound, *GetImagePatchDetailInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImagePatchDetailParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetImagePatchDetail",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches/{versionPatch}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImagePatchDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetImagePatchDetailOK:
		return v, nil, nil, nil, nil

	case *GetImagePatchDetailUnauthorized:
		return nil, v, nil, nil, nil

	case *GetImagePatchDetailNotFound:
		return nil, nil, v, nil, nil

	case *GetImagePatchDetailInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetImagePatchDetailShort ds image patch detail
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get specific image patch version of dedicated servers version.
*/
func (a *Client) GetImagePatchDetailShort(params *GetImagePatchDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchDetailOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImagePatchDetailParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetImagePatchDetail",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches/{versionPatch}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImagePatchDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetImagePatchDetailOK:
		return v, nil
	case *GetImagePatchDetailUnauthorized:
		return nil, v
	case *GetImagePatchDetailNotFound:
		return nil, v
	case *GetImagePatchDetailInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImageLimitClientShort instead.

ImageLimitClient ds image limit for client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get DS image limit for specific namespace.This endpoint also give the non-persistent image which is used by any deployments
*/
func (a *Client) ImageLimitClient(params *ImageLimitClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageLimitClientOK, *ImageLimitClientBadRequest, *ImageLimitClientUnauthorized, *ImageLimitClientInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageLimitClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImageLimitClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/images/limit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageLimitClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImageLimitClientOK:
		return v, nil, nil, nil, nil

	case *ImageLimitClientBadRequest:
		return nil, v, nil, nil, nil

	case *ImageLimitClientUnauthorized:
		return nil, nil, v, nil, nil

	case *ImageLimitClientInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImageLimitClientShort ds image limit for client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get DS image limit for specific namespace.This endpoint also give the non-persistent image which is used by any deployments
*/
func (a *Client) ImageLimitClientShort(params *ImageLimitClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageLimitClientOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageLimitClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImageLimitClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/images/limit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageLimitClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageLimitClientOK:
		return v, nil
	case *ImageLimitClientBadRequest:
		return nil, v
	case *ImageLimitClientUnauthorized:
		return nil, v
	case *ImageLimitClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImageDetailClientShort instead.

ImageDetailClient ds image detail client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get specific version of dedicated servers images.
*/
func (a *Client) ImageDetailClient(params *ImageDetailClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageDetailClientOK, *ImageDetailClientUnauthorized, *ImageDetailClientNotFound, *ImageDetailClientInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageDetailClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImageDetailClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/images/versions/{version}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageDetailClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImageDetailClientOK:
		return v, nil, nil, nil, nil

	case *ImageDetailClientUnauthorized:
		return nil, v, nil, nil, nil

	case *ImageDetailClientNotFound:
		return nil, nil, v, nil, nil

	case *ImageDetailClientInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImageDetailClientShort ds image detail client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get specific version of dedicated servers images.
*/
func (a *Client) ImageDetailClientShort(params *ImageDetailClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageDetailClientOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageDetailClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ImageDetailClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/images/versions/{version}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageDetailClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageDetailClientOK:
		return v, nil
	case *ImageDetailClientUnauthorized:
		return nil, v
	case *ImageDetailClientNotFound:
		return nil, v
	case *ImageDetailClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
