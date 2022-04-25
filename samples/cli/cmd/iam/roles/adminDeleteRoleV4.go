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

// AdminDeleteRoleV4Cmd represents the AdminDeleteRoleV4 command
var AdminDeleteRoleV4Cmd = &cobra.Command{
	Use:   "adminDeleteRoleV4",
	Short: "Admin delete role V4",
	Long:  `Admin delete role V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminDeleteRoleV4Params{
			RoleID: roleId,
		}
		errInput := rolesService.AdminDeleteRoleV4Short(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteRoleV4Cmd.Flags().StringP("roleId", "", "", "Role id")
	_ = AdminDeleteRoleV4Cmd.MarkFlagRequired("roleId")
}
