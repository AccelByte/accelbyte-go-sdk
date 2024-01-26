// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package topic

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new topic API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for topic API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminChatHistory(params *AdminChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChatHistoryOK, *AdminChatHistoryBadRequest, *AdminChatHistoryUnauthorized, *AdminChatHistoryForbidden, *AdminChatHistoryInternalServerError, error)
	AdminChatHistoryShort(params *AdminChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChatHistoryOK, error)
	AdminCreateNamespaceTopic(params *AdminCreateNamespaceTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateNamespaceTopicOK, error)
	AdminCreateNamespaceTopicShort(params *AdminCreateNamespaceTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateNamespaceTopicOK, error)
	AdminTopicList(params *AdminTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicListOK, *AdminTopicListBadRequest, *AdminTopicListUnauthorized, *AdminTopicListForbidden, *AdminTopicListInternalServerError, error)
	AdminTopicListShort(params *AdminTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicListOK, error)
	AdminCreateTopic(params *AdminCreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTopicOK, error)
	AdminCreateTopicShort(params *AdminCreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTopicOK, error)
	AdminChannelTopicList(params *AdminChannelTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicListOK, *AdminChannelTopicListBadRequest, *AdminChannelTopicListUnauthorized, *AdminChannelTopicListForbidden, *AdminChannelTopicListInternalServerError, error)
	AdminChannelTopicListShort(params *AdminChannelTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicListOK, error)
	AdminChannelTopicSummary(params *AdminChannelTopicSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicSummaryOK, *AdminChannelTopicSummaryBadRequest, *AdminChannelTopicSummaryUnauthorized, *AdminChannelTopicSummaryForbidden, *AdminChannelTopicSummaryInternalServerError, error)
	AdminChannelTopicSummaryShort(params *AdminChannelTopicSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicSummaryOK, error)
	AdminQueryTopicLog(params *AdminQueryTopicLogParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicLogOK, *AdminQueryTopicLogBadRequest, *AdminQueryTopicLogUnauthorized, *AdminQueryTopicLogForbidden, *AdminQueryTopicLogInternalServerError, error)
	AdminQueryTopicLogShort(params *AdminQueryTopicLogParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicLogOK, error)
	AdminUpdateTopic(params *AdminUpdateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTopicOK, error)
	AdminUpdateTopicShort(params *AdminUpdateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTopicOK, error)
	AdminDeleteTopic(params *AdminDeleteTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTopicOK, error)
	AdminDeleteTopicShort(params *AdminDeleteTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTopicOK, error)
	AdminBanTopicMembers(params *AdminBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBanTopicMembersOK, *AdminBanTopicMembersBadRequest, *AdminBanTopicMembersUnauthorized, *AdminBanTopicMembersForbidden, *AdminBanTopicMembersInternalServerError, error)
	AdminBanTopicMembersShort(params *AdminBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBanTopicMembersOK, error)
	AdminChannelTopicInfo(params *AdminChannelTopicInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicInfoOK, *AdminChannelTopicInfoBadRequest, *AdminChannelTopicInfoUnauthorized, *AdminChannelTopicInfoForbidden, *AdminChannelTopicInfoNotFound, *AdminChannelTopicInfoInternalServerError, error)
	AdminChannelTopicInfoShort(params *AdminChannelTopicInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicInfoOK, error)
	AdminTopicChatHistory(params *AdminTopicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicChatHistoryOK, *AdminTopicChatHistoryBadRequest, *AdminTopicChatHistoryUnauthorized, *AdminTopicChatHistoryForbidden, *AdminTopicChatHistoryInternalServerError, error)
	AdminTopicChatHistoryShort(params *AdminTopicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicChatHistoryOK, error)
	AdminSendChat(params *AdminSendChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendChatOK, *AdminSendChatBadRequest, *AdminSendChatUnauthorized, *AdminSendChatForbidden, *AdminSendChatInternalServerError, error)
	AdminSendChatShort(params *AdminSendChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendChatOK, error)
	AdminDeleteChat(params *AdminDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatNoContent, *AdminDeleteChatBadRequest, *AdminDeleteChatUnauthorized, *AdminDeleteChatForbidden, *AdminDeleteChatInternalServerError, error)
	AdminDeleteChatShort(params *AdminDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatNoContent, error)
	AdminTopicMembers(params *AdminTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicMembersOK, *AdminTopicMembersBadRequest, *AdminTopicMembersUnauthorized, *AdminTopicMembersForbidden, *AdminTopicMembersInternalServerError, error)
	AdminTopicMembersShort(params *AdminTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicMembersOK, error)
	AdminTopicShards(params *AdminTopicShardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicShardsOK, *AdminTopicShardsBadRequest, *AdminTopicShardsUnauthorized, *AdminTopicShardsForbidden, *AdminTopicShardsInternalServerError, error)
	AdminTopicShardsShort(params *AdminTopicShardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicShardsOK, error)
	AdminUnbanTopicMembers(params *AdminUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanTopicMembersOK, *AdminUnbanTopicMembersBadRequest, *AdminUnbanTopicMembersUnauthorized, *AdminUnbanTopicMembersForbidden, *AdminUnbanTopicMembersInternalServerError, error)
	AdminUnbanTopicMembersShort(params *AdminUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanTopicMembersOK, error)
	AdminAddTopicMember(params *AdminAddTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddTopicMemberOK, error)
	AdminAddTopicMemberShort(params *AdminAddTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddTopicMemberOK, error)
	AdminRemoveTopicMember(params *AdminRemoveTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveTopicMemberOK, error)
	AdminRemoveTopicMemberShort(params *AdminRemoveTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveTopicMemberOK, error)
	AdminQueryTopic(params *AdminQueryTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicOK, *AdminQueryTopicBadRequest, *AdminQueryTopicUnauthorized, *AdminQueryTopicForbidden, *AdminQueryTopicInternalServerError, error)
	AdminQueryTopicShort(params *AdminQueryTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicOK, error)
	AdminQueryUsersTopic(params *AdminQueryUsersTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryUsersTopicOK, *AdminQueryUsersTopicBadRequest, *AdminQueryUsersTopicUnauthorized, *AdminQueryUsersTopicForbidden, *AdminQueryUsersTopicInternalServerError, error)
	AdminQueryUsersTopicShort(params *AdminQueryUsersTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryUsersTopicOK, error)
	PublicGetMutedTopics(params *PublicGetMutedTopicsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMutedTopicsOK, *PublicGetMutedTopicsBadRequest, *PublicGetMutedTopicsUnauthorized, *PublicGetMutedTopicsForbidden, *PublicGetMutedTopicsInternalServerError, error)
	PublicGetMutedTopicsShort(params *PublicGetMutedTopicsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMutedTopicsOK, error)
	PublicTopicList(params *PublicTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTopicListOK, *PublicTopicListBadRequest, *PublicTopicListUnauthorized, *PublicTopicListForbidden, *PublicTopicListInternalServerError, error)
	PublicTopicListShort(params *PublicTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTopicListOK, error)
	PublicBanTopicMembers(params *PublicBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBanTopicMembersOK, *PublicBanTopicMembersBadRequest, *PublicBanTopicMembersUnauthorized, *PublicBanTopicMembersForbidden, *PublicBanTopicMembersInternalServerError, error)
	PublicBanTopicMembersShort(params *PublicBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBanTopicMembersOK, error)
	PublicChatHistory(params *PublicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicChatHistoryOK, *PublicChatHistoryBadRequest, *PublicChatHistoryUnauthorized, *PublicChatHistoryForbidden, *PublicChatHistoryInternalServerError, error)
	PublicChatHistoryShort(params *PublicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicChatHistoryOK, error)
	PublicDeleteChat(params *PublicDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteChatNoContent, *PublicDeleteChatBadRequest, *PublicDeleteChatUnauthorized, *PublicDeleteChatForbidden, *PublicDeleteChatInternalServerError, error)
	PublicDeleteChatShort(params *PublicDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteChatNoContent, error)
	PublicMuteUser(params *PublicMuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicMuteUserNoContent, *PublicMuteUserBadRequest, *PublicMuteUserUnauthorized, *PublicMuteUserForbidden, *PublicMuteUserInternalServerError, error)
	PublicMuteUserShort(params *PublicMuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicMuteUserNoContent, error)
	PublicUnbanTopicMembers(params *PublicUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnbanTopicMembersOK, *PublicUnbanTopicMembersBadRequest, *PublicUnbanTopicMembersUnauthorized, *PublicUnbanTopicMembersForbidden, *PublicUnbanTopicMembersInternalServerError, error)
	PublicUnbanTopicMembersShort(params *PublicUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnbanTopicMembersOK, error)
	PublicUnmuteUser(params *PublicUnmuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnmuteUserNoContent, *PublicUnmuteUserBadRequest, *PublicUnmuteUserUnauthorized, *PublicUnmuteUserForbidden, *PublicUnmuteUserInternalServerError, error)
	PublicUnmuteUserShort(params *PublicUnmuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnmuteUserNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminChatHistoryShort instead.

AdminChatHistory admin get chat history
Get chat history in a namespace.
*/
func (a *Client) AdminChatHistory(params *AdminChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChatHistoryOK, *AdminChatHistoryBadRequest, *AdminChatHistoryUnauthorized, *AdminChatHistoryForbidden, *AdminChatHistoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChatHistoryParams()
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
		ID:                 "adminChatHistory",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminChatHistoryOK:
		return v, nil, nil, nil, nil, nil

	case *AdminChatHistoryBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminChatHistoryUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminChatHistoryForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminChatHistoryInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChatHistoryShort admin get chat history
Get chat history in a namespace.
*/
func (a *Client) AdminChatHistoryShort(params *AdminChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChatHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChatHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminChatHistory",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChatHistoryOK:
		return v, nil
	case *AdminChatHistoryBadRequest:
		return nil, v
	case *AdminChatHistoryUnauthorized:
		return nil, v
	case *AdminChatHistoryForbidden:
		return nil, v
	case *AdminChatHistoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateNamespaceTopicShort instead.

AdminCreateNamespaceTopic use to create namespace group. message that send to this group send to connected user in a namespace
Create new namespace group topic in a namespace.
*/
func (a *Client) AdminCreateNamespaceTopic(params *AdminCreateNamespaceTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateNamespaceTopicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateNamespaceTopicParams()
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
		ID:                 "adminCreateNamespaceTopic",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/namespace-topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateNamespaceTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateNamespaceTopicOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateNamespaceTopicShort use to create namespace group. message that send to this group send to connected user in a namespace
Create new namespace group topic in a namespace.
*/
func (a *Client) AdminCreateNamespaceTopicShort(params *AdminCreateNamespaceTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateNamespaceTopicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateNamespaceTopicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateNamespaceTopic",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/namespace-topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateNamespaceTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateNamespaceTopicOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminTopicListShort instead.

AdminTopicList admin get list of topic
Get chat list of topic in a namespace.
*/
func (a *Client) AdminTopicList(params *AdminTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicListOK, *AdminTopicListBadRequest, *AdminTopicListUnauthorized, *AdminTopicListForbidden, *AdminTopicListInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicListParams()
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
		ID:                 "adminTopicList",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminTopicListOK:
		return v, nil, nil, nil, nil, nil

	case *AdminTopicListBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminTopicListUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminTopicListForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminTopicListInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminTopicListShort admin get list of topic
Get chat list of topic in a namespace.
*/
func (a *Client) AdminTopicListShort(params *AdminTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminTopicList",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminTopicListOK:
		return v, nil
	case *AdminTopicListBadRequest:
		return nil, v
	case *AdminTopicListUnauthorized:
		return nil, v
	case *AdminTopicListForbidden:
		return nil, v
	case *AdminTopicListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateTopicShort instead.

AdminCreateTopic use to create group. only group admin can use this operation
Create new group topic in a namespace.
*/
func (a *Client) AdminCreateTopic(params *AdminCreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTopicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTopicParams()
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
		ID:                 "adminCreateTopic",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTopicOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateTopicShort use to create group. only group admin can use this operation
Create new group topic in a namespace.
*/
func (a *Client) AdminCreateTopicShort(params *AdminCreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTopicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTopicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateTopic",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTopicOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminChannelTopicListShort instead.

AdminChannelTopicList admin get list of channel topic
Get channel chat list of topic in a namespace.
*/
func (a *Client) AdminChannelTopicList(params *AdminChannelTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicListOK, *AdminChannelTopicListBadRequest, *AdminChannelTopicListUnauthorized, *AdminChannelTopicListForbidden, *AdminChannelTopicListInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChannelTopicListParams()
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
		ID:                 "adminChannelTopicList",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/channel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChannelTopicListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminChannelTopicListOK:
		return v, nil, nil, nil, nil, nil

	case *AdminChannelTopicListBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminChannelTopicListUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminChannelTopicListForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminChannelTopicListInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChannelTopicListShort admin get list of channel topic
Get channel chat list of topic in a namespace.
*/
func (a *Client) AdminChannelTopicListShort(params *AdminChannelTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChannelTopicListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminChannelTopicList",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/channel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChannelTopicListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChannelTopicListOK:
		return v, nil
	case *AdminChannelTopicListBadRequest:
		return nil, v
	case *AdminChannelTopicListUnauthorized:
		return nil, v
	case *AdminChannelTopicListForbidden:
		return nil, v
	case *AdminChannelTopicListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminChannelTopicSummaryShort instead.

AdminChannelTopicSummary admin get channel topic summary
Get chat list of topic in a namespace.
*/
func (a *Client) AdminChannelTopicSummary(params *AdminChannelTopicSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicSummaryOK, *AdminChannelTopicSummaryBadRequest, *AdminChannelTopicSummaryUnauthorized, *AdminChannelTopicSummaryForbidden, *AdminChannelTopicSummaryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChannelTopicSummaryParams()
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
		ID:                 "adminChannelTopicSummary",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/channel/summary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChannelTopicSummaryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminChannelTopicSummaryOK:
		return v, nil, nil, nil, nil, nil

	case *AdminChannelTopicSummaryBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminChannelTopicSummaryUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminChannelTopicSummaryForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminChannelTopicSummaryInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChannelTopicSummaryShort admin get channel topic summary
Get chat list of topic in a namespace.
*/
func (a *Client) AdminChannelTopicSummaryShort(params *AdminChannelTopicSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicSummaryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChannelTopicSummaryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminChannelTopicSummary",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/channel/summary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChannelTopicSummaryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChannelTopicSummaryOK:
		return v, nil
	case *AdminChannelTopicSummaryBadRequest:
		return nil, v
	case *AdminChannelTopicSummaryUnauthorized:
		return nil, v
	case *AdminChannelTopicSummaryForbidden:
		return nil, v
	case *AdminChannelTopicSummaryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminQueryTopicLogShort instead.

AdminQueryTopicLog admin query topic log
Get chat log of topic in a namespace.
*/
func (a *Client) AdminQueryTopicLog(params *AdminQueryTopicLogParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicLogOK, *AdminQueryTopicLogBadRequest, *AdminQueryTopicLogUnauthorized, *AdminQueryTopicLogForbidden, *AdminQueryTopicLogInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryTopicLogParams()
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
		ID:                 "adminQueryTopicLog",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/log",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryTopicLogReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminQueryTopicLogOK:
		return v, nil, nil, nil, nil, nil

	case *AdminQueryTopicLogBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminQueryTopicLogUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminQueryTopicLogForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminQueryTopicLogInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryTopicLogShort admin query topic log
Get chat log of topic in a namespace.
*/
func (a *Client) AdminQueryTopicLogShort(params *AdminQueryTopicLogParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicLogOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryTopicLogParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminQueryTopicLog",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/log",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryTopicLogReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryTopicLogOK:
		return v, nil
	case *AdminQueryTopicLogBadRequest:
		return nil, v
	case *AdminQueryTopicLogUnauthorized:
		return nil, v
	case *AdminQueryTopicLogForbidden:
		return nil, v
	case *AdminQueryTopicLogInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateTopicShort instead.

AdminUpdateTopic use to update group information. only group admin can use this operation
Update group topic in a namespace.
*/
func (a *Client) AdminUpdateTopic(params *AdminUpdateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTopicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTopicParams()
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
		ID:                 "adminUpdateTopic",
		Method:             "PUT",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTopicOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateTopicShort use to update group information. only group admin can use this operation
Update group topic in a namespace.
*/
func (a *Client) AdminUpdateTopicShort(params *AdminUpdateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTopicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTopicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateTopic",
		Method:             "PUT",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTopicOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteTopicShort instead.

AdminDeleteTopic use to delete group. only group admin can use this operation
Delete topic in a namespace.
*/
func (a *Client) AdminDeleteTopic(params *AdminDeleteTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTopicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTopicParams()
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
		ID:                 "adminDeleteTopic",
		Method:             "DELETE",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTopicOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTopicShort use to delete group. only group admin can use this operation
Delete topic in a namespace.
*/
func (a *Client) AdminDeleteTopicShort(params *AdminDeleteTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTopicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTopicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteTopic",
		Method:             "DELETE",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTopicOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminBanTopicMembersShort instead.

AdminBanTopicMembers admins ban user in group topic
Ban users in some topic. banned user not assigned to shard for channel topic, and cannot send and query chat.
*/
func (a *Client) AdminBanTopicMembers(params *AdminBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBanTopicMembersOK, *AdminBanTopicMembersBadRequest, *AdminBanTopicMembersUnauthorized, *AdminBanTopicMembersForbidden, *AdminBanTopicMembersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanTopicMembersParams()
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
		ID:                 "adminBanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/ban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminBanTopicMembersOK:
		return v, nil, nil, nil, nil, nil

	case *AdminBanTopicMembersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminBanTopicMembersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminBanTopicMembersForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminBanTopicMembersInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBanTopicMembersShort admins ban user in group topic
Ban users in some topic. banned user not assigned to shard for channel topic, and cannot send and query chat.
*/
func (a *Client) AdminBanTopicMembersShort(params *AdminBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBanTopicMembersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanTopicMembersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminBanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/ban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBanTopicMembersOK:
		return v, nil
	case *AdminBanTopicMembersBadRequest:
		return nil, v
	case *AdminBanTopicMembersUnauthorized:
		return nil, v
	case *AdminBanTopicMembersForbidden:
		return nil, v
	case *AdminBanTopicMembersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminChannelTopicInfoShort instead.

AdminChannelTopicInfo admin get channel topic detail
Get chat list of topic in a namespace.
*/
func (a *Client) AdminChannelTopicInfo(params *AdminChannelTopicInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicInfoOK, *AdminChannelTopicInfoBadRequest, *AdminChannelTopicInfoUnauthorized, *AdminChannelTopicInfoForbidden, *AdminChannelTopicInfoNotFound, *AdminChannelTopicInfoInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChannelTopicInfoParams()
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
		ID:                 "adminChannelTopicInfo",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/channel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChannelTopicInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminChannelTopicInfoOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminChannelTopicInfoBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminChannelTopicInfoUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminChannelTopicInfoForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminChannelTopicInfoNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminChannelTopicInfoInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChannelTopicInfoShort admin get channel topic detail
Get chat list of topic in a namespace.
*/
func (a *Client) AdminChannelTopicInfoShort(params *AdminChannelTopicInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChannelTopicInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminChannelTopicInfo",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/channel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChannelTopicInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChannelTopicInfoOK:
		return v, nil
	case *AdminChannelTopicInfoBadRequest:
		return nil, v
	case *AdminChannelTopicInfoUnauthorized:
		return nil, v
	case *AdminChannelTopicInfoForbidden:
		return nil, v
	case *AdminChannelTopicInfoNotFound:
		return nil, v
	case *AdminChannelTopicInfoInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminTopicChatHistoryShort instead.

AdminTopicChatHistory admin get chat history
Get chat history in a namespace.
*/
func (a *Client) AdminTopicChatHistory(params *AdminTopicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicChatHistoryOK, *AdminTopicChatHistoryBadRequest, *AdminTopicChatHistoryUnauthorized, *AdminTopicChatHistoryForbidden, *AdminTopicChatHistoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicChatHistoryParams()
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
		ID:                 "adminTopicChatHistory",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminTopicChatHistoryOK:
		return v, nil, nil, nil, nil, nil

	case *AdminTopicChatHistoryBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminTopicChatHistoryUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminTopicChatHistoryForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminTopicChatHistoryInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminTopicChatHistoryShort admin get chat history
Get chat history in a namespace.
*/
func (a *Client) AdminTopicChatHistoryShort(params *AdminTopicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicChatHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicChatHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminTopicChatHistory",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminTopicChatHistoryOK:
		return v, nil
	case *AdminTopicChatHistoryBadRequest:
		return nil, v
	case *AdminTopicChatHistoryUnauthorized:
		return nil, v
	case *AdminTopicChatHistoryForbidden:
		return nil, v
	case *AdminTopicChatHistoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSendChatShort instead.

AdminSendChat admins send chat to group topic
Send message to chat topic as system.
*/
func (a *Client) AdminSendChat(params *AdminSendChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendChatOK, *AdminSendChatBadRequest, *AdminSendChatUnauthorized, *AdminSendChatForbidden, *AdminSendChatInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendChatParams()
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
		ID:                 "adminSendChat",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendChatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSendChatOK:
		return v, nil, nil, nil, nil, nil

	case *AdminSendChatBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminSendChatUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminSendChatForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminSendChatInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSendChatShort admins send chat to group topic
Send message to chat topic as system.
*/
func (a *Client) AdminSendChatShort(params *AdminSendChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendChatOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendChatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSendChat",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendChatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSendChatOK:
		return v, nil
	case *AdminSendChatBadRequest:
		return nil, v
	case *AdminSendChatUnauthorized:
		return nil, v
	case *AdminSendChatForbidden:
		return nil, v
	case *AdminSendChatInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteChatShort instead.

AdminDeleteChat admins delete chat
Delete chat.
*/
func (a *Client) AdminDeleteChat(params *AdminDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatNoContent, *AdminDeleteChatBadRequest, *AdminDeleteChatUnauthorized, *AdminDeleteChatForbidden, *AdminDeleteChatInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChatParams()
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
		ID:                 "adminDeleteChat",
		Method:             "DELETE",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChatNoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteChatBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteChatUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteChatForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteChatInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteChatShort admins delete chat
Delete chat.
*/
func (a *Client) AdminDeleteChatShort(params *AdminDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteChat",
		Method:             "DELETE",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChatNoContent:
		return v, nil
	case *AdminDeleteChatBadRequest:
		return nil, v
	case *AdminDeleteChatUnauthorized:
		return nil, v
	case *AdminDeleteChatForbidden:
		return nil, v
	case *AdminDeleteChatInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminTopicMembersShort instead.

AdminTopicMembers admin get topic member
Get topic members.
*/
func (a *Client) AdminTopicMembers(params *AdminTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicMembersOK, *AdminTopicMembersBadRequest, *AdminTopicMembersUnauthorized, *AdminTopicMembersForbidden, *AdminTopicMembersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicMembersParams()
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
		ID:                 "adminTopicMembers",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminTopicMembersOK:
		return v, nil, nil, nil, nil, nil

	case *AdminTopicMembersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminTopicMembersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminTopicMembersForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminTopicMembersInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminTopicMembersShort admin get topic member
Get topic members.
*/
func (a *Client) AdminTopicMembersShort(params *AdminTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicMembersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicMembersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminTopicMembers",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminTopicMembersOK:
		return v, nil
	case *AdminTopicMembersBadRequest:
		return nil, v
	case *AdminTopicMembersUnauthorized:
		return nil, v
	case *AdminTopicMembersForbidden:
		return nil, v
	case *AdminTopicMembersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminTopicShardsShort instead.

AdminTopicShards admin get shard list of topic
Get shard list from topic.
*/
func (a *Client) AdminTopicShards(params *AdminTopicShardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicShardsOK, *AdminTopicShardsBadRequest, *AdminTopicShardsUnauthorized, *AdminTopicShardsForbidden, *AdminTopicShardsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicShardsParams()
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
		ID:                 "adminTopicShards",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/shards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicShardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminTopicShardsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminTopicShardsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminTopicShardsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminTopicShardsForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminTopicShardsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminTopicShardsShort admin get shard list of topic
Get shard list from topic.
*/
func (a *Client) AdminTopicShardsShort(params *AdminTopicShardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicShardsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicShardsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminTopicShards",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/shards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicShardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminTopicShardsOK:
		return v, nil
	case *AdminTopicShardsBadRequest:
		return nil, v
	case *AdminTopicShardsUnauthorized:
		return nil, v
	case *AdminTopicShardsForbidden:
		return nil, v
	case *AdminTopicShardsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUnbanTopicMembersShort instead.

AdminUnbanTopicMembers admins unban user in group topic
Unban users in some topic.
*/
func (a *Client) AdminUnbanTopicMembers(params *AdminUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanTopicMembersOK, *AdminUnbanTopicMembersBadRequest, *AdminUnbanTopicMembersUnauthorized, *AdminUnbanTopicMembersForbidden, *AdminUnbanTopicMembersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUnbanTopicMembersParams()
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
		ID:                 "adminUnbanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/unban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUnbanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUnbanTopicMembersOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUnbanTopicMembersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUnbanTopicMembersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUnbanTopicMembersForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUnbanTopicMembersInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUnbanTopicMembersShort admins unban user in group topic
Unban users in some topic.
*/
func (a *Client) AdminUnbanTopicMembersShort(params *AdminUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanTopicMembersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUnbanTopicMembersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUnbanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/unban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUnbanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUnbanTopicMembersOK:
		return v, nil
	case *AdminUnbanTopicMembersBadRequest:
		return nil, v
	case *AdminUnbanTopicMembersUnauthorized:
		return nil, v
	case *AdminUnbanTopicMembersForbidden:
		return nil, v
	case *AdminUnbanTopicMembersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddTopicMemberShort instead.

AdminAddTopicMember admin add user to topic
Add new member for topic in a namespace.
*/
func (a *Client) AdminAddTopicMember(params *AdminAddTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddTopicMemberOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddTopicMemberParams()
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
		ID:                 "adminAddTopicMember",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddTopicMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddTopicMemberOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddTopicMemberShort admin add user to topic
Add new member for topic in a namespace.
*/
func (a *Client) AdminAddTopicMemberShort(params *AdminAddTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddTopicMemberOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddTopicMemberParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminAddTopicMember",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddTopicMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddTopicMemberOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminRemoveTopicMemberShort instead.

AdminRemoveTopicMember admin remove user from topic
Remove member from topic in a namespace.
*/
func (a *Client) AdminRemoveTopicMember(params *AdminRemoveTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveTopicMemberOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveTopicMemberParams()
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
		ID:                 "adminRemoveTopicMember",
		Method:             "DELETE",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveTopicMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveTopicMemberOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRemoveTopicMemberShort admin remove user from topic
Remove member from topic in a namespace.
*/
func (a *Client) AdminRemoveTopicMemberShort(params *AdminRemoveTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveTopicMemberOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveTopicMemberParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminRemoveTopicMember",
		Method:             "DELETE",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveTopicMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveTopicMemberOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminQueryTopicShort instead.

AdminQueryTopic admin query topics
Get topics in a namespace.
*/
func (a *Client) AdminQueryTopic(params *AdminQueryTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicOK, *AdminQueryTopicBadRequest, *AdminQueryTopicUnauthorized, *AdminQueryTopicForbidden, *AdminQueryTopicInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryTopicParams()
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
		ID:                 "adminQueryTopic",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminQueryTopicOK:
		return v, nil, nil, nil, nil, nil

	case *AdminQueryTopicBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminQueryTopicUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminQueryTopicForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminQueryTopicInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryTopicShort admin query topics
Get topics in a namespace.
*/
func (a *Client) AdminQueryTopicShort(params *AdminQueryTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryTopicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminQueryTopic",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryTopicOK:
		return v, nil
	case *AdminQueryTopicBadRequest:
		return nil, v
	case *AdminQueryTopicUnauthorized:
		return nil, v
	case *AdminQueryTopicForbidden:
		return nil, v
	case *AdminQueryTopicInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminQueryUsersTopicShort instead.

AdminQueryUsersTopic admin query user's topics
Get user's topics in a namespace.
*/
func (a *Client) AdminQueryUsersTopic(params *AdminQueryUsersTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryUsersTopicOK, *AdminQueryUsersTopicBadRequest, *AdminQueryUsersTopicUnauthorized, *AdminQueryUsersTopicForbidden, *AdminQueryUsersTopicInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryUsersTopicParams()
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
		ID:                 "adminQueryUsersTopic",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/users/{userId}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryUsersTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminQueryUsersTopicOK:
		return v, nil, nil, nil, nil, nil

	case *AdminQueryUsersTopicBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminQueryUsersTopicUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminQueryUsersTopicForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminQueryUsersTopicInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryUsersTopicShort admin query user's topics
Get user's topics in a namespace.
*/
func (a *Client) AdminQueryUsersTopicShort(params *AdminQueryUsersTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryUsersTopicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryUsersTopicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminQueryUsersTopic",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/users/{userId}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryUsersTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryUsersTopicOK:
		return v, nil
	case *AdminQueryUsersTopicBadRequest:
		return nil, v
	case *AdminQueryUsersTopicUnauthorized:
		return nil, v
	case *AdminQueryUsersTopicForbidden:
		return nil, v
	case *AdminQueryUsersTopicInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMutedTopicsShort instead.

PublicGetMutedTopics public get muted at topics
get chat muted topics in a namespace.
*/
func (a *Client) PublicGetMutedTopics(params *PublicGetMutedTopicsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMutedTopicsOK, *PublicGetMutedTopicsBadRequest, *PublicGetMutedTopicsUnauthorized, *PublicGetMutedTopicsForbidden, *PublicGetMutedTopicsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMutedTopicsParams()
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
		ID:                 "publicGetMutedTopics",
		Method:             "GET",
		PathPattern:        "/chat/public/namespaces/{namespace}/muted",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMutedTopicsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetMutedTopicsOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetMutedTopicsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetMutedTopicsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetMutedTopicsForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicGetMutedTopicsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMutedTopicsShort public get muted at topics
get chat muted topics in a namespace.
*/
func (a *Client) PublicGetMutedTopicsShort(params *PublicGetMutedTopicsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMutedTopicsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMutedTopicsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMutedTopics",
		Method:             "GET",
		PathPattern:        "/chat/public/namespaces/{namespace}/muted",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMutedTopicsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMutedTopicsOK:
		return v, nil
	case *PublicGetMutedTopicsBadRequest:
		return nil, v
	case *PublicGetMutedTopicsUnauthorized:
		return nil, v
	case *PublicGetMutedTopicsForbidden:
		return nil, v
	case *PublicGetMutedTopicsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicTopicListShort instead.

PublicTopicList public get list of topic
get chat list of topic in a namespace.
*/
func (a *Client) PublicTopicList(params *PublicTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTopicListOK, *PublicTopicListBadRequest, *PublicTopicListUnauthorized, *PublicTopicListForbidden, *PublicTopicListInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicTopicListParams()
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
		ID:                 "publicTopicList",
		Method:             "GET",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicTopicListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicTopicListOK:
		return v, nil, nil, nil, nil, nil

	case *PublicTopicListBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicTopicListUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicTopicListForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicTopicListInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicTopicListShort public get list of topic
get chat list of topic in a namespace.
*/
func (a *Client) PublicTopicListShort(params *PublicTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTopicListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicTopicListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicTopicList",
		Method:             "GET",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicTopicListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicTopicListOK:
		return v, nil
	case *PublicTopicListBadRequest:
		return nil, v
	case *PublicTopicListUnauthorized:
		return nil, v
	case *PublicTopicListForbidden:
		return nil, v
	case *PublicTopicListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicBanTopicMembersShort instead.

PublicBanTopicMembers public ban topic members in a group topic
Ban topic members in a group topic.
*/
func (a *Client) PublicBanTopicMembers(params *PublicBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBanTopicMembersOK, *PublicBanTopicMembersBadRequest, *PublicBanTopicMembersUnauthorized, *PublicBanTopicMembersForbidden, *PublicBanTopicMembersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBanTopicMembersParams()
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
		ID:                 "publicBanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/ban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBanTopicMembersOK:
		return v, nil, nil, nil, nil, nil

	case *PublicBanTopicMembersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicBanTopicMembersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicBanTopicMembersForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicBanTopicMembersInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBanTopicMembersShort public ban topic members in a group topic
Ban topic members in a group topic.
*/
func (a *Client) PublicBanTopicMembersShort(params *PublicBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBanTopicMembersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBanTopicMembersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicBanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/ban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBanTopicMembersOK:
		return v, nil
	case *PublicBanTopicMembersBadRequest:
		return nil, v
	case *PublicBanTopicMembersUnauthorized:
		return nil, v
	case *PublicBanTopicMembersForbidden:
		return nil, v
	case *PublicBanTopicMembersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicChatHistoryShort instead.

PublicChatHistory public get chat history
get chat history in a namespace.
*/
func (a *Client) PublicChatHistory(params *PublicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicChatHistoryOK, *PublicChatHistoryBadRequest, *PublicChatHistoryUnauthorized, *PublicChatHistoryForbidden, *PublicChatHistoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicChatHistoryParams()
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
		ID:                 "publicChatHistory",
		Method:             "GET",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicChatHistoryOK:
		return v, nil, nil, nil, nil, nil

	case *PublicChatHistoryBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicChatHistoryUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicChatHistoryForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicChatHistoryInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicChatHistoryShort public get chat history
get chat history in a namespace.
*/
func (a *Client) PublicChatHistoryShort(params *PublicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicChatHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicChatHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicChatHistory",
		Method:             "GET",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicChatHistoryOK:
		return v, nil
	case *PublicChatHistoryBadRequest:
		return nil, v
	case *PublicChatHistoryUnauthorized:
		return nil, v
	case *PublicChatHistoryForbidden:
		return nil, v
	case *PublicChatHistoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicDeleteChatShort instead.

PublicDeleteChat public delete chat
Delete chat.
*/
func (a *Client) PublicDeleteChat(params *PublicDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteChatNoContent, *PublicDeleteChatBadRequest, *PublicDeleteChatUnauthorized, *PublicDeleteChatForbidden, *PublicDeleteChatInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteChatParams()
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
		ID:                 "publicDeleteChat",
		Method:             "DELETE",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteChatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteChatNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicDeleteChatBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicDeleteChatUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicDeleteChatForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicDeleteChatInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeleteChatShort public delete chat
Delete chat.
*/
func (a *Client) PublicDeleteChatShort(params *PublicDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteChatNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteChatParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeleteChat",
		Method:             "DELETE",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteChatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteChatNoContent:
		return v, nil
	case *PublicDeleteChatBadRequest:
		return nil, v
	case *PublicDeleteChatUnauthorized:
		return nil, v
	case *PublicDeleteChatForbidden:
		return nil, v
	case *PublicDeleteChatInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicMuteUserShort instead.

PublicMuteUser public mute user in a topic
Mute user.
*/
func (a *Client) PublicMuteUser(params *PublicMuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicMuteUserNoContent, *PublicMuteUserBadRequest, *PublicMuteUserUnauthorized, *PublicMuteUserForbidden, *PublicMuteUserInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicMuteUserParams()
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
		ID:                 "publicMuteUser",
		Method:             "PUT",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/mute",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicMuteUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicMuteUserNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicMuteUserBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicMuteUserUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicMuteUserForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicMuteUserInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicMuteUserShort public mute user in a topic
Mute user.
*/
func (a *Client) PublicMuteUserShort(params *PublicMuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicMuteUserNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicMuteUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicMuteUser",
		Method:             "PUT",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/mute",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicMuteUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicMuteUserNoContent:
		return v, nil
	case *PublicMuteUserBadRequest:
		return nil, v
	case *PublicMuteUserUnauthorized:
		return nil, v
	case *PublicMuteUserForbidden:
		return nil, v
	case *PublicMuteUserInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUnbanTopicMembersShort instead.

PublicUnbanTopicMembers public unban topic members in a group topic
Unban topic members in a group topic.
*/
func (a *Client) PublicUnbanTopicMembers(params *PublicUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnbanTopicMembersOK, *PublicUnbanTopicMembersBadRequest, *PublicUnbanTopicMembersUnauthorized, *PublicUnbanTopicMembersForbidden, *PublicUnbanTopicMembersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUnbanTopicMembersParams()
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
		ID:                 "publicUnbanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/unban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUnbanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUnbanTopicMembersOK:
		return v, nil, nil, nil, nil, nil

	case *PublicUnbanTopicMembersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicUnbanTopicMembersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicUnbanTopicMembersForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicUnbanTopicMembersInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUnbanTopicMembersShort public unban topic members in a group topic
Unban topic members in a group topic.
*/
func (a *Client) PublicUnbanTopicMembersShort(params *PublicUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnbanTopicMembersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUnbanTopicMembersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUnbanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/unban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUnbanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUnbanTopicMembersOK:
		return v, nil
	case *PublicUnbanTopicMembersBadRequest:
		return nil, v
	case *PublicUnbanTopicMembersUnauthorized:
		return nil, v
	case *PublicUnbanTopicMembersForbidden:
		return nil, v
	case *PublicUnbanTopicMembersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUnmuteUserShort instead.

PublicUnmuteUser public unmute user in a topic
Unmute user.
*/
func (a *Client) PublicUnmuteUser(params *PublicUnmuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnmuteUserNoContent, *PublicUnmuteUserBadRequest, *PublicUnmuteUserUnauthorized, *PublicUnmuteUserForbidden, *PublicUnmuteUserInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUnmuteUserParams()
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
		ID:                 "publicUnmuteUser",
		Method:             "PUT",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/unmute",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUnmuteUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUnmuteUserNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicUnmuteUserBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicUnmuteUserUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicUnmuteUserForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicUnmuteUserInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUnmuteUserShort public unmute user in a topic
Unmute user.
*/
func (a *Client) PublicUnmuteUserShort(params *PublicUnmuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnmuteUserNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUnmuteUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUnmuteUser",
		Method:             "PUT",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/unmute",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUnmuteUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUnmuteUserNoContent:
		return v, nil
	case *PublicUnmuteUserBadRequest:
		return nil, v
	case *PublicUnmuteUserUnauthorized:
		return nil, v
	case *PublicUnmuteUserForbidden:
		return nil, v
	case *PublicUnmuteUserInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
