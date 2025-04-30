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

// PublicGetSystemConfigV3Cmd represents the PublicGetSystemConfigV3 command
var PublicGetSystemConfigV3Cmd = &cobra.Command{
	Use:   "publicGetSystemConfigV3",
	Short: "Public get system config V3",
	Long:  `Public get system config V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &iam.ConfigService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &config.PublicGetSystemConfigV3Params{}
		ok, errOK := configService.PublicGetSystemConfigV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
}
