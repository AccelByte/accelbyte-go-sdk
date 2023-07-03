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

// GetLootBoxPluginConfig1Cmd represents the GetLootBoxPluginConfig1 command
var GetLootBoxPluginConfig1Cmd = &cobra.Command{
	Use:   "getLootBoxPluginConfig1",
	Short: "Get loot box plugin config 1",
	Long:  `Get loot box plugin config 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &service_plugin_config.GetLootBoxPluginConfig1Params{
			Namespace: namespace,
		}
		ok, errOK := servicePluginConfigService.GetLootBoxPluginConfig1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetLootBoxPluginConfig1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetLootBoxPluginConfig1Cmd.MarkFlagRequired("namespace")
}
