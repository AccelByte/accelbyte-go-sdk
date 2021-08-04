// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract permission.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteRolePermissionCmd represents the deleteRolePermission command
var deleteRolePermissionCmd = &cobra.Command{
	Use:   "deleteRolePermission",
	Short: "delete role permission",
	Long:  `delete role permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		resource := cmd.Flag("resource").Value.String()
		action, errAction := cmd.Flags().GetInt64("action")
		if errAction != nil {
			return errAction
		}
		roleService := &service.RoleService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := roleService.AdminDeleteRolePermissionV3(roleId, resource, action)
		if err != nil {
			return err
		}
		logrus.Info("Operation succeeded")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteRolePermissionCmd)
	deleteRolePermissionCmd.Flags().StringP("roleId", "r", "", "Role ID")
	deleteRolePermissionCmd.Flags().StringP("resource", "o", "", "Resource")
	deleteRolePermissionCmd.Flags().Int64P("action", "a", 0, "Action")
}
