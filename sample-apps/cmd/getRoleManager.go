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

// getRoleManagerCmd represents the getRoleManager command
var getRoleManagerCmd = &cobra.Command{
	Use:   "getRoleManager",
	Short: "get role manager",
	Long:  `get role manager`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		after := cmd.Flag("after").Value.String()
		before := cmd.Flag("before").Value.String()
		limit, err := cmd.Flags().GetInt64("limit")
		if err != nil {
			return err
		}
		roleService := &service.RoleService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		role, err := roleService.AdminGetRoleManagers(roleId, &after, &before, &limit)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(role, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getRoleManagerCmd)
	getRoleManagerCmd.Flags().StringP("roleId", "r", "", "Role ID")
	getRoleManagerCmd.Flags().StringP("after", "a", "", "After")
	getRoleManagerCmd.Flags().StringP("before", "b", "", "Before")
	getRoleManagerCmd.Flags().Int64P("limit", "", 20, "Pagination limit")
}
