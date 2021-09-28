// Code generated by go-swagger; DO NOT EDIT.

package nr_public_follow

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new nr public follow API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for nr public follow API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetFollowedContent(params *GetFollowedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedContentOK, *GetFollowedContentUnauthorized, *GetFollowedContentNotFound, *GetFollowedContentInternalServerError, error)

	GetFollowedUsers(params *GetFollowedUsersParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedUsersOK, *GetFollowedUsersUnauthorized, *GetFollowedUsersNotFound, *GetFollowedUsersInternalServerError, error)

	UpdateUserFollowStatus(params *UpdateUserFollowStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserFollowStatusOK, *UpdateUserFollowStatusBadRequest, *UpdateUserFollowStatusUnauthorized, *UpdateUserFollowStatusNotFound, *UpdateUserFollowStatusInternalServerError, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  GetFollowedContent gets contents from followed creators

  Requires valid user token
*/
func (a *Client) GetFollowedContent(params *GetFollowedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedContentOK, *GetFollowedContentUnauthorized, *GetFollowedContentNotFound, *GetFollowedContentInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetFollowedContentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetFollowedContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/followed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &GetFollowedContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetFollowedContentOK:
		return v, nil, nil, nil, nil
	case *GetFollowedContentUnauthorized:
		return nil, v, nil, nil, nil
	case *GetFollowedContentNotFound:
		return nil, nil, v, nil, nil
	case *GetFollowedContentInternalServerError:
		return nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetFollowedUsers gets followed creators

  Requires valid user token
*/
func (a *Client) GetFollowedUsers(params *GetFollowedUsersParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedUsersOK, *GetFollowedUsersUnauthorized, *GetFollowedUsersNotFound, *GetFollowedUsersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetFollowedUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetFollowedUsers",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/followed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &GetFollowedUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetFollowedUsersOK:
		return v, nil, nil, nil, nil
	case *GetFollowedUsersUnauthorized:
		return nil, v, nil, nil, nil
	case *GetFollowedUsersNotFound:
		return nil, nil, v, nil, nil
	case *GetFollowedUsersInternalServerError:
		return nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  UpdateUserFollowStatus updates follow unfollow status to a user

  Requires valid user token
*/
func (a *Client) UpdateUserFollowStatus(params *UpdateUserFollowStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserFollowStatusOK, *UpdateUserFollowStatusBadRequest, *UpdateUserFollowStatusUnauthorized, *UpdateUserFollowStatusNotFound, *UpdateUserFollowStatusInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserFollowStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateUserFollowStatus",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/follow",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &UpdateUserFollowStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserFollowStatusOK:
		return v, nil, nil, nil, nil, nil
	case *UpdateUserFollowStatusBadRequest:
		return nil, v, nil, nil, nil, nil
	case *UpdateUserFollowStatusUnauthorized:
		return nil, nil, v, nil, nil, nil
	case *UpdateUserFollowStatusNotFound:
		return nil, nil, nil, v, nil, nil
	case *UpdateUserFollowStatusInternalServerError:
		return nil, nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
