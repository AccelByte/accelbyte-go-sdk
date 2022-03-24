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

// AdminGetRoleAdminStatusV3Cmd represents the AdminGetRoleAdminStatusV3 command
var AdminGetRoleAdminStatusV3Cmd = &cobra.Command{
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
		ok, err := rolesService.AdminGetRoleAdminStatusV3Short(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	AdminGetRoleAdminStatusV3Cmd.Flags().StringP("roleId", "", "", "Role id")
	_ = AdminGetRoleAdminStatusV3Cmd.MarkFlagRequired("roleId")
}
