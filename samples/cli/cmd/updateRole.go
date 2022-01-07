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

// updateRoleByIDCmd represents the updateRoleByID command
var updateRoleByIDCmd = &cobra.Command{
	Use:   "updateRoleByID",
	Short: "update Bole By ID",
	Long:  `update Bole By ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		roleName := cmd.Flag("roleName").Value.String()
		isWildCard, _ := cmd.Flags().GetBool("isWildCard")
		roleService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &roles.AdminUpdateRoleV3Params{
			Body: &iamclientmodels.ModelRoleUpdateRequestV3{
				IsWildcard: &isWildCard,
				RoleName:   &roleName,
			},
			RoleID: roleId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		roles, err := roleService.AdminUpdateRoleV3(input)
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
