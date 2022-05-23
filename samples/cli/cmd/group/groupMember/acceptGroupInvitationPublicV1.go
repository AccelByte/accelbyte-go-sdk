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

// AcceptGroupInvitationPublicV1Cmd represents the AcceptGroupInvitationPublicV1 command
var AcceptGroupInvitationPublicV1Cmd = &cobra.Command{
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
		ok, err := groupMemberService.AcceptGroupInvitationPublicV1Short(input)
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
	AcceptGroupInvitationPublicV1Cmd.Flags().String("groupId", "", "Group id")
	_ = AcceptGroupInvitationPublicV1Cmd.MarkFlagRequired("groupId")
	AcceptGroupInvitationPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AcceptGroupInvitationPublicV1Cmd.MarkFlagRequired("namespace")
}
