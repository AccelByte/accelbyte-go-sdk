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

// AdminListAssignedUsersV4Cmd represents the AdminListAssignedUsersV4 command
var AdminListAssignedUsersV4Cmd = &cobra.Command{
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
		ok, err := rolesService.AdminListAssignedUsersV4Short(input, nil)
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
	AdminListAssignedUsersV4Cmd.Flags().StringP("roleId", "", "", "Role id")
	_ = AdminListAssignedUsersV4Cmd.MarkFlagRequired("roleId")
	AdminListAssignedUsersV4Cmd.Flags().StringP("after", "", "0", "After")
	AdminListAssignedUsersV4Cmd.Flags().StringP("before", "", "0", "Before")
	AdminListAssignedUsersV4Cmd.Flags().Int64P("limit", "", 20, "Limit")
}
