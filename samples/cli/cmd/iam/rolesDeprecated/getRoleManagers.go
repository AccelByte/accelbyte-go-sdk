// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package rolesDeprecated

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles_deprecated"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetRoleManagersCmd represents the GetRoleManagers command
var GetRoleManagersCmd = &cobra.Command{
	Use:   "getRoleManagers",
	Short: "Get role managers",
	Long:  `Get role managers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesDeprecatedService := &iam.RolesDeprecatedService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles_deprecated.GetRoleManagersParams{
			RoleID: roleId,
		}
		ok, err := rolesDeprecatedService.GetRoleManagersShort(input)
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
	GetRoleManagersCmd.Flags().String("roleId", "", "Role id")
	_ = GetRoleManagersCmd.MarkFlagRequired("roleId")
}
