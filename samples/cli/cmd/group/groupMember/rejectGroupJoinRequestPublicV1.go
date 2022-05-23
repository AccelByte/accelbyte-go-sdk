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

// RejectGroupJoinRequestPublicV1Cmd represents the RejectGroupJoinRequestPublicV1 command
var RejectGroupJoinRequestPublicV1Cmd = &cobra.Command{
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
		ok, err := groupMemberService.RejectGroupJoinRequestPublicV1Short(input)
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
	RejectGroupJoinRequestPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = RejectGroupJoinRequestPublicV1Cmd.MarkFlagRequired("namespace")
	RejectGroupJoinRequestPublicV1Cmd.Flags().String("userId", "", "User id")
	_ = RejectGroupJoinRequestPublicV1Cmd.MarkFlagRequired("userId")
}
