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

// AdminUpdateAdminRoleStatusV3Cmd represents the AdminUpdateAdminRoleStatusV3 command
var AdminUpdateAdminRoleStatusV3Cmd = &cobra.Command{
	Use:   "adminUpdateAdminRoleStatusV3",
	Short: "Admin update admin role status V3",
	Long:  `Admin update admin role status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminUpdateAdminRoleStatusV3Params{
			RoleID: roleId,
		}
		errNoContent := rolesService.AdminUpdateAdminRoleStatusV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateAdminRoleStatusV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminUpdateAdminRoleStatusV3Cmd.MarkFlagRequired("roleId")
}
