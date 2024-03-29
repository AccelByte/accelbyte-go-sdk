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

// AddUserRoleCmd represents the AddUserRole command
var AddUserRoleCmd = &cobra.Command{
	Use:   "addUserRole",
	Short: "Add user role",
	Long:  `Add user role`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		roleId, _ := cmd.Flags().GetString("roleId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AddUserRoleParams{
			Namespace: namespace,
			RoleID:    roleId,
			UserID:    userId,
		}
		errNoContent := usersService.AddUserRoleShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AddUserRoleCmd.Flags().String("namespace", "", "Namespace")
	_ = AddUserRoleCmd.MarkFlagRequired("namespace")
	AddUserRoleCmd.Flags().String("roleId", "", "Role id")
	_ = AddUserRoleCmd.MarkFlagRequired("roleId")
	AddUserRoleCmd.Flags().String("userId", "", "User id")
	_ = AddUserRoleCmd.MarkFlagRequired("userId")
}
