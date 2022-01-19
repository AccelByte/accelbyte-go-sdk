// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminDeleteUserRoleV3Cmd represents the adminDeleteUserRoleV3 command
var adminDeleteUserRoleV3Cmd = &cobra.Command{
	Use:   "adminDeleteUserRoleV3",
	Short: "Admin delete user role V3",
	Long:  `Admin delete user role V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		roleId, _ := cmd.Flags().GetString("roleId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminDeleteUserRoleV3Params{
			Namespace: namespace,
			RoleID:    roleId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminDeleteUserRoleV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteUserRoleV3Cmd)
	adminDeleteUserRoleV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminDeleteUserRoleV3Cmd.MarkFlagRequired("namespace")
	adminDeleteUserRoleV3Cmd.Flags().StringP("roleId", "r", " ", "Role id")
	_ = adminDeleteUserRoleV3Cmd.MarkFlagRequired("roleId")
	adminDeleteUserRoleV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminDeleteUserRoleV3Cmd.MarkFlagRequired("userId")
}
