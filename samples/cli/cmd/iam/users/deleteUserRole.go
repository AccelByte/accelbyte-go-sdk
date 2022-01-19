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

// deleteUserRoleCmd represents the deleteUserRole command
var deleteUserRoleCmd = &cobra.Command{
	Use:   "deleteUserRole",
	Short: "Delete user role",
	Long:  `Delete user role`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		roleId, _ := cmd.Flags().GetString("roleId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.DeleteUserRoleParams{
			Namespace: namespace,
			RoleID:    roleId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.DeleteUserRole(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteUserRoleCmd)
	deleteUserRoleCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteUserRoleCmd.MarkFlagRequired("namespace")
	deleteUserRoleCmd.Flags().StringP("roleId", "r", " ", "Role id")
	_ = deleteUserRoleCmd.MarkFlagRequired("roleId")
	deleteUserRoleCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = deleteUserRoleCmd.MarkFlagRequired("userId")
}
