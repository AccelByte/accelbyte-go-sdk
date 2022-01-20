// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteRolePermissionCmd represents the deleteRolePermission command
var deleteRolePermissionCmd = &cobra.Command{
	Use:   "deleteRolePermission",
	Short: "Delete role permission",
	Long:  `Delete role permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		action, _ := cmd.Flags().GetInt64("action")
		resource, _ := cmd.Flags().GetString("resource")
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.DeleteRolePermissionParams{
			Action:   action,
			Resource: resource,
			RoleID:   roleId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := rolesService.DeleteRolePermission(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteRolePermissionCmd)
	deleteRolePermissionCmd.Flags().Int64P("action", "a", -1, "Action")
	_ = deleteRolePermissionCmd.MarkFlagRequired("action")
	deleteRolePermissionCmd.Flags().StringP("resource", "r", " ", "Resource")
	_ = deleteRolePermissionCmd.MarkFlagRequired("resource")
	deleteRolePermissionCmd.Flags().StringP("roleId", "r", " ", "Role id")
	_ = deleteRolePermissionCmd.MarkFlagRequired("roleId")
}