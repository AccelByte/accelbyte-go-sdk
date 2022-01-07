// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteRoleAsAdminCmd represents the deleteRoleAsAdmin command
var deleteRoleAsAdminCmd = &cobra.Command{
	Use:   "deleteRoleAsAdmin",
	Short: "Delete role as admin",
	Long:  `Delete role as admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		roleService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &roles.AdminRemoveRoleAdminV3Params{
			RoleID: roleId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err := roleService.AdminRemoveRoleAdminV3(input)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(err, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		logrus.Info("Role successfully updated, delete as admin role")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteRoleAsAdminCmd)
	deleteRoleAsAdminCmd.Flags().StringP("roleId", "r", "", "After")
}
