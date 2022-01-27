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

// adminListAssignedUsersV4Cmd represents the adminListAssignedUsersV4 command
var adminListAssignedUsersV4Cmd = &cobra.Command{
	Use:   "adminListAssignedUsersV4",
	Short: "Admin list assigned users V4",
	Long:  `Admin list assigned users V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &roles.AdminListAssignedUsersV4Params{
			RoleID: roleId,
			After:  &after,
			Before: &before,
			Limit:  &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rolesService.AdminListAssignedUsersV4(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminListAssignedUsersV4Cmd)
	adminListAssignedUsersV4Cmd.Flags().StringP("roleId", "rd", " ", "Role id")
	_ = adminListAssignedUsersV4Cmd.MarkFlagRequired("roleId")
	adminListAssignedUsersV4Cmd.Flags().StringP("after", "ar", "0", "After")
	adminListAssignedUsersV4Cmd.Flags().StringP("before", "be", "0", "Before")
	adminListAssignedUsersV4Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
}
