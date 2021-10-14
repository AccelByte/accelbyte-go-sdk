// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateUserPermissionsCmd represents the updateUserPermissions command
var updateUserPermissionsCmd = &cobra.Command{
	Use:   "updateUserPermissions",
	Short: "update user permissions",
	Long:  `update user permissions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		permissionsString := cmd.Flag("permissions").Value.String()
		var permissions []*iamclientmodels.AccountcommonPermission
		errPermissions := json.Unmarshal([]byte(permissionsString), &permissions)
		if errPermissions != nil {
			return errPermissions
		}
		input := &users.AdminUpdateUserPermissionV3Params{
			Body:      &iamclientmodels.AccountcommonPermissions{Permissions: permissions},
			Namespace: namespace,
			UserID:    userId,
		}
		userService := &iam.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := userService.AdminUpdateUserPermissionV3(input)
		if err != nil {
			return err
		}
		logrus.Info("User permissions successfully updated")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(updateUserPermissionsCmd)
	updateUserPermissionsCmd.Flags().StringP("namespace", "n", "", "User Namespace")
	updateUserPermissionsCmd.Flags().StringP("userId", "u", "", "User ID")
	updateUserPermissionsCmd.Flags().StringP("permissions", "p", "", "Role's permissions. In json format, example: '{\"key1\", \"value1\"}'")
}
