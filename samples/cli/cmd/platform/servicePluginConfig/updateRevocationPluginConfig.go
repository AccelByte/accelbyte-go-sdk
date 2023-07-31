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

// UpdateRevocationPluginConfigCmd represents the UpdateRevocationPluginConfig command
var UpdateRevocationPluginConfigCmd = &cobra.Command{
	Use:   "updateRevocationPluginConfig",
	Short: "Update revocation plugin config",
	Long:  `Update revocation plugin config`,
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
		input := &service_plugin_config.UpdateRevocationPluginConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := servicePluginConfigService.UpdateRevocationPluginConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateRevocationPluginConfigCmd.Flags().String("body", "", "Body")
	UpdateRevocationPluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateRevocationPluginConfigCmd.MarkFlagRequired("namespace")
}
