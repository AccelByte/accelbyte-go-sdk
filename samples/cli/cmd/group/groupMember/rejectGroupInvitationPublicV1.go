// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// rejectGroupInvitationPublicV1Cmd represents the rejectGroupInvitationPublicV1 command
var rejectGroupInvitationPublicV1Cmd = &cobra.Command{
	Use:   "rejectGroupInvitationPublicV1",
	Short: "Reject group invitation public V1",
	Long:  `Reject group invitation public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_member.RejectGroupInvitationPublicV1Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupMemberService.RejectGroupInvitationPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(rejectGroupInvitationPublicV1Cmd)
	rejectGroupInvitationPublicV1Cmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = rejectGroupInvitationPublicV1Cmd.MarkFlagRequired("groupId")
	rejectGroupInvitationPublicV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = rejectGroupInvitationPublicV1Cmd.MarkFlagRequired("namespace")
}
