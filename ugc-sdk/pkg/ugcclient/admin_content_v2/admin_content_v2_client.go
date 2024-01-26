// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_content_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin content v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin content v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetContentByChannelIDV2(params *AdminGetContentByChannelIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByChannelIDV2OK, *AdminGetContentByChannelIDV2BadRequest, *AdminGetContentByChannelIDV2Unauthorized, *AdminGetContentByChannelIDV2InternalServerError, error)
	AdminGetContentByChannelIDV2Short(params *AdminGetContentByChannelIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByChannelIDV2OK, error)
	AdminCreateContentV2(params *AdminCreateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateContentV2Created, *AdminCreateContentV2BadRequest, *AdminCreateContentV2Unauthorized, *AdminCreateContentV2NotFound, *AdminCreateContentV2Conflict, *AdminCreateContentV2InternalServerError, error)
	AdminCreateContentV2Short(params *AdminCreateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateContentV2Created, error)
	AdminDeleteOfficialContentV2(params *AdminDeleteOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteOfficialContentV2NoContent, *AdminDeleteOfficialContentV2Unauthorized, *AdminDeleteOfficialContentV2NotFound, *AdminDeleteOfficialContentV2InternalServerError, error)
	AdminDeleteOfficialContentV2Short(params *AdminDeleteOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteOfficialContentV2NoContent, error)
	AdminUpdateOfficialContentV2(params *AdminUpdateOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentV2OK, *AdminUpdateOfficialContentV2BadRequest, *AdminUpdateOfficialContentV2Unauthorized, *AdminUpdateOfficialContentV2NotFound, *AdminUpdateOfficialContentV2Conflict, *AdminUpdateOfficialContentV2InternalServerError, error)
	AdminUpdateOfficialContentV2Short(params *AdminUpdateOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentV2OK, error)
	AdminUpdateOfficialContentFileLocation(params *AdminUpdateOfficialContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentFileLocationOK, *AdminUpdateOfficialContentFileLocationBadRequest, *AdminUpdateOfficialContentFileLocationUnauthorized, *AdminUpdateOfficialContentFileLocationForbidden, *AdminUpdateOfficialContentFileLocationNotFound, *AdminUpdateOfficialContentFileLocationInternalServerError, error)
	AdminUpdateOfficialContentFileLocationShort(params *AdminUpdateOfficialContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentFileLocationOK, error)
	AdminGenerateOfficialContentUploadURLV2(params *AdminGenerateOfficialContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateOfficialContentUploadURLV2OK, *AdminGenerateOfficialContentUploadURLV2BadRequest, *AdminGenerateOfficialContentUploadURLV2Unauthorized, *AdminGenerateOfficialContentUploadURLV2NotFound, *AdminGenerateOfficialContentUploadURLV2InternalServerError, error)
	AdminGenerateOfficialContentUploadURLV2Short(params *AdminGenerateOfficialContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateOfficialContentUploadURLV2OK, error)
	AdminListContentV2(params *AdminListContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListContentV2OK, *AdminListContentV2BadRequest, *AdminListContentV2Unauthorized, *AdminListContentV2InternalServerError, error)
	AdminListContentV2Short(params *AdminListContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListContentV2OK, error)
	AdminBulkGetContentByIDsV2(params *AdminBulkGetContentByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetContentByIDsV2OK, *AdminBulkGetContentByIDsV2BadRequest, *AdminBulkGetContentByIDsV2Unauthorized, *AdminBulkGetContentByIDsV2Forbidden, *AdminBulkGetContentByIDsV2InternalServerError, error)
	AdminBulkGetContentByIDsV2Short(params *AdminBulkGetContentByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetContentByIDsV2OK, error)
	AdminGetContentBulkByShareCodesV2(params *AdminGetContentBulkByShareCodesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesV2OK, *AdminGetContentBulkByShareCodesV2BadRequest, *AdminGetContentBulkByShareCodesV2Unauthorized, *AdminGetContentBulkByShareCodesV2Forbidden, *AdminGetContentBulkByShareCodesV2InternalServerError, error)
	AdminGetContentBulkByShareCodesV2Short(params *AdminGetContentBulkByShareCodesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesV2OK, error)
	AdminGetContentByShareCodeV2(params *AdminGetContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByShareCodeV2OK, *AdminGetContentByShareCodeV2Unauthorized, *AdminGetContentByShareCodeV2NotFound, *AdminGetContentByShareCodeV2InternalServerError, error)
	AdminGetContentByShareCodeV2Short(params *AdminGetContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByShareCodeV2OK, error)
	AdminGetContentByContentIDV2(params *AdminGetContentByContentIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByContentIDV2OK, *AdminGetContentByContentIDV2Unauthorized, *AdminGetContentByContentIDV2NotFound, *AdminGetContentByContentIDV2InternalServerError, error)
	AdminGetContentByContentIDV2Short(params *AdminGetContentByContentIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByContentIDV2OK, error)
	RollbackContentVersionV2(params *RollbackContentVersionV2Params, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionV2OK, *RollbackContentVersionV2Unauthorized, *RollbackContentVersionV2NotFound, *RollbackContentVersionV2UnprocessableEntity, *RollbackContentVersionV2InternalServerError, error)
	RollbackContentVersionV2Short(params *RollbackContentVersionV2Params, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionV2OK, error)
	AdminUpdateScreenshotsV2(params *AdminUpdateScreenshotsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsV2OK, *AdminUpdateScreenshotsV2BadRequest, *AdminUpdateScreenshotsV2Unauthorized, *AdminUpdateScreenshotsV2Forbidden, *AdminUpdateScreenshotsV2NotFound, *AdminUpdateScreenshotsV2InternalServerError, error)
	AdminUpdateScreenshotsV2Short(params *AdminUpdateScreenshotsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsV2OK, error)
	AdminUploadContentScreenshotV2(params *AdminUploadContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotV2Created, *AdminUploadContentScreenshotV2BadRequest, *AdminUploadContentScreenshotV2Unauthorized, *AdminUploadContentScreenshotV2Forbidden, *AdminUploadContentScreenshotV2NotFound, *AdminUploadContentScreenshotV2InternalServerError, error)
	AdminUploadContentScreenshotV2Short(params *AdminUploadContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotV2Created, error)
	AdminDeleteContentScreenshotV2(params *AdminDeleteContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotV2NoContent, *AdminDeleteContentScreenshotV2BadRequest, *AdminDeleteContentScreenshotV2Unauthorized, *AdminDeleteContentScreenshotV2Forbidden, *AdminDeleteContentScreenshotV2NotFound, *AdminDeleteContentScreenshotV2InternalServerError, error)
	AdminDeleteContentScreenshotV2Short(params *AdminDeleteContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotV2NoContent, error)
	ListContentVersionsV2(params *ListContentVersionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsV2OK, *ListContentVersionsV2Unauthorized, *ListContentVersionsV2NotFound, *ListContentVersionsV2InternalServerError, error)
	ListContentVersionsV2Short(params *ListContentVersionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsV2OK, error)
	AdminUpdateContentByShareCodeV2(params *AdminUpdateContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentByShareCodeV2OK, *AdminUpdateContentByShareCodeV2BadRequest, *AdminUpdateContentByShareCodeV2Unauthorized, *AdminUpdateContentByShareCodeV2Forbidden, *AdminUpdateContentByShareCodeV2NotFound, *AdminUpdateContentByShareCodeV2Conflict, *AdminUpdateContentByShareCodeV2InternalServerError, error)
	AdminUpdateContentByShareCodeV2Short(params *AdminUpdateContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentByShareCodeV2OK, error)
	AdminDeleteContentByShareCodeV2(params *AdminDeleteContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentByShareCodeV2NoContent, *AdminDeleteContentByShareCodeV2Unauthorized, *AdminDeleteContentByShareCodeV2NotFound, *AdminDeleteContentByShareCodeV2InternalServerError, error)
	AdminDeleteContentByShareCodeV2Short(params *AdminDeleteContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentByShareCodeV2NoContent, error)
	AdminDeleteUserContentV2(params *AdminDeleteUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserContentV2NoContent, *AdminDeleteUserContentV2Unauthorized, *AdminDeleteUserContentV2NotFound, *AdminDeleteUserContentV2InternalServerError, error)
	AdminDeleteUserContentV2Short(params *AdminDeleteUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserContentV2NoContent, error)
	AdminUpdateUserContentV2(params *AdminUpdateUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentV2OK, *AdminUpdateUserContentV2BadRequest, *AdminUpdateUserContentV2Unauthorized, *AdminUpdateUserContentV2NotFound, *AdminUpdateUserContentV2Conflict, *AdminUpdateUserContentV2InternalServerError, error)
	AdminUpdateUserContentV2Short(params *AdminUpdateUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentV2OK, error)
	AdminUpdateUserContentFileLocation(params *AdminUpdateUserContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentFileLocationOK, *AdminUpdateUserContentFileLocationBadRequest, *AdminUpdateUserContentFileLocationUnauthorized, *AdminUpdateUserContentFileLocationForbidden, *AdminUpdateUserContentFileLocationNotFound, *AdminUpdateUserContentFileLocationInternalServerError, error)
	AdminUpdateUserContentFileLocationShort(params *AdminUpdateUserContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentFileLocationOK, error)
	AdminGenerateUserContentUploadURLV2(params *AdminGenerateUserContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateUserContentUploadURLV2OK, *AdminGenerateUserContentUploadURLV2BadRequest, *AdminGenerateUserContentUploadURLV2Unauthorized, *AdminGenerateUserContentUploadURLV2NotFound, *AdminGenerateUserContentUploadURLV2InternalServerError, error)
	AdminGenerateUserContentUploadURLV2Short(params *AdminGenerateUserContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateUserContentUploadURLV2OK, error)
	AdminGetContentByUserIDV2(params *AdminGetContentByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByUserIDV2OK, *AdminGetContentByUserIDV2BadRequest, *AdminGetContentByUserIDV2Unauthorized, *AdminGetContentByUserIDV2InternalServerError, error)
	AdminGetContentByUserIDV2Short(params *AdminGetContentByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByUserIDV2OK, error)
	AdminUpdateContentHideStatusV2(params *AdminUpdateContentHideStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentHideStatusV2OK, *AdminUpdateContentHideStatusV2BadRequest, *AdminUpdateContentHideStatusV2Unauthorized, *AdminUpdateContentHideStatusV2Forbidden, *AdminUpdateContentHideStatusV2NotFound, *AdminUpdateContentHideStatusV2InternalServerError, error)
	AdminUpdateContentHideStatusV2Short(params *AdminUpdateContentHideStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentHideStatusV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetContentByChannelIDV2Short instead.

AdminGetContentByChannelIDV2 list contents specific to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetContentByChannelIDV2(params *AdminGetContentByChannelIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByChannelIDV2OK, *AdminGetContentByChannelIDV2BadRequest, *AdminGetContentByChannelIDV2Unauthorized, *AdminGetContentByChannelIDV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByChannelIDV2Params()
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
		ID:                 "AdminGetContentByChannelIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByChannelIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByChannelIDV2OK:
		return v, nil, nil, nil, nil

	case *AdminGetContentByChannelIDV2BadRequest:
		return nil, v, nil, nil, nil

	case *AdminGetContentByChannelIDV2Unauthorized:
		return nil, nil, v, nil, nil

	case *AdminGetContentByChannelIDV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentByChannelIDV2Short list contents specific to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetContentByChannelIDV2Short(params *AdminGetContentByChannelIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByChannelIDV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByChannelIDV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetContentByChannelIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByChannelIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByChannelIDV2OK:
		return v, nil
	case *AdminGetContentByChannelIDV2BadRequest:
		return nil, v
	case *AdminGetContentByChannelIDV2Unauthorized:
		return nil, v
	case *AdminGetContentByChannelIDV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateContentV2Short instead.

AdminCreateContentV2 create a content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].
*/
func (a *Client) AdminCreateContentV2(params *AdminCreateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateContentV2Created, *AdminCreateContentV2BadRequest, *AdminCreateContentV2Unauthorized, *AdminCreateContentV2NotFound, *AdminCreateContentV2Conflict, *AdminCreateContentV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateContentV2Params()
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
		ID:                 "AdminCreateContentV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateContentV2Created:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminCreateContentV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminCreateContentV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminCreateContentV2NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminCreateContentV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminCreateContentV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateContentV2Short create a content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].
*/
func (a *Client) AdminCreateContentV2Short(params *AdminCreateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateContentV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateContentV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateContentV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateContentV2Created:
		return v, nil
	case *AdminCreateContentV2BadRequest:
		return nil, v
	case *AdminCreateContentV2Unauthorized:
		return nil, v
	case *AdminCreateContentV2NotFound:
		return nil, v
	case *AdminCreateContentV2Conflict:
		return nil, v
	case *AdminCreateContentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteOfficialContentV2Short instead.

AdminDeleteOfficialContentV2 delete official content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteOfficialContentV2(params *AdminDeleteOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteOfficialContentV2NoContent, *AdminDeleteOfficialContentV2Unauthorized, *AdminDeleteOfficialContentV2NotFound, *AdminDeleteOfficialContentV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteOfficialContentV2Params()
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
		ID:                 "AdminDeleteOfficialContentV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteOfficialContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteOfficialContentV2NoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteOfficialContentV2Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteOfficialContentV2NotFound:
		return nil, nil, v, nil, nil

	case *AdminDeleteOfficialContentV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteOfficialContentV2Short delete official content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteOfficialContentV2Short(params *AdminDeleteOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteOfficialContentV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteOfficialContentV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteOfficialContentV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteOfficialContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteOfficialContentV2NoContent:
		return v, nil
	case *AdminDeleteOfficialContentV2Unauthorized:
		return nil, v
	case *AdminDeleteOfficialContentV2NotFound:
		return nil, v
	case *AdminDeleteOfficialContentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateOfficialContentV2Short instead.

AdminUpdateOfficialContentV2 update official content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminUpdateOfficialContentV2(params *AdminUpdateOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentV2OK, *AdminUpdateOfficialContentV2BadRequest, *AdminUpdateOfficialContentV2Unauthorized, *AdminUpdateOfficialContentV2NotFound, *AdminUpdateOfficialContentV2Conflict, *AdminUpdateOfficialContentV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateOfficialContentV2Params()
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
		ID:                 "AdminUpdateOfficialContentV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateOfficialContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateOfficialContentV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateOfficialContentV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateOfficialContentV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateOfficialContentV2NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateOfficialContentV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateOfficialContentV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateOfficialContentV2Short update official content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminUpdateOfficialContentV2Short(params *AdminUpdateOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateOfficialContentV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateOfficialContentV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateOfficialContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateOfficialContentV2OK:
		return v, nil
	case *AdminUpdateOfficialContentV2BadRequest:
		return nil, v
	case *AdminUpdateOfficialContentV2Unauthorized:
		return nil, v
	case *AdminUpdateOfficialContentV2NotFound:
		return nil, v
	case *AdminUpdateOfficialContentV2Conflict:
		return nil, v
	case *AdminUpdateOfficialContentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateOfficialContentFileLocationShort instead.

AdminUpdateOfficialContentFileLocation update content file location
This endpoint should be used after calling generate official content upload url endpoint to commit the changes.
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminUpdateOfficialContentFileLocation(params *AdminUpdateOfficialContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentFileLocationOK, *AdminUpdateOfficialContentFileLocationBadRequest, *AdminUpdateOfficialContentFileLocationUnauthorized, *AdminUpdateOfficialContentFileLocationForbidden, *AdminUpdateOfficialContentFileLocationNotFound, *AdminUpdateOfficialContentFileLocationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateOfficialContentFileLocationParams()
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
		ID:                 "AdminUpdateOfficialContentFileLocation",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateOfficialContentFileLocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateOfficialContentFileLocationOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateOfficialContentFileLocationBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateOfficialContentFileLocationUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateOfficialContentFileLocationForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateOfficialContentFileLocationNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateOfficialContentFileLocationInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateOfficialContentFileLocationShort update content file location
This endpoint should be used after calling generate official content upload url endpoint to commit the changes.
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminUpdateOfficialContentFileLocationShort(params *AdminUpdateOfficialContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentFileLocationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateOfficialContentFileLocationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateOfficialContentFileLocation",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateOfficialContentFileLocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateOfficialContentFileLocationOK:
		return v, nil
	case *AdminUpdateOfficialContentFileLocationBadRequest:
		return nil, v
	case *AdminUpdateOfficialContentFileLocationUnauthorized:
		return nil, v
	case *AdminUpdateOfficialContentFileLocationForbidden:
		return nil, v
	case *AdminUpdateOfficialContentFileLocationNotFound:
		return nil, v
	case *AdminUpdateOfficialContentFileLocationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGenerateOfficialContentUploadURLV2Short instead.

AdminGenerateOfficialContentUploadURLV2 generate official content upload url
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminGenerateOfficialContentUploadURLV2(params *AdminGenerateOfficialContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateOfficialContentUploadURLV2OK, *AdminGenerateOfficialContentUploadURLV2BadRequest, *AdminGenerateOfficialContentUploadURLV2Unauthorized, *AdminGenerateOfficialContentUploadURLV2NotFound, *AdminGenerateOfficialContentUploadURLV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateOfficialContentUploadURLV2Params()
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
		ID:                 "AdminGenerateOfficialContentUploadURLV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/uploadUrl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateOfficialContentUploadURLV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateOfficialContentUploadURLV2OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGenerateOfficialContentUploadURLV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGenerateOfficialContentUploadURLV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGenerateOfficialContentUploadURLV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGenerateOfficialContentUploadURLV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGenerateOfficialContentUploadURLV2Short generate official content upload url
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminGenerateOfficialContentUploadURLV2Short(params *AdminGenerateOfficialContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateOfficialContentUploadURLV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateOfficialContentUploadURLV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGenerateOfficialContentUploadURLV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/uploadUrl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateOfficialContentUploadURLV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateOfficialContentUploadURLV2OK:
		return v, nil
	case *AdminGenerateOfficialContentUploadURLV2BadRequest:
		return nil, v
	case *AdminGenerateOfficialContentUploadURLV2Unauthorized:
		return nil, v
	case *AdminGenerateOfficialContentUploadURLV2NotFound:
		return nil, v
	case *AdminGenerateOfficialContentUploadURLV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminListContentV2Short instead.

AdminListContentV2 list contents

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
func (a *Client) AdminListContentV2(params *AdminListContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListContentV2OK, *AdminListContentV2BadRequest, *AdminListContentV2Unauthorized, *AdminListContentV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListContentV2Params()
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
		ID:                 "AdminListContentV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListContentV2OK:
		return v, nil, nil, nil, nil

	case *AdminListContentV2BadRequest:
		return nil, v, nil, nil, nil

	case *AdminListContentV2Unauthorized:
		return nil, nil, v, nil, nil

	case *AdminListContentV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListContentV2Short list contents

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
func (a *Client) AdminListContentV2Short(params *AdminListContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListContentV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListContentV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListContentV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListContentV2OK:
		return v, nil
	case *AdminListContentV2BadRequest:
		return nil, v
	case *AdminListContentV2Unauthorized:
		return nil, v
	case *AdminListContentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminBulkGetContentByIDsV2Short instead.

AdminBulkGetContentByIDsV2 bulk get content by content ids
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum contentId per request 100
*/
func (a *Client) AdminBulkGetContentByIDsV2(params *AdminBulkGetContentByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetContentByIDsV2OK, *AdminBulkGetContentByIDsV2BadRequest, *AdminBulkGetContentByIDsV2Unauthorized, *AdminBulkGetContentByIDsV2Forbidden, *AdminBulkGetContentByIDsV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkGetContentByIDsV2Params()
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
		ID:                 "AdminBulkGetContentByIDsV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkGetContentByIDsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminBulkGetContentByIDsV2OK:
		return v, nil, nil, nil, nil, nil

	case *AdminBulkGetContentByIDsV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminBulkGetContentByIDsV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminBulkGetContentByIDsV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminBulkGetContentByIDsV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkGetContentByIDsV2Short bulk get content by content ids
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum contentId per request 100
*/
func (a *Client) AdminBulkGetContentByIDsV2Short(params *AdminBulkGetContentByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetContentByIDsV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkGetContentByIDsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBulkGetContentByIDsV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkGetContentByIDsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkGetContentByIDsV2OK:
		return v, nil
	case *AdminBulkGetContentByIDsV2BadRequest:
		return nil, v
	case *AdminBulkGetContentByIDsV2Unauthorized:
		return nil, v
	case *AdminBulkGetContentByIDsV2Forbidden:
		return nil, v
	case *AdminBulkGetContentByIDsV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetContentBulkByShareCodesV2Short instead.

AdminGetContentBulkByShareCodesV2 bulk get content by content sharecodes
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum sharecodes per request 100
*/
func (a *Client) AdminGetContentBulkByShareCodesV2(params *AdminGetContentBulkByShareCodesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesV2OK, *AdminGetContentBulkByShareCodesV2BadRequest, *AdminGetContentBulkByShareCodesV2Unauthorized, *AdminGetContentBulkByShareCodesV2Forbidden, *AdminGetContentBulkByShareCodesV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentBulkByShareCodesV2Params()
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
		ID:                 "AdminGetContentBulkByShareCodesV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentBulkByShareCodesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentBulkByShareCodesV2OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetContentBulkByShareCodesV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetContentBulkByShareCodesV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetContentBulkByShareCodesV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetContentBulkByShareCodesV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentBulkByShareCodesV2Short bulk get content by content sharecodes
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum sharecodes per request 100
*/
func (a *Client) AdminGetContentBulkByShareCodesV2Short(params *AdminGetContentBulkByShareCodesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentBulkByShareCodesV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetContentBulkByShareCodesV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentBulkByShareCodesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentBulkByShareCodesV2OK:
		return v, nil
	case *AdminGetContentBulkByShareCodesV2BadRequest:
		return nil, v
	case *AdminGetContentBulkByShareCodesV2Unauthorized:
		return nil, v
	case *AdminGetContentBulkByShareCodesV2Forbidden:
		return nil, v
	case *AdminGetContentBulkByShareCodesV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetContentByShareCodeV2Short instead.

AdminGetContentByShareCodeV2 get content by sharecode
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetContentByShareCodeV2(params *AdminGetContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByShareCodeV2OK, *AdminGetContentByShareCodeV2Unauthorized, *AdminGetContentByShareCodeV2NotFound, *AdminGetContentByShareCodeV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByShareCodeV2Params()
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
		ID:                 "AdminGetContentByShareCodeV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByShareCodeV2OK:
		return v, nil, nil, nil, nil

	case *AdminGetContentByShareCodeV2Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetContentByShareCodeV2NotFound:
		return nil, nil, v, nil, nil

	case *AdminGetContentByShareCodeV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentByShareCodeV2Short get content by sharecode
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetContentByShareCodeV2Short(params *AdminGetContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByShareCodeV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByShareCodeV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetContentByShareCodeV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByShareCodeV2OK:
		return v, nil
	case *AdminGetContentByShareCodeV2Unauthorized:
		return nil, v
	case *AdminGetContentByShareCodeV2NotFound:
		return nil, v
	case *AdminGetContentByShareCodeV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetContentByContentIDV2Short instead.

AdminGetContentByContentIDV2 get content by content id
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetContentByContentIDV2(params *AdminGetContentByContentIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByContentIDV2OK, *AdminGetContentByContentIDV2Unauthorized, *AdminGetContentByContentIDV2NotFound, *AdminGetContentByContentIDV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByContentIDV2Params()
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
		ID:                 "AdminGetContentByContentIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByContentIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByContentIDV2OK:
		return v, nil, nil, nil, nil

	case *AdminGetContentByContentIDV2Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetContentByContentIDV2NotFound:
		return nil, nil, v, nil, nil

	case *AdminGetContentByContentIDV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentByContentIDV2Short get content by content id
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetContentByContentIDV2Short(params *AdminGetContentByContentIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByContentIDV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByContentIDV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetContentByContentIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByContentIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByContentIDV2OK:
		return v, nil
	case *AdminGetContentByContentIDV2Unauthorized:
		return nil, v
	case *AdminGetContentByContentIDV2NotFound:
		return nil, v
	case *AdminGetContentByContentIDV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RollbackContentVersionV2Short instead.

RollbackContentVersionV2 rollback content's payload version
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]
Rollback content's payload to specified version.
*/
func (a *Client) RollbackContentVersionV2(params *RollbackContentVersionV2Params, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionV2OK, *RollbackContentVersionV2Unauthorized, *RollbackContentVersionV2NotFound, *RollbackContentVersionV2UnprocessableEntity, *RollbackContentVersionV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRollbackContentVersionV2Params()
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
		ID:                 "RollbackContentVersionV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RollbackContentVersionV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RollbackContentVersionV2OK:
		return v, nil, nil, nil, nil, nil

	case *RollbackContentVersionV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *RollbackContentVersionV2NotFound:
		return nil, nil, v, nil, nil, nil

	case *RollbackContentVersionV2UnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *RollbackContentVersionV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RollbackContentVersionV2Short rollback content's payload version
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]
Rollback content's payload to specified version.
*/
func (a *Client) RollbackContentVersionV2Short(params *RollbackContentVersionV2Params, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRollbackContentVersionV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RollbackContentVersionV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RollbackContentVersionV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RollbackContentVersionV2OK:
		return v, nil
	case *RollbackContentVersionV2Unauthorized:
		return nil, v
	case *RollbackContentVersionV2NotFound:
		return nil, v
	case *RollbackContentVersionV2UnprocessableEntity:
		return nil, v
	case *RollbackContentVersionV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateScreenshotsV2Short instead.

AdminUpdateScreenshotsV2 update screenshot of content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
Maximum description length: 1024.
*/
func (a *Client) AdminUpdateScreenshotsV2(params *AdminUpdateScreenshotsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsV2OK, *AdminUpdateScreenshotsV2BadRequest, *AdminUpdateScreenshotsV2Unauthorized, *AdminUpdateScreenshotsV2Forbidden, *AdminUpdateScreenshotsV2NotFound, *AdminUpdateScreenshotsV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateScreenshotsV2Params()
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
		ID:                 "AdminUpdateScreenshotsV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateScreenshotsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateScreenshotsV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateScreenshotsV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateScreenshotsV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateScreenshotsV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateScreenshotsV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateScreenshotsV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateScreenshotsV2Short update screenshot of content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
Maximum description length: 1024.
*/
func (a *Client) AdminUpdateScreenshotsV2Short(params *AdminUpdateScreenshotsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateScreenshotsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateScreenshotsV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateScreenshotsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateScreenshotsV2OK:
		return v, nil
	case *AdminUpdateScreenshotsV2BadRequest:
		return nil, v
	case *AdminUpdateScreenshotsV2Unauthorized:
		return nil, v
	case *AdminUpdateScreenshotsV2Forbidden:
		return nil, v
	case *AdminUpdateScreenshotsV2NotFound:
		return nil, v
	case *AdminUpdateScreenshotsV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUploadContentScreenshotV2Short instead.

AdminUploadContentScreenshotV2 upload screenshots for content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].
All request body are required except for contentType field.
contentType values is used to enforce the Content-Type header needed by the client to upload the content using the presigned URL.
If not specified, it will use fileExtension value.
Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.
Maximum description length: 1024.
*/
func (a *Client) AdminUploadContentScreenshotV2(params *AdminUploadContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotV2Created, *AdminUploadContentScreenshotV2BadRequest, *AdminUploadContentScreenshotV2Unauthorized, *AdminUploadContentScreenshotV2Forbidden, *AdminUploadContentScreenshotV2NotFound, *AdminUploadContentScreenshotV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentScreenshotV2Params()
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
		ID:                 "AdminUploadContentScreenshotV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentScreenshotV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentScreenshotV2Created:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUploadContentScreenshotV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUploadContentScreenshotV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUploadContentScreenshotV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUploadContentScreenshotV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUploadContentScreenshotV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUploadContentScreenshotV2Short upload screenshots for content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].
All request body are required except for contentType field.
contentType values is used to enforce the Content-Type header needed by the client to upload the content using the presigned URL.
If not specified, it will use fileExtension value.
Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.
Maximum description length: 1024.
*/
func (a *Client) AdminUploadContentScreenshotV2Short(params *AdminUploadContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentScreenshotV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUploadContentScreenshotV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentScreenshotV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentScreenshotV2Created:
		return v, nil
	case *AdminUploadContentScreenshotV2BadRequest:
		return nil, v
	case *AdminUploadContentScreenshotV2Unauthorized:
		return nil, v
	case *AdminUploadContentScreenshotV2Forbidden:
		return nil, v
	case *AdminUploadContentScreenshotV2NotFound:
		return nil, v
	case *AdminUploadContentScreenshotV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteContentScreenshotV2Short instead.

AdminDeleteContentScreenshotV2 delete screenshots content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteContentScreenshotV2(params *AdminDeleteContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotV2NoContent, *AdminDeleteContentScreenshotV2BadRequest, *AdminDeleteContentScreenshotV2Unauthorized, *AdminDeleteContentScreenshotV2Forbidden, *AdminDeleteContentScreenshotV2NotFound, *AdminDeleteContentScreenshotV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentScreenshotV2Params()
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
		ID:                 "AdminDeleteContentScreenshotV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentScreenshotV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentScreenshotV2NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeleteContentScreenshotV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeleteContentScreenshotV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeleteContentScreenshotV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeleteContentScreenshotV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeleteContentScreenshotV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteContentScreenshotV2Short delete screenshots content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteContentScreenshotV2Short(params *AdminDeleteContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentScreenshotV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteContentScreenshotV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentScreenshotV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentScreenshotV2NoContent:
		return v, nil
	case *AdminDeleteContentScreenshotV2BadRequest:
		return nil, v
	case *AdminDeleteContentScreenshotV2Unauthorized:
		return nil, v
	case *AdminDeleteContentScreenshotV2Forbidden:
		return nil, v
	case *AdminDeleteContentScreenshotV2NotFound:
		return nil, v
	case *AdminDeleteContentScreenshotV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListContentVersionsV2Short instead.

ListContentVersionsV2 list content's payload versions
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]
Content's payload versions created when UGC is created or updated with `updateContentFile` set to true. Only list up to 10 latest versions.
*/
func (a *Client) ListContentVersionsV2(params *ListContentVersionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsV2OK, *ListContentVersionsV2Unauthorized, *ListContentVersionsV2NotFound, *ListContentVersionsV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListContentVersionsV2Params()
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
		ID:                 "ListContentVersionsV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListContentVersionsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListContentVersionsV2OK:
		return v, nil, nil, nil, nil

	case *ListContentVersionsV2Unauthorized:
		return nil, v, nil, nil, nil

	case *ListContentVersionsV2NotFound:
		return nil, nil, v, nil, nil

	case *ListContentVersionsV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListContentVersionsV2Short list content's payload versions
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]
Content's payload versions created when UGC is created or updated with `updateContentFile` set to true. Only list up to 10 latest versions.
*/
func (a *Client) ListContentVersionsV2Short(params *ListContentVersionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListContentVersionsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListContentVersionsV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListContentVersionsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListContentVersionsV2OK:
		return v, nil
	case *ListContentVersionsV2Unauthorized:
		return nil, v
	case *ListContentVersionsV2NotFound:
		return nil, v
	case *ListContentVersionsV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateContentByShareCodeV2Short instead.

AdminUpdateContentByShareCodeV2 update content to s3 bucket by share code
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

`shareCode` format should follows:

Max length: 7
Available characters: abcdefhkpqrstuxyz
*/
func (a *Client) AdminUpdateContentByShareCodeV2(params *AdminUpdateContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentByShareCodeV2OK, *AdminUpdateContentByShareCodeV2BadRequest, *AdminUpdateContentByShareCodeV2Unauthorized, *AdminUpdateContentByShareCodeV2Forbidden, *AdminUpdateContentByShareCodeV2NotFound, *AdminUpdateContentByShareCodeV2Conflict, *AdminUpdateContentByShareCodeV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentByShareCodeV2Params()
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
		ID:                 "AdminUpdateContentByShareCodeV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentByShareCodeV2OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminUpdateContentByShareCodeV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateContentByShareCodeV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateContentByShareCodeV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateContentByShareCodeV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateContentByShareCodeV2Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateContentByShareCodeV2InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateContentByShareCodeV2Short update content to s3 bucket by share code
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

`shareCode` format should follows:

Max length: 7
Available characters: abcdefhkpqrstuxyz
*/
func (a *Client) AdminUpdateContentByShareCodeV2Short(params *AdminUpdateContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentByShareCodeV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentByShareCodeV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateContentByShareCodeV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentByShareCodeV2OK:
		return v, nil
	case *AdminUpdateContentByShareCodeV2BadRequest:
		return nil, v
	case *AdminUpdateContentByShareCodeV2Unauthorized:
		return nil, v
	case *AdminUpdateContentByShareCodeV2Forbidden:
		return nil, v
	case *AdminUpdateContentByShareCodeV2NotFound:
		return nil, v
	case *AdminUpdateContentByShareCodeV2Conflict:
		return nil, v
	case *AdminUpdateContentByShareCodeV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteContentByShareCodeV2Short instead.

AdminDeleteContentByShareCodeV2 delete content by share code
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteContentByShareCodeV2(params *AdminDeleteContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentByShareCodeV2NoContent, *AdminDeleteContentByShareCodeV2Unauthorized, *AdminDeleteContentByShareCodeV2NotFound, *AdminDeleteContentByShareCodeV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentByShareCodeV2Params()
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
		ID:                 "AdminDeleteContentByShareCodeV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentByShareCodeV2NoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteContentByShareCodeV2Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteContentByShareCodeV2NotFound:
		return nil, nil, v, nil, nil

	case *AdminDeleteContentByShareCodeV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteContentByShareCodeV2Short delete content by share code
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteContentByShareCodeV2Short(params *AdminDeleteContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentByShareCodeV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentByShareCodeV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteContentByShareCodeV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentByShareCodeV2NoContent:
		return v, nil
	case *AdminDeleteContentByShareCodeV2Unauthorized:
		return nil, v
	case *AdminDeleteContentByShareCodeV2NotFound:
		return nil, v
	case *AdminDeleteContentByShareCodeV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteUserContentV2Short instead.

AdminDeleteUserContentV2 delete user content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteUserContentV2(params *AdminDeleteUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserContentV2NoContent, *AdminDeleteUserContentV2Unauthorized, *AdminDeleteUserContentV2NotFound, *AdminDeleteUserContentV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserContentV2Params()
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
		ID:                 "AdminDeleteUserContentV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserContentV2NoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteUserContentV2Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteUserContentV2NotFound:
		return nil, nil, v, nil, nil

	case *AdminDeleteUserContentV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserContentV2Short delete user content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteUserContentV2Short(params *AdminDeleteUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserContentV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserContentV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserContentV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserContentV2NoContent:
		return v, nil
	case *AdminDeleteUserContentV2Unauthorized:
		return nil, v
	case *AdminDeleteUserContentV2NotFound:
		return nil, v
	case *AdminDeleteUserContentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateUserContentV2Short instead.

AdminUpdateUserContentV2 update user content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminUpdateUserContentV2(params *AdminUpdateUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentV2OK, *AdminUpdateUserContentV2BadRequest, *AdminUpdateUserContentV2Unauthorized, *AdminUpdateUserContentV2NotFound, *AdminUpdateUserContentV2Conflict, *AdminUpdateUserContentV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserContentV2Params()
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
		ID:                 "AdminUpdateUserContentV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserContentV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserContentV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateUserContentV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateUserContentV2NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateUserContentV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateUserContentV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserContentV2Short update user content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminUpdateUserContentV2Short(params *AdminUpdateUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserContentV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserContentV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserContentV2OK:
		return v, nil
	case *AdminUpdateUserContentV2BadRequest:
		return nil, v
	case *AdminUpdateUserContentV2Unauthorized:
		return nil, v
	case *AdminUpdateUserContentV2NotFound:
		return nil, v
	case *AdminUpdateUserContentV2Conflict:
		return nil, v
	case *AdminUpdateUserContentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateUserContentFileLocationShort instead.

AdminUpdateUserContentFileLocation update user content file location
This endpoint should be used after calling generate user content upload url endpoint to commit the changes.
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminUpdateUserContentFileLocation(params *AdminUpdateUserContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentFileLocationOK, *AdminUpdateUserContentFileLocationBadRequest, *AdminUpdateUserContentFileLocationUnauthorized, *AdminUpdateUserContentFileLocationForbidden, *AdminUpdateUserContentFileLocationNotFound, *AdminUpdateUserContentFileLocationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserContentFileLocationParams()
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
		ID:                 "AdminUpdateUserContentFileLocation",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserContentFileLocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserContentFileLocationOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserContentFileLocationBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateUserContentFileLocationUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateUserContentFileLocationForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateUserContentFileLocationNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateUserContentFileLocationInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserContentFileLocationShort update user content file location
This endpoint should be used after calling generate user content upload url endpoint to commit the changes.
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminUpdateUserContentFileLocationShort(params *AdminUpdateUserContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentFileLocationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserContentFileLocationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserContentFileLocation",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserContentFileLocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserContentFileLocationOK:
		return v, nil
	case *AdminUpdateUserContentFileLocationBadRequest:
		return nil, v
	case *AdminUpdateUserContentFileLocationUnauthorized:
		return nil, v
	case *AdminUpdateUserContentFileLocationForbidden:
		return nil, v
	case *AdminUpdateUserContentFileLocationNotFound:
		return nil, v
	case *AdminUpdateUserContentFileLocationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGenerateUserContentUploadURLV2Short instead.

AdminGenerateUserContentUploadURLV2 generate user content upload url
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminGenerateUserContentUploadURLV2(params *AdminGenerateUserContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateUserContentUploadURLV2OK, *AdminGenerateUserContentUploadURLV2BadRequest, *AdminGenerateUserContentUploadURLV2Unauthorized, *AdminGenerateUserContentUploadURLV2NotFound, *AdminGenerateUserContentUploadURLV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateUserContentUploadURLV2Params()
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
		ID:                 "AdminGenerateUserContentUploadURLV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateUserContentUploadURLV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateUserContentUploadURLV2OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGenerateUserContentUploadURLV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGenerateUserContentUploadURLV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGenerateUserContentUploadURLV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGenerateUserContentUploadURLV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGenerateUserContentUploadURLV2Short generate user content upload url
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminGenerateUserContentUploadURLV2Short(params *AdminGenerateUserContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateUserContentUploadURLV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateUserContentUploadURLV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGenerateUserContentUploadURLV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateUserContentUploadURLV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateUserContentUploadURLV2OK:
		return v, nil
	case *AdminGenerateUserContentUploadURLV2BadRequest:
		return nil, v
	case *AdminGenerateUserContentUploadURLV2Unauthorized:
		return nil, v
	case *AdminGenerateUserContentUploadURLV2NotFound:
		return nil, v
	case *AdminGenerateUserContentUploadURLV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetContentByUserIDV2Short instead.

AdminGetContentByUserIDV2 get user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetContentByUserIDV2(params *AdminGetContentByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByUserIDV2OK, *AdminGetContentByUserIDV2BadRequest, *AdminGetContentByUserIDV2Unauthorized, *AdminGetContentByUserIDV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByUserIDV2Params()
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
		ID:                 "AdminGetContentByUserIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByUserIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByUserIDV2OK:
		return v, nil, nil, nil, nil

	case *AdminGetContentByUserIDV2BadRequest:
		return nil, v, nil, nil, nil

	case *AdminGetContentByUserIDV2Unauthorized:
		return nil, nil, v, nil, nil

	case *AdminGetContentByUserIDV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentByUserIDV2Short get user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetContentByUserIDV2Short(params *AdminGetContentByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByUserIDV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByUserIDV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetContentByUserIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByUserIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByUserIDV2OK:
		return v, nil
	case *AdminGetContentByUserIDV2BadRequest:
		return nil, v
	case *AdminGetContentByUserIDV2Unauthorized:
		return nil, v
	case *AdminGetContentByUserIDV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateContentHideStatusV2Short instead.

AdminUpdateContentHideStatusV2 hide/unhide user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminUpdateContentHideStatusV2(params *AdminUpdateContentHideStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentHideStatusV2OK, *AdminUpdateContentHideStatusV2BadRequest, *AdminUpdateContentHideStatusV2Unauthorized, *AdminUpdateContentHideStatusV2Forbidden, *AdminUpdateContentHideStatusV2NotFound, *AdminUpdateContentHideStatusV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentHideStatusV2Params()
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
		ID:                 "AdminUpdateContentHideStatusV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentHideStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentHideStatusV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateContentHideStatusV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateContentHideStatusV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateContentHideStatusV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateContentHideStatusV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateContentHideStatusV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateContentHideStatusV2Short hide/unhide user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminUpdateContentHideStatusV2Short(params *AdminUpdateContentHideStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentHideStatusV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentHideStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateContentHideStatusV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentHideStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentHideStatusV2OK:
		return v, nil
	case *AdminUpdateContentHideStatusV2BadRequest:
		return nil, v
	case *AdminUpdateContentHideStatusV2Unauthorized:
		return nil, v
	case *AdminUpdateContentHideStatusV2Forbidden:
		return nil, v
	case *AdminUpdateContentHideStatusV2NotFound:
		return nil, v
	case *AdminUpdateContentHideStatusV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
