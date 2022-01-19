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

// adminGetRoleMembersV3Cmd represents the adminGetRoleMembersV3 command
var adminGetRoleMembersV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rolesService.AdminGetRoleMembersV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetRoleMembersV3Cmd)
	adminGetRoleMembersV3Cmd.Flags().StringP("roleId", "r", " ", "Role id")
	_ = adminGetRoleMembersV3Cmd.MarkFlagRequired("roleId")
	adminGetRoleMembersV3Cmd.Flags().StringP("after", "a", "0", "After")
	adminGetRoleMembersV3Cmd.Flags().StringP("before", "b", "0", "Before")
	adminGetRoleMembersV3Cmd.Flags().Int64P("limit", "l", 20, "Limit")
}
