// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package game_profile

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new game profile API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for game profile API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetProfile(params *GetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*GetProfileOK, *GetProfileNotFound, error)
	GetProfileShort(params *GetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*GetProfileOK, error)
	GetUserProfiles(params *GetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfilesOK, error)
	GetUserProfilesShort(params *GetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfilesOK, error)
	PublicCreateProfile(params *PublicCreateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateProfileCreated, *PublicCreateProfileUnprocessableEntity, error)
	PublicCreateProfileShort(params *PublicCreateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateProfileCreated, error)
	PublicDeleteProfile(params *PublicDeleteProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteProfileNoContent, *PublicDeleteProfileNotFound, error)
	PublicDeleteProfileShort(params *PublicDeleteProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteProfileNoContent, error)
	PublicGetProfile(params *PublicGetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileOK, *PublicGetProfileNotFound, error)
	PublicGetProfileShort(params *PublicGetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileOK, error)
	PublicGetProfileAttribute(params *PublicGetProfileAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileAttributeOK, *PublicGetProfileAttributeNotFound, error)
	PublicGetProfileAttributeShort(params *PublicGetProfileAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileAttributeOK, error)
	PublicGetUserGameProfiles(params *PublicGetUserGameProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserGameProfilesOK, *PublicGetUserGameProfilesBadRequest, error)
	PublicGetUserGameProfilesShort(params *PublicGetUserGameProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserGameProfilesOK, error)
	PublicGetUserProfiles(params *PublicGetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfilesOK, error)
	PublicGetUserProfilesShort(params *PublicGetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfilesOK, error)
	PublicUpdateAttribute(params *PublicUpdateAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateAttributeOK, *PublicUpdateAttributeBadRequest, *PublicUpdateAttributeNotFound, error)
	PublicUpdateAttributeShort(params *PublicUpdateAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateAttributeOK, error)
	PublicUpdateProfile(params *PublicUpdateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateProfileOK, *PublicUpdateProfileNotFound, *PublicUpdateProfileUnprocessableEntity, error)
	PublicUpdateProfileShort(params *PublicUpdateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateProfileOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  GetProfile returns profile for a user

  Returns profile for a user.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: game profile info&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetProfile(params *GetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*GetProfileOK, *GetProfileNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getProfile",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetProfileOK:
		return v, nil, nil

	case *GetProfileNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetProfileShort(params *GetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*GetProfileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getProfile",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetProfileOK:
		return v, nil
	case *GetProfileNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetUserProfiles returns all profiles header for a user

  Returns all profiles&#39; header for a user.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: list of profiles&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetUserProfiles(params *GetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfilesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserProfilesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserProfiles",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserProfilesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserProfilesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetUserProfilesShort(params *GetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfilesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserProfilesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserProfiles",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserProfilesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserProfilesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicCreateProfile creates a new profile for user

  Create new profile for user.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/li&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE&#34;, action=1 (CREATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/li&gt;: created game profile&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicCreateProfile(params *PublicCreateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateProfileCreated, *PublicCreateProfileUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCreateProfile",
		Method:             "POST",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateProfileCreated:
		return v, nil, nil

	case *PublicCreateProfileUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicCreateProfileShort(params *PublicCreateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateProfileCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCreateProfile",
		Method:             "POST",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateProfileCreated:
		return v, nil
	case *PublicCreateProfileUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicDeleteProfile deletes game profile

  Deletes game profile.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE&#34;, action=8 (DELETE)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicDeleteProfile(params *PublicDeleteProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteProfileNoContent, *PublicDeleteProfileNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeleteProfile",
		Method:             "DELETE",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteProfileNoContent:
		return v, nil, nil

	case *PublicDeleteProfileNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicDeleteProfileShort(params *PublicDeleteProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteProfileNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeleteProfile",
		Method:             "DELETE",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteProfileNoContent:
		return v, nil
	case *PublicDeleteProfileNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetProfile returns profile for a user

  Returns profile for a user.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: game profile info&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicGetProfile(params *PublicGetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileOK, *PublicGetProfileNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetProfile",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetProfileOK:
		return v, nil, nil

	case *PublicGetProfileNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetProfileShort(params *PublicGetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetProfile",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetProfileOK:
		return v, nil
	case *PublicGetProfileNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetProfileAttribute returns game profile attribute

  Returns game profile attribute.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: attribute info&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicGetProfileAttribute(params *PublicGetProfileAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileAttributeOK, *PublicGetProfileAttributeNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetProfileAttributeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetProfileAttribute",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetProfileAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetProfileAttributeOK:
		return v, nil, nil

	case *PublicGetProfileAttributeNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetProfileAttributeShort(params *PublicGetProfileAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileAttributeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetProfileAttributeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetProfileAttribute",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetProfileAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetProfileAttributeOK:
		return v, nil
	case *PublicGetProfileAttributeNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetUserGameProfiles returns all profiles for specified users

  Returns all profiles for specified users.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:GAMEPROFILE&#34;, action=2 (READ)
&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: list of profiles&lt;/ul&gt;
*/
func (a *Client) PublicGetUserGameProfiles(params *PublicGetUserGameProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserGameProfilesOK, *PublicGetUserGameProfilesBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserGameProfilesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserGameProfiles",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserGameProfilesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserGameProfilesOK:
		return v, nil, nil

	case *PublicGetUserGameProfilesBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetUserGameProfilesShort(params *PublicGetUserGameProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserGameProfilesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserGameProfilesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserGameProfiles",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserGameProfilesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserGameProfilesOK:
		return v, nil
	case *PublicGetUserGameProfilesBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetUserProfiles returns all profiles header for a user

  Returns all profiles&#39; header for a user.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: list of profiles&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicGetUserProfiles(params *PublicGetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfilesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfilesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserProfiles",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfilesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfilesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetUserProfilesShort(params *PublicGetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfilesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfilesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserProfiles",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfilesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfilesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicUpdateAttribute updates game profile attribute

  Updates game profile attribute, returns updated profile.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: updated attribute&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicUpdateAttribute(params *PublicUpdateAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateAttributeOK, *PublicUpdateAttributeBadRequest, *PublicUpdateAttributeNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateAttributeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateAttribute",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateAttributeOK:
		return v, nil, nil, nil

	case *PublicUpdateAttributeBadRequest:
		return nil, v, nil, nil

	case *PublicUpdateAttributeNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicUpdateAttributeShort(params *PublicUpdateAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateAttributeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateAttributeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateAttribute",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateAttributeOK:
		return v, nil
	case *PublicUpdateAttributeBadRequest:
		return nil, v
	case *PublicUpdateAttributeNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicUpdateProfile updates user game profile

  Updates user game profile, returns updated profile.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: updated game profile&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicUpdateProfile(params *PublicUpdateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateProfileOK, *PublicUpdateProfileNotFound, *PublicUpdateProfileUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateProfile",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateProfileOK:
		return v, nil, nil, nil

	case *PublicUpdateProfileNotFound:
		return nil, v, nil, nil

	case *PublicUpdateProfileUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicUpdateProfileShort(params *PublicUpdateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateProfileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateProfile",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateProfileOK:
		return v, nil
	case *PublicUpdateProfileNotFound:
		return nil, v
	case *PublicUpdateProfileUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
