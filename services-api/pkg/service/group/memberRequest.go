// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package group

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/member_request"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type MemberRequestService struct {
	Client          *groupclient.JusticeGroupService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetGroupJoinRequestPublicV1Short instead
func (m *MemberRequestService) GetGroupJoinRequestPublicV1(input *member_request.GetGroupJoinRequestPublicV1Params) (*groupclientmodels.ModelsGetMemberRequestsListResponseV1, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := m.Client.MemberRequest.GetGroupJoinRequestPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetGroupInvitationRequestPublicV1Short instead
func (m *MemberRequestService) GetGroupInvitationRequestPublicV1(input *member_request.GetGroupInvitationRequestPublicV1Params) (*groupclientmodels.ModelsGetMemberRequestsListResponseV1, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := m.Client.MemberRequest.GetGroupInvitationRequestPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MemberRequestService) GetGroupJoinRequestPublicV1Short(input *member_request.GetGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGetMemberRequestsListResponseV1, error) {
	ok, err := m.Client.MemberRequest.GetGroupJoinRequestPublicV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MemberRequestService) GetGroupInvitationRequestPublicV1Short(input *member_request.GetGroupInvitationRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGetMemberRequestsListResponseV1, error) {
	ok, err := m.Client.MemberRequest.GetGroupInvitationRequestPublicV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
