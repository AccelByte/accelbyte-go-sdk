// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package user_action

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user action API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user action API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetActions(params *GetActionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActionsOK, *GetActionsBadRequest, *GetActionsNotFound, *GetActionsInternalServerError, error)
	GetActionsShort(params *GetActionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActionsOK, error)
	BanUsers(params *BanUsersParams, authInfo runtime.ClientAuthInfoWriter) (*BanUsersOK, *BanUsersBadRequest, *BanUsersNotFound, *BanUsersUnprocessableEntity, *BanUsersInternalServerError, error)
	BanUsersShort(params *BanUsersParams, authInfo runtime.ClientAuthInfoWriter) (*BanUsersOK, error)
	GetBannedUsers(params *GetBannedUsersParams, authInfo runtime.ClientAuthInfoWriter) (*GetBannedUsersOK, *GetBannedUsersBadRequest, *GetBannedUsersNotFound, *GetBannedUsersUnprocessableEntity, *GetBannedUsersInternalServerError, error)
	GetBannedUsersShort(params *GetBannedUsersParams, authInfo runtime.ClientAuthInfoWriter) (*GetBannedUsersOK, error)
	ReportUser(params *ReportUserParams, authInfo runtime.ClientAuthInfoWriter) (*ReportUserCreated, *ReportUserUnprocessableEntity, error)
	ReportUserShort(params *ReportUserParams, authInfo runtime.ClientAuthInfoWriter) (*ReportUserCreated, error)
	GetUserStatus(params *GetUserStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatusOK, *GetUserStatusBadRequest, *GetUserStatusNotFound, *GetUserStatusUnprocessableEntity, *GetUserStatusInternalServerError, error)
	GetUserStatusShort(params *GetUserStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatusOK, error)
	UnBanUsers(params *UnBanUsersParams, authInfo runtime.ClientAuthInfoWriter) (*UnBanUsersOK, *UnBanUsersBadRequest, *UnBanUsersNotFound, *UnBanUsersUnprocessableEntity, *UnBanUsersInternalServerError, error)
	UnBanUsersShort(params *UnBanUsersParams, authInfo runtime.ClientAuthInfoWriter) (*UnBanUsersOK, error)
	PublicReportUser(params *PublicReportUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReportUserCreated, *PublicReportUserBadRequest, *PublicReportUserUnprocessableEntity, error)
	PublicReportUserShort(params *PublicReportUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReportUserCreated, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetActionsShort instead.

GetActions get configured actions
Get configured actions.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)
*/
func (a *Client) GetActions(params *GetActionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActionsOK, *GetActionsBadRequest, *GetActionsNotFound, *GetActionsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetActionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getActions",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetActionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetActionsOK:
		return v, nil, nil, nil, nil

	case *GetActionsBadRequest:
		return nil, v, nil, nil, nil

	case *GetActionsNotFound:
		return nil, nil, v, nil, nil

	case *GetActionsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetActionsShort get configured actions
Get configured actions.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)
*/
func (a *Client) GetActionsShort(params *GetActionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetActionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getActions",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetActionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetActionsOK:
		return v, nil
	case *GetActionsBadRequest:
		return nil, v
	case *GetActionsNotFound:
		return nil, v
	case *GetActionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BanUsersShort instead.

BanUsers ban user(temporarily or permanently)
Ban user.
actionId: 1 means permanent ban, actionId: 10 means Temporary ban.Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=4 (UPDATE)
*/
func (a *Client) BanUsers(params *BanUsersParams, authInfo runtime.ClientAuthInfoWriter) (*BanUsersOK, *BanUsersBadRequest, *BanUsersNotFound, *BanUsersUnprocessableEntity, *BanUsersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBanUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "banUsers",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions/ban",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BanUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BanUsersOK:
		return v, nil, nil, nil, nil, nil

	case *BanUsersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *BanUsersNotFound:
		return nil, nil, v, nil, nil, nil

	case *BanUsersUnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *BanUsersInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BanUsersShort ban user(temporarily or permanently)
Ban user.
actionId: 1 means permanent ban, actionId: 10 means Temporary ban.Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=4 (UPDATE)
*/
func (a *Client) BanUsersShort(params *BanUsersParams, authInfo runtime.ClientAuthInfoWriter) (*BanUsersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBanUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "banUsers",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions/ban",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BanUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BanUsersOK:
		return v, nil
	case *BanUsersBadRequest:
		return nil, v
	case *BanUsersNotFound:
		return nil, v
	case *BanUsersUnprocessableEntity:
		return nil, v
	case *BanUsersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetBannedUsersShort instead.

GetBannedUsers get banned user
Get banned status.
Unbanned users will not return, for example: request has 8 userIds, only 5 of then were banned, then the api will these 5 user status.Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)
*/
func (a *Client) GetBannedUsers(params *GetBannedUsersParams, authInfo runtime.ClientAuthInfoWriter) (*GetBannedUsersOK, *GetBannedUsersBadRequest, *GetBannedUsersNotFound, *GetBannedUsersUnprocessableEntity, *GetBannedUsersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBannedUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getBannedUsers",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions/banned",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBannedUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetBannedUsersOK:
		return v, nil, nil, nil, nil, nil

	case *GetBannedUsersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetBannedUsersNotFound:
		return nil, nil, v, nil, nil, nil

	case *GetBannedUsersUnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *GetBannedUsersInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetBannedUsersShort get banned user
Get banned status.
Unbanned users will not return, for example: request has 8 userIds, only 5 of then were banned, then the api will these 5 user status.Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)
*/
func (a *Client) GetBannedUsersShort(params *GetBannedUsersParams, authInfo runtime.ClientAuthInfoWriter) (*GetBannedUsersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBannedUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getBannedUsers",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions/banned",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBannedUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetBannedUsersOK:
		return v, nil
	case *GetBannedUsersBadRequest:
		return nil, v
	case *GetBannedUsersNotFound:
		return nil, v
	case *GetBannedUsersUnprocessableEntity:
		return nil, v
	case *GetBannedUsersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ReportUserShort instead.

ReportUser report a game player(for game service)
This API is for game service to report a game player.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ACTION", action=1 (CREATE)
*/
func (a *Client) ReportUser(params *ReportUserParams, authInfo runtime.ClientAuthInfoWriter) (*ReportUserCreated, *ReportUserUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewReportUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "reportUser",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions/report",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ReportUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ReportUserCreated:
		return v, nil, nil

	case *ReportUserUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ReportUserShort report a game player(for game service)
This API is for game service to report a game player.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ACTION", action=1 (CREATE)
*/
func (a *Client) ReportUserShort(params *ReportUserParams, authInfo runtime.ClientAuthInfoWriter) (*ReportUserCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewReportUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "reportUser",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions/report",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ReportUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ReportUserCreated:
		return v, nil
	case *ReportUserUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserStatusShort instead.

GetUserStatus get user status
Get user status.
If actionId does not exist, then the user is not banned.If actionId and expires exist, then the user is temporarily banned, if expires does not exist, then the user is permanently banned.Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)
*/
func (a *Client) GetUserStatus(params *GetUserStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatusOK, *GetUserStatusBadRequest, *GetUserStatusNotFound, *GetUserStatusUnprocessableEntity, *GetUserStatusInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserStatus",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserStatusOK:
		return v, nil, nil, nil, nil, nil

	case *GetUserStatusBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetUserStatusNotFound:
		return nil, nil, v, nil, nil, nil

	case *GetUserStatusUnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *GetUserStatusInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserStatusShort get user status
Get user status.
If actionId does not exist, then the user is not banned.If actionId and expires exist, then the user is temporarily banned, if expires does not exist, then the user is permanently banned.Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)
*/
func (a *Client) GetUserStatusShort(params *GetUserStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserStatus",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserStatusOK:
		return v, nil
	case *GetUserStatusBadRequest:
		return nil, v
	case *GetUserStatusNotFound:
		return nil, v
	case *GetUserStatusUnprocessableEntity:
		return nil, v
	case *GetUserStatusInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UnBanUsersShort instead.

UnBanUsers unban user
Unban user.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=4 (UPDATE)
*/
func (a *Client) UnBanUsers(params *UnBanUsersParams, authInfo runtime.ClientAuthInfoWriter) (*UnBanUsersOK, *UnBanUsersBadRequest, *UnBanUsersNotFound, *UnBanUsersUnprocessableEntity, *UnBanUsersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnBanUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "unBanUsers",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions/unban",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnBanUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UnBanUsersOK:
		return v, nil, nil, nil, nil, nil

	case *UnBanUsersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UnBanUsersNotFound:
		return nil, nil, v, nil, nil, nil

	case *UnBanUsersUnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *UnBanUsersInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnBanUsersShort unban user
Unban user.
Other detail info:

  * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=4 (UPDATE)
*/
func (a *Client) UnBanUsersShort(params *UnBanUsersParams, authInfo runtime.ClientAuthInfoWriter) (*UnBanUsersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnBanUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "unBanUsers",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/actions/unban",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnBanUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnBanUsersOK:
		return v, nil
	case *UnBanUsersBadRequest:
		return nil, v
	case *UnBanUsersNotFound:
		return nil, v
	case *UnBanUsersUnprocessableEntity:
		return nil, v
	case *UnBanUsersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicReportUserShort instead.

PublicReportUser report a game user
This API is used to report a game user.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ACTION", action=1 (CREATE)
*/
func (a *Client) PublicReportUser(params *PublicReportUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReportUserCreated, *PublicReportUserBadRequest, *PublicReportUserUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReportUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicReportUser",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReportUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicReportUserCreated:
		return v, nil, nil, nil

	case *PublicReportUserBadRequest:
		return nil, v, nil, nil

	case *PublicReportUserUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReportUserShort report a game user
This API is used to report a game user.

Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ACTION", action=1 (CREATE)
*/
func (a *Client) PublicReportUserShort(params *PublicReportUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReportUserCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReportUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicReportUser",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReportUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicReportUserCreated:
		return v, nil
	case *PublicReportUserBadRequest:
		return nil, v
	case *PublicReportUserUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
