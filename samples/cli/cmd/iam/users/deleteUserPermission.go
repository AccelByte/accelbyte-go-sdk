// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteUserPermissionCmd represents the DeleteUserPermission command
var DeleteUserPermissionCmd = &cobra.Command{
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
	DeleteUserPermissionCmd.Flags().Int64P("action", "", -1, "Action")
	_ = DeleteUserPermissionCmd.MarkFlagRequired("action")
	DeleteUserPermissionCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = DeleteUserPermissionCmd.MarkFlagRequired("namespace")
	DeleteUserPermissionCmd.Flags().StringP("resource", "", " ", "Resource")
	_ = DeleteUserPermissionCmd.MarkFlagRequired("resource")
	DeleteUserPermissionCmd.Flags().StringP("userId", "", " ", "User id")
	_ = DeleteUserPermissionCmd.MarkFlagRequired("userId")
}
