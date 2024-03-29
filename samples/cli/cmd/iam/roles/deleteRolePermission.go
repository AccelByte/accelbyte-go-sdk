// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteRolePermissionCmd represents the DeleteRolePermission command
var DeleteRolePermissionCmd = &cobra.Command{
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
		errNoContent := rolesService.DeleteRolePermissionShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteRolePermissionCmd.Flags().Int64("action", -1, "Action")
	_ = DeleteRolePermissionCmd.MarkFlagRequired("action")
	DeleteRolePermissionCmd.Flags().String("resource", "", "Resource")
	_ = DeleteRolePermissionCmd.MarkFlagRequired("resource")
	DeleteRolePermissionCmd.Flags().String("roleId", "", "Role id")
	_ = DeleteRolePermissionCmd.MarkFlagRequired("roleId")
}
