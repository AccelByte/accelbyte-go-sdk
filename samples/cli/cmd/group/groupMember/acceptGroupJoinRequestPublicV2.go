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

// AcceptGroupJoinRequestPublicV2Cmd represents the AcceptGroupJoinRequestPublicV2 command
var AcceptGroupJoinRequestPublicV2Cmd = &cobra.Command{
	Use:   "acceptGroupJoinRequestPublicV2",
	Short: "Accept group join request public V2",
	Long:  `Accept group join request public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.AcceptGroupJoinRequestPublicV2Params{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := groupMemberService.AcceptGroupJoinRequestPublicV2Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AcceptGroupJoinRequestPublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = AcceptGroupJoinRequestPublicV2Cmd.MarkFlagRequired("groupId")
	AcceptGroupJoinRequestPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AcceptGroupJoinRequestPublicV2Cmd.MarkFlagRequired("namespace")
	AcceptGroupJoinRequestPublicV2Cmd.Flags().String("userId", "", "User id")
	_ = AcceptGroupJoinRequestPublicV2Cmd.MarkFlagRequired("userId")
}
