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

// inviteGroupPublicV1Cmd represents the inviteGroupPublicV1 command
var inviteGroupPublicV1Cmd = &cobra.Command{
	Use:   "inviteGroupPublicV1",
	Short: "Invite group public V1",
	Long:  `Invite group public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.InviteGroupPublicV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupMemberService.InviteGroupPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(inviteGroupPublicV1Cmd)
	inviteGroupPublicV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = inviteGroupPublicV1Cmd.MarkFlagRequired("namespace")
	inviteGroupPublicV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = inviteGroupPublicV1Cmd.MarkFlagRequired("userId")
}
