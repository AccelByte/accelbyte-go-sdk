// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetConfigValueV3Cmd represents the PublicGetConfigValueV3 command
var PublicGetConfigValueV3Cmd = &cobra.Command{
	Use:   "publicGetConfigValueV3",
	Short: "Public get config value V3",
	Long:  `Public get config value V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &iam.ConfigService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configKey, _ := cmd.Flags().GetString("configKey")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.PublicGetConfigValueV3Params{
			ConfigKey: configKey,
			Namespace: namespace,
		}
		ok, errOK := configService.PublicGetConfigValueV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetConfigValueV3Cmd.Flags().String("configKey", "", "Config key")
	_ = PublicGetConfigValueV3Cmd.MarkFlagRequired("configKey")
	PublicGetConfigValueV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetConfigValueV3Cmd.MarkFlagRequired("namespace")
}
