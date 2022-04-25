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
}
