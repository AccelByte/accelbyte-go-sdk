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

// adminDeleteUserPermissionV3Cmd represents the adminDeleteUserPermissionV3 command
var adminDeleteUserPermissionV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminDeleteUserPermissionV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteUserPermissionV3Cmd)
	adminDeleteUserPermissionV3Cmd.Flags().Int64P("action", "a", -1, "Action")
	_ = adminDeleteUserPermissionV3Cmd.MarkFlagRequired("action")
	adminDeleteUserPermissionV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminDeleteUserPermissionV3Cmd.MarkFlagRequired("namespace")
	adminDeleteUserPermissionV3Cmd.Flags().StringP("resource", "r", " ", "Resource")
	_ = adminDeleteUserPermissionV3Cmd.MarkFlagRequired("resource")
	adminDeleteUserPermissionV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminDeleteUserPermissionV3Cmd.MarkFlagRequired("userId")
}
