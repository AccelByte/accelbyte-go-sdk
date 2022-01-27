// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getAdminUsersByRoleIDCmd represents the getAdminUsersByRoleID command
var getAdminUsersByRoleIDCmd = &cobra.Command{
	Use:   "getAdminUsersByRoleID",
	Short: "Get admin users by role ID",
	Long:  `Get admin users by role ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		after, _ := cmd.Flags().GetInt64("after")
		before, _ := cmd.Flags().GetInt64("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &users.GetAdminUsersByRoleIDParams{
			Namespace: namespace,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
			RoleID:    &roleId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetAdminUsersByRoleID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getAdminUsersByRoleIDCmd)
	getAdminUsersByRoleIDCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getAdminUsersByRoleIDCmd.MarkFlagRequired("namespace")
	getAdminUsersByRoleIDCmd.Flags().Int64P("after", "ar", 0, "After")
	getAdminUsersByRoleIDCmd.Flags().Int64P("before", "be", 0, "Before")
	getAdminUsersByRoleIDCmd.Flags().Int64P("limit", "lt", 20, "Limit")
	getAdminUsersByRoleIDCmd.Flags().StringP("roleId", "rd", " ", "Role id")
}
