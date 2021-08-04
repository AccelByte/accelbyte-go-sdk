// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// setRoleAsAdminCmd represents the setRoleAsAdmin command
var setRoleAsAdminCmd = &cobra.Command{
	Use:   "setRoleAsAdmin",
	Short: "Set role as admin",
	Long:  `Set role as admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		roleService := &service.RoleService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := roleService.AdminUpdateAdminRoleStatusV3(roleId)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(err, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		logrus.Info("Role successfully updated, set as admin role")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(setRoleAsAdminCmd)
	setRoleAsAdminCmd.Flags().StringP("roleId", "r", "", "After")
}
