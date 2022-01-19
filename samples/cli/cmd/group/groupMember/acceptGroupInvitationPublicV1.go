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

// acceptGroupInvitationPublicV1Cmd represents the acceptGroupInvitationPublicV1 command
var acceptGroupInvitationPublicV1Cmd = &cobra.Command{
	Use:   "acceptGroupInvitationPublicV1",
	Short: "Accept group invitation public V1",
	Long:  `Accept group invitation public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_member.AcceptGroupInvitationPublicV1Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupMemberService.AcceptGroupInvitationPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(acceptGroupInvitationPublicV1Cmd)
	acceptGroupInvitationPublicV1Cmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = acceptGroupInvitationPublicV1Cmd.MarkFlagRequired("groupId")
	acceptGroupInvitationPublicV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = acceptGroupInvitationPublicV1Cmd.MarkFlagRequired("namespace")
}
