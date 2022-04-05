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

// KickGroupMemberPublicV1Cmd represents the KickGroupMemberPublicV1 command
var KickGroupMemberPublicV1Cmd = &cobra.Command{
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
		ok, err := groupMemberService.KickGroupMemberPublicV1Short(input)
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
	KickGroupMemberPublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = KickGroupMemberPublicV1Cmd.MarkFlagRequired("namespace")
	KickGroupMemberPublicV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = KickGroupMemberPublicV1Cmd.MarkFlagRequired("userId")
}
