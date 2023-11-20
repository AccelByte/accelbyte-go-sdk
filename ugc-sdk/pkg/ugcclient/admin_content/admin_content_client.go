// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_content

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin content API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin content API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminUploadContentDirect(params *AdminUploadContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentDirectCreated, *AdminUploadContentDirectBadRequest, *AdminUploadContentDirectUnauthorized, *AdminUploadContentDirectConflict, *AdminUploadContentDirectInternalServerError, error)
	AdminUploadContentDirectShort(params *AdminUploadContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentDirectCreated, error)
	AdminUploadContentS3(params *AdminUploadContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentS3Created, *AdminUploadContentS3BadRequest, *AdminUploadContentS3Unauthorized, *AdminUploadContentS3Conflict, *AdminUploadContentS3InternalServerError, error)
	AdminUploadContentS3Short(params *AdminUploadContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentS3Created, error)
	SingleAdminUpdateContentS3(params *SingleAdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentS3OK, *SingleAdminUpdateContentS3BadRequest, *SingleAdminUpdateContentS3Unauthorized, *SingleAdminUpdateContentS3NotFound, *SingleAdminUpdateContentS3Conflict, *SingleAdminUpdateContentS3InternalServerError, error)
	SingleAdminUpdateContentS3Short(params *SingleAdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentS3OK, error)
	AdminSearchChannelSpecificContent(params *AdminSearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchChannelSpecificContentOK, *AdminSearchChannelSpecificContentUnauthorized, *AdminSearchChannelSpecificContentNotFound, *AdminSearchChannelSpecificContentInternalServerError, error)
	AdminSearchChannelSpecificContentShort(params *AdminSearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchChannelSpecificContentOK, error)
	SingleAdminUpdateContentDirect(params *SingleAdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentDirectOK, *SingleAdminUpdateContentDirectBadRequest, *SingleAdminUpdateContentDirectUnauthorized, *SingleAdminUpdateContentDirectNotFound, *SingleAdminUpdateContentDirectInternalServerError, error)
	SingleAdminUpdateContentDirectShort(params *SingleAdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentDirectOK, error)
	SingleAdminDeleteContent(params *SingleAdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteContentNoContent, *SingleAdminDeleteContentUnauthorized, *SingleAdminDeleteContentNotFound, *SingleAdminDeleteContentInternalServerError, error)
	SingleAdminDeleteContentShort(params *SingleAdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteContentNoContent, error)
	SingleAdminGetContent(params *SingleAdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetContentOK, *SingleAdminGetContentUnauthorized, *SingleAdminGetContentNotFound, *SingleAdminGetContentInternalServerError, error)
	SingleAdminGetContentShort(params *SingleAdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetContentOK, error)
	AdminGetContentBulk(params *AdminGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkOK, *AdminGetContentBulkUnauthorized, *AdminGetContentBulkForbidden, *AdminGetContentBulkInternalServerError, error)
	AdminGetContentBulkShort(params *AdminGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkOK, error)
	AdminSearchContent(params *AdminSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchContentOK, *AdminSearchContentUnauthorized, *AdminSearchContentNotFound, *AdminSearchContentInternalServerError, error)
	AdminSearchContentShort(params *AdminSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchContentOK, error)
	AdminGetContentBulkByShareCodes(params *AdminGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesOK, *AdminGetContentBulkByShareCodesUnauthorized, *AdminGetContentBulkByShareCodesForbidden, *AdminGetContentBulkByShareCodesInternalServerError, error)
	AdminGetContentBulkByShareCodesShort(params *AdminGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesOK, error)
	AdminGetUserContentByShareCode(params *AdminGetUserContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserContentByShareCodeOK, *AdminGetUserContentByShareCodeUnauthorized, *AdminGetUserContentByShareCodeNotFound, *AdminGetUserContentByShareCodeInternalServerError, error)
	AdminGetUserContentByShareCodeShort(params *AdminGetUserContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserContentByShareCodeOK, error)
	AdminGetSpecificContent(params *AdminGetSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSpecificContentOK, *AdminGetSpecificContentUnauthorized, *AdminGetSpecificContentNotFound, *AdminGetSpecificContentInternalServerError, error)
	AdminGetSpecificContentShort(params *AdminGetSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSpecificContentOK, error)
	AdminDownloadContentPreview(params *AdminDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDownloadContentPreviewOK, *AdminDownloadContentPreviewUnauthorized, *AdminDownloadContentPreviewNotFound, *AdminDownloadContentPreviewInternalServerError, error)
	AdminDownloadContentPreviewShort(params *AdminDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDownloadContentPreviewOK, error)
	RollbackContentVersion(params *RollbackContentVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionOK, *RollbackContentVersionUnauthorized, *RollbackContentVersionNotFound, *RollbackContentVersionUnprocessableEntity, *RollbackContentVersionInternalServerError, error)
	RollbackContentVersionShort(params *RollbackContentVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionOK, error)
	AdminUpdateScreenshots(params *AdminUpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsOK, *AdminUpdateScreenshotsBadRequest, *AdminUpdateScreenshotsUnauthorized, *AdminUpdateScreenshotsNotFound, *AdminUpdateScreenshotsInternalServerError, error)
	AdminUpdateScreenshotsShort(params *AdminUpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsOK, error)
	AdminUploadContentScreenshot(params *AdminUploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotCreated, *AdminUploadContentScreenshotBadRequest, *AdminUploadContentScreenshotUnauthorized, *AdminUploadContentScreenshotNotFound, *AdminUploadContentScreenshotInternalServerError, error)
	AdminUploadContentScreenshotShort(params *AdminUploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotCreated, error)
	AdminDeleteContentScreenshot(params *AdminDeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotNoContent, *AdminDeleteContentScreenshotBadRequest, *AdminDeleteContentScreenshotUnauthorized, *AdminDeleteContentScreenshotNotFound, *AdminDeleteContentScreenshotInternalServerError, error)
	AdminDeleteContentScreenshotShort(params *AdminDeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotNoContent, error)
	ListContentVersions(params *ListContentVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsOK, *ListContentVersionsUnauthorized, *ListContentVersionsNotFound, *ListContentVersionsInternalServerError, error)
	ListContentVersionsShort(params *ListContentVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsOK, error)
	AdminUpdateContentS3ByShareCode(params *AdminUpdateContentS3ByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3ByShareCodeOK, *AdminUpdateContentS3ByShareCodeBadRequest, *AdminUpdateContentS3ByShareCodeUnauthorized, *AdminUpdateContentS3ByShareCodeNotFound, *AdminUpdateContentS3ByShareCodeConflict, *AdminUpdateContentS3ByShareCodeInternalServerError, error)
	AdminUpdateContentS3ByShareCodeShort(params *AdminUpdateContentS3ByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3ByShareCodeOK, error)
	AdminUpdateContentS3(params *AdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3OK, *AdminUpdateContentS3BadRequest, *AdminUpdateContentS3Unauthorized, *AdminUpdateContentS3NotFound, *AdminUpdateContentS3Conflict, *AdminUpdateContentS3InternalServerError, error)
	AdminUpdateContentS3Short(params *AdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3OK, error)
	DeleteContentByShareCode(params *DeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentByShareCodeNoContent, *DeleteContentByShareCodeUnauthorized, *DeleteContentByShareCodeNotFound, *DeleteContentByShareCodeInternalServerError, error)
	DeleteContentByShareCodeShort(params *DeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentByShareCodeNoContent, error)
	AdminUpdateContentDirect(params *AdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentDirectOK, *AdminUpdateContentDirectBadRequest, *AdminUpdateContentDirectUnauthorized, *AdminUpdateContentDirectNotFound, *AdminUpdateContentDirectInternalServerError, error)
	AdminUpdateContentDirectShort(params *AdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentDirectOK, error)
	AdminDeleteContent(params *AdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentNoContent, *AdminDeleteContentUnauthorized, *AdminDeleteContentNotFound, *AdminDeleteContentInternalServerError, error)
	AdminDeleteContentShort(params *AdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentNoContent, error)
	AdminGetContent(params *AdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentOK, *AdminGetContentUnauthorized, *AdminGetContentNotFound, *AdminGetContentInternalServerError, error)
	AdminGetContentShort(params *AdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentOK, error)
	AdminHideUserContent(params *AdminHideUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminHideUserContentOK, *AdminHideUserContentUnauthorized, *AdminHideUserContentNotFound, *AdminHideUserContentInternalServerError, error)
	AdminHideUserContentShort(params *AdminHideUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminHideUserContentOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminUploadContentDirectShort instead.

AdminUploadContentDirect upload content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) AdminUploadContentDirect(params *AdminUploadContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentDirectCreated, *AdminUploadContentDirectBadRequest, *AdminUploadContentDirectUnauthorized, *AdminUploadContentDirectConflict, *AdminUploadContentDirectInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentDirectParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUploadContentDirect",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentDirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentDirectCreated:
		return v, nil, nil, nil, nil, nil

	case *AdminUploadContentDirectBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUploadContentDirectUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUploadContentDirectConflict:
		return nil, nil, nil, v, nil, nil

	case *AdminUploadContentDirectInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUploadContentDirectShort upload content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) AdminUploadContentDirectShort(params *AdminUploadContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentDirectCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentDirectParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUploadContentDirect",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentDirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentDirectCreated:
		return v, nil
	case *AdminUploadContentDirectBadRequest:
		return nil, v
	case *AdminUploadContentDirectUnauthorized:
		return nil, v
	case *AdminUploadContentDirectConflict:
		return nil, v
	case *AdminUploadContentDirectInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUploadContentS3Short instead.

AdminUploadContentS3 upload content to s3 bucket
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

All request body are required except `preview`, `tags`, `contentType`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client when uploading the content using the S3 presigned URL. If not specified, it will use fileExtension value.

`shareCode` format should follows:

Length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminUploadContentS3(params *AdminUploadContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentS3Created, *AdminUploadContentS3BadRequest, *AdminUploadContentS3Unauthorized, *AdminUploadContentS3Conflict, *AdminUploadContentS3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentS3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUploadContentS3",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentS3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentS3Created:
		return v, nil, nil, nil, nil, nil

	case *AdminUploadContentS3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUploadContentS3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUploadContentS3Conflict:
		return nil, nil, nil, v, nil, nil

	case *AdminUploadContentS3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUploadContentS3Short upload content to s3 bucket
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

All request body are required except `preview`, `tags`, `contentType`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client when uploading the content using the S3 presigned URL. If not specified, it will use fileExtension value.

`shareCode` format should follows:

Length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminUploadContentS3Short(params *AdminUploadContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentS3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentS3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUploadContentS3",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentS3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentS3Created:
		return v, nil
	case *AdminUploadContentS3BadRequest:
		return nil, v
	case *AdminUploadContentS3Unauthorized:
		return nil, v
	case *AdminUploadContentS3Conflict:
		return nil, v
	case *AdminUploadContentS3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SingleAdminUpdateContentS3Short instead.

SingleAdminUpdateContentS3 update content to s3 bucket
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

If not specified, it will use `fileExtension` value.

To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

`shareCode` format should follows:

Max length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) SingleAdminUpdateContentS3(params *SingleAdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentS3OK, *SingleAdminUpdateContentS3BadRequest, *SingleAdminUpdateContentS3Unauthorized, *SingleAdminUpdateContentS3NotFound, *SingleAdminUpdateContentS3Conflict, *SingleAdminUpdateContentS3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateContentS3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminUpdateContentS3",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateContentS3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateContentS3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *SingleAdminUpdateContentS3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *SingleAdminUpdateContentS3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *SingleAdminUpdateContentS3NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *SingleAdminUpdateContentS3Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *SingleAdminUpdateContentS3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminUpdateContentS3Short update content to s3 bucket
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

If not specified, it will use `fileExtension` value.

To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

`shareCode` format should follows:

Max length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) SingleAdminUpdateContentS3Short(params *SingleAdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentS3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateContentS3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminUpdateContentS3",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateContentS3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateContentS3OK:
		return v, nil
	case *SingleAdminUpdateContentS3BadRequest:
		return nil, v
	case *SingleAdminUpdateContentS3Unauthorized:
		return nil, v
	case *SingleAdminUpdateContentS3NotFound:
		return nil, v
	case *SingleAdminUpdateContentS3Conflict:
		return nil, v
	case *SingleAdminUpdateContentS3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSearchChannelSpecificContentShort instead.

AdminSearchChannelSpecificContent search contents specific to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

`tags=red`

`tags=red&animal;`

`tags=red|animal`

`tags=red&animal;|wild`

`tags=red&(animal|wild)`

The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

Allowed character for operand: alphanumeric, underscore `_` and dash `-`

Allowed character for operator: `&` `|` `(` `)`

 Please note that value of tags query param should be URL encoded
*/
func (a *Client) AdminSearchChannelSpecificContent(params *AdminSearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchChannelSpecificContentOK, *AdminSearchChannelSpecificContentUnauthorized, *AdminSearchChannelSpecificContentNotFound, *AdminSearchChannelSpecificContentInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchChannelSpecificContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSearchChannelSpecificContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchChannelSpecificContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSearchChannelSpecificContentOK:
		return v, nil, nil, nil, nil

	case *AdminSearchChannelSpecificContentUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminSearchChannelSpecificContentNotFound:
		return nil, nil, v, nil, nil

	case *AdminSearchChannelSpecificContentInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSearchChannelSpecificContentShort search contents specific to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

`tags=red`

`tags=red&animal;`

`tags=red|animal`

`tags=red&animal;|wild`

`tags=red&(animal|wild)`

The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

Allowed character for operand: alphanumeric, underscore `_` and dash `-`

Allowed character for operator: `&` `|` `(` `)`

 Please note that value of tags query param should be URL encoded
*/
func (a *Client) AdminSearchChannelSpecificContentShort(params *AdminSearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchChannelSpecificContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchChannelSpecificContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSearchChannelSpecificContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchChannelSpecificContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSearchChannelSpecificContentOK:
		return v, nil
	case *AdminSearchChannelSpecificContentUnauthorized:
		return nil, v
	case *AdminSearchChannelSpecificContentNotFound:
		return nil, v
	case *AdminSearchChannelSpecificContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SingleAdminUpdateContentDirectShort instead.

SingleAdminUpdateContentDirect update content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) SingleAdminUpdateContentDirect(params *SingleAdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentDirectOK, *SingleAdminUpdateContentDirectBadRequest, *SingleAdminUpdateContentDirectUnauthorized, *SingleAdminUpdateContentDirectNotFound, *SingleAdminUpdateContentDirectInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateContentDirectParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminUpdateContentDirect",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateContentDirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateContentDirectOK:
		return v, nil, nil, nil, nil, nil

	case *SingleAdminUpdateContentDirectBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SingleAdminUpdateContentDirectUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SingleAdminUpdateContentDirectNotFound:
		return nil, nil, nil, v, nil, nil

	case *SingleAdminUpdateContentDirectInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminUpdateContentDirectShort update content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) SingleAdminUpdateContentDirectShort(params *SingleAdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentDirectOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateContentDirectParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminUpdateContentDirect",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateContentDirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateContentDirectOK:
		return v, nil
	case *SingleAdminUpdateContentDirectBadRequest:
		return nil, v
	case *SingleAdminUpdateContentDirectUnauthorized:
		return nil, v
	case *SingleAdminUpdateContentDirectNotFound:
		return nil, v
	case *SingleAdminUpdateContentDirectInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SingleAdminDeleteContentShort instead.

SingleAdminDeleteContent delete content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) SingleAdminDeleteContent(params *SingleAdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteContentNoContent, *SingleAdminDeleteContentUnauthorized, *SingleAdminDeleteContentNotFound, *SingleAdminDeleteContentInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminDeleteContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminDeleteContent",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminDeleteContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminDeleteContentNoContent:
		return v, nil, nil, nil, nil

	case *SingleAdminDeleteContentUnauthorized:
		return nil, v, nil, nil, nil

	case *SingleAdminDeleteContentNotFound:
		return nil, nil, v, nil, nil

	case *SingleAdminDeleteContentInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminDeleteContentShort delete content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) SingleAdminDeleteContentShort(params *SingleAdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteContentNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminDeleteContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminDeleteContent",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminDeleteContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminDeleteContentNoContent:
		return v, nil
	case *SingleAdminDeleteContentUnauthorized:
		return nil, v
	case *SingleAdminDeleteContentNotFound:
		return nil, v
	case *SingleAdminDeleteContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SingleAdminGetContentShort instead.

SingleAdminGetContent get user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) SingleAdminGetContent(params *SingleAdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetContentOK, *SingleAdminGetContentUnauthorized, *SingleAdminGetContentNotFound, *SingleAdminGetContentInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminGetContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetContentOK:
		return v, nil, nil, nil, nil

	case *SingleAdminGetContentUnauthorized:
		return nil, v, nil, nil, nil

	case *SingleAdminGetContentNotFound:
		return nil, nil, v, nil, nil

	case *SingleAdminGetContentInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminGetContentShort get user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) SingleAdminGetContentShort(params *SingleAdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminGetContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetContentOK:
		return v, nil
	case *SingleAdminGetContentUnauthorized:
		return nil, v
	case *SingleAdminGetContentNotFound:
		return nil, v
	case *SingleAdminGetContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetContentBulkShort instead.

AdminGetContentBulk bulk get content by content ids
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum contentId per request 100
*/
func (a *Client) AdminGetContentBulk(params *AdminGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkOK, *AdminGetContentBulkUnauthorized, *AdminGetContentBulkForbidden, *AdminGetContentBulkInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentBulkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetContentBulk",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentBulkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentBulkOK:
		return v, nil, nil, nil, nil

	case *AdminGetContentBulkUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetContentBulkForbidden:
		return nil, nil, v, nil, nil

	case *AdminGetContentBulkInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentBulkShort bulk get content by content ids
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum contentId per request 100
*/
func (a *Client) AdminGetContentBulkShort(params *AdminGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentBulkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetContentBulk",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentBulkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentBulkOK:
		return v, nil
	case *AdminGetContentBulkUnauthorized:
		return nil, v
	case *AdminGetContentBulkForbidden:
		return nil, v
	case *AdminGetContentBulkInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSearchContentShort instead.

AdminSearchContent search contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

`tags=red`

`tags=red&animal;`

`tags=red|animal`

`tags=red&animal;|wild`

`tags=red&(animal|wild)`

The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

Allowed character for operand: alphanumeric, underscore `_` and dash `-`

Allowed character for operator: `&` `|` `(` `)`

 Please note that value of tags query param should be URL encoded
*/
func (a *Client) AdminSearchContent(params *AdminSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchContentOK, *AdminSearchContentUnauthorized, *AdminSearchContentNotFound, *AdminSearchContentInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSearchContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSearchContentOK:
		return v, nil, nil, nil, nil

	case *AdminSearchContentUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminSearchContentNotFound:
		return nil, nil, v, nil, nil

	case *AdminSearchContentInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSearchContentShort search contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

`tags=red`

`tags=red&animal;`

`tags=red|animal`

`tags=red&animal;|wild`

`tags=red&(animal|wild)`

The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

Allowed character for operand: alphanumeric, underscore `_` and dash `-`

Allowed character for operator: `&` `|` `(` `)`

 Please note that value of tags query param should be URL encoded
*/
func (a *Client) AdminSearchContentShort(params *AdminSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSearchContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSearchContentOK:
		return v, nil
	case *AdminSearchContentUnauthorized:
		return nil, v
	case *AdminSearchContentNotFound:
		return nil, v
	case *AdminSearchContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetContentBulkByShareCodesShort instead.

AdminGetContentBulkByShareCodes bulk get content by content sharecodes
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum sharecodes per request 100
*/
func (a *Client) AdminGetContentBulkByShareCodes(params *AdminGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesOK, *AdminGetContentBulkByShareCodesUnauthorized, *AdminGetContentBulkByShareCodesForbidden, *AdminGetContentBulkByShareCodesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentBulkByShareCodesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetContentBulkByShareCodes",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentBulkByShareCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentBulkByShareCodesOK:
		return v, nil, nil, nil, nil

	case *AdminGetContentBulkByShareCodesUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetContentBulkByShareCodesForbidden:
		return nil, nil, v, nil, nil

	case *AdminGetContentBulkByShareCodesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentBulkByShareCodesShort bulk get content by content sharecodes
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum sharecodes per request 100
*/
func (a *Client) AdminGetContentBulkByShareCodesShort(params *AdminGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentBulkByShareCodesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetContentBulkByShareCodes",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentBulkByShareCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentBulkByShareCodesOK:
		return v, nil
	case *AdminGetContentBulkByShareCodesUnauthorized:
		return nil, v
	case *AdminGetContentBulkByShareCodesForbidden:
		return nil, v
	case *AdminGetContentBulkByShareCodesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserContentByShareCodeShort instead.

AdminGetUserContentByShareCode get content by sharecode
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetUserContentByShareCode(params *AdminGetUserContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserContentByShareCodeOK, *AdminGetUserContentByShareCodeUnauthorized, *AdminGetUserContentByShareCodeNotFound, *AdminGetUserContentByShareCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserContentByShareCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserContentByShareCode",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserContentByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserContentByShareCodeOK:
		return v, nil, nil, nil, nil

	case *AdminGetUserContentByShareCodeUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetUserContentByShareCodeNotFound:
		return nil, nil, v, nil, nil

	case *AdminGetUserContentByShareCodeInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserContentByShareCodeShort get content by sharecode
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetUserContentByShareCodeShort(params *AdminGetUserContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserContentByShareCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserContentByShareCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserContentByShareCode",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserContentByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserContentByShareCodeOK:
		return v, nil
	case *AdminGetUserContentByShareCodeUnauthorized:
		return nil, v
	case *AdminGetUserContentByShareCodeNotFound:
		return nil, v
	case *AdminGetUserContentByShareCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetSpecificContentShort instead.

AdminGetSpecificContent get user specific content
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetSpecificContent(params *AdminGetSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSpecificContentOK, *AdminGetSpecificContentUnauthorized, *AdminGetSpecificContentNotFound, *AdminGetSpecificContentInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetSpecificContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetSpecificContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetSpecificContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetSpecificContentOK:
		return v, nil, nil, nil, nil

	case *AdminGetSpecificContentUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetSpecificContentNotFound:
		return nil, nil, v, nil, nil

	case *AdminGetSpecificContentInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetSpecificContentShort get user specific content
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetSpecificContentShort(params *AdminGetSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSpecificContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetSpecificContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetSpecificContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetSpecificContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetSpecificContentOK:
		return v, nil
	case *AdminGetSpecificContentUnauthorized:
		return nil, v
	case *AdminGetSpecificContentNotFound:
		return nil, v
	case *AdminGetSpecificContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDownloadContentPreviewShort instead.

AdminDownloadContentPreview get content preview
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminDownloadContentPreview(params *AdminDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDownloadContentPreviewOK, *AdminDownloadContentPreviewUnauthorized, *AdminDownloadContentPreviewNotFound, *AdminDownloadContentPreviewInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDownloadContentPreviewParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDownloadContentPreview",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDownloadContentPreviewReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDownloadContentPreviewOK:
		return v, nil, nil, nil, nil

	case *AdminDownloadContentPreviewUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminDownloadContentPreviewNotFound:
		return nil, nil, v, nil, nil

	case *AdminDownloadContentPreviewInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDownloadContentPreviewShort get content preview
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminDownloadContentPreviewShort(params *AdminDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDownloadContentPreviewOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDownloadContentPreviewParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDownloadContentPreview",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDownloadContentPreviewReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDownloadContentPreviewOK:
		return v, nil
	case *AdminDownloadContentPreviewUnauthorized:
		return nil, v
	case *AdminDownloadContentPreviewNotFound:
		return nil, v
	case *AdminDownloadContentPreviewInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RollbackContentVersionShort instead.

RollbackContentVersion rollback content's payload version
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]
Rollback content's payload to specified version.
*/
func (a *Client) RollbackContentVersion(params *RollbackContentVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionOK, *RollbackContentVersionUnauthorized, *RollbackContentVersionNotFound, *RollbackContentVersionUnprocessableEntity, *RollbackContentVersionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRollbackContentVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RollbackContentVersion",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RollbackContentVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RollbackContentVersionOK:
		return v, nil, nil, nil, nil, nil

	case *RollbackContentVersionUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *RollbackContentVersionNotFound:
		return nil, nil, v, nil, nil, nil

	case *RollbackContentVersionUnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *RollbackContentVersionInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RollbackContentVersionShort rollback content's payload version
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]
Rollback content's payload to specified version.
*/
func (a *Client) RollbackContentVersionShort(params *RollbackContentVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRollbackContentVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RollbackContentVersion",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RollbackContentVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RollbackContentVersionOK:
		return v, nil
	case *RollbackContentVersionUnauthorized:
		return nil, v
	case *RollbackContentVersionNotFound:
		return nil, v
	case *RollbackContentVersionUnprocessableEntity:
		return nil, v
	case *RollbackContentVersionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateScreenshotsShort instead.

AdminUpdateScreenshots update screenshot of content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
Maximum description length: 1024.
*/
func (a *Client) AdminUpdateScreenshots(params *AdminUpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsOK, *AdminUpdateScreenshotsBadRequest, *AdminUpdateScreenshotsUnauthorized, *AdminUpdateScreenshotsNotFound, *AdminUpdateScreenshotsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateScreenshotsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateScreenshots",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateScreenshotsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateScreenshotsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateScreenshotsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateScreenshotsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateScreenshotsNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateScreenshotsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateScreenshotsShort update screenshot of content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
Maximum description length: 1024.
*/
func (a *Client) AdminUpdateScreenshotsShort(params *AdminUpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateScreenshotsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateScreenshots",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateScreenshotsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateScreenshotsOK:
		return v, nil
	case *AdminUpdateScreenshotsBadRequest:
		return nil, v
	case *AdminUpdateScreenshotsUnauthorized:
		return nil, v
	case *AdminUpdateScreenshotsNotFound:
		return nil, v
	case *AdminUpdateScreenshotsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUploadContentScreenshotShort instead.

AdminUploadContentScreenshot upload screenshots for content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].
All request body are required except for contentType field.
contentType values is used to enforce the Content-Type header needed by the client to upload the content using the presigned URL.
If not specified, it will use fileExtension value.
Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.
Maximum description length: 1024.
*/
func (a *Client) AdminUploadContentScreenshot(params *AdminUploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotCreated, *AdminUploadContentScreenshotBadRequest, *AdminUploadContentScreenshotUnauthorized, *AdminUploadContentScreenshotNotFound, *AdminUploadContentScreenshotInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentScreenshotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUploadContentScreenshot",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentScreenshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentScreenshotCreated:
		return v, nil, nil, nil, nil, nil

	case *AdminUploadContentScreenshotBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUploadContentScreenshotUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUploadContentScreenshotNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminUploadContentScreenshotInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUploadContentScreenshotShort upload screenshots for content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].
All request body are required except for contentType field.
contentType values is used to enforce the Content-Type header needed by the client to upload the content using the presigned URL.
If not specified, it will use fileExtension value.
Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.
Maximum description length: 1024.
*/
func (a *Client) AdminUploadContentScreenshotShort(params *AdminUploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentScreenshotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUploadContentScreenshot",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentScreenshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentScreenshotCreated:
		return v, nil
	case *AdminUploadContentScreenshotBadRequest:
		return nil, v
	case *AdminUploadContentScreenshotUnauthorized:
		return nil, v
	case *AdminUploadContentScreenshotNotFound:
		return nil, v
	case *AdminUploadContentScreenshotInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteContentScreenshotShort instead.

AdminDeleteContentScreenshot delete screenshots content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteContentScreenshot(params *AdminDeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotNoContent, *AdminDeleteContentScreenshotBadRequest, *AdminDeleteContentScreenshotUnauthorized, *AdminDeleteContentScreenshotNotFound, *AdminDeleteContentScreenshotInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentScreenshotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteContentScreenshot",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentScreenshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentScreenshotNoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteContentScreenshotBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteContentScreenshotUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteContentScreenshotNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteContentScreenshotInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteContentScreenshotShort delete screenshots content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteContentScreenshotShort(params *AdminDeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentScreenshotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteContentScreenshot",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentScreenshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentScreenshotNoContent:
		return v, nil
	case *AdminDeleteContentScreenshotBadRequest:
		return nil, v
	case *AdminDeleteContentScreenshotUnauthorized:
		return nil, v
	case *AdminDeleteContentScreenshotNotFound:
		return nil, v
	case *AdminDeleteContentScreenshotInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListContentVersionsShort instead.

ListContentVersions list content's payload versions
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]
Content's payload versions created when UGC is created or updated with `updateContentFile` set to true. Only list up to 10 latest versions.
*/
func (a *Client) ListContentVersions(params *ListContentVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsOK, *ListContentVersionsUnauthorized, *ListContentVersionsNotFound, *ListContentVersionsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListContentVersionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListContentVersions",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListContentVersionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListContentVersionsOK:
		return v, nil, nil, nil, nil

	case *ListContentVersionsUnauthorized:
		return nil, v, nil, nil, nil

	case *ListContentVersionsNotFound:
		return nil, nil, v, nil, nil

	case *ListContentVersionsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListContentVersionsShort list content's payload versions
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]
Content's payload versions created when UGC is created or updated with `updateContentFile` set to true. Only list up to 10 latest versions.
*/
func (a *Client) ListContentVersionsShort(params *ListContentVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListContentVersionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListContentVersions",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListContentVersionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListContentVersionsOK:
		return v, nil
	case *ListContentVersionsUnauthorized:
		return nil, v
	case *ListContentVersionsNotFound:
		return nil, v
	case *ListContentVersionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateContentS3ByShareCodeShort instead.

AdminUpdateContentS3ByShareCode update content to s3 bucket by share code
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

If not specified, it will use `fileExtension` value.

To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

`shareCode` format should follows:

Max length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminUpdateContentS3ByShareCode(params *AdminUpdateContentS3ByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3ByShareCodeOK, *AdminUpdateContentS3ByShareCodeBadRequest, *AdminUpdateContentS3ByShareCodeUnauthorized, *AdminUpdateContentS3ByShareCodeNotFound, *AdminUpdateContentS3ByShareCodeConflict, *AdminUpdateContentS3ByShareCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentS3ByShareCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateContentS3ByShareCode",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentS3ByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentS3ByShareCodeOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateContentS3ByShareCodeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateContentS3ByShareCodeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateContentS3ByShareCodeNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateContentS3ByShareCodeConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateContentS3ByShareCodeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateContentS3ByShareCodeShort update content to s3 bucket by share code
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

If not specified, it will use `fileExtension` value.

To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

`shareCode` format should follows:

Max length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminUpdateContentS3ByShareCodeShort(params *AdminUpdateContentS3ByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3ByShareCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentS3ByShareCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateContentS3ByShareCode",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentS3ByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentS3ByShareCodeOK:
		return v, nil
	case *AdminUpdateContentS3ByShareCodeBadRequest:
		return nil, v
	case *AdminUpdateContentS3ByShareCodeUnauthorized:
		return nil, v
	case *AdminUpdateContentS3ByShareCodeNotFound:
		return nil, v
	case *AdminUpdateContentS3ByShareCodeConflict:
		return nil, v
	case *AdminUpdateContentS3ByShareCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateContentS3Short instead.

AdminUpdateContentS3 update content to s3 bucket
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

If not specified, it will use `fileExtension` value.

To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

`shareCode` format should follows:

Max length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminUpdateContentS3(params *AdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3OK, *AdminUpdateContentS3BadRequest, *AdminUpdateContentS3Unauthorized, *AdminUpdateContentS3NotFound, *AdminUpdateContentS3Conflict, *AdminUpdateContentS3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentS3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateContentS3",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentS3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentS3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateContentS3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateContentS3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateContentS3NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateContentS3Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateContentS3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateContentS3Short update content to s3 bucket
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

If not specified, it will use `fileExtension` value.

To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

`shareCode` format should follows:

Max length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminUpdateContentS3Short(params *AdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentS3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateContentS3",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentS3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentS3OK:
		return v, nil
	case *AdminUpdateContentS3BadRequest:
		return nil, v
	case *AdminUpdateContentS3Unauthorized:
		return nil, v
	case *AdminUpdateContentS3NotFound:
		return nil, v
	case *AdminUpdateContentS3Conflict:
		return nil, v
	case *AdminUpdateContentS3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteContentByShareCodeShort instead.

DeleteContentByShareCode delete content by share code
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) DeleteContentByShareCode(params *DeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentByShareCodeNoContent, *DeleteContentByShareCodeUnauthorized, *DeleteContentByShareCodeNotFound, *DeleteContentByShareCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteContentByShareCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteContentByShareCode",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteContentByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteContentByShareCodeNoContent:
		return v, nil, nil, nil, nil

	case *DeleteContentByShareCodeUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteContentByShareCodeNotFound:
		return nil, nil, v, nil, nil

	case *DeleteContentByShareCodeInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteContentByShareCodeShort delete content by share code
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) DeleteContentByShareCodeShort(params *DeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentByShareCodeNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteContentByShareCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteContentByShareCode",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteContentByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteContentByShareCodeNoContent:
		return v, nil
	case *DeleteContentByShareCodeUnauthorized:
		return nil, v
	case *DeleteContentByShareCodeNotFound:
		return nil, v
	case *DeleteContentByShareCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateContentDirectShort instead.

AdminUpdateContentDirect update content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) AdminUpdateContentDirect(params *AdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentDirectOK, *AdminUpdateContentDirectBadRequest, *AdminUpdateContentDirectUnauthorized, *AdminUpdateContentDirectNotFound, *AdminUpdateContentDirectInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentDirectParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateContentDirect",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentDirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentDirectOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateContentDirectBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateContentDirectUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateContentDirectNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateContentDirectInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateContentDirectShort update content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) AdminUpdateContentDirectShort(params *AdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentDirectOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentDirectParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateContentDirect",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentDirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentDirectOK:
		return v, nil
	case *AdminUpdateContentDirectBadRequest:
		return nil, v
	case *AdminUpdateContentDirectUnauthorized:
		return nil, v
	case *AdminUpdateContentDirectNotFound:
		return nil, v
	case *AdminUpdateContentDirectInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteContentShort instead.

AdminDeleteContent delete content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteContent(params *AdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentNoContent, *AdminDeleteContentUnauthorized, *AdminDeleteContentNotFound, *AdminDeleteContentInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteContent",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentNoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteContentUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteContentNotFound:
		return nil, nil, v, nil, nil

	case *AdminDeleteContentInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteContentShort delete content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteContentShort(params *AdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteContent",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentNoContent:
		return v, nil
	case *AdminDeleteContentUnauthorized:
		return nil, v
	case *AdminDeleteContentNotFound:
		return nil, v
	case *AdminDeleteContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetContentShort instead.

AdminGetContent get user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetContent(params *AdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentOK, *AdminGetContentUnauthorized, *AdminGetContentNotFound, *AdminGetContentInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentOK:
		return v, nil, nil, nil, nil

	case *AdminGetContentUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetContentNotFound:
		return nil, nil, v, nil, nil

	case *AdminGetContentInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentShort get user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetContentShort(params *AdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentOK:
		return v, nil
	case *AdminGetContentUnauthorized:
		return nil, v
	case *AdminGetContentNotFound:
		return nil, v
	case *AdminGetContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminHideUserContentShort instead.

AdminHideUserContent hide/unhide user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminHideUserContent(params *AdminHideUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminHideUserContentOK, *AdminHideUserContentUnauthorized, *AdminHideUserContentNotFound, *AdminHideUserContentInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminHideUserContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminHideUserContent",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminHideUserContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminHideUserContentOK:
		return v, nil, nil, nil, nil

	case *AdminHideUserContentUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminHideUserContentNotFound:
		return nil, nil, v, nil, nil

	case *AdminHideUserContentInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminHideUserContentShort hide/unhide user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminHideUserContentShort(params *AdminHideUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminHideUserContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminHideUserContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminHideUserContent",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminHideUserContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminHideUserContentOK:
		return v, nil
	case *AdminHideUserContentUnauthorized:
		return nil, v
	case *AdminHideUserContentNotFound:
		return nil, v
	case *AdminHideUserContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
