// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package member_request

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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
	GetGroupInvitationRequestPublicV1(params *GetGroupInvitationRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupInvitationRequestPublicV1OK, *GetGroupInvitationRequestPublicV1BadRequest, *GetGroupInvitationRequestPublicV1Unauthorized, *GetGroupInvitationRequestPublicV1Forbidden, *GetGroupInvitationRequestPublicV1InternalServerError, error)
	GetGroupInvitationRequestPublicV1Short(params *GetGroupInvitationRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupInvitationRequestPublicV1OK, error)
	GetGroupJoinRequestPublicV1(params *GetGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupJoinRequestPublicV1OK, *GetGroupJoinRequestPublicV1BadRequest, *GetGroupJoinRequestPublicV1Unauthorized, *GetGroupJoinRequestPublicV1Forbidden, *GetGroupJoinRequestPublicV1InternalServerError, error)
	GetGroupJoinRequestPublicV1Short(params *GetGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupJoinRequestPublicV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: Use GetGroupInvitationRequestPublicV1Short instead.

  GetGroupInvitationRequestPublicV1 gets group invitation request list

  &lt;p&gt;Required valid user authentication &lt;/p&gt;
			&lt;p&gt;This endpoint is used to Get Group Invitation Request List&lt;/p&gt;
			&lt;p&gt;Get Group Invitation Request List for the user calling this endpoint. It will check any group invitation for this user&lt;/p&gt;
			&lt;p&gt;Action Code: 73502&lt;/p&gt;

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
  GetGroupInvitationRequestPublicV1Short gets group invitation request list

  &lt;p&gt;Required valid user authentication &lt;/p&gt;
			&lt;p&gt;This endpoint is used to Get Group Invitation Request List&lt;/p&gt;
			&lt;p&gt;Get Group Invitation Request List for the user calling this endpoint. It will check any group invitation for this user&lt;/p&gt;
			&lt;p&gt;Action Code: 73502&lt;/p&gt;

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
Deprecated: Use GetGroupJoinRequestPublicV1Short instead.

  GetGroupJoinRequestPublicV1 gets group join request list

  &lt;p&gt;Required valid user authentication &lt;/p&gt;
			&lt;p&gt;Required Member Role Permission: &#34;GROUP:JOIN [READ]&#34;&lt;/p&gt;
			&lt;p&gt;This endpoint is used to Get Group Join Request List&lt;/p&gt;
			&lt;p&gt;Get Group Join Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint&lt;/p&gt;
			&lt;p&gt;Action Code: 73501&lt;/p&gt;

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
  GetGroupJoinRequestPublicV1Short gets group join request list

  &lt;p&gt;Required valid user authentication &lt;/p&gt;
			&lt;p&gt;Required Member Role Permission: &#34;GROUP:JOIN [READ]&#34;&lt;/p&gt;
			&lt;p&gt;This endpoint is used to Get Group Join Request List&lt;/p&gt;
			&lt;p&gt;Get Group Join Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint&lt;/p&gt;
			&lt;p&gt;Action Code: 73501&lt;/p&gt;

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

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
