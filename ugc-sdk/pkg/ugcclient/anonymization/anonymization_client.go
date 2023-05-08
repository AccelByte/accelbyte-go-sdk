// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package anonymization

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new anonymization API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for anonymization API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminDeleteAllUserChannels(params *AdminDeleteAllUserChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserChannelsNoContent, *AdminDeleteAllUserChannelsUnauthorized, *AdminDeleteAllUserChannelsNotFound, *AdminDeleteAllUserChannelsInternalServerError, error)
	AdminDeleteAllUserChannelsShort(params *AdminDeleteAllUserChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserChannelsNoContent, error)
	AdminDeleteAllUserContents(params *AdminDeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserContentsNoContent, *AdminDeleteAllUserContentsUnauthorized, *AdminDeleteAllUserContentsNotFound, *AdminDeleteAllUserContentsInternalServerError, error)
	AdminDeleteAllUserContentsShort(params *AdminDeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserContentsNoContent, error)
	AdminDeleteAllUserGroup(params *AdminDeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserGroupNoContent, *AdminDeleteAllUserGroupUnauthorized, *AdminDeleteAllUserGroupNotFound, *AdminDeleteAllUserGroupInternalServerError, error)
	AdminDeleteAllUserGroupShort(params *AdminDeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserGroupNoContent, error)
	AdminDeleteAllUserStates(params *AdminDeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserStatesNoContent, *AdminDeleteAllUserStatesBadRequest, *AdminDeleteAllUserStatesUnauthorized, *AdminDeleteAllUserStatesInternalServerError, error)
	AdminDeleteAllUserStatesShort(params *AdminDeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserStatesNoContent, error)
	DeleteAllUserChannel(params *DeleteAllUserChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserChannelNoContent, *DeleteAllUserChannelUnauthorized, *DeleteAllUserChannelNotFound, *DeleteAllUserChannelInternalServerError, error)
	DeleteAllUserChannelShort(params *DeleteAllUserChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserChannelNoContent, error)
	DeleteAllUserContents(params *DeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserContentsNoContent, *DeleteAllUserContentsUnauthorized, *DeleteAllUserContentsNotFound, *DeleteAllUserContentsInternalServerError, error)
	DeleteAllUserContentsShort(params *DeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserContentsNoContent, error)
	DeleteAllUserGroup(params *DeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserGroupNoContent, *DeleteAllUserGroupUnauthorized, *DeleteAllUserGroupNotFound, *DeleteAllUserGroupInternalServerError, error)
	DeleteAllUserGroupShort(params *DeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserGroupNoContent, error)
	DeleteAllUserStates(params *DeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserStatesNoContent, *DeleteAllUserStatesBadRequest, *DeleteAllUserStatesUnauthorized, *DeleteAllUserStatesInternalServerError, error)
	DeleteAllUserStatesShort(params *DeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserStatesNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteAllUserChannelsShort instead.

AdminDeleteAllUserChannels delete all user channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]
*/
func (a *Client) AdminDeleteAllUserChannels(params *AdminDeleteAllUserChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserChannelsNoContent, *AdminDeleteAllUserChannelsUnauthorized, *AdminDeleteAllUserChannelsNotFound, *AdminDeleteAllUserChannelsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserChannelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteAllUserChannels",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserChannelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserChannelsNoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteAllUserChannelsUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteAllUserChannelsNotFound:
		return nil, nil, v, nil, nil

	case *AdminDeleteAllUserChannelsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAllUserChannelsShort delete all user channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]
*/
func (a *Client) AdminDeleteAllUserChannelsShort(params *AdminDeleteAllUserChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserChannelsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserChannelsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteAllUserChannels",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserChannelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserChannelsNoContent:
		return v, nil
	case *AdminDeleteAllUserChannelsUnauthorized:
		return nil, v
	case *AdminDeleteAllUserChannelsNotFound:
		return nil, v
	case *AdminDeleteAllUserChannelsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteAllUserContentsShort instead.

AdminDeleteAllUserContents delete all user content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteAllUserContents(params *AdminDeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserContentsNoContent, *AdminDeleteAllUserContentsUnauthorized, *AdminDeleteAllUserContentsNotFound, *AdminDeleteAllUserContentsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserContentsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteAllUserContents",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserContentsNoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteAllUserContentsUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteAllUserContentsNotFound:
		return nil, nil, v, nil, nil

	case *AdminDeleteAllUserContentsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAllUserContentsShort delete all user content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteAllUserContentsShort(params *AdminDeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserContentsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserContentsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteAllUserContents",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserContentsNoContent:
		return v, nil
	case *AdminDeleteAllUserContentsUnauthorized:
		return nil, v
	case *AdminDeleteAllUserContentsNotFound:
		return nil, v
	case *AdminDeleteAllUserContentsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteAllUserGroupShort instead.

AdminDeleteAllUserGroup delete all user group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [DELETE]
*/
func (a *Client) AdminDeleteAllUserGroup(params *AdminDeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserGroupNoContent, *AdminDeleteAllUserGroupUnauthorized, *AdminDeleteAllUserGroupNotFound, *AdminDeleteAllUserGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteAllUserGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserGroupNoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteAllUserGroupUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteAllUserGroupNotFound:
		return nil, nil, v, nil, nil

	case *AdminDeleteAllUserGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAllUserGroupShort delete all user group
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [DELETE]
*/
func (a *Client) AdminDeleteAllUserGroupShort(params *AdminDeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserGroupNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteAllUserGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserGroupNoContent:
		return v, nil
	case *AdminDeleteAllUserGroupUnauthorized:
		return nil, v
	case *AdminDeleteAllUserGroupNotFound:
		return nil, v
	case *AdminDeleteAllUserGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteAllUserStatesShort instead.

AdminDeleteAllUserStates remove all user related state: likes, downloads, followers, following
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]
*/
func (a *Client) AdminDeleteAllUserStates(params *AdminDeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserStatesNoContent, *AdminDeleteAllUserStatesBadRequest, *AdminDeleteAllUserStatesUnauthorized, *AdminDeleteAllUserStatesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserStatesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteAllUserStates",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/states",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserStatesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserStatesNoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteAllUserStatesBadRequest:
		return nil, v, nil, nil, nil

	case *AdminDeleteAllUserStatesUnauthorized:
		return nil, nil, v, nil, nil

	case *AdminDeleteAllUserStatesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAllUserStatesShort remove all user related state: likes, downloads, followers, following
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]
*/
func (a *Client) AdminDeleteAllUserStatesShort(params *AdminDeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserStatesNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserStatesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteAllUserStates",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/states",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserStatesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserStatesNoContent:
		return v, nil
	case *AdminDeleteAllUserStatesBadRequest:
		return nil, v
	case *AdminDeleteAllUserStatesUnauthorized:
		return nil, v
	case *AdminDeleteAllUserStatesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteAllUserChannelShort instead.

DeleteAllUserChannel delete all user channel
Required permission NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]
*/
func (a *Client) DeleteAllUserChannel(params *DeleteAllUserChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserChannelNoContent, *DeleteAllUserChannelUnauthorized, *DeleteAllUserChannelNotFound, *DeleteAllUserChannelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAllUserChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserChannelNoContent:
		return v, nil, nil, nil, nil

	case *DeleteAllUserChannelUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteAllUserChannelNotFound:
		return nil, nil, v, nil, nil

	case *DeleteAllUserChannelInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserChannelShort delete all user channel
Required permission NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]
*/
func (a *Client) DeleteAllUserChannelShort(params *DeleteAllUserChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserChannelNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserChannelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAllUserChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserChannelNoContent:
		return v, nil
	case *DeleteAllUserChannelUnauthorized:
		return nil, v
	case *DeleteAllUserChannelNotFound:
		return nil, v
	case *DeleteAllUserChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteAllUserContentsShort instead.

DeleteAllUserContents delete all user content
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) DeleteAllUserContents(params *DeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserContentsNoContent, *DeleteAllUserContentsUnauthorized, *DeleteAllUserContentsNotFound, *DeleteAllUserContentsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserContentsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAllUserContents",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserContentsNoContent:
		return v, nil, nil, nil, nil

	case *DeleteAllUserContentsUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteAllUserContentsNotFound:
		return nil, nil, v, nil, nil

	case *DeleteAllUserContentsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserContentsShort delete all user content
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) DeleteAllUserContentsShort(params *DeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserContentsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserContentsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAllUserContents",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserContentsNoContent:
		return v, nil
	case *DeleteAllUserContentsUnauthorized:
		return nil, v
	case *DeleteAllUserContentsNotFound:
		return nil, v
	case *DeleteAllUserContentsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteAllUserGroupShort instead.

DeleteAllUserGroup delete all user group
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [DELETE]
*/
func (a *Client) DeleteAllUserGroup(params *DeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserGroupNoContent, *DeleteAllUserGroupUnauthorized, *DeleteAllUserGroupNotFound, *DeleteAllUserGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAllUserGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserGroupNoContent:
		return v, nil, nil, nil, nil

	case *DeleteAllUserGroupUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteAllUserGroupNotFound:
		return nil, nil, v, nil, nil

	case *DeleteAllUserGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserGroupShort delete all user group
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENTGROUP [DELETE]
*/
func (a *Client) DeleteAllUserGroupShort(params *DeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserGroupNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAllUserGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserGroupNoContent:
		return v, nil
	case *DeleteAllUserGroupUnauthorized:
		return nil, v
	case *DeleteAllUserGroupNotFound:
		return nil, v
	case *DeleteAllUserGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteAllUserStatesShort instead.

DeleteAllUserStates remove all user related state: likes, downloads, followers, following
Required permission NAMESPACE:{namespace}:USER:{userId}" [DELETE]
*/
func (a *Client) DeleteAllUserStates(params *DeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserStatesNoContent, *DeleteAllUserStatesBadRequest, *DeleteAllUserStatesUnauthorized, *DeleteAllUserStatesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserStatesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAllUserStates",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/states",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserStatesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserStatesNoContent:
		return v, nil, nil, nil, nil

	case *DeleteAllUserStatesBadRequest:
		return nil, v, nil, nil, nil

	case *DeleteAllUserStatesUnauthorized:
		return nil, nil, v, nil, nil

	case *DeleteAllUserStatesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserStatesShort remove all user related state: likes, downloads, followers, following
Required permission NAMESPACE:{namespace}:USER:{userId}" [DELETE]
*/
func (a *Client) DeleteAllUserStatesShort(params *DeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserStatesNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserStatesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAllUserStates",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/states",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserStatesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserStatesNoContent:
		return v, nil
	case *DeleteAllUserStatesBadRequest:
		return nil, v
	case *DeleteAllUserStatesUnauthorized:
		return nil, v
	case *DeleteAllUserStatesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
