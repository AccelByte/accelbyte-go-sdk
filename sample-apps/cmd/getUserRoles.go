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

// getUserRolesCmd represents the getUserRoles command
var getUserRolesCmd = &cobra.Command{
	Use:   "getUserRoles",
	Short: "Get user roles",
	Long:  `Get user roles`,
	RunE: func(cmd *cobra.Command, args []string) error {
		roleService := &service.RoleService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roles, err := roleService.GetRoles()
		if err != nil {
			return err
		}
		response, err := json.Marshal(roles)
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getUserRolesCmd)

}
