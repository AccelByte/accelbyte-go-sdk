// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	"github.com/AccelByte/sample-apps/cmd/group/configuration"
	"github.com/AccelByte/sample-apps/cmd/group/group"
	"github.com/AccelByte/sample-apps/cmd/group/groupMember"
	"github.com/AccelByte/sample-apps/cmd/group/groupRoles"
	"github.com/AccelByte/sample-apps/cmd/group/memberRequest"
	"github.com/spf13/cobra"
)

// GroupCmd represents the service's child command
var GroupCmd = &cobra.Command{
	Use:   "Group",
	Short: "Group to get all the commands",
}

func init() {
	GroupCmd.AddCommand(configuration.ListGroupConfigurationAdminV1Cmd)
	GroupCmd.AddCommand(configuration.CreateGroupConfigurationAdminV1Cmd)
	GroupCmd.AddCommand(configuration.InitiateGroupConfigurationAdminV1Cmd)
	GroupCmd.AddCommand(configuration.GetGroupConfigurationAdminV1Cmd)
	GroupCmd.AddCommand(configuration.DeleteGroupConfigurationV1Cmd)
	GroupCmd.AddCommand(configuration.UpdateGroupConfigurationAdminV1Cmd)
	GroupCmd.AddCommand(configuration.UpdateGroupConfigurationGlobalRuleAdminV1Cmd)
	GroupCmd.AddCommand(configuration.DeleteGroupConfigurationGlobalRuleAdminV1Cmd)
	GroupCmd.AddCommand(group.GetGroupListAdminV1Cmd)
	GroupCmd.AddCommand(group.GetSingleGroupAdminV1Cmd)
	GroupCmd.AddCommand(group.DeleteGroupAdminV1Cmd)
	GroupCmd.AddCommand(groupMember.GetGroupMembersListAdminV1Cmd)
	GroupCmd.AddCommand(groupRoles.GetMemberRolesListAdminV1Cmd)
	GroupCmd.AddCommand(groupRoles.CreateMemberRoleAdminV1Cmd)
	GroupCmd.AddCommand(groupRoles.GetSingleMemberRoleAdminV1Cmd)
	GroupCmd.AddCommand(groupRoles.DeleteMemberRoleAdminV1Cmd)
	GroupCmd.AddCommand(groupRoles.UpdateMemberRoleAdminV1Cmd)
	GroupCmd.AddCommand(groupRoles.UpdateMemberRolePermissionAdminV1Cmd)
	GroupCmd.AddCommand(group.GetGroupListPublicV1Cmd)
	GroupCmd.AddCommand(group.CreateNewGroupPublicV1Cmd)
	GroupCmd.AddCommand(group.GetSingleGroupPublicV1Cmd)
	GroupCmd.AddCommand(group.UpdateSingleGroupV1Cmd)
	GroupCmd.AddCommand(group.DeleteGroupPublicV1Cmd)
	GroupCmd.AddCommand(group.UpdatePatchSingleGroupPublicV1Cmd)
	GroupCmd.AddCommand(group.UpdateGroupCustomAttributesPublicV1Cmd)
	GroupCmd.AddCommand(groupMember.AcceptGroupInvitationPublicV1Cmd)
	GroupCmd.AddCommand(groupMember.RejectGroupInvitationPublicV1Cmd)
	GroupCmd.AddCommand(groupMember.JoinGroupV1Cmd)
	GroupCmd.AddCommand(groupMember.CancelGroupJoinRequestV1Cmd)
	GroupCmd.AddCommand(memberRequest.GetGroupJoinRequestPublicV1Cmd)
	GroupCmd.AddCommand(groupMember.GetGroupMembersListPublicV1Cmd)
	GroupCmd.AddCommand(group.UpdateGroupCustomRulePublicV1Cmd)
	GroupCmd.AddCommand(group.UpdateGroupPredefinedRulePublicV1Cmd)
	GroupCmd.AddCommand(group.DeleteGroupPredefinedRulePublicV1Cmd)
	GroupCmd.AddCommand(groupMember.LeaveGroupPublicV1Cmd)
	GroupCmd.AddCommand(groupRoles.GetMemberRolesListPublicV1Cmd)
	GroupCmd.AddCommand(groupRoles.UpdateMemberRolePublicV1Cmd)
	GroupCmd.AddCommand(groupRoles.DeleteMemberRolePublicV1Cmd)
	GroupCmd.AddCommand(memberRequest.GetGroupInvitationRequestPublicV1Cmd)
	GroupCmd.AddCommand(groupMember.GetUserGroupInformationPublicV1Cmd)
	GroupCmd.AddCommand(groupMember.InviteGroupPublicV1Cmd)
	GroupCmd.AddCommand(groupMember.AcceptGroupJoinRequestPublicV1Cmd)
	GroupCmd.AddCommand(groupMember.RejectGroupJoinRequestPublicV1Cmd)
	GroupCmd.AddCommand(groupMember.KickGroupMemberPublicV1Cmd)
	GroupCmd.AddCommand(groupMember.GetUserJoinedGroupInformationPublicV2Cmd)
	GroupCmd.AddCommand(group.CreateNewGroupPublicV2Cmd)
	GroupCmd.AddCommand(group.GetListGroupByIDsV2Cmd)
	GroupCmd.AddCommand(group.UpdatePutSingleGroupPublicV2Cmd)
	GroupCmd.AddCommand(group.DeleteGroupPublicV2Cmd)
	GroupCmd.AddCommand(group.UpdatePatchSingleGroupPublicV2Cmd)
	GroupCmd.AddCommand(group.UpdateGroupCustomAttributesPublicV2Cmd)
	GroupCmd.AddCommand(groupMember.AcceptGroupInvitationPublicV2Cmd)
	GroupCmd.AddCommand(groupMember.RejectGroupInvitationPublicV2Cmd)
	GroupCmd.AddCommand(memberRequest.GetGroupInviteRequestPublicV2Cmd)
	GroupCmd.AddCommand(groupMember.JoinGroupV2Cmd)
	GroupCmd.AddCommand(memberRequest.GetGroupJoinRequestPublicV2Cmd)
	GroupCmd.AddCommand(groupMember.LeaveGroupPublicV2Cmd)
	GroupCmd.AddCommand(group.UpdateGroupCustomRulePublicV2Cmd)
	GroupCmd.AddCommand(group.UpdateGroupPredefinedRulePublicV2Cmd)
	GroupCmd.AddCommand(group.DeleteGroupPredefinedRulePublicV2Cmd)
	GroupCmd.AddCommand(groupRoles.GetMemberRolesListPublicV2Cmd)
	GroupCmd.AddCommand(groupRoles.UpdateMemberRolePublicV2Cmd)
	GroupCmd.AddCommand(groupRoles.DeleteMemberRolePublicV2Cmd)
	GroupCmd.AddCommand(groupMember.GetUserGroupInformationPublicV2Cmd)
	GroupCmd.AddCommand(memberRequest.GetMyGroupJoinRequestV2Cmd)
	GroupCmd.AddCommand(groupMember.InviteGroupPublicV2Cmd)
	GroupCmd.AddCommand(memberRequest.CancelInvitationGroupMemberV2Cmd)
	GroupCmd.AddCommand(groupMember.AcceptGroupJoinRequestPublicV2Cmd)
	GroupCmd.AddCommand(groupMember.RejectGroupJoinRequestPublicV2Cmd)
	GroupCmd.AddCommand(groupMember.KickGroupMemberPublicV2Cmd)
	GroupCmd.AddCommand(groupMember.GetUserGroupStatusInformationV2Cmd)
}
