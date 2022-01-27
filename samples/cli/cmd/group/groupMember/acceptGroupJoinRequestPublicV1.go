// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package groupMember

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AcceptGroupJoinRequestPublicV1Cmd represents the AcceptGroupJoinRequestPublicV1 command
var AcceptGroupJoinRequestPublicV1Cmd = &cobra.Command{
	Use:   "AcceptGroupJoinRequestPublicV1",
	Short: "Accept group join request public V1",
	Long:  `Accept group join request public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.AcceptGroupJoinRequestPublicV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupMemberService.AcceptGroupJoinRequestPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AcceptGroupJoinRequestPublicV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AcceptGroupJoinRequestPublicV1Cmd.MarkFlagRequired("namespace")
	AcceptGroupJoinRequestPublicV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AcceptGroupJoinRequestPublicV1Cmd.MarkFlagRequired("userId")
}
