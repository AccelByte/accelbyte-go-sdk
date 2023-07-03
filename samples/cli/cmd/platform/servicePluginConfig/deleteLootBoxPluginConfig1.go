// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package servicePluginConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/service_plugin_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteLootBoxPluginConfig1Cmd represents the DeleteLootBoxPluginConfig1 command
var DeleteLootBoxPluginConfig1Cmd = &cobra.Command{
	Use:   "deleteLootBoxPluginConfig1",
	Short: "Delete loot box plugin config 1",
	Long:  `Delete loot box plugin config 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &service_plugin_config.DeleteLootBoxPluginConfig1Params{
			Namespace: namespace,
		}
		errNoContent := servicePluginConfigService.DeleteLootBoxPluginConfig1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteLootBoxPluginConfig1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteLootBoxPluginConfig1Cmd.MarkFlagRequired("namespace")
}
