// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteGroupConfigurationGlobalRuleAdminV1Cmd represents the deleteGroupConfigurationGlobalRuleAdminV1 command
var deleteGroupConfigurationGlobalRuleAdminV1Cmd = &cobra.Command{
	Use:   "deleteGroupConfigurationGlobalRuleAdminV1",
	Short: "Delete group configuration global rule admin V1",
	Long:  `Delete group configuration global rule admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		allowedAction, _ := cmd.Flags().GetString("allowedAction")
		configurationCode, _ := cmd.Flags().GetString("configurationCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.DeleteGroupConfigurationGlobalRuleAdminV1Params{
			AllowedAction:     allowedAction,
			ConfigurationCode: configurationCode,
			Namespace:         namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := configurationService.DeleteGroupConfigurationGlobalRuleAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteGroupConfigurationGlobalRuleAdminV1Cmd)
	deleteGroupConfigurationGlobalRuleAdminV1Cmd.Flags().StringP("allowedAction", "a", " ", "Allowed action")
	_ = deleteGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("allowedAction")
	deleteGroupConfigurationGlobalRuleAdminV1Cmd.Flags().StringP("configurationCode", "c", " ", "Configuration code")
	_ = deleteGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("configurationCode")
	deleteGroupConfigurationGlobalRuleAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("namespace")
}
