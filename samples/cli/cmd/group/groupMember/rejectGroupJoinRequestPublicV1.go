// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package groupMember

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// rejectGroupJoinRequestPublicV1Cmd represents the rejectGroupJoinRequestPublicV1 command
var rejectGroupJoinRequestPublicV1Cmd = &cobra.Command{
	Use:   "rejectGroupJoinRequestPublicV1",
	Short: "Reject group join request public V1",
	Long:  `Reject group join request public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.RejectGroupJoinRequestPublicV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupMemberService.RejectGroupJoinRequestPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(rejectGroupJoinRequestPublicV1Cmd)
	rejectGroupJoinRequestPublicV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = rejectGroupJoinRequestPublicV1Cmd.MarkFlagRequired("namespace")
	rejectGroupJoinRequestPublicV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = rejectGroupJoinRequestPublicV1Cmd.MarkFlagRequired("userId")
}
