// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_group

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin group API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin group API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	SingleAdminGetAllGroups(params *SingleAdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetAllGroupsOK, *SingleAdminGetAllGroupsUnauthorized, *SingleAdminGetAllGroupsNotFound, *SingleAdminGetAllGroupsInternalServerError, error)
	SingleAdminGetAllGroupsShort(params *SingleAdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetAllGroupsOK, error)
	AdminCreateGroup(params *AdminCreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateGroupCreated, *AdminCreateGroupBadRequest, *AdminCreateGroupUnauthorized, *AdminCreateGroupInternalServerError, error)
	AdminCreateGroupShort(params *AdminCreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateGroupCreated, error)
	SingleAdminGetGroup(params *SingleAdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupOK, *SingleAdminGetGroupUnauthorized, *SingleAdminGetGroupNotFound, *SingleAdminGetGroupInternalServerError, error)
	SingleAdminGetGroupShort(params *SingleAdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupOK, error)
	SingleAdminUpdateGroup(params *SingleAdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateGroupOK, *SingleAdminUpdateGroupBadRequest, *SingleAdminUpdateGroupUnauthorized, *SingleAdminUpdateGroupNotFound, *SingleAdminUpdateGroupInternalServerError, error)
	SingleAdminUpdateGroupShort(params *SingleAdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateGroupOK, error)
	SingleAdminDeleteGroup(params *SingleAdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteGroupNoContent, *SingleAdminDeleteGroupUnauthorized, *SingleAdminDeleteGroupNotFound, *SingleAdminDeleteGroupInternalServerError, error)
	SingleAdminDeleteGroupShort(params *SingleAdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteGroupNoContent, error)
	SingleAdminGetGroupContents(params *SingleAdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupContentsOK, *SingleAdminGetGroupContentsUnauthorized, *SingleAdminGetGroupContentsNotFound, *SingleAdminGetGroupContentsInternalServerError, error)
	SingleAdminGetGroupContentsShort(params *SingleAdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupContentsOK, error)
	AdminGetAllGroups(params *AdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllGroupsOK, *AdminGetAllGroupsUnauthorized, *AdminGetAllGroupsNotFound, *AdminGetAllGroupsInternalServerError, error)
	AdminGetAllGroupsShort(params *AdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllGroupsOK, error)
	AdminGetGroup(params *AdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupOK, *AdminGetGroupUnauthorized, *AdminGetGroupNotFound, *AdminGetGroupInternalServerError, error)
	AdminGetGroupShort(params *AdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupOK, error)
	AdminUpdateGroup(params *AdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGroupOK, *AdminUpdateGroupBadRequest, *AdminUpdateGroupUnauthorized, *AdminUpdateGroupNotFound, *AdminUpdateGroupInternalServerError, error)
	AdminUpdateGroupShort(params *AdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGroupOK, error)
	AdminDeleteGroup(params *AdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGroupNoContent, *AdminDeleteGroupUnauthorized, *AdminDeleteGroupNotFound, *AdminDeleteGroupInternalServerError, error)
	AdminDeleteGroupShort(params *AdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGroupNoContent, error)
	AdminGetGroupContents(params *AdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupContentsOK, *AdminGetGroupContentsUnauthorized, *AdminGetGroupContentsNotFound, *AdminGetGroupContentsInternalServerError, error)
	AdminGetGroupContentsShort(params *AdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupContentsOK, error)
	AdminGetOfficialGroupContentsV2(params *AdminGetOfficialGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetOfficialGroupContentsV2OK, *AdminGetOfficialGroupContentsV2Unauthorized, *AdminGetOfficialGroupContentsV2NotFound, *AdminGetOfficialGroupContentsV2InternalServerError, error)
	AdminGetOfficialGroupContentsV2Short(params *AdminGetOfficialGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetOfficialGroupContentsV2OK, error)
	AdminGetUserGroupContentsV2(params *AdminGetUserGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserGroupContentsV2OK, *AdminGetUserGroupContentsV2Unauthorized, *AdminGetUserGroupContentsV2NotFound, *AdminGetUserGroupContentsV2InternalServerError, error)
	AdminGetUserGroupContentsV2Short(params *AdminGetUserGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserGroupContentsV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use SingleAdminGetAllGroupsShort instead.

SingleAdminGetAllGroups get all user groups
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [READ].
*/
func (a *Client) SingleAdminGetAllGroups(params *SingleAdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetAllGroupsOK, *SingleAdminGetAllGroupsUnauthorized, *SingleAdminGetAllGroupsNotFound, *SingleAdminGetAllGroupsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetAllGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminGetAllGroups",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetAllGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetAllGroupsOK:
		return v, nil, nil, nil, nil

	case *SingleAdminGetAllGroupsUnauthorized:
		return nil, v, nil, nil, nil

	case *SingleAdminGetAllGroupsNotFound:
		return nil, nil, v, nil, nil

	case *SingleAdminGetAllGroupsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminGetAllGroupsShort get all user groups
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [READ].
*/
func (a *Client) SingleAdminGetAllGroupsShort(params *SingleAdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetAllGroupsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetAllGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminGetAllGroups",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetAllGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetAllGroupsOK:
		return v, nil
	case *SingleAdminGetAllGroupsUnauthorized:
		return nil, v
	case *SingleAdminGetAllGroupsNotFound:
		return nil, v
	case *SingleAdminGetAllGroupsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateGroupShort instead.

AdminCreateGroup create groups
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [CREATE]
*/
func (a *Client) AdminCreateGroup(params *AdminCreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateGroupCreated, *AdminCreateGroupBadRequest, *AdminCreateGroupUnauthorized, *AdminCreateGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateGroup",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateGroupCreated:
		return v, nil, nil, nil, nil

	case *AdminCreateGroupBadRequest:
		return nil, v, nil, nil, nil

	case *AdminCreateGroupUnauthorized:
		return nil, nil, v, nil, nil

	case *AdminCreateGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateGroupShort create groups
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [CREATE]
*/
func (a *Client) AdminCreateGroupShort(params *AdminCreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateGroupCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateGroup",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateGroupCreated:
		return v, nil
	case *AdminCreateGroupBadRequest:
		return nil, v
	case *AdminCreateGroupUnauthorized:
		return nil, v
	case *AdminCreateGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SingleAdminGetGroupShort instead.

SingleAdminGetGroup get specific user group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [READ].
*/
func (a *Client) SingleAdminGetGroup(params *SingleAdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupOK, *SingleAdminGetGroupUnauthorized, *SingleAdminGetGroupNotFound, *SingleAdminGetGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminGetGroup",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetGroupOK:
		return v, nil, nil, nil, nil

	case *SingleAdminGetGroupUnauthorized:
		return nil, v, nil, nil, nil

	case *SingleAdminGetGroupNotFound:
		return nil, nil, v, nil, nil

	case *SingleAdminGetGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminGetGroupShort get specific user group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [READ].
*/
func (a *Client) SingleAdminGetGroupShort(params *SingleAdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminGetGroup",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetGroupOK:
		return v, nil
	case *SingleAdminGetGroupUnauthorized:
		return nil, v
	case *SingleAdminGetGroupNotFound:
		return nil, v
	case *SingleAdminGetGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SingleAdminUpdateGroupShort instead.

SingleAdminUpdateGroup update group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [UPDATE]
replace group name and contents with new ones.
*/
func (a *Client) SingleAdminUpdateGroup(params *SingleAdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateGroupOK, *SingleAdminUpdateGroupBadRequest, *SingleAdminUpdateGroupUnauthorized, *SingleAdminUpdateGroupNotFound, *SingleAdminUpdateGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminUpdateGroup",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateGroupOK:
		return v, nil, nil, nil, nil, nil

	case *SingleAdminUpdateGroupBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SingleAdminUpdateGroupUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SingleAdminUpdateGroupNotFound:
		return nil, nil, nil, v, nil, nil

	case *SingleAdminUpdateGroupInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminUpdateGroupShort update group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [UPDATE]
replace group name and contents with new ones.
*/
func (a *Client) SingleAdminUpdateGroupShort(params *SingleAdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminUpdateGroup",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateGroupOK:
		return v, nil
	case *SingleAdminUpdateGroupBadRequest:
		return nil, v
	case *SingleAdminUpdateGroupUnauthorized:
		return nil, v
	case *SingleAdminUpdateGroupNotFound:
		return nil, v
	case *SingleAdminUpdateGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SingleAdminDeleteGroupShort instead.

SingleAdminDeleteGroup delete group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [DELETE]
*/
func (a *Client) SingleAdminDeleteGroup(params *SingleAdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteGroupNoContent, *SingleAdminDeleteGroupUnauthorized, *SingleAdminDeleteGroupNotFound, *SingleAdminDeleteGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminDeleteGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminDeleteGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminDeleteGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminDeleteGroupNoContent:
		return v, nil, nil, nil, nil

	case *SingleAdminDeleteGroupUnauthorized:
		return nil, v, nil, nil, nil

	case *SingleAdminDeleteGroupNotFound:
		return nil, nil, v, nil, nil

	case *SingleAdminDeleteGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminDeleteGroupShort delete group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [DELETE]
*/
func (a *Client) SingleAdminDeleteGroupShort(params *SingleAdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteGroupNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminDeleteGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminDeleteGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminDeleteGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminDeleteGroupNoContent:
		return v, nil
	case *SingleAdminDeleteGroupUnauthorized:
		return nil, v
	case *SingleAdminDeleteGroupNotFound:
		return nil, v
	case *SingleAdminDeleteGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SingleAdminGetGroupContentsShort instead.

SingleAdminGetGroupContents (legacy) get contents belong to a group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) SingleAdminGetGroupContents(params *SingleAdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupContentsOK, *SingleAdminGetGroupContentsUnauthorized, *SingleAdminGetGroupContentsNotFound, *SingleAdminGetGroupContentsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetGroupContentsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminGetGroupContents",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetGroupContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetGroupContentsOK:
		return v, nil, nil, nil, nil

	case *SingleAdminGetGroupContentsUnauthorized:
		return nil, v, nil, nil, nil

	case *SingleAdminGetGroupContentsNotFound:
		return nil, nil, v, nil, nil

	case *SingleAdminGetGroupContentsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminGetGroupContentsShort (legacy) get contents belong to a group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) SingleAdminGetGroupContentsShort(params *SingleAdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupContentsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetGroupContentsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SingleAdminGetGroupContents",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetGroupContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetGroupContentsOK:
		return v, nil
	case *SingleAdminGetGroupContentsUnauthorized:
		return nil, v
	case *SingleAdminGetGroupContentsNotFound:
		return nil, v
	case *SingleAdminGetGroupContentsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetAllGroupsShort instead.

AdminGetAllGroups get all user groups
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [READ].
*/
func (a *Client) AdminGetAllGroups(params *AdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllGroupsOK, *AdminGetAllGroupsUnauthorized, *AdminGetAllGroupsNotFound, *AdminGetAllGroupsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetAllGroups",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllGroupsOK:
		return v, nil, nil, nil, nil

	case *AdminGetAllGroupsUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetAllGroupsNotFound:
		return nil, nil, v, nil, nil

	case *AdminGetAllGroupsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllGroupsShort get all user groups
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [READ].
*/
func (a *Client) AdminGetAllGroupsShort(params *AdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllGroupsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetAllGroups",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllGroupsOK:
		return v, nil
	case *AdminGetAllGroupsUnauthorized:
		return nil, v
	case *AdminGetAllGroupsNotFound:
		return nil, v
	case *AdminGetAllGroupsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetGroupShort instead.

AdminGetGroup get specific user group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [READ].
*/
func (a *Client) AdminGetGroup(params *AdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupOK, *AdminGetGroupUnauthorized, *AdminGetGroupNotFound, *AdminGetGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetGroup",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetGroupOK:
		return v, nil, nil, nil, nil

	case *AdminGetGroupUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetGroupNotFound:
		return nil, nil, v, nil, nil

	case *AdminGetGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetGroupShort get specific user group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [READ].
*/
func (a *Client) AdminGetGroupShort(params *AdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetGroup",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetGroupOK:
		return v, nil
	case *AdminGetGroupUnauthorized:
		return nil, v
	case *AdminGetGroupNotFound:
		return nil, v
	case *AdminGetGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateGroupShort instead.

AdminUpdateGroup update group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [UPDATE]
replace group name and contents with new ones.
*/
func (a *Client) AdminUpdateGroup(params *AdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGroupOK, *AdminUpdateGroupBadRequest, *AdminUpdateGroupUnauthorized, *AdminUpdateGroupNotFound, *AdminUpdateGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateGroup",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGroupOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateGroupBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateGroupUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateGroupNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateGroupInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateGroupShort update group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [UPDATE]
replace group name and contents with new ones.
*/
func (a *Client) AdminUpdateGroupShort(params *AdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateGroup",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGroupOK:
		return v, nil
	case *AdminUpdateGroupBadRequest:
		return nil, v
	case *AdminUpdateGroupUnauthorized:
		return nil, v
	case *AdminUpdateGroupNotFound:
		return nil, v
	case *AdminUpdateGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteGroupShort instead.

AdminDeleteGroup delete group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [DELETE]
*/
func (a *Client) AdminDeleteGroup(params *AdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGroupNoContent, *AdminDeleteGroupUnauthorized, *AdminDeleteGroupNotFound, *AdminDeleteGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGroupNoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteGroupUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteGroupNotFound:
		return nil, nil, v, nil, nil

	case *AdminDeleteGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteGroupShort delete group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [DELETE]
*/
func (a *Client) AdminDeleteGroupShort(params *AdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGroupNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGroupNoContent:
		return v, nil
	case *AdminDeleteGroupUnauthorized:
		return nil, v
	case *AdminDeleteGroupNotFound:
		return nil, v
	case *AdminDeleteGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetGroupContentsShort instead.

AdminGetGroupContents (legacy) get contents belong to a group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetGroupContents(params *AdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupContentsOK, *AdminGetGroupContentsUnauthorized, *AdminGetGroupContentsNotFound, *AdminGetGroupContentsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGroupContentsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetGroupContents",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGroupContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetGroupContentsOK:
		return v, nil, nil, nil, nil

	case *AdminGetGroupContentsUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetGroupContentsNotFound:
		return nil, nil, v, nil, nil

	case *AdminGetGroupContentsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetGroupContentsShort (legacy) get contents belong to a group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetGroupContentsShort(params *AdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupContentsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGroupContentsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetGroupContents",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGroupContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetGroupContentsOK:
		return v, nil
	case *AdminGetGroupContentsUnauthorized:
		return nil, v
	case *AdminGetGroupContentsNotFound:
		return nil, v
	case *AdminGetGroupContentsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetOfficialGroupContentsV2Short instead.

AdminGetOfficialGroupContentsV2 get contents belong to a group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetOfficialGroupContentsV2(params *AdminGetOfficialGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetOfficialGroupContentsV2OK, *AdminGetOfficialGroupContentsV2Unauthorized, *AdminGetOfficialGroupContentsV2NotFound, *AdminGetOfficialGroupContentsV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetOfficialGroupContentsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetOfficialGroupContentsV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetOfficialGroupContentsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetOfficialGroupContentsV2OK:
		return v, nil, nil, nil, nil

	case *AdminGetOfficialGroupContentsV2Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetOfficialGroupContentsV2NotFound:
		return nil, nil, v, nil, nil

	case *AdminGetOfficialGroupContentsV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetOfficialGroupContentsV2Short get contents belong to a group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetOfficialGroupContentsV2Short(params *AdminGetOfficialGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetOfficialGroupContentsV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetOfficialGroupContentsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetOfficialGroupContentsV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetOfficialGroupContentsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetOfficialGroupContentsV2OK:
		return v, nil
	case *AdminGetOfficialGroupContentsV2Unauthorized:
		return nil, v
	case *AdminGetOfficialGroupContentsV2NotFound:
		return nil, v
	case *AdminGetOfficialGroupContentsV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserGroupContentsV2Short instead.

AdminGetUserGroupContentsV2 get contents belong to a group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetUserGroupContentsV2(params *AdminGetUserGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserGroupContentsV2OK, *AdminGetUserGroupContentsV2Unauthorized, *AdminGetUserGroupContentsV2NotFound, *AdminGetUserGroupContentsV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserGroupContentsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserGroupContentsV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserGroupContentsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserGroupContentsV2OK:
		return v, nil, nil, nil, nil

	case *AdminGetUserGroupContentsV2Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetUserGroupContentsV2NotFound:
		return nil, nil, v, nil, nil

	case *AdminGetUserGroupContentsV2InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserGroupContentsV2Short get contents belong to a group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetUserGroupContentsV2Short(params *AdminGetUserGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserGroupContentsV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserGroupContentsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserGroupContentsV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserGroupContentsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserGroupContentsV2OK:
		return v, nil
	case *AdminGetUserGroupContentsV2Unauthorized:
		return nil, v
	case *AdminGetUserGroupContentsV2NotFound:
		return nil, v
	case *AdminGetUserGroupContentsV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
