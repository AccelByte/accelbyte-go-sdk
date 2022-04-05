// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package roles

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteRolePermissionsV4Cmd represents the AdminDeleteRolePermissionsV4 command
var AdminDeleteRolePermissionsV4Cmd = &cobra.Command{
	Use:   "adminDeleteRolePermissionsV4",
	Short: "Admin delete role permissions V4",
	Long:  `Admin delete role permissions V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []string
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminDeleteRolePermissionsV4Params{
			Body:   body,
			RoleID: roleId,
		}
		errInput := rolesService.AdminDeleteRolePermissionsV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteRolePermissionsV4Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminDeleteRolePermissionsV4Cmd.MarkFlagRequired("body")
	AdminDeleteRolePermissionsV4Cmd.Flags().StringP("roleId", "", "", "Role id")
	_ = AdminDeleteRolePermissionsV4Cmd.MarkFlagRequired("roleId")
}
