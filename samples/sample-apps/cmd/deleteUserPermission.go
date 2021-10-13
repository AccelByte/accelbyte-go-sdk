// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteUserPermissionCmd represents the deleteUserPermission command
var deleteUserPermissionCmd = &cobra.Command{
	Use:   "deleteUserPermission",
	Short: "delete user permission",
	Long:  `delete user permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		resource := cmd.Flag("resource").Value.String()
		action, errAction := cmd.Flags().GetInt64("action")
		if errAction != nil {
			return errAction
		}
		userService := &service.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := userService.AdminDeleteUserPermissionV3(namespace, userId, resource, action)
		if err != nil {
			return err
		}
		logrus.Info("User permission successfully deleted")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteUserPermissionCmd)
	deleteUserPermissionCmd.Flags().StringP("namespace", "n", "", "User Namespace")
	deleteUserPermissionCmd.Flags().StringP("userId", "u", "", "User ID")
	deleteUserPermissionCmd.Flags().StringP("resource", "o", "", "Resource")
	deleteUserPermissionCmd.Flags().Int64P("action", "a", 0, "Action")
}
