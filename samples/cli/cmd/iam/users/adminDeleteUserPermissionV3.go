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

// AdminDeleteUserPermissionV3Cmd represents the AdminDeleteUserPermissionV3 command
var AdminDeleteUserPermissionV3Cmd = &cobra.Command{
	Use:   "adminDeleteUserPermissionV3",
	Short: "Admin delete user permission V3",
	Long:  `Admin delete user permission V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		action, _ := cmd.Flags().GetInt64("action")
		namespace, _ := cmd.Flags().GetString("namespace")
		resource, _ := cmd.Flags().GetString("resource")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminDeleteUserPermissionV3Params{
			Action:    action,
			Namespace: namespace,
			Resource:  resource,
			UserID:    userId,
		}
		errInput := usersService.AdminDeleteUserPermissionV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteUserPermissionV3Cmd.Flags().Int64P("action", "", -1, "Action")
	_ = AdminDeleteUserPermissionV3Cmd.MarkFlagRequired("action")
	AdminDeleteUserPermissionV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeleteUserPermissionV3Cmd.MarkFlagRequired("namespace")
	AdminDeleteUserPermissionV3Cmd.Flags().StringP("resource", "", "", "Resource")
	_ = AdminDeleteUserPermissionV3Cmd.MarkFlagRequired("resource")
	AdminDeleteUserPermissionV3Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminDeleteUserPermissionV3Cmd.MarkFlagRequired("userId")
}
