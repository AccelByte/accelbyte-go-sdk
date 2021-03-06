// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package public_group

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public group API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public group API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateGroup(params *CreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupCreated, *CreateGroupBadRequest, *CreateGroupUnauthorized, *CreateGroupInternalServerError, error)
	CreateGroupShort(params *CreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupCreated, error)
	DeleteGroup(params *DeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupNoContent, *DeleteGroupUnauthorized, *DeleteGroupNotFound, *DeleteGroupInternalServerError, error)
	DeleteGroupShort(params *DeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupNoContent, error)
	GetGroup(params *GetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupOK, *GetGroupUnauthorized, *GetGroupNotFound, *GetGroupInternalServerError, error)
	GetGroupShort(params *GetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupOK, error)
	GetGroupContent(params *GetGroupContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupContentOK, *GetGroupContentUnauthorized, *GetGroupContentNotFound, *GetGroupContentInternalServerError, error)
	GetGroupContentShort(params *GetGroupContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupContentOK, error)
	GetGroups(params *GetGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupsOK, *GetGroupsUnauthorized, *GetGroupsNotFound, *GetGroupsInternalServerError, error)
	GetGroupsShort(params *GetGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupsOK, error)
	UpdateGroup(params *UpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupOK, *UpdateGroupBadRequest, *UpdateGroupUnauthorized, *UpdateGroupNotFound, *UpdateGroupInternalServerError, error)
	UpdateGroupShort(params *UpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  CreateGroup creates groups

  Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [CREATE]
*/
func (a *Client) CreateGroup(params *CreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupCreated, *CreateGroupBadRequest, *CreateGroupUnauthorized, *CreateGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateGroup",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateGroupCreated:
		return v, nil, nil, nil, nil

	case *CreateGroupBadRequest:
		return nil, v, nil, nil, nil

	case *CreateGroupUnauthorized:
		return nil, nil, v, nil, nil

	case *CreateGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) CreateGroupShort(params *CreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateGroup",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateGroupCreated:
		return v, nil
	case *CreateGroupBadRequest:
		return nil, v
	case *CreateGroupUnauthorized:
		return nil, v
	case *CreateGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  DeleteGroup deletes group

  Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [DELETE]
*/
func (a *Client) DeleteGroup(params *DeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupNoContent, *DeleteGroupUnauthorized, *DeleteGroupNotFound, *DeleteGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupNoContent:
		return v, nil, nil, nil, nil

	case *DeleteGroupUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteGroupNotFound:
		return nil, nil, v, nil, nil

	case *DeleteGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) DeleteGroupShort(params *DeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupNoContent:
		return v, nil
	case *DeleteGroupUnauthorized:
		return nil, v
	case *DeleteGroupNotFound:
		return nil, v
	case *DeleteGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetGroup gets user s groups

  Required permission &lt;b&gt;NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [READ]&lt;/b&gt;.
*/
func (a *Client) GetGroup(params *GetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupOK, *GetGroupUnauthorized, *GetGroupNotFound, *GetGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetGroup",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGroupOK:
		return v, nil, nil, nil, nil

	case *GetGroupUnauthorized:
		return nil, v, nil, nil, nil

	case *GetGroupNotFound:
		return nil, nil, v, nil, nil

	case *GetGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetGroupShort(params *GetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetGroup",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupOK:
		return v, nil
	case *GetGroupUnauthorized:
		return nil, v
	case *GetGroupNotFound:
		return nil, v
	case *GetGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetGroupContent gets contents belong to a group

  Required permission &lt;b&gt;NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]&lt;/b&gt;.
*/
func (a *Client) GetGroupContent(params *GetGroupContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupContentOK, *GetGroupContentUnauthorized, *GetGroupContentNotFound, *GetGroupContentInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetGroupContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGroupContentOK:
		return v, nil, nil, nil, nil

	case *GetGroupContentUnauthorized:
		return nil, v, nil, nil, nil

	case *GetGroupContentNotFound:
		return nil, nil, v, nil, nil

	case *GetGroupContentInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetGroupContentShort(params *GetGroupContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetGroupContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupContentOK:
		return v, nil
	case *GetGroupContentUnauthorized:
		return nil, v
	case *GetGroupContentNotFound:
		return nil, v
	case *GetGroupContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetGroups gets all user groups

  Required permission &lt;b&gt;NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [READ]&lt;/b&gt;.
*/
func (a *Client) GetGroups(params *GetGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupsOK, *GetGroupsUnauthorized, *GetGroupsNotFound, *GetGroupsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetGroups",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGroupsOK:
		return v, nil, nil, nil, nil

	case *GetGroupsUnauthorized:
		return nil, v, nil, nil, nil

	case *GetGroupsNotFound:
		return nil, nil, v, nil, nil

	case *GetGroupsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetGroupsShort(params *GetGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetGroups",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupsOK:
		return v, nil
	case *GetGroupsUnauthorized:
		return nil, v
	case *GetGroupsNotFound:
		return nil, v
	case *GetGroupsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  UpdateGroup updates group

  Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [UPDATE]
				replace group name and contents with new ones
*/
func (a *Client) UpdateGroup(params *UpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupOK, *UpdateGroupBadRequest, *UpdateGroupUnauthorized, *UpdateGroupNotFound, *UpdateGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateGroup",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateGroupBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateGroupUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateGroupNotFound:
		return nil, nil, nil, v, nil, nil

	case *UpdateGroupInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) UpdateGroupShort(params *UpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateGroup",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupOK:
		return v, nil
	case *UpdateGroupBadRequest:
		return nil, v
	case *UpdateGroupUnauthorized:
		return nil, v
	case *UpdateGroupNotFound:
		return nil, v
	case *UpdateGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
