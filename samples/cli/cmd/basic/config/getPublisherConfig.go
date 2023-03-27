// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPublisherConfigCmd represents the GetPublisherConfig command
var GetPublisherConfigCmd = &cobra.Command{
	Use:   "getPublisherConfig",
	Short: "Get publisher config",
	Long:  `Get publisher config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &basic.ConfigService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configKey, _ := cmd.Flags().GetString("configKey")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.GetPublisherConfigParams{
			ConfigKey: configKey,
			Namespace: namespace,
		}
		ok, errOK := configService.GetPublisherConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPublisherConfigCmd.Flags().String("configKey", "", "Config key")
	_ = GetPublisherConfigCmd.MarkFlagRequired("configKey")
	GetPublisherConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPublisherConfigCmd.MarkFlagRequired("namespace")
}
