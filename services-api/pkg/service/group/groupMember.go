// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package group

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type GroupMemberService struct {
	Client          *groupclient.JusticeGroupService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetGroupMembersListAdminV1Short instead
func (g *GroupMemberService) GetGroupMembersListAdminV1(input *group_member.GetGroupMembersListAdminV1Params) (*groupclientmodels.ModelsGetGroupMemberListResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.GroupMember.GetGroupMembersListAdminV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use AcceptGroupInvitationPublicV1Short instead
func (g *GroupMemberService) AcceptGroupInvitationPublicV1(input *group_member.AcceptGroupInvitationPublicV1Params) (*groupclientmodels.ModelsMemberRequestGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := g.Client.GroupMember.AcceptGroupInvitationPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use RejectGroupInvitationPublicV1Short instead
func (g *GroupMemberService) RejectGroupInvitationPublicV1(input *group_member.RejectGroupInvitationPublicV1Params) (*groupclientmodels.ModelsMemberRequestGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := g.Client.GroupMember.RejectGroupInvitationPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use JoinGroupV1Short instead
func (g *GroupMemberService) JoinGroupV1(input *group_member.JoinGroupV1Params) (*groupclientmodels.ModelsJoinGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := g.Client.GroupMember.JoinGroupV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

// Deprecated: Use CancelGroupJoinRequestV1Short instead
func (g *GroupMemberService) CancelGroupJoinRequestV1(input *group_member.CancelGroupJoinRequestV1Params) (*groupclientmodels.ModelsMemberRequestGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.GroupMember.CancelGroupJoinRequestV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetGroupMembersListPublicV1Short instead
func (g *GroupMemberService) GetGroupMembersListPublicV1(input *group_member.GetGroupMembersListPublicV1Params) (*groupclientmodels.ModelsGetGroupMemberListResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.GroupMember.GetGroupMembersListPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use LeaveGroupPublicV1Short instead
func (g *GroupMemberService) LeaveGroupPublicV1(input *group_member.LeaveGroupPublicV1Params) (*groupclientmodels.ModelsLeaveGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.GroupMember.LeaveGroupPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserGroupInformationPublicV1Short instead
func (g *GroupMemberService) GetUserGroupInformationPublicV1(input *group_member.GetUserGroupInformationPublicV1Params) (*groupclientmodels.ModelsGetUserGroupInformationResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.GroupMember.GetUserGroupInformationPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use InviteGroupPublicV1Short instead
func (g *GroupMemberService) InviteGroupPublicV1(input *group_member.InviteGroupPublicV1Params) (*groupclientmodels.ModelsUserInvitationResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := g.Client.GroupMember.InviteGroupPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use AcceptGroupJoinRequestPublicV1Short instead
func (g *GroupMemberService) AcceptGroupJoinRequestPublicV1(input *group_member.AcceptGroupJoinRequestPublicV1Params) (*groupclientmodels.ModelsMemberRequestGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := g.Client.GroupMember.AcceptGroupJoinRequestPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use RejectGroupJoinRequestPublicV1Short instead
func (g *GroupMemberService) RejectGroupJoinRequestPublicV1(input *group_member.RejectGroupJoinRequestPublicV1Params) (*groupclientmodels.ModelsMemberRequestGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := g.Client.GroupMember.RejectGroupJoinRequestPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use KickGroupMemberPublicV1Short instead
func (g *GroupMemberService) KickGroupMemberPublicV1(input *group_member.KickGroupMemberPublicV1Params) (*groupclientmodels.ModelsKickGroupMemberResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := g.Client.GroupMember.KickGroupMemberPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GroupMemberService) GetGroupMembersListAdminV1Short(input *group_member.GetGroupMembersListAdminV1Params) (*groupclientmodels.ModelsGetGroupMemberListResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GroupMember.GetGroupMembersListAdminV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GroupMemberService) AcceptGroupInvitationPublicV1Short(input *group_member.AcceptGroupInvitationPublicV1Params) (*groupclientmodels.ModelsMemberRequestGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GroupMember.AcceptGroupInvitationPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GroupMemberService) RejectGroupInvitationPublicV1Short(input *group_member.RejectGroupInvitationPublicV1Params) (*groupclientmodels.ModelsMemberRequestGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GroupMember.RejectGroupInvitationPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GroupMemberService) JoinGroupV1Short(input *group_member.JoinGroupV1Params) (*groupclientmodels.ModelsJoinGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := g.Client.GroupMember.JoinGroupV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (g *GroupMemberService) CancelGroupJoinRequestV1Short(input *group_member.CancelGroupJoinRequestV1Params) (*groupclientmodels.ModelsMemberRequestGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GroupMember.CancelGroupJoinRequestV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GroupMemberService) GetGroupMembersListPublicV1Short(input *group_member.GetGroupMembersListPublicV1Params) (*groupclientmodels.ModelsGetGroupMemberListResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GroupMember.GetGroupMembersListPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GroupMemberService) LeaveGroupPublicV1Short(input *group_member.LeaveGroupPublicV1Params) (*groupclientmodels.ModelsLeaveGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GroupMember.LeaveGroupPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GroupMemberService) GetUserGroupInformationPublicV1Short(input *group_member.GetUserGroupInformationPublicV1Params) (*groupclientmodels.ModelsGetUserGroupInformationResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GroupMember.GetUserGroupInformationPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GroupMemberService) InviteGroupPublicV1Short(input *group_member.InviteGroupPublicV1Params) (*groupclientmodels.ModelsUserInvitationResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GroupMember.InviteGroupPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GroupMemberService) AcceptGroupJoinRequestPublicV1Short(input *group_member.AcceptGroupJoinRequestPublicV1Params) (*groupclientmodels.ModelsMemberRequestGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GroupMember.AcceptGroupJoinRequestPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GroupMemberService) RejectGroupJoinRequestPublicV1Short(input *group_member.RejectGroupJoinRequestPublicV1Params) (*groupclientmodels.ModelsMemberRequestGroupResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GroupMember.RejectGroupJoinRequestPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GroupMemberService) KickGroupMemberPublicV1Short(input *group_member.KickGroupMemberPublicV1Params) (*groupclientmodels.ModelsKickGroupMemberResponseV1, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GroupMember.KickGroupMemberPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
