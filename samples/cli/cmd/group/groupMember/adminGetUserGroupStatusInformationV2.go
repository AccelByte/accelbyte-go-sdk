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

// AdminGetUserGroupStatusInformationV2Cmd represents the AdminGetUserGroupStatusInformationV2 command
var AdminGetUserGroupStatusInformationV2Cmd = &cobra.Command{
	Use:   "adminGetUserGroupStatusInformationV2",
	Short: "Admin get user group status information V2",
	Long:  `Admin get user group status information V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.AdminGetUserGroupStatusInformationV2Params{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := groupMemberService.AdminGetUserGroupStatusInformationV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserGroupStatusInformationV2Cmd.Flags().String("groupId", "", "Group id")
	_ = AdminGetUserGroupStatusInformationV2Cmd.MarkFlagRequired("groupId")
	AdminGetUserGroupStatusInformationV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserGroupStatusInformationV2Cmd.MarkFlagRequired("namespace")
	AdminGetUserGroupStatusInformationV2Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserGroupStatusInformationV2Cmd.MarkFlagRequired("userId")
}
