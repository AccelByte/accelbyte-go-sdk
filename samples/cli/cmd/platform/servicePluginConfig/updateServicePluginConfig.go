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

// UpdateServicePluginConfigCmd represents the UpdateServicePluginConfig command
var UpdateServicePluginConfigCmd = &cobra.Command{
	Use:   "updateServicePluginConfig",
	Short: "Update service plugin config",
	Long:  `Update service plugin config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ServicePluginConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &service_plugin_config.UpdateServicePluginConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := servicePluginConfigService.UpdateServicePluginConfigShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	UpdateServicePluginConfigCmd.Flags().String("body", "", "Body")
	UpdateServicePluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateServicePluginConfigCmd.MarkFlagRequired("namespace")
}
