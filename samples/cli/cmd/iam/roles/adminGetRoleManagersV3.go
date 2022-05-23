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

// AdminGetRoleManagersV3Cmd represents the AdminGetRoleManagersV3 command
var AdminGetRoleManagersV3Cmd = &cobra.Command{
	Use:   "adminGetRoleManagersV3",
	Short: "Admin get role managers V3",
	Long:  `Admin get role managers V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &roles.AdminGetRoleManagersV3Params{
			RoleID: roleId,
			After:  &after,
			Before: &before,
			Limit:  &limit,
		}
		ok, err := rolesService.AdminGetRoleManagersV3Short(input)
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
	AdminGetRoleManagersV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminGetRoleManagersV3Cmd.MarkFlagRequired("roleId")
	AdminGetRoleManagersV3Cmd.Flags().String("after", "0", "After")
	AdminGetRoleManagersV3Cmd.Flags().String("before", "0", "Before")
	AdminGetRoleManagersV3Cmd.Flags().Int64("limit", 20, "Limit")
}
