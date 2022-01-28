// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetAdminUsersByRoleIDV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetAdminUsersByRoleIdV3Cmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = GetAdminUsersByRoleIdV3Cmd.MarkFlagRequired("namespace")
	GetAdminUsersByRoleIdV3Cmd.Flags().StringP("roleId", "", " ", "Role id")
	_ = GetAdminUsersByRoleIdV3Cmd.MarkFlagRequired("roleId")
	GetAdminUsersByRoleIdV3Cmd.Flags().Int64P("after", "", 0, "After")
	GetAdminUsersByRoleIdV3Cmd.Flags().Int64P("before", "", 0, "Before")
	GetAdminUsersByRoleIdV3Cmd.Flags().Int64P("limit", "", 20, "Limit")
}
