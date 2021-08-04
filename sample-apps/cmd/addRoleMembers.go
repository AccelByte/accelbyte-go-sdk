// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract member.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addRoleMembersCmd represents the addRoleMembers command
var addRoleMembersCmd = &cobra.Command{
	Use:   "addRoleMembers",
	Short: "add role members",
	Long:  `add role members`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		membersString := cmd.Flag("members").Value.String()
		var members []*iamclientmodels.AccountcommonRoleMemberV3
		errMembers := json.Unmarshal([]byte(membersString), &members)
		if errMembers != nil {
			return errMembers
		}
		roleService := &service.RoleService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := roleService.AdminAddRoleMembersV3(roleId, members)
		if err != nil {
			return err
		}
		logrus.Info("Operation succeeded")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(addRoleMembersCmd)
	addRoleMembersCmd.Flags().StringP("roleId", "r", "", "Role ID")
	addRoleMembersCmd.Flags().StringP("members", "m", "", "Role's members. In json format, example: '{\"key1\", \"value1\"}'")
	addRoleMembersCmd.MarkFlagRequired("members")
}
