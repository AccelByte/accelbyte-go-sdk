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

// UpdateLootBoxPluginConfig1Cmd represents the UpdateLootBoxPluginConfig1 command
var UpdateLootBoxPluginConfig1Cmd = &cobra.Command{
	Use:   "updateLootBoxPluginConfig1",
	Short: "Update loot box plugin config 1",
	Long:  `Update loot box plugin config 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.RevocationPluginConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &service_plugin_config.UpdateLootBoxPluginConfig1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := servicePluginConfigService.UpdateLootBoxPluginConfig1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateLootBoxPluginConfig1Cmd.Flags().String("body", "", "Body")
	UpdateLootBoxPluginConfig1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateLootBoxPluginConfig1Cmd.MarkFlagRequired("namespace")
}
