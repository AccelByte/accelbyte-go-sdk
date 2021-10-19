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

// createUserRoleCmd represents the createUserRole command
var createUserRoleCmd = &cobra.Command{
	Use:   "createUserRole",
	Short: "create role",
	Long:  `create role`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleName := cmd.Flag("roleName").Value.String()
		adminRole, _ := cmd.Flags().GetBool("adminRole")
		isWildCard, _ := cmd.Flags().GetBool("isWildCard")
		managersString := cmd.Flag("managers").Value.String()
		var managers []*iamclientmodels.AccountcommonRoleManagerV3
		errManagers := json.Unmarshal([]byte(managersString), &managers)
		if errManagers != nil {
			return errManagers
		}
		membersString := cmd.Flag("members").Value.String()
		var members []*iamclientmodels.AccountcommonRoleMemberV3
		errMembers := json.Unmarshal([]byte(membersString), &members)
		if errMembers != nil {
			return errMembers
		}
		permissionsString := cmd.Flag("permissions").Value.String()
		var permissions []*iamclientmodels.AccountcommonPermissionV3
		errPermissions := json.Unmarshal([]byte(permissionsString), &permissions)
		if errPermissions != nil {
			return errPermissions
		}
		roleService := &iam.RoleService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &roles.AdminCreateRoleV3Params{
			Body: &iamclientmodels.ModelRoleCreateV3Request{
				AdminRole:   &adminRole,
				IsWildcard:  &isWildCard,
				Managers:    managers,
				Members:     members,
				Permissions: permissions,
				RoleName:    &roleName,
			},
		}
		roles, err := roleService.AdminCreateRoleV3(input)
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
	rootCmd.AddCommand(createUserRoleCmd)
	createUserRoleCmd.Flags().StringP("roleName", "n", "", "Role Name")
	createUserRoleCmd.Flags().BoolP("adminRole", "a", true, "Admin Role. Default true.")
	createUserRoleCmd.Flags().BoolP("isWildCard", "w", true, "isWildCard. Default true.")
	createUserRoleCmd.Flags().StringP("managers", "m", "", "Role's managers. In json format, example: '{\"key1\", \"value1\"}'")
	_ = createUserRoleCmd.MarkFlagRequired("managers")
	createUserRoleCmd.Flags().StringP("members", "b", "", "Role's members. In json format, example: '{\"key1\", \"value1\"}'")
	_ = createUserRoleCmd.MarkFlagRequired("members")
	createUserRoleCmd.Flags().StringP("permissions", "p", "", "Role's permissions. In json format, example: '{\"key1\", \"value1\"}'")
	_ = createUserRoleCmd.MarkFlagRequired("permissions")
}
