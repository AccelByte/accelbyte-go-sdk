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

// SetRoleAsAdminCmd represents the SetRoleAsAdmin command
var SetRoleAsAdminCmd = &cobra.Command{
	Use:   "setRoleAsAdmin",
	Short: "Set role as admin",
	Long:  `Set role as admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesDeprecatedService := &iam.RolesDeprecatedService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles_deprecated.SetRoleAsAdminParams{
			RoleID: roleId,
		}
		errInput := rolesDeprecatedService.SetRoleAsAdminShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SetRoleAsAdminCmd.Flags().String("roleId", "", "Role id")
	_ = SetRoleAsAdminCmd.MarkFlagRequired("roleId")
}
