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

// CreatePluginConfigCmd represents the CreatePluginConfig command
var CreatePluginConfigCmd = &cobra.Command{
	Use:   "createPluginConfig",
	Short: "Create plugin config",
	Long:  `Create plugin config`,
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
		input := &plugin_config.CreatePluginConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := pluginConfigService.CreatePluginConfigShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreatePluginConfigCmd.Flags().String("body", "", "Body")
	_ = CreatePluginConfigCmd.MarkFlagRequired("body")
	CreatePluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = CreatePluginConfigCmd.MarkFlagRequired("namespace")
}
