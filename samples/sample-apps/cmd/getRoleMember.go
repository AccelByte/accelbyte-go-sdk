// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract member.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getRoleMemberCmd represents the getRoleMember command
var getRoleMemberCmd = &cobra.Command{
	Use:   "getRoleMember",
	Short: "get role member",
	Long:  `get role member`,
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
		role, err := roleService.AdminGetRoleMembersV3(roleId, &after, &before, &limit)
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
	rootCmd.AddCommand(getRoleMemberCmd)
	getRoleMemberCmd.Flags().StringP("roleId", "r", "", "Role ID")
	getRoleMemberCmd.Flags().StringP("after", "a", "", "After")
	getRoleMemberCmd.Flags().StringP("before", "b", "", "Before")
	getRoleMemberCmd.Flags().Int64P("limit", "", 20, "Pagination limit")
}
