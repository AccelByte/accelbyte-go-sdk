// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createUserRolePermissionCmd represents the createUserRolePermission command
var createUserRolePermissionCmd = &cobra.Command{
	Use:   "createUserRolePermission",
	Short: "create role permission",
	Long:  `create role permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		permissionsString := cmd.Flag("permissions").Value.String()
		var permissions []*iamclientmodels.AccountcommonPermissionV3
		errPermissions := json.Unmarshal([]byte(permissionsString), &permissions)
		if errPermissions != nil {
			return errPermissions
		}
		roleService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &roles.AdminAddRolePermissionsV3Params{
			Body:   &iamclientmodels.AccountcommonPermissionsV3{Permissions: permissions},
			RoleID: roleId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err := roleService.AdminAddRolePermissionsV3(input)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(err, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	RootCmd.AddCommand(createUserRolePermissionCmd)
	createUserRolePermissionCmd.Flags().StringP("roleId", "r", "", "Role Name")
	createUserRolePermissionCmd.Flags().StringP("permissions", "p", "", "Role's permissions. In json format, example: '{\"key1\", \"value1\"}'")
	_ = createUserRolePermissionCmd.MarkFlagRequired("permissions")
}
