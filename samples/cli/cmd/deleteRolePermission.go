// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract permission.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
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
		roleService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &roles.AdminDeleteRolePermissionV3Params{
			Action:   action,
			Resource: resource,
			RoleID:   roleId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err := roleService.AdminDeleteRolePermissionV3(input)
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
