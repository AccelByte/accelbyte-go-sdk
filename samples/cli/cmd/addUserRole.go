// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addUserRoleCmd represents the addUserRole command
var addUserRoleCmd = &cobra.Command{
	Use:   "addUserRole",
	Short: "add user role",
	Long:  `add user role`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		roleId := cmd.Flag("roleId").Value.String()
		input := &users.AdminAddUserRoleV3Params{
			Namespace: namespace,
			RoleID:    roleId,
			UserID:    userId,
		}
		userService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := userService.AdminAddUserRoleV3(input)
		if err != nil {
			return err
		}
		logrus.Info("User role successfully added")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(addUserRoleCmd)
	addUserRoleCmd.Flags().StringP("namespace", "n", "", "User Namespace")
	addUserRoleCmd.Flags().StringP("userId", "u", "", "User ID")
	addUserRoleCmd.Flags().StringP("roleId", "r", "", "Role ID")
}
