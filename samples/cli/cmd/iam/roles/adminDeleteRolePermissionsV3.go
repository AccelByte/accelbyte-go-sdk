// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// AdminDeleteRolePermissionsV3Cmd represents the AdminDeleteRolePermissionsV3 command
var AdminDeleteRolePermissionsV3Cmd = &cobra.Command{
	Use:   "adminDeleteRolePermissionsV3",
	Short: "Admin delete role permissions V3",
	Long:  `Admin delete role permissions V3`,
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
		input := &roles.AdminDeleteRolePermissionsV3Params{
			Body:   body,
			RoleID: roleId,
		}
		errInput := rolesService.AdminDeleteRolePermissionsV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteRolePermissionsV3Cmd.Flags().String("body", "", "Body")
	_ = AdminDeleteRolePermissionsV3Cmd.MarkFlagRequired("body")
	AdminDeleteRolePermissionsV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminDeleteRolePermissionsV3Cmd.MarkFlagRequired("roleId")
}
