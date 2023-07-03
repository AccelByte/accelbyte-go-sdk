// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package servicePluginConfig

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/service_plugin_config"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateLootBoxPluginConfigCmd represents the UpdateLootBoxPluginConfig command
var UpdateLootBoxPluginConfigCmd = &cobra.Command{
	Use:   "updateLootBoxPluginConfig",
	Short: "Update loot box plugin config",
	Long:  `Update loot box plugin config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.LootBoxPluginConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &service_plugin_config.UpdateLootBoxPluginConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := servicePluginConfigService.UpdateLootBoxPluginConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateLootBoxPluginConfigCmd.Flags().String("body", "", "Body")
	UpdateLootBoxPluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateLootBoxPluginConfigCmd.MarkFlagRequired("namespace")
}
