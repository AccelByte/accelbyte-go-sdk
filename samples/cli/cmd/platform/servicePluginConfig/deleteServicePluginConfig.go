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

// DeleteServicePluginConfigCmd represents the DeleteServicePluginConfig command
var DeleteServicePluginConfigCmd = &cobra.Command{
	Use:   "deleteServicePluginConfig",
	Short: "Delete service plugin config",
	Long:  `Delete service plugin config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &service_plugin_config.DeleteServicePluginConfigParams{
			Namespace: namespace,
		}
		errInput := servicePluginConfigService.DeleteServicePluginConfigShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteServicePluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteServicePluginConfigCmd.MarkFlagRequired("namespace")
}
