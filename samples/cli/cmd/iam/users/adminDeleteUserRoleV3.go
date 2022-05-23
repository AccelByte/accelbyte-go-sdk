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

// AdminDeleteUserRoleV3Cmd represents the AdminDeleteUserRoleV3 command
var AdminDeleteUserRoleV3Cmd = &cobra.Command{
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
		errInput := usersService.AdminDeleteUserRoleV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteUserRoleV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteUserRoleV3Cmd.MarkFlagRequired("namespace")
	AdminDeleteUserRoleV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminDeleteUserRoleV3Cmd.MarkFlagRequired("roleId")
	AdminDeleteUserRoleV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteUserRoleV3Cmd.MarkFlagRequired("userId")
}
