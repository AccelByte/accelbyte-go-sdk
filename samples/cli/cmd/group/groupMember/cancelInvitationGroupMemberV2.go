// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package groupMember

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CancelInvitationGroupMemberV2Cmd represents the CancelInvitationGroupMemberV2 command
var CancelInvitationGroupMemberV2Cmd = &cobra.Command{
	Use:   "cancelInvitationGroupMemberV2",
	Short: "Cancel invitation group member V2",
	Long:  `Cancel invitation group member V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.CancelInvitationGroupMemberV2Params{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := groupMemberService.CancelInvitationGroupMemberV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CancelInvitationGroupMemberV2Cmd.Flags().String("groupId", "", "Group id")
	_ = CancelInvitationGroupMemberV2Cmd.MarkFlagRequired("groupId")
	CancelInvitationGroupMemberV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = CancelInvitationGroupMemberV2Cmd.MarkFlagRequired("namespace")
	CancelInvitationGroupMemberV2Cmd.Flags().String("userId", "", "User id")
	_ = CancelInvitationGroupMemberV2Cmd.MarkFlagRequired("userId")
}
