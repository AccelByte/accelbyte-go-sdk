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

// JoinGroupV1Cmd represents the JoinGroupV1 command
var JoinGroupV1Cmd = &cobra.Command{
	Use:   "joinGroupV1",
	Short: "Join group V1",
	Long:  `Join group V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_member.JoinGroupV1Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, err := groupMemberService.JoinGroupV1Short(input)
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
	JoinGroupV1Cmd.Flags().StringP("groupId", "", "", "Group id")
	_ = JoinGroupV1Cmd.MarkFlagRequired("groupId")
	JoinGroupV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = JoinGroupV1Cmd.MarkFlagRequired("namespace")
}
