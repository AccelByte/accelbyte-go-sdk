// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package user_profile

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user profile API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user profile API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserProfileInfoByPublicID(params *GetUserProfileInfoByPublicIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoByPublicIDOK, *GetUserProfileInfoByPublicIDBadRequest, *GetUserProfileInfoByPublicIDUnauthorized, *GetUserProfileInfoByPublicIDForbidden, *GetUserProfileInfoByPublicIDNotFound, error)
	GetUserProfileInfoByPublicIDShort(params *GetUserProfileInfoByPublicIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoByPublicIDOK, error)
	AdminGetUserProfilePublicInfoByIds(params *AdminGetUserProfilePublicInfoByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserProfilePublicInfoByIdsOK, *AdminGetUserProfilePublicInfoByIdsBadRequest, error)
	AdminGetUserProfilePublicInfoByIdsShort(params *AdminGetUserProfilePublicInfoByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserProfilePublicInfoByIdsOK, error)
	GetUserProfileInfo(params *GetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoOK, *GetUserProfileInfoBadRequest, *GetUserProfileInfoUnauthorized, *GetUserProfileInfoForbidden, *GetUserProfileInfoNotFound, error)
	GetUserProfileInfoShort(params *GetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoOK, error)
	UpdateUserProfile(params *UpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileOK, *UpdateUserProfileBadRequest, *UpdateUserProfileUnauthorized, *UpdateUserProfileForbidden, *UpdateUserProfileNotFound, error)
	UpdateUserProfileShort(params *UpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileOK, error)
	DeleteUserProfile(params *DeleteUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserProfileOK, *DeleteUserProfileBadRequest, *DeleteUserProfileUnauthorized, *DeleteUserProfileForbidden, *DeleteUserProfileNotFound, error)
	DeleteUserProfileShort(params *DeleteUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserProfileOK, error)
	GetCustomAttributesInfo(params *GetCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetCustomAttributesInfoOK, *GetCustomAttributesInfoUnauthorized, *GetCustomAttributesInfoForbidden, *GetCustomAttributesInfoNotFound, error)
	GetCustomAttributesInfoShort(params *GetCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetCustomAttributesInfoOK, error)
	UpdateCustomAttributesPartially(params *UpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCustomAttributesPartiallyOK, *UpdateCustomAttributesPartiallyBadRequest, *UpdateCustomAttributesPartiallyUnauthorized, *UpdateCustomAttributesPartiallyForbidden, *UpdateCustomAttributesPartiallyNotFound, error)
	UpdateCustomAttributesPartiallyShort(params *UpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCustomAttributesPartiallyOK, error)
	GetPrivateCustomAttributesInfo(params *GetPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetPrivateCustomAttributesInfoOK, *GetPrivateCustomAttributesInfoUnauthorized, *GetPrivateCustomAttributesInfoForbidden, *GetPrivateCustomAttributesInfoNotFound, error)
	GetPrivateCustomAttributesInfoShort(params *GetPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetPrivateCustomAttributesInfoOK, error)
	UpdatePrivateCustomAttributesPartially(params *UpdatePrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePrivateCustomAttributesPartiallyOK, *UpdatePrivateCustomAttributesPartiallyBadRequest, *UpdatePrivateCustomAttributesPartiallyUnauthorized, *UpdatePrivateCustomAttributesPartiallyForbidden, *UpdatePrivateCustomAttributesPartiallyNotFound, error)
	UpdatePrivateCustomAttributesPartiallyShort(params *UpdatePrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePrivateCustomAttributesPartiallyOK, error)
	UpdateUserProfileStatus(params *UpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileStatusOK, *UpdateUserProfileStatusBadRequest, *UpdateUserProfileStatusUnauthorized, *UpdateUserProfileStatusForbidden, *UpdateUserProfileStatusNotFound, error)
	UpdateUserProfileStatusShort(params *UpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileStatusOK, error)
	PublicGetUserProfilePublicInfoByIds(params *PublicGetUserProfilePublicInfoByIdsParams) (*PublicGetUserProfilePublicInfoByIdsOK, *PublicGetUserProfilePublicInfoByIdsBadRequest, error)
	PublicGetUserProfilePublicInfoByIdsShort(params *PublicGetUserProfilePublicInfoByIdsParams) (*PublicGetUserProfilePublicInfoByIdsOK, error)
	PublicGetUserProfileInfoByPublicID(params *PublicGetUserProfileInfoByPublicIDParams) (*PublicGetUserProfileInfoByPublicIDOK, *PublicGetUserProfileInfoByPublicIDBadRequest, *PublicGetUserProfileInfoByPublicIDNotFound, error)
	PublicGetUserProfileInfoByPublicIDShort(params *PublicGetUserProfileInfoByPublicIDParams) (*PublicGetUserProfileInfoByPublicIDOK, error)
	GetMyProfileInfo(params *GetMyProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyProfileInfoOK, *GetMyProfileInfoBadRequest, *GetMyProfileInfoUnauthorized, *GetMyProfileInfoForbidden, *GetMyProfileInfoNotFound, error)
	GetMyProfileInfoShort(params *GetMyProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyProfileInfoOK, error)
	UpdateMyProfile(params *UpdateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyProfileOK, *UpdateMyProfileBadRequest, *UpdateMyProfileUnauthorized, *UpdateMyProfileForbidden, *UpdateMyProfileNotFound, error)
	UpdateMyProfileShort(params *UpdateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyProfileOK, error)
	CreateMyProfile(params *CreateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMyProfileCreated, *CreateMyProfileBadRequest, *CreateMyProfileUnauthorized, *CreateMyProfileForbidden, *CreateMyProfileNotFound, *CreateMyProfileConflict, error)
	CreateMyProfileShort(params *CreateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMyProfileCreated, error)
	GetMyPrivateCustomAttributesInfo(params *GetMyPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyPrivateCustomAttributesInfoOK, *GetMyPrivateCustomAttributesInfoUnauthorized, *GetMyPrivateCustomAttributesInfoForbidden, *GetMyPrivateCustomAttributesInfoNotFound, error)
	GetMyPrivateCustomAttributesInfoShort(params *GetMyPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyPrivateCustomAttributesInfoOK, error)
	UpdateMyPrivateCustomAttributesPartially(params *UpdateMyPrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyPrivateCustomAttributesPartiallyOK, *UpdateMyPrivateCustomAttributesPartiallyBadRequest, *UpdateMyPrivateCustomAttributesPartiallyUnauthorized, *UpdateMyPrivateCustomAttributesPartiallyForbidden, *UpdateMyPrivateCustomAttributesPartiallyNotFound, error)
	UpdateMyPrivateCustomAttributesPartiallyShort(params *UpdateMyPrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyPrivateCustomAttributesPartiallyOK, error)
	GetMyZipCode(params *GetMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyZipCodeOK, *GetMyZipCodeUnauthorized, *GetMyZipCodeForbidden, error)
	GetMyZipCodeShort(params *GetMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyZipCodeOK, error)
	UpdateMyZipCode(params *UpdateMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyZipCodeOK, *UpdateMyZipCodeBadRequest, *UpdateMyZipCodeUnauthorized, *UpdateMyZipCodeForbidden, error)
	UpdateMyZipCodeShort(params *UpdateMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyZipCodeOK, error)
	PublicGetUserProfileInfo(params *PublicGetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfileInfoOK, *PublicGetUserProfileInfoBadRequest, *PublicGetUserProfileInfoUnauthorized, *PublicGetUserProfileInfoForbidden, *PublicGetUserProfileInfoNotFound, error)
	PublicGetUserProfileInfoShort(params *PublicGetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfileInfoOK, error)
	PublicUpdateUserProfile(params *PublicUpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileOK, *PublicUpdateUserProfileBadRequest, *PublicUpdateUserProfileUnauthorized, *PublicUpdateUserProfileForbidden, *PublicUpdateUserProfileNotFound, error)
	PublicUpdateUserProfileShort(params *PublicUpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileOK, error)
	PublicCreateUserProfile(params *PublicCreateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserProfileCreated, *PublicCreateUserProfileBadRequest, *PublicCreateUserProfileUnauthorized, *PublicCreateUserProfileForbidden, *PublicCreateUserProfileConflict, error)
	PublicCreateUserProfileShort(params *PublicCreateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserProfileCreated, error)
	PublicGetCustomAttributesInfo(params *PublicGetCustomAttributesInfoParams) (*PublicGetCustomAttributesInfoOK, *PublicGetCustomAttributesInfoNotFound, error)
	PublicGetCustomAttributesInfoShort(params *PublicGetCustomAttributesInfoParams) (*PublicGetCustomAttributesInfoOK, error)
	PublicUpdateCustomAttributesPartially(params *PublicUpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateCustomAttributesPartiallyOK, *PublicUpdateCustomAttributesPartiallyBadRequest, *PublicUpdateCustomAttributesPartiallyUnauthorized, *PublicUpdateCustomAttributesPartiallyForbidden, *PublicUpdateCustomAttributesPartiallyNotFound, error)
	PublicUpdateCustomAttributesPartiallyShort(params *PublicUpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateCustomAttributesPartiallyOK, error)
	PublicGetUserProfilePublicInfo(params *PublicGetUserProfilePublicInfoParams) (*PublicGetUserProfilePublicInfoOK, *PublicGetUserProfilePublicInfoBadRequest, *PublicGetUserProfilePublicInfoNotFound, error)
	PublicGetUserProfilePublicInfoShort(params *PublicGetUserProfilePublicInfoParams) (*PublicGetUserProfilePublicInfoOK, error)
	PublicUpdateUserProfileStatus(params *PublicUpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileStatusOK, *PublicUpdateUserProfileStatusBadRequest, *PublicUpdateUserProfileStatusUnauthorized, *PublicUpdateUserProfileStatusForbidden, *PublicUpdateUserProfileStatusNotFound, error)
	PublicUpdateUserProfileStatusShort(params *PublicUpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileStatusOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetUserProfileInfoByPublicIDShort instead.

GetUserProfileInfoByPublicID get user profile info by public id
Get user profile by public id.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:PROFILE" , action=2 (READ)
  *  Returns : user profile info
*/
func (a *Client) GetUserProfileInfoByPublicID(params *GetUserProfileInfoByPublicIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoByPublicIDOK, *GetUserProfileInfoByPublicIDBadRequest, *GetUserProfileInfoByPublicIDUnauthorized, *GetUserProfileInfoByPublicIDForbidden, *GetUserProfileInfoByPublicIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserProfileInfoByPublicIDParams()
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
		ID:                 "getUserProfileInfoByPublicId",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/profiles/byPublicId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserProfileInfoByPublicIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserProfileInfoByPublicIDOK:
		return v, nil, nil, nil, nil, nil

	case *GetUserProfileInfoByPublicIDBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetUserProfileInfoByPublicIDUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetUserProfileInfoByPublicIDForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetUserProfileInfoByPublicIDNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserProfileInfoByPublicIDShort get user profile info by public id
Get user profile by public id.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:PROFILE" , action=2 (READ)
  *  Returns : user profile info
*/
func (a *Client) GetUserProfileInfoByPublicIDShort(params *GetUserProfileInfoByPublicIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoByPublicIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserProfileInfoByPublicIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserProfileInfoByPublicId",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/profiles/byPublicId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserProfileInfoByPublicIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserProfileInfoByPublicIDOK:
		return v, nil
	case *GetUserProfileInfoByPublicIDBadRequest:
		return nil, v
	case *GetUserProfileInfoByPublicIDUnauthorized:
		return nil, v
	case *GetUserProfileInfoByPublicIDForbidden:
		return nil, v
	case *GetUserProfileInfoByPublicIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserProfilePublicInfoByIdsShort instead.

AdminGetUserProfilePublicInfoByIds admin get user profile public info by ids
Admin get user public profile by ids.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:PROFILE" , action=2 (GET)
  *  Action code : 11405
  *  Returns : user public profiles
*/
func (a *Client) AdminGetUserProfilePublicInfoByIds(params *AdminGetUserProfilePublicInfoByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserProfilePublicInfoByIdsOK, *AdminGetUserProfilePublicInfoByIdsBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserProfilePublicInfoByIdsParams()
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
		ID:                 "adminGetUserProfilePublicInfoByIds",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/profiles/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserProfilePublicInfoByIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserProfilePublicInfoByIdsOK:
		return v, nil, nil

	case *AdminGetUserProfilePublicInfoByIdsBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserProfilePublicInfoByIdsShort admin get user profile public info by ids
Admin get user public profile by ids.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:PROFILE" , action=2 (GET)
  *  Action code : 11405
  *  Returns : user public profiles
*/
func (a *Client) AdminGetUserProfilePublicInfoByIdsShort(params *AdminGetUserProfilePublicInfoByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserProfilePublicInfoByIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserProfilePublicInfoByIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetUserProfilePublicInfoByIds",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/profiles/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserProfilePublicInfoByIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserProfilePublicInfoByIdsOK:
		return v, nil
	case *AdminGetUserProfilePublicInfoByIdsBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserProfileInfoShort instead.

GetUserProfileInfo get user profile
Get user profile.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=2 (READ)
  *  Returns : user profile
  *  Action code : 11403
*/
func (a *Client) GetUserProfileInfo(params *GetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoOK, *GetUserProfileInfoBadRequest, *GetUserProfileInfoUnauthorized, *GetUserProfileInfoForbidden, *GetUserProfileInfoNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserProfileInfoParams()
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
		ID:                 "getUserProfileInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserProfileInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserProfileInfoOK:
		return v, nil, nil, nil, nil, nil

	case *GetUserProfileInfoBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetUserProfileInfoUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetUserProfileInfoForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetUserProfileInfoNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserProfileInfoShort get user profile
Get user profile.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=2 (READ)
  *  Returns : user profile
  *  Action code : 11403
*/
func (a *Client) GetUserProfileInfoShort(params *GetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserProfileInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserProfileInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserProfileInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserProfileInfoOK:
		return v, nil
	case *GetUserProfileInfoBadRequest:
		return nil, v
	case *GetUserProfileInfoUnauthorized:
		return nil, v
	case *GetUserProfileInfoForbidden:
		return nil, v
	case *GetUserProfileInfoNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateUserProfileShort instead.

UpdateUserProfile update user profile
Update user profile.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Returns : Updated user profile
*/
func (a *Client) UpdateUserProfile(params *UpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileOK, *UpdateUserProfileBadRequest, *UpdateUserProfileUnauthorized, *UpdateUserProfileForbidden, *UpdateUserProfileNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserProfileParams()
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
		ID:                 "updateUserProfile",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserProfileOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateUserProfileBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateUserProfileUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateUserProfileForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateUserProfileNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserProfileShort update user profile
Update user profile.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Returns : Updated user profile
*/
func (a *Client) UpdateUserProfileShort(params *UpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateUserProfile",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserProfileOK:
		return v, nil
	case *UpdateUserProfileBadRequest:
		return nil, v
	case *UpdateUserProfileUnauthorized:
		return nil, v
	case *UpdateUserProfileForbidden:
		return nil, v
	case *UpdateUserProfileNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserProfileShort instead.

DeleteUserProfile delete user profile
Delete user profile.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=8 (DELETE)
  *  Action code : 11407
  *  Returns : Delete user profile
*/
func (a *Client) DeleteUserProfile(params *DeleteUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserProfileOK, *DeleteUserProfileBadRequest, *DeleteUserProfileUnauthorized, *DeleteUserProfileForbidden, *DeleteUserProfileNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserProfileParams()
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
		ID:                 "deleteUserProfile",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserProfileOK:
		return v, nil, nil, nil, nil, nil

	case *DeleteUserProfileBadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteUserProfileUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteUserProfileForbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteUserProfileNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserProfileShort delete user profile
Delete user profile.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=8 (DELETE)
  *  Action code : 11407
  *  Returns : Delete user profile
*/
func (a *Client) DeleteUserProfileShort(params *DeleteUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserProfileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserProfile",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserProfileOK:
		return v, nil
	case *DeleteUserProfileBadRequest:
		return nil, v
	case *DeleteUserProfileUnauthorized:
		return nil, v
	case *DeleteUserProfileForbidden:
		return nil, v
	case *DeleteUserProfileNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCustomAttributesInfoShort instead.

GetCustomAttributesInfo get user custom attributes
Get user custom attributes.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=2 (READ)
  *  Returns : custom attributes
  *  Action code : 11403
*/
func (a *Client) GetCustomAttributesInfo(params *GetCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetCustomAttributesInfoOK, *GetCustomAttributesInfoUnauthorized, *GetCustomAttributesInfoForbidden, *GetCustomAttributesInfoNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCustomAttributesInfoParams()
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
		ID:                 "getCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCustomAttributesInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCustomAttributesInfoOK:
		return v, nil, nil, nil, nil

	case *GetCustomAttributesInfoUnauthorized:
		return nil, v, nil, nil, nil

	case *GetCustomAttributesInfoForbidden:
		return nil, nil, v, nil, nil

	case *GetCustomAttributesInfoNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCustomAttributesInfoShort get user custom attributes
Get user custom attributes.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=2 (READ)
  *  Returns : custom attributes
  *  Action code : 11403
*/
func (a *Client) GetCustomAttributesInfoShort(params *GetCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetCustomAttributesInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCustomAttributesInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCustomAttributesInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCustomAttributesInfoOK:
		return v, nil
	case *GetCustomAttributesInfoUnauthorized:
		return nil, v
	case *GetCustomAttributesInfoForbidden:
		return nil, v
	case *GetCustomAttributesInfoNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateCustomAttributesPartiallyShort instead.

UpdateCustomAttributesPartially update partially custom attributes tied to the user id
Update partially custom attributes tied to the user id.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Request body : allowed format: JSON object
  *  Returns : Updated custom attributes
*/
func (a *Client) UpdateCustomAttributesPartially(params *UpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCustomAttributesPartiallyOK, *UpdateCustomAttributesPartiallyBadRequest, *UpdateCustomAttributesPartiallyUnauthorized, *UpdateCustomAttributesPartiallyForbidden, *UpdateCustomAttributesPartiallyNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCustomAttributesPartiallyParams()
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
		ID:                 "updateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateCustomAttributesPartiallyOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateCustomAttributesPartiallyBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateCustomAttributesPartiallyUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateCustomAttributesPartiallyForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateCustomAttributesPartiallyNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCustomAttributesPartiallyShort update partially custom attributes tied to the user id
Update partially custom attributes tied to the user id.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Request body : allowed format: JSON object
  *  Returns : Updated custom attributes
*/
func (a *Client) UpdateCustomAttributesPartiallyShort(params *UpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCustomAttributesPartiallyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCustomAttributesPartiallyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCustomAttributesPartiallyOK:
		return v, nil
	case *UpdateCustomAttributesPartiallyBadRequest:
		return nil, v
	case *UpdateCustomAttributesPartiallyUnauthorized:
		return nil, v
	case *UpdateCustomAttributesPartiallyForbidden:
		return nil, v
	case *UpdateCustomAttributesPartiallyNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPrivateCustomAttributesInfoShort instead.

GetPrivateCustomAttributesInfo get user private custom attributes
Get user private custom attributes.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=2 (READ)
  *  Returns : custom attributes
  *  Action code : 11403
*/
func (a *Client) GetPrivateCustomAttributesInfo(params *GetPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetPrivateCustomAttributesInfoOK, *GetPrivateCustomAttributesInfoUnauthorized, *GetPrivateCustomAttributesInfoForbidden, *GetPrivateCustomAttributesInfoNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPrivateCustomAttributesInfoParams()
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
		ID:                 "getPrivateCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPrivateCustomAttributesInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPrivateCustomAttributesInfoOK:
		return v, nil, nil, nil, nil

	case *GetPrivateCustomAttributesInfoUnauthorized:
		return nil, v, nil, nil, nil

	case *GetPrivateCustomAttributesInfoForbidden:
		return nil, nil, v, nil, nil

	case *GetPrivateCustomAttributesInfoNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPrivateCustomAttributesInfoShort get user private custom attributes
Get user private custom attributes.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=2 (READ)
  *  Returns : custom attributes
  *  Action code : 11403
*/
func (a *Client) GetPrivateCustomAttributesInfoShort(params *GetPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetPrivateCustomAttributesInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPrivateCustomAttributesInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPrivateCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPrivateCustomAttributesInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPrivateCustomAttributesInfoOK:
		return v, nil
	case *GetPrivateCustomAttributesInfoUnauthorized:
		return nil, v
	case *GetPrivateCustomAttributesInfoForbidden:
		return nil, v
	case *GetPrivateCustomAttributesInfoNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePrivateCustomAttributesPartiallyShort instead.

UpdatePrivateCustomAttributesPartially update partially private custom attributes tied to the user id
Update partially private custom attributes tied to the user id.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Request body : allowed format: JSON object
  *  Returns : Updated custom attributes
*/
func (a *Client) UpdatePrivateCustomAttributesPartially(params *UpdatePrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePrivateCustomAttributesPartiallyOK, *UpdatePrivateCustomAttributesPartiallyBadRequest, *UpdatePrivateCustomAttributesPartiallyUnauthorized, *UpdatePrivateCustomAttributesPartiallyForbidden, *UpdatePrivateCustomAttributesPartiallyNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePrivateCustomAttributesPartiallyParams()
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
		ID:                 "updatePrivateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePrivateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePrivateCustomAttributesPartiallyOK:
		return v, nil, nil, nil, nil, nil

	case *UpdatePrivateCustomAttributesPartiallyBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdatePrivateCustomAttributesPartiallyUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdatePrivateCustomAttributesPartiallyForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdatePrivateCustomAttributesPartiallyNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePrivateCustomAttributesPartiallyShort update partially private custom attributes tied to the user id
Update partially private custom attributes tied to the user id.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Request body : allowed format: JSON object
  *  Returns : Updated custom attributes
*/
func (a *Client) UpdatePrivateCustomAttributesPartiallyShort(params *UpdatePrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePrivateCustomAttributesPartiallyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePrivateCustomAttributesPartiallyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePrivateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePrivateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePrivateCustomAttributesPartiallyOK:
		return v, nil
	case *UpdatePrivateCustomAttributesPartiallyBadRequest:
		return nil, v
	case *UpdatePrivateCustomAttributesPartiallyUnauthorized:
		return nil, v
	case *UpdatePrivateCustomAttributesPartiallyForbidden:
		return nil, v
	case *UpdatePrivateCustomAttributesPartiallyNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateUserProfileStatusShort instead.

UpdateUserProfileStatus update user profile status
Update user profile status.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11406
  *  Returns : user profile
*/
func (a *Client) UpdateUserProfileStatus(params *UpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileStatusOK, *UpdateUserProfileStatusBadRequest, *UpdateUserProfileStatusUnauthorized, *UpdateUserProfileStatusForbidden, *UpdateUserProfileStatusNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserProfileStatusParams()
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
		ID:                 "updateUserProfileStatus",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserProfileStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserProfileStatusOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateUserProfileStatusBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateUserProfileStatusUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateUserProfileStatusForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateUserProfileStatusNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserProfileStatusShort update user profile status
Update user profile status.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11406
  *  Returns : user profile
*/
func (a *Client) UpdateUserProfileStatusShort(params *UpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserProfileStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateUserProfileStatus",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserProfileStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserProfileStatusOK:
		return v, nil
	case *UpdateUserProfileStatusBadRequest:
		return nil, v
	case *UpdateUserProfileStatusUnauthorized:
		return nil, v
	case *UpdateUserProfileStatusForbidden:
		return nil, v
	case *UpdateUserProfileStatusNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserProfilePublicInfoByIdsShort instead.

PublicGetUserProfilePublicInfoByIds get user profile public info by ids
Get user public profile by ids.
Other detail info:

  * Action code : 11405
  *  Returns : user public profiles
*/
func (a *Client) PublicGetUserProfilePublicInfoByIds(params *PublicGetUserProfilePublicInfoByIdsParams) (*PublicGetUserProfilePublicInfoByIdsOK, *PublicGetUserProfilePublicInfoByIdsBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfilePublicInfoByIdsParams()
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
		ID:                 "publicGetUserProfilePublicInfoByIds",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/profiles/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfilePublicInfoByIdsReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfilePublicInfoByIdsOK:
		return v, nil, nil

	case *PublicGetUserProfilePublicInfoByIdsBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProfilePublicInfoByIdsShort get user profile public info by ids
Get user public profile by ids.
Other detail info:

  * Action code : 11405
  *  Returns : user public profiles
*/
func (a *Client) PublicGetUserProfilePublicInfoByIdsShort(params *PublicGetUserProfilePublicInfoByIdsParams) (*PublicGetUserProfilePublicInfoByIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfilePublicInfoByIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserProfilePublicInfoByIds",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/profiles/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfilePublicInfoByIdsReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfilePublicInfoByIdsOK:
		return v, nil
	case *PublicGetUserProfilePublicInfoByIdsBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserProfileInfoByPublicIDShort instead.

PublicGetUserProfileInfoByPublicID get user profile public info by public id
Get user public profile by public id.
Other detail info:

  * Returns : user public profile
*/
func (a *Client) PublicGetUserProfileInfoByPublicID(params *PublicGetUserProfileInfoByPublicIDParams) (*PublicGetUserProfileInfoByPublicIDOK, *PublicGetUserProfileInfoByPublicIDBadRequest, *PublicGetUserProfileInfoByPublicIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfileInfoByPublicIDParams()
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
		ID:                 "publicGetUserProfileInfoByPublicId",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/profiles/public/byPublicId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfileInfoByPublicIDReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfileInfoByPublicIDOK:
		return v, nil, nil, nil

	case *PublicGetUserProfileInfoByPublicIDBadRequest:
		return nil, v, nil, nil

	case *PublicGetUserProfileInfoByPublicIDNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProfileInfoByPublicIDShort get user profile public info by public id
Get user public profile by public id.
Other detail info:

  * Returns : user public profile
*/
func (a *Client) PublicGetUserProfileInfoByPublicIDShort(params *PublicGetUserProfileInfoByPublicIDParams) (*PublicGetUserProfileInfoByPublicIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfileInfoByPublicIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserProfileInfoByPublicId",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/profiles/public/byPublicId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfileInfoByPublicIDReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfileInfoByPublicIDOK:
		return v, nil
	case *PublicGetUserProfileInfoByPublicIDBadRequest:
		return nil, v
	case *PublicGetUserProfileInfoByPublicIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetMyProfileInfoShort instead.

GetMyProfileInfo get my profile
Get my profile
 Client with user token can get user profile in target namespace
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=2 (READ)
  *  Action code : 11403
  *  Returns : user profile
  *  Path's namespace :
    * can be filled with publisher namespace in order to get publisher user profile
    * can be filled with game namespace in order to get game user profile
  *  Language : allowed format: en, en-US
  *  Timezone : IANA time zone, e.g. Asia/Shanghai
*/
func (a *Client) GetMyProfileInfo(params *GetMyProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyProfileInfoOK, *GetMyProfileInfoBadRequest, *GetMyProfileInfoUnauthorized, *GetMyProfileInfoForbidden, *GetMyProfileInfoNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyProfileInfoParams()
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
		ID:                 "getMyProfileInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyProfileInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetMyProfileInfoOK:
		return v, nil, nil, nil, nil, nil

	case *GetMyProfileInfoBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetMyProfileInfoUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetMyProfileInfoForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetMyProfileInfoNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMyProfileInfoShort get my profile
Get my profile
 Client with user token can get user profile in target namespace
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=2 (READ)
  *  Action code : 11403
  *  Returns : user profile
  *  Path's namespace :
    * can be filled with publisher namespace in order to get publisher user profile
    * can be filled with game namespace in order to get game user profile
  *  Language : allowed format: en, en-US
  *  Timezone : IANA time zone, e.g. Asia/Shanghai
*/
func (a *Client) GetMyProfileInfoShort(params *GetMyProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyProfileInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyProfileInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getMyProfileInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyProfileInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMyProfileInfoOK:
		return v, nil
	case *GetMyProfileInfoBadRequest:
		return nil, v
	case *GetMyProfileInfoUnauthorized:
		return nil, v
	case *GetMyProfileInfoForbidden:
		return nil, v
	case *GetMyProfileInfoNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateMyProfileShort instead.

UpdateMyProfile update my profile
Update my profile.
Updates user profile in the target namespace (namespace in the path). If token's namespace doesn't match the target namespace, the service automatically maps the token's user ID into the user ID in the target namespace. The endpoint returns the updated user profile on a successful call.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Returns : user profile
  *  Path's namespace :
    * can be filled with publisher namespace in order to update publisher user profile
    * can be filled with game namespace in order to update game user profile
  *  Language : allowed format: en, en-US
  *  Timezone : IANA time zone, e.g. Asia/Shanghai
*/
func (a *Client) UpdateMyProfile(params *UpdateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyProfileOK, *UpdateMyProfileBadRequest, *UpdateMyProfileUnauthorized, *UpdateMyProfileForbidden, *UpdateMyProfileNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMyProfileParams()
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
		ID:                 "updateMyProfile",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMyProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateMyProfileOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateMyProfileBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateMyProfileUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateMyProfileForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateMyProfileNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMyProfileShort update my profile
Update my profile.
Updates user profile in the target namespace (namespace in the path). If token's namespace doesn't match the target namespace, the service automatically maps the token's user ID into the user ID in the target namespace. The endpoint returns the updated user profile on a successful call.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Returns : user profile
  *  Path's namespace :
    * can be filled with publisher namespace in order to update publisher user profile
    * can be filled with game namespace in order to update game user profile
  *  Language : allowed format: en, en-US
  *  Timezone : IANA time zone, e.g. Asia/Shanghai
*/
func (a *Client) UpdateMyProfileShort(params *UpdateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyProfileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMyProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateMyProfile",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMyProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMyProfileOK:
		return v, nil
	case *UpdateMyProfileBadRequest:
		return nil, v
	case *UpdateMyProfileUnauthorized:
		return nil, v
	case *UpdateMyProfileForbidden:
		return nil, v
	case *UpdateMyProfileNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateMyProfileShort instead.

CreateMyProfile create my profile
Create my profile.
 Client with user token can create user profile in target namespace
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=1 (CREATE)
  *  Action code : 11401
  *  Returns : Created user profile
  *  Path's namespace :
    * can be filled with publisher namespace in order to create publisher user profile
    * can be filled with game namespace in order to create game user profile
  *  Language : allowed format: en, en-US
  *  Country : ISO3166-1 alpha-2 two letter, e.g. US
  * Timezone : IANA time zone, e.g. Asia/Shanghai
*/
func (a *Client) CreateMyProfile(params *CreateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMyProfileCreated, *CreateMyProfileBadRequest, *CreateMyProfileUnauthorized, *CreateMyProfileForbidden, *CreateMyProfileNotFound, *CreateMyProfileConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMyProfileParams()
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
		ID:                 "createMyProfile",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMyProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateMyProfileCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateMyProfileBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateMyProfileUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateMyProfileForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateMyProfileNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateMyProfileConflict:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateMyProfileShort create my profile
Create my profile.
 Client with user token can create user profile in target namespace
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=1 (CREATE)
  *  Action code : 11401
  *  Returns : Created user profile
  *  Path's namespace :
    * can be filled with publisher namespace in order to create publisher user profile
    * can be filled with game namespace in order to create game user profile
  *  Language : allowed format: en, en-US
  *  Country : ISO3166-1 alpha-2 two letter, e.g. US
  * Timezone : IANA time zone, e.g. Asia/Shanghai
*/
func (a *Client) CreateMyProfileShort(params *CreateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMyProfileCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMyProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createMyProfile",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMyProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateMyProfileCreated:
		return v, nil
	case *CreateMyProfileBadRequest:
		return nil, v
	case *CreateMyProfileUnauthorized:
		return nil, v
	case *CreateMyProfileForbidden:
		return nil, v
	case *CreateMyProfileNotFound:
		return nil, v
	case *CreateMyProfileConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetMyPrivateCustomAttributesInfoShort instead.

GetMyPrivateCustomAttributesInfo get my private custom attributes
Get my private custom attributes.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=2 (READ)
  *  Returns : custom attributes
  *  Action code : 11403
*/
func (a *Client) GetMyPrivateCustomAttributesInfo(params *GetMyPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyPrivateCustomAttributesInfoOK, *GetMyPrivateCustomAttributesInfoUnauthorized, *GetMyPrivateCustomAttributesInfoForbidden, *GetMyPrivateCustomAttributesInfoNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyPrivateCustomAttributesInfoParams()
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
		ID:                 "getMyPrivateCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyPrivateCustomAttributesInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetMyPrivateCustomAttributesInfoOK:
		return v, nil, nil, nil, nil

	case *GetMyPrivateCustomAttributesInfoUnauthorized:
		return nil, v, nil, nil, nil

	case *GetMyPrivateCustomAttributesInfoForbidden:
		return nil, nil, v, nil, nil

	case *GetMyPrivateCustomAttributesInfoNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMyPrivateCustomAttributesInfoShort get my private custom attributes
Get my private custom attributes.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=2 (READ)
  *  Returns : custom attributes
  *  Action code : 11403
*/
func (a *Client) GetMyPrivateCustomAttributesInfoShort(params *GetMyPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyPrivateCustomAttributesInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyPrivateCustomAttributesInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getMyPrivateCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyPrivateCustomAttributesInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMyPrivateCustomAttributesInfoOK:
		return v, nil
	case *GetMyPrivateCustomAttributesInfoUnauthorized:
		return nil, v
	case *GetMyPrivateCustomAttributesInfoForbidden:
		return nil, v
	case *GetMyPrivateCustomAttributesInfoNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateMyPrivateCustomAttributesPartiallyShort instead.

UpdateMyPrivateCustomAttributesPartially update partially private custom attributes tied to me
Update partially private custom attributes tied to me.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Request body : allowed format: JSON object
  *  Returns : Updated custom attributes
*/
func (a *Client) UpdateMyPrivateCustomAttributesPartially(params *UpdateMyPrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyPrivateCustomAttributesPartiallyOK, *UpdateMyPrivateCustomAttributesPartiallyBadRequest, *UpdateMyPrivateCustomAttributesPartiallyUnauthorized, *UpdateMyPrivateCustomAttributesPartiallyForbidden, *UpdateMyPrivateCustomAttributesPartiallyNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMyPrivateCustomAttributesPartiallyParams()
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
		ID:                 "updateMyPrivateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMyPrivateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateMyPrivateCustomAttributesPartiallyOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateMyPrivateCustomAttributesPartiallyBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateMyPrivateCustomAttributesPartiallyUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateMyPrivateCustomAttributesPartiallyForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateMyPrivateCustomAttributesPartiallyNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMyPrivateCustomAttributesPartiallyShort update partially private custom attributes tied to me
Update partially private custom attributes tied to me.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Request body : allowed format: JSON object
  *  Returns : Updated custom attributes
*/
func (a *Client) UpdateMyPrivateCustomAttributesPartiallyShort(params *UpdateMyPrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyPrivateCustomAttributesPartiallyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMyPrivateCustomAttributesPartiallyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateMyPrivateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMyPrivateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMyPrivateCustomAttributesPartiallyOK:
		return v, nil
	case *UpdateMyPrivateCustomAttributesPartiallyBadRequest:
		return nil, v
	case *UpdateMyPrivateCustomAttributesPartiallyUnauthorized:
		return nil, v
	case *UpdateMyPrivateCustomAttributesPartiallyForbidden:
		return nil, v
	case *UpdateMyPrivateCustomAttributesPartiallyNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetMyZipCodeShort instead.

GetMyZipCode get my zip code
Get my zip code.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=2 (READ)
  *  Action code : 11407
  *  Returns : user zip code
*/
func (a *Client) GetMyZipCode(params *GetMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyZipCodeOK, *GetMyZipCodeUnauthorized, *GetMyZipCodeForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyZipCodeParams()
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
		ID:                 "getMyZipCode",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyZipCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetMyZipCodeOK:
		return v, nil, nil, nil

	case *GetMyZipCodeUnauthorized:
		return nil, v, nil, nil

	case *GetMyZipCodeForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMyZipCodeShort get my zip code
Get my zip code.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=2 (READ)
  *  Action code : 11407
  *  Returns : user zip code
*/
func (a *Client) GetMyZipCodeShort(params *GetMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyZipCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyZipCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getMyZipCode",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyZipCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMyZipCodeOK:
		return v, nil
	case *GetMyZipCodeUnauthorized:
		return nil, v
	case *GetMyZipCodeForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateMyZipCodeShort instead.

UpdateMyZipCode update my zip code
Update my zip code.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11408
  *  Returns : user zip code
*/
func (a *Client) UpdateMyZipCode(params *UpdateMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyZipCodeOK, *UpdateMyZipCodeBadRequest, *UpdateMyZipCodeUnauthorized, *UpdateMyZipCodeForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMyZipCodeParams()
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
		ID:                 "updateMyZipCode",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMyZipCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateMyZipCodeOK:
		return v, nil, nil, nil, nil

	case *UpdateMyZipCodeBadRequest:
		return nil, v, nil, nil, nil

	case *UpdateMyZipCodeUnauthorized:
		return nil, nil, v, nil, nil

	case *UpdateMyZipCodeForbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMyZipCodeShort update my zip code
Update my zip code.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11408
  *  Returns : user zip code
*/
func (a *Client) UpdateMyZipCodeShort(params *UpdateMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyZipCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMyZipCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateMyZipCode",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMyZipCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMyZipCodeOK:
		return v, nil
	case *UpdateMyZipCodeBadRequest:
		return nil, v
	case *UpdateMyZipCodeUnauthorized:
		return nil, v
	case *UpdateMyZipCodeForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserProfileInfoShort instead.

PublicGetUserProfileInfo get user profile
Get user profile.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=2 (READ)
  *  Action code : 11403
  *  Returns : user profile
*/
func (a *Client) PublicGetUserProfileInfo(params *PublicGetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfileInfoOK, *PublicGetUserProfileInfoBadRequest, *PublicGetUserProfileInfoUnauthorized, *PublicGetUserProfileInfoForbidden, *PublicGetUserProfileInfoNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfileInfoParams()
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
		ID:                 "publicGetUserProfileInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfileInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfileInfoOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetUserProfileInfoBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetUserProfileInfoUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetUserProfileInfoForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicGetUserProfileInfoNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProfileInfoShort get user profile
Get user profile.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=2 (READ)
  *  Action code : 11403
  *  Returns : user profile
*/
func (a *Client) PublicGetUserProfileInfoShort(params *PublicGetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfileInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfileInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserProfileInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfileInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfileInfoOK:
		return v, nil
	case *PublicGetUserProfileInfoBadRequest:
		return nil, v
	case *PublicGetUserProfileInfoUnauthorized:
		return nil, v
	case *PublicGetUserProfileInfoForbidden:
		return nil, v
	case *PublicGetUserProfileInfoNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateUserProfileShort instead.

PublicUpdateUserProfile update user profile
Update user profile.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Language : allowed format: en, en-US
  *  Timezone : IANA time zone, e.g. Asia/Shanghai
  *  Returns : Updated user profile
*/
func (a *Client) PublicUpdateUserProfile(params *PublicUpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileOK, *PublicUpdateUserProfileBadRequest, *PublicUpdateUserProfileUnauthorized, *PublicUpdateUserProfileForbidden, *PublicUpdateUserProfileNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserProfileParams()
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
		ID:                 "publicUpdateUserProfile",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserProfileOK:
		return v, nil, nil, nil, nil, nil

	case *PublicUpdateUserProfileBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicUpdateUserProfileUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicUpdateUserProfileForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicUpdateUserProfileNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserProfileShort update user profile
Update user profile.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Language : allowed format: en, en-US
  *  Timezone : IANA time zone, e.g. Asia/Shanghai
  *  Returns : Updated user profile
*/
func (a *Client) PublicUpdateUserProfileShort(params *PublicUpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateUserProfile",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserProfileOK:
		return v, nil
	case *PublicUpdateUserProfileBadRequest:
		return nil, v
	case *PublicUpdateUserProfileUnauthorized:
		return nil, v
	case *PublicUpdateUserProfileForbidden:
		return nil, v
	case *PublicUpdateUserProfileNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCreateUserProfileShort instead.

PublicCreateUserProfile create user profile
Create user profile.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=1 (CREATE)
  *  Action code : 11401
  *  Language : allowed format: en, en-US
  *  Timezone : IANA time zone, e.g. Asia/Shanghai
  *  Returns : Created user profile
*/
func (a *Client) PublicCreateUserProfile(params *PublicCreateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserProfileCreated, *PublicCreateUserProfileBadRequest, *PublicCreateUserProfileUnauthorized, *PublicCreateUserProfileForbidden, *PublicCreateUserProfileConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserProfileParams()
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
		ID:                 "publicCreateUserProfile",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserProfileCreated:
		return v, nil, nil, nil, nil, nil

	case *PublicCreateUserProfileBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicCreateUserProfileUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicCreateUserProfileForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicCreateUserProfileConflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserProfileShort create user profile
Create user profile.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=1 (CREATE)
  *  Action code : 11401
  *  Language : allowed format: en, en-US
  *  Timezone : IANA time zone, e.g. Asia/Shanghai
  *  Returns : Created user profile
*/
func (a *Client) PublicCreateUserProfileShort(params *PublicCreateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserProfileCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserProfileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCreateUserProfile",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserProfileCreated:
		return v, nil
	case *PublicCreateUserProfileBadRequest:
		return nil, v
	case *PublicCreateUserProfileUnauthorized:
		return nil, v
	case *PublicCreateUserProfileForbidden:
		return nil, v
	case *PublicCreateUserProfileConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetCustomAttributesInfoShort instead.

PublicGetCustomAttributesInfo get custom attributes info
Get custom attributes info.
Other detail info:

  * Action code : 11404
  *  Returns : user custom attributes
*/
func (a *Client) PublicGetCustomAttributesInfo(params *PublicGetCustomAttributesInfoParams) (*PublicGetCustomAttributesInfoOK, *PublicGetCustomAttributesInfoNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCustomAttributesInfoParams()
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
		ID:                 "publicGetCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCustomAttributesInfoReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetCustomAttributesInfoOK:
		return v, nil, nil

	case *PublicGetCustomAttributesInfoNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCustomAttributesInfoShort get custom attributes info
Get custom attributes info.
Other detail info:

  * Action code : 11404
  *  Returns : user custom attributes
*/
func (a *Client) PublicGetCustomAttributesInfoShort(params *PublicGetCustomAttributesInfoParams) (*PublicGetCustomAttributesInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCustomAttributesInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCustomAttributesInfoReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCustomAttributesInfoOK:
		return v, nil
	case *PublicGetCustomAttributesInfoNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateCustomAttributesPartiallyShort instead.

PublicUpdateCustomAttributesPartially update partially custom attributes tied to user id
Update partially custom attributes tied to user id.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Request body : allowed format: JSON object
  *  Returns : Updated custom attributes
*/
func (a *Client) PublicUpdateCustomAttributesPartially(params *PublicUpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateCustomAttributesPartiallyOK, *PublicUpdateCustomAttributesPartiallyBadRequest, *PublicUpdateCustomAttributesPartiallyUnauthorized, *PublicUpdateCustomAttributesPartiallyForbidden, *PublicUpdateCustomAttributesPartiallyNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateCustomAttributesPartiallyParams()
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
		ID:                 "publicUpdateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateCustomAttributesPartiallyOK:
		return v, nil, nil, nil, nil, nil

	case *PublicUpdateCustomAttributesPartiallyBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicUpdateCustomAttributesPartiallyUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicUpdateCustomAttributesPartiallyForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicUpdateCustomAttributesPartiallyNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateCustomAttributesPartiallyShort update partially custom attributes tied to user id
Update partially custom attributes tied to user id.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11402
  *  Request body : allowed format: JSON object
  *  Returns : Updated custom attributes
*/
func (a *Client) PublicUpdateCustomAttributesPartiallyShort(params *PublicUpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateCustomAttributesPartiallyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateCustomAttributesPartiallyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateCustomAttributesPartiallyOK:
		return v, nil
	case *PublicUpdateCustomAttributesPartiallyBadRequest:
		return nil, v
	case *PublicUpdateCustomAttributesPartiallyUnauthorized:
		return nil, v
	case *PublicUpdateCustomAttributesPartiallyForbidden:
		return nil, v
	case *PublicUpdateCustomAttributesPartiallyNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserProfilePublicInfoShort instead.

PublicGetUserProfilePublicInfo get user profile public info
Get user profile public info.
Other detail info:

  * Action code : 11404
  *  Returns : user public profile
*/
func (a *Client) PublicGetUserProfilePublicInfo(params *PublicGetUserProfilePublicInfoParams) (*PublicGetUserProfilePublicInfoOK, *PublicGetUserProfilePublicInfoBadRequest, *PublicGetUserProfilePublicInfoNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfilePublicInfoParams()
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
		ID:                 "publicGetUserProfilePublicInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfilePublicInfoReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfilePublicInfoOK:
		return v, nil, nil, nil

	case *PublicGetUserProfilePublicInfoBadRequest:
		return nil, v, nil, nil

	case *PublicGetUserProfilePublicInfoNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProfilePublicInfoShort get user profile public info
Get user profile public info.
Other detail info:

  * Action code : 11404
  *  Returns : user public profile
*/
func (a *Client) PublicGetUserProfilePublicInfoShort(params *PublicGetUserProfilePublicInfoParams) (*PublicGetUserProfilePublicInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfilePublicInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserProfilePublicInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfilePublicInfoReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfilePublicInfoOK:
		return v, nil
	case *PublicGetUserProfilePublicInfoBadRequest:
		return nil, v
	case *PublicGetUserProfilePublicInfoNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateUserProfileStatusShort instead.

PublicUpdateUserProfileStatus update user profile status
Update user profile status.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11406
  *  Returns : user profile
*/
func (a *Client) PublicUpdateUserProfileStatus(params *PublicUpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileStatusOK, *PublicUpdateUserProfileStatusBadRequest, *PublicUpdateUserProfileStatusUnauthorized, *PublicUpdateUserProfileStatusForbidden, *PublicUpdateUserProfileStatusNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserProfileStatusParams()
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
		ID:                 "publicUpdateUserProfileStatus",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserProfileStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserProfileStatusOK:
		return v, nil, nil, nil, nil, nil

	case *PublicUpdateUserProfileStatusBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicUpdateUserProfileStatusUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicUpdateUserProfileStatusForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicUpdateUserProfileStatusNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserProfileStatusShort update user profile status
Update user profile status.
Other detail info:

  * Required permission : resource= "NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=4 (UPDATE)
  *  Action code : 11406
  *  Returns : user profile
*/
func (a *Client) PublicUpdateUserProfileStatusShort(params *PublicUpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserProfileStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateUserProfileStatus",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserProfileStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserProfileStatusOK:
		return v, nil
	case *PublicUpdateUserProfileStatusBadRequest:
		return nil, v
	case *PublicUpdateUserProfileStatusUnauthorized:
		return nil, v
	case *PublicUpdateUserProfileStatusForbidden:
		return nil, v
	case *PublicUpdateUserProfileStatusNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
