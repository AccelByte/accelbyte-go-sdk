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

// adminRemoveRoleAdminV3Cmd represents the adminRemoveRoleAdminV3 command
var adminRemoveRoleAdminV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := rolesService.AdminRemoveRoleAdminV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminRemoveRoleAdminV3Cmd)
	adminRemoveRoleAdminV3Cmd.Flags().StringP("roleId", "r", " ", "Role id")
	_ = adminRemoveRoleAdminV3Cmd.MarkFlagRequired("roleId")
}
