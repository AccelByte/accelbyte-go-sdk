// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package achievement_platform

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new achievement platform API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for achievement platform API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetXblUserAchievements(params *GetXblUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblUserAchievementsOK, *GetXblUserAchievementsBadRequest, error)
	GetXblUserAchievementsShort(params *GetXblUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblUserAchievementsOK, error)
	UnlockSteamUserAchievement(params *UnlockSteamUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UnlockSteamUserAchievementNoContent, *UnlockSteamUserAchievementBadRequest, *UnlockSteamUserAchievementNotFound, error)
	UnlockSteamUserAchievementShort(params *UnlockSteamUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UnlockSteamUserAchievementNoContent, error)
	UpdateXblUserAchievement(params *UpdateXblUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblUserAchievementNoContent, *UpdateXblUserAchievementBadRequest, error)
	UpdateXblUserAchievementShort(params *UpdateXblUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblUserAchievementNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  GetXblUserAchievements gets xbox live user achievements

  This API is used to get xbox live user achievements(Only for test).&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=ADMIN:NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT, action=2 (READ)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetXblUserAchievements(params *GetXblUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblUserAchievementsOK, *GetXblUserAchievementsBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetXblUserAchievementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getXblUserAchievements",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetXblUserAchievementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetXblUserAchievementsOK:
		return v, nil, nil

	case *GetXblUserAchievementsBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetXblUserAchievementsShort(params *GetXblUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblUserAchievementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetXblUserAchievementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getXblUserAchievements",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetXblUserAchievementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetXblUserAchievementsOK:
		return v, nil
	case *GetXblUserAchievementsBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  UnlockSteamUserAchievement unlocks steam achievement

  This API is used to unlock steam achievement.&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=ADMIN:NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT, action=4 (UPDATE)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) UnlockSteamUserAchievement(params *UnlockSteamUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UnlockSteamUserAchievementNoContent, *UnlockSteamUserAchievementBadRequest, *UnlockSteamUserAchievementNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnlockSteamUserAchievementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "unlockSteamUserAchievement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/achievement/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnlockSteamUserAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UnlockSteamUserAchievementNoContent:
		return v, nil, nil, nil

	case *UnlockSteamUserAchievementBadRequest:
		return nil, v, nil, nil

	case *UnlockSteamUserAchievementNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) UnlockSteamUserAchievementShort(params *UnlockSteamUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UnlockSteamUserAchievementNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnlockSteamUserAchievementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "unlockSteamUserAchievement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/achievement/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnlockSteamUserAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnlockSteamUserAchievementNoContent:
		return v, nil
	case *UnlockSteamUserAchievementBadRequest:
		return nil, v
	case *UnlockSteamUserAchievementNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  UpdateXblUserAchievement updates xbox live achievements

  This API is used to update xbox live achievements.&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=ADMIN:NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT, action=4 (UPDATE)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) UpdateXblUserAchievement(params *UpdateXblUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblUserAchievementNoContent, *UpdateXblUserAchievementBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXblUserAchievementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateXblUserAchievement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXblUserAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateXblUserAchievementNoContent:
		return v, nil, nil

	case *UpdateXblUserAchievementBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) UpdateXblUserAchievementShort(params *UpdateXblUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblUserAchievementNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXblUserAchievementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateXblUserAchievement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXblUserAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXblUserAchievementNoContent:
		return v, nil
	case *UpdateXblUserAchievementBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
