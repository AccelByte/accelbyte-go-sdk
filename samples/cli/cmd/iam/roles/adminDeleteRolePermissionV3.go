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

// AdminDeleteRolePermissionV3Cmd represents the AdminDeleteRolePermissionV3 command
var AdminDeleteRolePermissionV3Cmd = &cobra.Command{
	Use:   "adminDeleteRolePermissionV3",
	Short: "Admin delete role permission V3",
	Long:  `Admin delete role permission V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		action, _ := cmd.Flags().GetInt64("action")
		resource, _ := cmd.Flags().GetString("resource")
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminDeleteRolePermissionV3Params{
			Action:   action,
			Resource: resource,
			RoleID:   roleId,
		}
		errNoContent := rolesService.AdminDeleteRolePermissionV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteRolePermissionV3Cmd.Flags().Int64("action", -1, "Action")
	_ = AdminDeleteRolePermissionV3Cmd.MarkFlagRequired("action")
	AdminDeleteRolePermissionV3Cmd.Flags().String("resource", "", "Resource")
	_ = AdminDeleteRolePermissionV3Cmd.MarkFlagRequired("resource")
	AdminDeleteRolePermissionV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminDeleteRolePermissionV3Cmd.MarkFlagRequired("roleId")
}
