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

// updateRoleByIDCmd represents the updateRoleByID command
var updateRoleByIDCmd = &cobra.Command{
	Use:   "updateRoleByID",
	Short: "update Bole By ID",
	Long:  `update Bole By ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		roleName := cmd.Flag("roleName").Value.String()
		isWildCard, _ := cmd.Flags().GetBool("isWildCard")
		roleService := &service.RoleService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roles, err := roleService.AdminUpdateRoleV3(roleId, &roleName, &isWildCard)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(roles, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(updateRoleByIDCmd)
	updateRoleByIDCmd.Flags().BoolP("isWildCard", "w", true, "isWildCard. Default true.")
	updateRoleByIDCmd.Flags().StringP("roleId", "r", "", "Role ID")
	updateRoleByIDCmd.Flags().StringP("roleName", "a", "", "Role Name")
}
