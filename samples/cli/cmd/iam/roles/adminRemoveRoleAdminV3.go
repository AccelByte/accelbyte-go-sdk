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

// AdminRemoveRoleAdminV3Cmd represents the AdminRemoveRoleAdminV3 command
var AdminRemoveRoleAdminV3Cmd = &cobra.Command{
	Use:   "adminRemoveRoleAdminV3",
	Short: "Admin remove role admin V3",
	Long:  `Admin remove role admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminRemoveRoleAdminV3Params{
			RoleID: roleId,
		}
		errNoContent := rolesService.AdminRemoveRoleAdminV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminRemoveRoleAdminV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminRemoveRoleAdminV3Cmd.MarkFlagRequired("roleId")
}
