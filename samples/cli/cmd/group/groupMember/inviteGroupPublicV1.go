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

// InviteGroupPublicV1Cmd represents the InviteGroupPublicV1 command
var InviteGroupPublicV1Cmd = &cobra.Command{
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
		ok, err := groupMemberService.InviteGroupPublicV1Short(input)
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
	InviteGroupPublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = InviteGroupPublicV1Cmd.MarkFlagRequired("namespace")
	InviteGroupPublicV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = InviteGroupPublicV1Cmd.MarkFlagRequired("userId")
}
