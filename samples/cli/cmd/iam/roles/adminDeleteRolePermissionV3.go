// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
	Use:   "AdminDeleteRolePermissionV3",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := rolesService.AdminDeleteRolePermissionV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminDeleteRolePermissionV3Cmd.Flags().Int64P("action", "an", -1, "Action")
	_ = AdminDeleteRolePermissionV3Cmd.MarkFlagRequired("action")
	AdminDeleteRolePermissionV3Cmd.Flags().StringP("resource", "re", " ", "Resource")
	_ = AdminDeleteRolePermissionV3Cmd.MarkFlagRequired("resource")
	AdminDeleteRolePermissionV3Cmd.Flags().StringP("roleId", "rd", " ", "Role id")
	_ = AdminDeleteRolePermissionV3Cmd.MarkFlagRequired("roleId")
}
