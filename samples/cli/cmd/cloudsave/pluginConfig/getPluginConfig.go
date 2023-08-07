// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pluginConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/plugin_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPluginConfigCmd represents the GetPluginConfig command
var GetPluginConfigCmd = &cobra.Command{
	Use:   "getPluginConfig",
	Short: "Get plugin config",
	Long:  `Get plugin config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		pluginConfigService := &cloudsave.PluginConfigService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &plugin_config.GetPluginConfigParams{
			Namespace: namespace,
		}
		ok, errOK := pluginConfigService.GetPluginConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPluginConfigCmd.MarkFlagRequired("namespace")
}
