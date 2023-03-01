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

// RejectGroupInvitationPublicV2Cmd represents the RejectGroupInvitationPublicV2 command
var RejectGroupInvitationPublicV2Cmd = &cobra.Command{
	Use:   "rejectGroupInvitationPublicV2",
	Short: "Reject group invitation public V2",
	Long:  `Reject group invitation public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_member.RejectGroupInvitationPublicV2Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, errOK := groupMemberService.RejectGroupInvitationPublicV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RejectGroupInvitationPublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = RejectGroupInvitationPublicV2Cmd.MarkFlagRequired("groupId")
	RejectGroupInvitationPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = RejectGroupInvitationPublicV2Cmd.MarkFlagRequired("namespace")
}
