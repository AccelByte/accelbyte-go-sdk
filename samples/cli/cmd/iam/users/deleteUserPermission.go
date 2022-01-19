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

// deleteUserPermissionCmd represents the deleteUserPermission command
var deleteUserPermissionCmd = &cobra.Command{
	Use:   "deleteUserPermission",
	Short: "Delete user permission",
	Long:  `Delete user permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		action, _ := cmd.Flags().GetInt64("action")
		namespace, _ := cmd.Flags().GetString("namespace")
		resource, _ := cmd.Flags().GetString("resource")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.DeleteUserPermissionParams{
			Action:    action,
			Namespace: namespace,
			Resource:  resource,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.DeleteUserPermission(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteUserPermissionCmd)
	deleteUserPermissionCmd.Flags().Int64P("action", "a", -1, "Action")
	_ = deleteUserPermissionCmd.MarkFlagRequired("action")
	deleteUserPermissionCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteUserPermissionCmd.MarkFlagRequired("namespace")
	deleteUserPermissionCmd.Flags().StringP("resource", "r", " ", "Resource")
	_ = deleteUserPermissionCmd.MarkFlagRequired("resource")
	deleteUserPermissionCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = deleteUserPermissionCmd.MarkFlagRequired("userId")
}
