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

// deleteRoleCmd represents the deleteRole command
var deleteRoleCmd = &cobra.Command{
	Use:   "deleteRole",
	Short: "delete role",
	Long:  `delete role`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		roleService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &roles.AdminDeleteRoleV3Params{
			RoleID: roleId,
		}
		err := roleService.AdminDeleteRoleV3(input)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(err, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteRoleCmd)
	deleteRoleCmd.Flags().StringP("roleId", "r", "", "Role ID")
}
