// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// deleteUserRoleCmd represents the deleteUserRole command
var deleteUserRoleCmd = &cobra.Command{
	Use:   "deleteUserRole",
	Short: "delete user role",
	Long:  `delete user role`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		roleId := cmd.Flag("roleId").Value.String()
		userService := &iam.UserService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := userService.AdminDeleteUserRoleV3(namespace, userId, roleId)
		if err != nil {
			return err
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteUserRoleCmd)
	deleteUserRoleCmd.Flags().StringP("namespace", "n", "", "User Namespace")
	deleteUserRoleCmd.Flags().StringP("userId", "u", "", "User ID")
	deleteUserRoleCmd.Flags().StringP("roleId", "r", "", "Role ID")
}
