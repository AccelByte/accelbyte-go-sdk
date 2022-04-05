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

// AdminDeleteRoleV3Cmd represents the AdminDeleteRoleV3 command
var AdminDeleteRoleV3Cmd = &cobra.Command{
	Use:   "adminDeleteRoleV3",
	Short: "Admin delete role V3",
	Long:  `Admin delete role V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminDeleteRoleV3Params{
			RoleID: roleId,
		}
		errInput := rolesService.AdminDeleteRoleV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteRoleV3Cmd.Flags().StringP("roleId", "", "", "Role id")
	_ = AdminDeleteRoleV3Cmd.MarkFlagRequired("roleId")
}
