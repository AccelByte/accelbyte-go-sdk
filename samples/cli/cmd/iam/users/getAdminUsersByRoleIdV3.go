// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAdminUsersByRoleIdV3Cmd represents the GetAdminUsersByRoleIdV3 command
var GetAdminUsersByRoleIdV3Cmd = &cobra.Command{
	Use:   "getAdminUsersByRoleIdV3",
	Short: "Get admin users by role id V3",
	Long:  `Get admin users by role id V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		roleId, _ := cmd.Flags().GetString("roleId")
		after, _ := cmd.Flags().GetInt64("after")
		before, _ := cmd.Flags().GetInt64("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &users.GetAdminUsersByRoleIDV3Params{
			Namespace: namespace,
			RoleID:    roleId,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		ok, errOK := usersService.GetAdminUsersByRoleIDV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAdminUsersByRoleIdV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAdminUsersByRoleIdV3Cmd.MarkFlagRequired("namespace")
	GetAdminUsersByRoleIdV3Cmd.Flags().String("roleId", "", "Role id")
	_ = GetAdminUsersByRoleIdV3Cmd.MarkFlagRequired("roleId")
	GetAdminUsersByRoleIdV3Cmd.Flags().Int64("after", 0, "After")
	GetAdminUsersByRoleIdV3Cmd.Flags().Int64("before", 0, "Before")
	GetAdminUsersByRoleIdV3Cmd.Flags().Int64("limit", 20, "Limit")
}
