// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pluginConfig

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/plugin_config"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdatePluginConfigCmd represents the UpdatePluginConfig command
var UpdatePluginConfigCmd = &cobra.Command{
	Use:   "updatePluginConfig",
	Short: "Update plugin config",
	Long:  `Update plugin config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		pluginConfigService := &cloudsave.PluginConfigService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsPluginRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &plugin_config.UpdatePluginConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := pluginConfigService.UpdatePluginConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdatePluginConfigCmd.Flags().String("body", "", "Body")
	_ = UpdatePluginConfigCmd.MarkFlagRequired("body")
	UpdatePluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePluginConfigCmd.MarkFlagRequired("namespace")
}
