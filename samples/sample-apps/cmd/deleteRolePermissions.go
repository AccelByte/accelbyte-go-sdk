// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract permission.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteRolePermissionsCmd represents the deleteRolePermissions command
var deleteRolePermissionsCmd = &cobra.Command{
	Use:   "deleteRolePermissions",
	Short: "delete role permissions",
	Long:  `delete role permissions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		bodyString := cmd.Flag("body").Value.String()
		var body []string
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleService := &service.RoleService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := roleService.AdminDeleteRolePermissionsV3(roleId, body)
		if err != nil {
			return err
		}
		logrus.Info("Operation succeeded")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteRolePermissionsCmd)
	deleteRolePermissionsCmd.Flags().StringP("roleId", "r", "", "Role ID")
	deleteRolePermissionsCmd.Flags().StringP("body", "b", "", "Role's permissions body. In json format, example: '{\"key1\", \"value1\"}'")
	deleteRolePermissionsCmd.MarkFlagRequired("body")
}
