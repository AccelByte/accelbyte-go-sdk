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

// GetSectionPluginConfigCmd represents the GetSectionPluginConfig command
var GetSectionPluginConfigCmd = &cobra.Command{
	Use:   "getSectionPluginConfig",
	Short: "Get section plugin config",
	Long:  `Get section plugin config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &service_plugin_config.GetSectionPluginConfigParams{
			Namespace: namespace,
		}
		ok, errOK := servicePluginConfigService.GetSectionPluginConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetSectionPluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetSectionPluginConfigCmd.MarkFlagRequired("namespace")
}
