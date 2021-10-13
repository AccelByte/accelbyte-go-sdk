// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addUserPermissionsCmd represents the addUserPermissions command
var addUserPermissionsCmd = &cobra.Command{
	Use:   "addUserPermissions",
	Short: "add user permissions",
	Long:  `add user permissions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		permissionsString := cmd.Flag("permissions").Value.String()
		var permissions []*iamclientmodels.AccountcommonPermission
		errPermissions := json.Unmarshal([]byte(permissionsString), &permissions)
		if errPermissions != nil {
			return errPermissions
		}
		userService := &service.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := userService.AdminUpdateUserPermissionV3(namespace, userId, permissions)
		if err != nil {
			return err
		}
		logrus.Info("User permissions successfully added")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(addUserPermissionsCmd)
	addUserPermissionsCmd.Flags().StringP("namespace", "n", "", "User Namespace")
	addUserPermissionsCmd.Flags().StringP("userId", "u", "", "User ID")
	addUserPermissionsCmd.Flags().StringP("permissions", "p", "", "Role's permissions. In json format, example: '{\"key1\", \"value1\"}'")
}
