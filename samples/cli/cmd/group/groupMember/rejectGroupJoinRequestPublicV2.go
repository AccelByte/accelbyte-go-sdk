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

// RejectGroupJoinRequestPublicV2Cmd represents the RejectGroupJoinRequestPublicV2 command
var RejectGroupJoinRequestPublicV2Cmd = &cobra.Command{
	Use:   "rejectGroupJoinRequestPublicV2",
	Short: "Reject group join request public V2",
	Long:  `Reject group join request public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.RejectGroupJoinRequestPublicV2Params{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := groupMemberService.RejectGroupJoinRequestPublicV2Short(input)
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
	RejectGroupJoinRequestPublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = RejectGroupJoinRequestPublicV2Cmd.MarkFlagRequired("groupId")
	RejectGroupJoinRequestPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = RejectGroupJoinRequestPublicV2Cmd.MarkFlagRequired("namespace")
	RejectGroupJoinRequestPublicV2Cmd.Flags().String("userId", "", "User id")
	_ = RejectGroupJoinRequestPublicV2Cmd.MarkFlagRequired("userId")
}
