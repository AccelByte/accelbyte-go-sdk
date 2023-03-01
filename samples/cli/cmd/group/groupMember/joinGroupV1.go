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
		created, errCreated := groupMemberService.JoinGroupV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	JoinGroupV1Cmd.Flags().String("groupId", "", "Group id")
	_ = JoinGroupV1Cmd.MarkFlagRequired("groupId")
	JoinGroupV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = JoinGroupV1Cmd.MarkFlagRequired("namespace")
}
