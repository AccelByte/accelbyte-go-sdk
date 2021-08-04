// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// addRoleManagersCmd represents the addRoleManagers command
var addRoleManagersCmd = &cobra.Command{
	Use:   "addRoleManagers",
	Short: "add role managers",
	Long:  `add role managers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleId := cmd.Flag("roleId").Value.String()
		managersString := cmd.Flag("managers").Value.String()
		var managers []*iamclientmodels.AccountcommonRoleManagerV3
		errManagers := json.Unmarshal([]byte(managersString), &managers)
		if errManagers != nil {
			return errManagers
		}
		roleService := &service.RoleService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := roleService.AdminAddRoleManagersV3(roleId, managers)
		if err != nil {
			return err
		}
		logrus.Info("Operation succeeded")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(addRoleManagersCmd)
	addRoleManagersCmd.Flags().StringP("roleId", "r", "", "Role ID")
	addRoleManagersCmd.Flags().StringP("managers", "m", "", "Role's managers. In json format, example: '{\"key1\", \"value1\"}'")
	addRoleManagersCmd.MarkFlagRequired("managers")
}
