// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package member_request

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new member request API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for member request API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetGroupJoinRequestPublicV1(params *GetGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupJoinRequestPublicV1OK, *GetGroupJoinRequestPublicV1BadRequest, *GetGroupJoinRequestPublicV1Unauthorized, *GetGroupJoinRequestPublicV1Forbidden, *GetGroupJoinRequestPublicV1InternalServerError, error)
	GetGroupJoinRequestPublicV1Short(params *GetGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupJoinRequestPublicV1OK, error)
	GetGroupInvitationRequestPublicV1(params *GetGroupInvitationRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupInvitationRequestPublicV1OK, *GetGroupInvitationRequestPublicV1BadRequest, *GetGroupInvitationRequestPublicV1Unauthorized, *GetGroupInvitationRequestPublicV1Forbidden, *GetGroupInvitationRequestPublicV1InternalServerError, error)
	GetGroupInvitationRequestPublicV1Short(params *GetGroupInvitationRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupInvitationRequestPublicV1OK, error)
	GetGroupInviteRequestPublicV2(params *GetGroupInviteRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupInviteRequestPublicV2OK, *GetGroupInviteRequestPublicV2BadRequest, *GetGroupInviteRequestPublicV2Unauthorized, *GetGroupInviteRequestPublicV2Forbidden, *GetGroupInviteRequestPublicV2InternalServerError, error)
	GetGroupInviteRequestPublicV2Short(params *GetGroupInviteRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupInviteRequestPublicV2OK, error)
	GetGroupJoinRequestPublicV2(params *GetGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupJoinRequestPublicV2OK, *GetGroupJoinRequestPublicV2BadRequest, *GetGroupJoinRequestPublicV2Unauthorized, *GetGroupJoinRequestPublicV2Forbidden, *GetGroupJoinRequestPublicV2InternalServerError, error)
	GetGroupJoinRequestPublicV2Short(params *GetGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupJoinRequestPublicV2OK, error)
	GetMyGroupJoinRequestV2(params *GetMyGroupJoinRequestV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetMyGroupJoinRequestV2OK, *GetMyGroupJoinRequestV2BadRequest, *GetMyGroupJoinRequestV2Unauthorized, *GetMyGroupJoinRequestV2Forbidden, *GetMyGroupJoinRequestV2InternalServerError, error)
	GetMyGroupJoinRequestV2Short(params *GetMyGroupJoinRequestV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetMyGroupJoinRequestV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetGroupJoinRequestPublicV1Short instead.

GetGroupJoinRequestPublicV1 get group join request list


Required valid user authentication




Required Member Role Permission: "GROUP:JOIN [READ]"




This endpoint is used to Get Group Join Request List




Get Group Join Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint




Action Code: 73501
*/
func (a *Client) GetGroupJoinRequestPublicV1(params *GetGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupJoinRequestPublicV1OK, *GetGroupJoinRequestPublicV1BadRequest, *GetGroupJoinRequestPublicV1Unauthorized, *GetGroupJoinRequestPublicV1Forbidden, *GetGroupJoinRequestPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupJoinRequestPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupJoinRequestPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/join/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupJoinRequestPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGroupJoinRequestPublicV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetGroupJoinRequestPublicV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetGroupJoinRequestPublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetGroupJoinRequestPublicV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetGroupJoinRequestPublicV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupJoinRequestPublicV1Short get group join request list


Required valid user authentication




Required Member Role Permission: "GROUP:JOIN [READ]"




This endpoint is used to Get Group Join Request List




Get Group Join Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint




Action Code: 73501
*/
func (a *Client) GetGroupJoinRequestPublicV1Short(params *GetGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupJoinRequestPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupJoinRequestPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupJoinRequestPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/join/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupJoinRequestPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupJoinRequestPublicV1OK:
		return v, nil
	case *GetGroupJoinRequestPublicV1BadRequest:
		return nil, v
	case *GetGroupJoinRequestPublicV1Unauthorized:
		return nil, v
	case *GetGroupJoinRequestPublicV1Forbidden:
		return nil, v
	case *GetGroupJoinRequestPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGroupInvitationRequestPublicV1Short instead.

GetGroupInvitationRequestPublicV1 get group invitation request list


Required valid user authentication




This endpoint is used to Get Group Invitation Request List




Get Group Invitation Request List for the user calling this endpoint. It will check any group invitation for this user




Action Code: 73502
*/
func (a *Client) GetGroupInvitationRequestPublicV1(params *GetGroupInvitationRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupInvitationRequestPublicV1OK, *GetGroupInvitationRequestPublicV1BadRequest, *GetGroupInvitationRequestPublicV1Unauthorized, *GetGroupInvitationRequestPublicV1Forbidden, *GetGroupInvitationRequestPublicV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupInvitationRequestPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupInvitationRequestPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/users/me/invite/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupInvitationRequestPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGroupInvitationRequestPublicV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetGroupInvitationRequestPublicV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetGroupInvitationRequestPublicV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetGroupInvitationRequestPublicV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetGroupInvitationRequestPublicV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupInvitationRequestPublicV1Short get group invitation request list


Required valid user authentication




This endpoint is used to Get Group Invitation Request List




Get Group Invitation Request List for the user calling this endpoint. It will check any group invitation for this user




Action Code: 73502
*/
func (a *Client) GetGroupInvitationRequestPublicV1Short(params *GetGroupInvitationRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupInvitationRequestPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupInvitationRequestPublicV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupInvitationRequestPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/users/me/invite/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupInvitationRequestPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupInvitationRequestPublicV1OK:
		return v, nil
	case *GetGroupInvitationRequestPublicV1BadRequest:
		return nil, v
	case *GetGroupInvitationRequestPublicV1Unauthorized:
		return nil, v
	case *GetGroupInvitationRequestPublicV1Forbidden:
		return nil, v
	case *GetGroupInvitationRequestPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGroupInviteRequestPublicV2Short instead.

GetGroupInviteRequestPublicV2 get group invite request list


Required valid user authentication




Required Member Role Permission: "GROUP:JOIN [READ]"




This endpoint is used to Get Group Invite Request List




Get Group Invite Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint




Action Code: 73501
*/
func (a *Client) GetGroupInviteRequestPublicV2(params *GetGroupInviteRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupInviteRequestPublicV2OK, *GetGroupInviteRequestPublicV2BadRequest, *GetGroupInviteRequestPublicV2Unauthorized, *GetGroupInviteRequestPublicV2Forbidden, *GetGroupInviteRequestPublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupInviteRequestPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupInviteRequestPublicV2",
		Method:             "GET",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupInviteRequestPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGroupInviteRequestPublicV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetGroupInviteRequestPublicV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetGroupInviteRequestPublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetGroupInviteRequestPublicV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetGroupInviteRequestPublicV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupInviteRequestPublicV2Short get group invite request list


Required valid user authentication




Required Member Role Permission: "GROUP:JOIN [READ]"




This endpoint is used to Get Group Invite Request List




Get Group Invite Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint




Action Code: 73501
*/
func (a *Client) GetGroupInviteRequestPublicV2Short(params *GetGroupInviteRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupInviteRequestPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupInviteRequestPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupInviteRequestPublicV2",
		Method:             "GET",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupInviteRequestPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupInviteRequestPublicV2OK:
		return v, nil
	case *GetGroupInviteRequestPublicV2BadRequest:
		return nil, v
	case *GetGroupInviteRequestPublicV2Unauthorized:
		return nil, v
	case *GetGroupInviteRequestPublicV2Forbidden:
		return nil, v
	case *GetGroupInviteRequestPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGroupJoinRequestPublicV2Short instead.

GetGroupJoinRequestPublicV2 get group join request list


Required valid user authentication




Required Member Role Permission: "GROUP:JOIN [READ]"




This endpoint is used to Get Group Join Request List




Get Group Join Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint




Action Code: 73501
*/
func (a *Client) GetGroupJoinRequestPublicV2(params *GetGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupJoinRequestPublicV2OK, *GetGroupJoinRequestPublicV2BadRequest, *GetGroupJoinRequestPublicV2Unauthorized, *GetGroupJoinRequestPublicV2Forbidden, *GetGroupJoinRequestPublicV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupJoinRequestPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupJoinRequestPublicV2",
		Method:             "GET",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/join/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupJoinRequestPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGroupJoinRequestPublicV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetGroupJoinRequestPublicV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetGroupJoinRequestPublicV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetGroupJoinRequestPublicV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetGroupJoinRequestPublicV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupJoinRequestPublicV2Short get group join request list


Required valid user authentication




Required Member Role Permission: "GROUP:JOIN [READ]"




This endpoint is used to Get Group Join Request List




Get Group Join Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint




Action Code: 73501
*/
func (a *Client) GetGroupJoinRequestPublicV2Short(params *GetGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupJoinRequestPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupJoinRequestPublicV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupJoinRequestPublicV2",
		Method:             "GET",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/join/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupJoinRequestPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupJoinRequestPublicV2OK:
		return v, nil
	case *GetGroupJoinRequestPublicV2BadRequest:
		return nil, v
	case *GetGroupJoinRequestPublicV2Unauthorized:
		return nil, v
	case *GetGroupJoinRequestPublicV2Forbidden:
		return nil, v
	case *GetGroupJoinRequestPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetMyGroupJoinRequestV2Short instead.

GetMyGroupJoinRequestV2 get my join request to the groups


Required valid user authentication




This endpoint is used to Get My Join Request To The Groups




Get My Join Request To The Groups for the user calling this endpoint. It will check any join request group for this user




Action Code: 73502
*/
func (a *Client) GetMyGroupJoinRequestV2(params *GetMyGroupJoinRequestV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetMyGroupJoinRequestV2OK, *GetMyGroupJoinRequestV2BadRequest, *GetMyGroupJoinRequestV2Unauthorized, *GetMyGroupJoinRequestV2Forbidden, *GetMyGroupJoinRequestV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyGroupJoinRequestV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetMyGroupJoinRequestV2",
		Method:             "GET",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/users/me/join/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyGroupJoinRequestV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetMyGroupJoinRequestV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetMyGroupJoinRequestV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetMyGroupJoinRequestV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetMyGroupJoinRequestV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetMyGroupJoinRequestV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMyGroupJoinRequestV2Short get my join request to the groups


Required valid user authentication




This endpoint is used to Get My Join Request To The Groups




Get My Join Request To The Groups for the user calling this endpoint. It will check any join request group for this user




Action Code: 73502
*/
func (a *Client) GetMyGroupJoinRequestV2Short(params *GetMyGroupJoinRequestV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetMyGroupJoinRequestV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyGroupJoinRequestV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetMyGroupJoinRequestV2",
		Method:             "GET",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/users/me/join/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyGroupJoinRequestV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMyGroupJoinRequestV2OK:
		return v, nil
	case *GetMyGroupJoinRequestV2BadRequest:
		return nil, v
	case *GetMyGroupJoinRequestV2Unauthorized:
		return nil, v
	case *GetMyGroupJoinRequestV2Forbidden:
		return nil, v
	case *GetMyGroupJoinRequestV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
