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

// AdminAddUserRoleV3Cmd represents the AdminAddUserRoleV3 command
var AdminAddUserRoleV3Cmd = &cobra.Command{
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
		errInput := usersService.AdminAddUserRoleV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminAddUserRoleV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAddUserRoleV3Cmd.MarkFlagRequired("namespace")
	AdminAddUserRoleV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminAddUserRoleV3Cmd.MarkFlagRequired("roleId")
	AdminAddUserRoleV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminAddUserRoleV3Cmd.MarkFlagRequired("userId")
}
