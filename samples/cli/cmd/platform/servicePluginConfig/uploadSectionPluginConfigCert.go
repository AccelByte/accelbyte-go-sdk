// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package servicePluginConfig

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/service_plugin_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UploadSectionPluginConfigCertCmd represents the UploadSectionPluginConfigCert command
var UploadSectionPluginConfigCertCmd = &cobra.Command{
	Use:   "uploadSectionPluginConfigCert",
	Short: "Upload section plugin config cert",
	Long:  `Upload section plugin config cert`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		input := &service_plugin_config.UploadSectionPluginConfigCertParams{
			File:      file,
			Namespace: namespace,
		}
		ok, errOK := servicePluginConfigService.UploadSectionPluginConfigCertShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UploadSectionPluginConfigCertCmd.Flags().String("file", "", "File")
	UploadSectionPluginConfigCertCmd.Flags().String("namespace", "", "Namespace")
	_ = UploadSectionPluginConfigCertCmd.MarkFlagRequired("namespace")
}
