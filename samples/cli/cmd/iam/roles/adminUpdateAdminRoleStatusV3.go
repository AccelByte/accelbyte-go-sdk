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

// adminUpdateAdminRoleStatusV3Cmd represents the adminUpdateAdminRoleStatusV3 command
var adminUpdateAdminRoleStatusV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := rolesService.AdminUpdateAdminRoleStatusV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateAdminRoleStatusV3Cmd)
	adminUpdateAdminRoleStatusV3Cmd.Flags().StringP("roleId", "r", " ", "Role id")
	_ = adminUpdateAdminRoleStatusV3Cmd.MarkFlagRequired("roleId")
}
