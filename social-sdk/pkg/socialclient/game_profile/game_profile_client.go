// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package game_profile

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
	GetUserProfiles(params *GetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfilesOK, *GetUserProfilesUnauthorized, *GetUserProfilesForbidden, *GetUserProfilesInternalServerError, error)
	GetUserProfilesShort(params *GetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfilesOK, error)
	GetProfile(params *GetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*GetProfileOK, *GetProfileUnauthorized, *GetProfileForbidden, *GetProfileNotFound, *GetProfileInternalServerError, error)
	GetProfileShort(params *GetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*GetProfileOK, error)
	PublicGetUserGameProfiles(params *PublicGetUserGameProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserGameProfilesOK, *PublicGetUserGameProfilesBadRequest, *PublicGetUserGameProfilesUnauthorized, *PublicGetUserGameProfilesForbidden, *PublicGetUserGameProfilesInternalServerError, error)
	PublicGetUserGameProfilesShort(params *PublicGetUserGameProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserGameProfilesOK, error)
	PublicGetUserProfiles(params *PublicGetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfilesOK, *PublicGetUserProfilesUnauthorized, *PublicGetUserProfilesForbidden, *PublicGetUserProfilesInternalServerError, error)
	PublicGetUserProfilesShort(params *PublicGetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfilesOK, error)
	PublicCreateProfile(params *PublicCreateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateProfileCreated, *PublicCreateProfileBadRequest, *PublicCreateProfileUnauthorized, *PublicCreateProfileForbidden, *PublicCreateProfileUnprocessableEntity, *PublicCreateProfileInternalServerError, error)
	PublicCreateProfileShort(params *PublicCreateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateProfileCreated, error)
	PublicGetProfile(params *PublicGetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileOK, *PublicGetProfileUnauthorized, *PublicGetProfileForbidden, *PublicGetProfileNotFound, *PublicGetProfileInternalServerError, error)
	PublicGetProfileShort(params *PublicGetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileOK, error)
	PublicUpdateProfile(params *PublicUpdateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateProfileOK, *PublicUpdateProfileBadRequest, *PublicUpdateProfileUnauthorized, *PublicUpdateProfileForbidden, *PublicUpdateProfileNotFound, *PublicUpdateProfileUnprocessableEntity, *PublicUpdateProfileInternalServerError, error)
	PublicUpdateProfileShort(params *PublicUpdateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateProfileOK, error)
	PublicDeleteProfile(params *PublicDeleteProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteProfileNoContent, *PublicDeleteProfileUnauthorized, *PublicDeleteProfileForbidden, *PublicDeleteProfileNotFound, *PublicDeleteProfileInternalServerError, error)
	PublicDeleteProfileShort(params *PublicDeleteProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteProfileNoContent, error)
	PublicGetProfileAttribute(params *PublicGetProfileAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileAttributeOK, *PublicGetProfileAttributeUnauthorized, *PublicGetProfileAttributeForbidden, *PublicGetProfileAttributeNotFound, *PublicGetProfileAttributeInternalServerError, error)
	PublicGetProfileAttributeShort(params *PublicGetProfileAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileAttributeOK, error)
	PublicUpdateAttribute(params *PublicUpdateAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateAttributeOK, *PublicUpdateAttributeBadRequest, *PublicUpdateAttributeUnauthorized, *PublicUpdateAttributeForbidden, *PublicUpdateAttributeNotFound, *PublicUpdateAttributeUnprocessableEntity, *PublicUpdateAttributeInternalServerError, error)
	PublicUpdateAttributeShort(params *PublicUpdateAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateAttributeOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetUserProfilesShort instead.

GetUserProfiles returns all profiles' header for a user
Returns all profiles' header for a user.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=2 (READ)
              *  Returns : list of profiles
*/
func (a *Client) GetUserProfiles(params *GetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfilesOK, *GetUserProfilesUnauthorized, *GetUserProfilesForbidden, *GetUserProfilesInternalServerError, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserProfilesOK:
		return v, nil, nil, nil, nil

	case *GetUserProfilesUnauthorized:
		return nil, v, nil, nil, nil

	case *GetUserProfilesForbidden:
		return nil, nil, v, nil, nil

	case *GetUserProfilesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserProfilesShort returns all profiles' header for a user
Returns all profiles' header for a user.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=2 (READ)
              *  Returns : list of profiles
*/
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
	case *GetUserProfilesUnauthorized:
		return nil, v
	case *GetUserProfilesForbidden:
		return nil, v
	case *GetUserProfilesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetProfileShort instead.

GetProfile returns profile for a user
Returns profile for a user.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=2 (READ)
              *  Returns : game profile info
*/
func (a *Client) GetProfile(params *GetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*GetProfileOK, *GetProfileUnauthorized, *GetProfileForbidden, *GetProfileNotFound, *GetProfileInternalServerError, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetProfileOK:
		return v, nil, nil, nil, nil, nil

	case *GetProfileUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetProfileForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetProfileNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetProfileInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetProfileShort returns profile for a user
Returns profile for a user.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=2 (READ)
              *  Returns : game profile info
*/
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
	case *GetProfileUnauthorized:
		return nil, v
	case *GetProfileForbidden:
		return nil, v
	case *GetProfileNotFound:
		return nil, v
	case *GetProfileInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserGameProfilesShort instead.

PublicGetUserGameProfiles returns all profiles for specified users
Returns all profiles for specified users.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:GAMEPROFILE", action=2 (READ)

              *  Returns : list of profiles
*/
func (a *Client) PublicGetUserGameProfiles(params *PublicGetUserGameProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserGameProfilesOK, *PublicGetUserGameProfilesBadRequest, *PublicGetUserGameProfilesUnauthorized, *PublicGetUserGameProfilesForbidden, *PublicGetUserGameProfilesInternalServerError, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserGameProfilesOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetUserGameProfilesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetUserGameProfilesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetUserGameProfilesForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicGetUserGameProfilesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserGameProfilesShort returns all profiles for specified users
Returns all profiles for specified users.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:GAMEPROFILE", action=2 (READ)

              *  Returns : list of profiles
*/
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
	case *PublicGetUserGameProfilesUnauthorized:
		return nil, v
	case *PublicGetUserGameProfilesForbidden:
		return nil, v
	case *PublicGetUserGameProfilesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserProfilesShort instead.

PublicGetUserProfiles returns all profiles' header for a user
Returns all profiles' header for a user.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=2 (READ)
              *  Returns : list of profiles
*/
func (a *Client) PublicGetUserProfiles(params *PublicGetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfilesOK, *PublicGetUserProfilesUnauthorized, *PublicGetUserProfilesForbidden, *PublicGetUserProfilesInternalServerError, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfilesOK:
		return v, nil, nil, nil, nil

	case *PublicGetUserProfilesUnauthorized:
		return nil, v, nil, nil, nil

	case *PublicGetUserProfilesForbidden:
		return nil, nil, v, nil, nil

	case *PublicGetUserProfilesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProfilesShort returns all profiles' header for a user
Returns all profiles' header for a user.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=2 (READ)
              *  Returns : list of profiles
*/
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
	case *PublicGetUserProfilesUnauthorized:
		return nil, v
	case *PublicGetUserProfilesForbidden:
		return nil, v
	case *PublicGetUserProfilesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCreateProfileShort instead.

PublicCreateProfile create a new profile for user
Create new profile for user.
Other detail info:
              *  Required permission
: resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=1 (CREATE)
              *  Returns
: created game profile
*/
func (a *Client) PublicCreateProfile(params *PublicCreateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateProfileCreated, *PublicCreateProfileBadRequest, *PublicCreateProfileUnauthorized, *PublicCreateProfileForbidden, *PublicCreateProfileUnprocessableEntity, *PublicCreateProfileInternalServerError, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateProfileCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicCreateProfileBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicCreateProfileUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicCreateProfileForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicCreateProfileUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicCreateProfileInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateProfileShort create a new profile for user
Create new profile for user.
Other detail info:
              *  Required permission
: resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=1 (CREATE)
              *  Returns
: created game profile
*/
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
	case *PublicCreateProfileBadRequest:
		return nil, v
	case *PublicCreateProfileUnauthorized:
		return nil, v
	case *PublicCreateProfileForbidden:
		return nil, v
	case *PublicCreateProfileUnprocessableEntity:
		return nil, v
	case *PublicCreateProfileInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetProfileShort instead.

PublicGetProfile returns profile for a user
Returns profile for a user.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=2 (READ)
              *  Returns : game profile info
*/
func (a *Client) PublicGetProfile(params *PublicGetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileOK, *PublicGetProfileUnauthorized, *PublicGetProfileForbidden, *PublicGetProfileNotFound, *PublicGetProfileInternalServerError, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetProfileOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetProfileUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicGetProfileForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicGetProfileNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGetProfileInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetProfileShort returns profile for a user
Returns profile for a user.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=2 (READ)
              *  Returns : game profile info
*/
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
	case *PublicGetProfileUnauthorized:
		return nil, v
	case *PublicGetProfileForbidden:
		return nil, v
	case *PublicGetProfileNotFound:
		return nil, v
	case *PublicGetProfileInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateProfileShort instead.

PublicUpdateProfile updates user game profile
Updates user game profile, returns updated profile.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=4 (UPDATE)
              *  Returns : updated game profile
*/
func (a *Client) PublicUpdateProfile(params *PublicUpdateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateProfileOK, *PublicUpdateProfileBadRequest, *PublicUpdateProfileUnauthorized, *PublicUpdateProfileForbidden, *PublicUpdateProfileNotFound, *PublicUpdateProfileUnprocessableEntity, *PublicUpdateProfileInternalServerError, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateProfileOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicUpdateProfileBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicUpdateProfileUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicUpdateProfileForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicUpdateProfileNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicUpdateProfileUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicUpdateProfileInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateProfileShort updates user game profile
Updates user game profile, returns updated profile.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=4 (UPDATE)
              *  Returns : updated game profile
*/
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
	case *PublicUpdateProfileBadRequest:
		return nil, v
	case *PublicUpdateProfileUnauthorized:
		return nil, v
	case *PublicUpdateProfileForbidden:
		return nil, v
	case *PublicUpdateProfileNotFound:
		return nil, v
	case *PublicUpdateProfileUnprocessableEntity:
		return nil, v
	case *PublicUpdateProfileInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicDeleteProfileShort instead.

PublicDeleteProfile deletes game profile
Deletes game profile.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=8 (DELETE)
*/
func (a *Client) PublicDeleteProfile(params *PublicDeleteProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteProfileNoContent, *PublicDeleteProfileUnauthorized, *PublicDeleteProfileForbidden, *PublicDeleteProfileNotFound, *PublicDeleteProfileInternalServerError, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteProfileNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicDeleteProfileUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicDeleteProfileForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicDeleteProfileNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicDeleteProfileInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeleteProfileShort deletes game profile
Deletes game profile.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=8 (DELETE)
*/
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
	case *PublicDeleteProfileUnauthorized:
		return nil, v
	case *PublicDeleteProfileForbidden:
		return nil, v
	case *PublicDeleteProfileNotFound:
		return nil, v
	case *PublicDeleteProfileInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetProfileAttributeShort instead.

PublicGetProfileAttribute returns game profile attribute
Returns game profile attribute.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=2 (READ)
              *  Returns : attribute info
*/
func (a *Client) PublicGetProfileAttribute(params *PublicGetProfileAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileAttributeOK, *PublicGetProfileAttributeUnauthorized, *PublicGetProfileAttributeForbidden, *PublicGetProfileAttributeNotFound, *PublicGetProfileAttributeInternalServerError, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetProfileAttributeOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetProfileAttributeUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicGetProfileAttributeForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicGetProfileAttributeNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGetProfileAttributeInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetProfileAttributeShort returns game profile attribute
Returns game profile attribute.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=2 (READ)
              *  Returns : attribute info
*/
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
	case *PublicGetProfileAttributeUnauthorized:
		return nil, v
	case *PublicGetProfileAttributeForbidden:
		return nil, v
	case *PublicGetProfileAttributeNotFound:
		return nil, v
	case *PublicGetProfileAttributeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateAttributeShort instead.

PublicUpdateAttribute updates game profile attribute
Updates game profile attribute, returns updated profile.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=4 (UPDATE)
              *  Returns : updated attribute
*/
func (a *Client) PublicUpdateAttribute(params *PublicUpdateAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateAttributeOK, *PublicUpdateAttributeBadRequest, *PublicUpdateAttributeUnauthorized, *PublicUpdateAttributeForbidden, *PublicUpdateAttributeNotFound, *PublicUpdateAttributeUnprocessableEntity, *PublicUpdateAttributeInternalServerError, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateAttributeOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicUpdateAttributeBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicUpdateAttributeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicUpdateAttributeForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicUpdateAttributeNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicUpdateAttributeUnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicUpdateAttributeInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateAttributeShort updates game profile attribute
Updates game profile attribute, returns updated profile.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=4 (UPDATE)
              *  Returns : updated attribute
*/
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
	case *PublicUpdateAttributeUnauthorized:
		return nil, v
	case *PublicUpdateAttributeForbidden:
		return nil, v
	case *PublicUpdateAttributeNotFound:
		return nil, v
	case *PublicUpdateAttributeUnprocessableEntity:
		return nil, v
	case *PublicUpdateAttributeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
