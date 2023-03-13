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

// GetConfig1Cmd represents the GetConfig1 command
var GetConfig1Cmd = &cobra.Command{
	Use:   "getConfig1",
	Short: "Get config 1",
	Long:  `Get config 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &basic.ConfigService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configKey, _ := cmd.Flags().GetString("configKey")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.GetConfig1Params{
			ConfigKey: configKey,
			Namespace: namespace,
		}
		ok, errOK := configService.GetConfig1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetConfig1Cmd.Flags().String("configKey", "", "Config key")
	_ = GetConfig1Cmd.MarkFlagRequired("configKey")
	GetConfig1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetConfig1Cmd.MarkFlagRequired("namespace")
}
