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

// JoinGroupV2Cmd represents the JoinGroupV2 command
var JoinGroupV2Cmd = &cobra.Command{
	Use:   "joinGroupV2",
	Short: "Join group V2",
	Long:  `Join group V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_member.JoinGroupV2Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, err := groupMemberService.JoinGroupV2Short(input)
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
	JoinGroupV2Cmd.Flags().String("groupId", "", "Group id")
	_ = JoinGroupV2Cmd.MarkFlagRequired("groupId")
	JoinGroupV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = JoinGroupV2Cmd.MarkFlagRequired("namespace")
}
