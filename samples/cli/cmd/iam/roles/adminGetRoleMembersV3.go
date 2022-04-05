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

// AdminGetRoleMembersV3Cmd represents the AdminGetRoleMembersV3 command
var AdminGetRoleMembersV3Cmd = &cobra.Command{
	Use:   "adminGetRoleMembersV3",
	Short: "Admin get role members V3",
	Long:  `Admin get role members V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &roles.AdminGetRoleMembersV3Params{
			RoleID: roleId,
			After:  &after,
			Before: &before,
			Limit:  &limit,
		}
		ok, err := rolesService.AdminGetRoleMembersV3Short(input)
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
	AdminGetRoleMembersV3Cmd.Flags().StringP("roleId", "", "", "Role id")
	_ = AdminGetRoleMembersV3Cmd.MarkFlagRequired("roleId")
	AdminGetRoleMembersV3Cmd.Flags().StringP("after", "", "0", "After")
	AdminGetRoleMembersV3Cmd.Flags().StringP("before", "", "0", "Before")
	AdminGetRoleMembersV3Cmd.Flags().Int64P("limit", "", 20, "Limit")
}
