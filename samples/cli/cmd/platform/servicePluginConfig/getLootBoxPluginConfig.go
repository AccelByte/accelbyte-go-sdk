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

// GetLootBoxPluginConfigCmd represents the GetLootBoxPluginConfig command
var GetLootBoxPluginConfigCmd = &cobra.Command{
	Use:   "getLootBoxPluginConfig",
	Short: "Get loot box plugin config",
	Long:  `Get loot box plugin config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &service_plugin_config.GetLootBoxPluginConfigParams{
			Namespace: namespace,
		}
		ok, errOK := servicePluginConfigService.GetLootBoxPluginConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetLootBoxPluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetLootBoxPluginConfigCmd.MarkFlagRequired("namespace")
}
