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
		roleService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &roles.AdminGetRoleManagersV3Params{
			After:  &after,
			Before: &before,
			Limit:  &limit,
			RoleID: roleId,
		}
		role, err := roleService.AdminGetRoleManagersV3(input)
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
