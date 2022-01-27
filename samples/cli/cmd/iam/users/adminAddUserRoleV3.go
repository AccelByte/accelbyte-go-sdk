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

// adminAddUserRoleV3Cmd represents the adminAddUserRoleV3 command
var adminAddUserRoleV3Cmd = &cobra.Command{
	Use:   "adminAddUserRoleV3",
	Short: "Admin add user role V3",
	Long:  `Admin add user role V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		roleId, _ := cmd.Flags().GetString("roleId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminAddUserRoleV3Params{
			Namespace: namespace,
			RoleID:    roleId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminAddUserRoleV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminAddUserRoleV3Cmd)
	adminAddUserRoleV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminAddUserRoleV3Cmd.MarkFlagRequired("namespace")
	adminAddUserRoleV3Cmd.Flags().StringP("roleId", "rd", " ", "Role id")
	_ = adminAddUserRoleV3Cmd.MarkFlagRequired("roleId")
	adminAddUserRoleV3Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminAddUserRoleV3Cmd.MarkFlagRequired("userId")
}
