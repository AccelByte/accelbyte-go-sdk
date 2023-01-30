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

// GetUserGroupStatusInformationV2Cmd represents the GetUserGroupStatusInformationV2 command
var GetUserGroupStatusInformationV2Cmd = &cobra.Command{
	Use:   "getUserGroupStatusInformationV2",
	Short: "Get user group status information V2",
	Long:  `Get user group status information V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.GetUserGroupStatusInformationV2Params{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := groupMemberService.GetUserGroupStatusInformationV2Short(input)
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
	GetUserGroupStatusInformationV2Cmd.Flags().String("groupId", "", "Group id")
	_ = GetUserGroupStatusInformationV2Cmd.MarkFlagRequired("groupId")
	GetUserGroupStatusInformationV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserGroupStatusInformationV2Cmd.MarkFlagRequired("namespace")
	GetUserGroupStatusInformationV2Cmd.Flags().String("userId", "", "User id")
	_ = GetUserGroupStatusInformationV2Cmd.MarkFlagRequired("userId")
}
