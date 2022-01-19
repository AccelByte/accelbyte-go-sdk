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

// kickGroupMemberPublicV1Cmd represents the kickGroupMemberPublicV1 command
var kickGroupMemberPublicV1Cmd = &cobra.Command{
	Use:   "kickGroupMemberPublicV1",
	Short: "Kick group member public V1",
	Long:  `Kick group member public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.KickGroupMemberPublicV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupMemberService.KickGroupMemberPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(kickGroupMemberPublicV1Cmd)
	kickGroupMemberPublicV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = kickGroupMemberPublicV1Cmd.MarkFlagRequired("namespace")
	kickGroupMemberPublicV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = kickGroupMemberPublicV1Cmd.MarkFlagRequired("userId")
}
