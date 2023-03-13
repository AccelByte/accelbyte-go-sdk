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

// DeleteConfig1Cmd represents the DeleteConfig1 command
var DeleteConfig1Cmd = &cobra.Command{
	Use:   "deleteConfig1",
	Short: "Delete config 1",
	Long:  `Delete config 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &basic.ConfigService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configKey, _ := cmd.Flags().GetString("configKey")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.DeleteConfig1Params{
			ConfigKey: configKey,
			Namespace: namespace,
		}
		errNoContent := configService.DeleteConfig1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteConfig1Cmd.Flags().String("configKey", "", "Config key")
	_ = DeleteConfig1Cmd.MarkFlagRequired("configKey")
	DeleteConfig1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteConfig1Cmd.MarkFlagRequired("namespace")
}
