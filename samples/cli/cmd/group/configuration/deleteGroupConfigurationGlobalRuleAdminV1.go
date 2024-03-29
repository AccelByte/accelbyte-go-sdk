// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteGroupConfigurationGlobalRuleAdminV1Cmd represents the DeleteGroupConfigurationGlobalRuleAdminV1 command
var DeleteGroupConfigurationGlobalRuleAdminV1Cmd = &cobra.Command{
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
		ok, errOK := configurationService.DeleteGroupConfigurationGlobalRuleAdminV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DeleteGroupConfigurationGlobalRuleAdminV1Cmd.Flags().String("allowedAction", "", "Allowed action")
	_ = DeleteGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("allowedAction")
	DeleteGroupConfigurationGlobalRuleAdminV1Cmd.Flags().String("configurationCode", "", "Configuration code")
	_ = DeleteGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("configurationCode")
	DeleteGroupConfigurationGlobalRuleAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("namespace")
}
