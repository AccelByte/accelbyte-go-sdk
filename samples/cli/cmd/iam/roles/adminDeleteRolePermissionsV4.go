// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminDeleteRolePermissionsV4Cmd represents the adminDeleteRolePermissionsV4 command
var adminDeleteRolePermissionsV4Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := rolesService.AdminDeleteRolePermissionsV4(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteRolePermissionsV4Cmd)
	adminDeleteRolePermissionsV4Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminDeleteRolePermissionsV4Cmd.MarkFlagRequired("body")
	adminDeleteRolePermissionsV4Cmd.Flags().StringP("roleId", "r", " ", "Role id")
	_ = adminDeleteRolePermissionsV4Cmd.MarkFlagRequired("roleId")
}
