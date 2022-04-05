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

// RemoveRoleAdminCmd represents the RemoveRoleAdmin command
var RemoveRoleAdminCmd = &cobra.Command{
	Use:   "removeRoleAdmin",
	Short: "Remove role admin",
	Long:  `Remove role admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.RemoveRoleAdminParams{
			RoleID: roleId,
		}
		errInput := rolesService.RemoveRoleAdminShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	RemoveRoleAdminCmd.Flags().StringP("roleId", "", "", "Role id")
	_ = RemoveRoleAdminCmd.MarkFlagRequired("roleId")
}
