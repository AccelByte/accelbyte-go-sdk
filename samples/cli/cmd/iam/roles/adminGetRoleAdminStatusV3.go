// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package roles

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetRoleAdminStatusV3Cmd represents the adminGetRoleAdminStatusV3 command
var adminGetRoleAdminStatusV3Cmd = &cobra.Command{
	Use:   "adminGetRoleAdminStatusV3",
	Short: "Admin get role admin status V3",
	Long:  `Admin get role admin status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminGetRoleAdminStatusV3Params{
			RoleID: roleId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rolesService.AdminGetRoleAdminStatusV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetRoleAdminStatusV3Cmd)
	adminGetRoleAdminStatusV3Cmd.Flags().StringP("roleId", "rd", " ", "Role id")
	_ = adminGetRoleAdminStatusV3Cmd.MarkFlagRequired("roleId")
}
