// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract member.

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

// deleteRoleMembersCmd represents the deleteRoleMembers command
var deleteRoleMembersCmd = &cobra.Command{
	Use:   "deleteRoleMembers",
	Short: "delete role members",
	Long:  `delete role members`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		membersString := cmd.Flag("members").Value.String()
		var members []*iamclientmodels.AccountcommonRoleMemberV3
		errMembers := json.Unmarshal([]byte(membersString), &members)
		if errMembers != nil {
			return errMembers
		}
		roleService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &roles.AdminRemoveRoleMembersV3Params{
			Body:   &iamclientmodels.ModelRoleMembersRequestV3{Members: members},
			RoleID: roleId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err := roleService.AdminRemoveRoleMembersV3(input)
		if err != nil {
			return err
		}
		logrus.Info("Operation succeeded")
		return nil
	},
}

func init() {
	RootCmd.AddCommand(deleteRoleMembersCmd)
	deleteRoleMembersCmd.Flags().StringP("roleId", "r", "", "Role ID")
	deleteRoleMembersCmd.Flags().StringP("members", "m", "", "Role's members. In json format, example: '{\"key1\", \"value1\"}'")
	_ = deleteRoleMembersCmd.MarkFlagRequired("members")
}
