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
		errNoContent := usersService.DeleteUserPermissionShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteUserPermissionCmd.Flags().Int64("action", -1, "Action")
	_ = DeleteUserPermissionCmd.MarkFlagRequired("action")
	DeleteUserPermissionCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserPermissionCmd.MarkFlagRequired("namespace")
	DeleteUserPermissionCmd.Flags().String("resource", "", "Resource")
	_ = DeleteUserPermissionCmd.MarkFlagRequired("resource")
	DeleteUserPermissionCmd.Flags().String("userId", "", "User id")
	_ = DeleteUserPermissionCmd.MarkFlagRequired("userId")
}
