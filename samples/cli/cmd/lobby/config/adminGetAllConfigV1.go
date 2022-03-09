// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package config

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetAllConfigV1Cmd represents the AdminGetAllConfigV1 command
var AdminGetAllConfigV1Cmd = &cobra.Command{
	Use:   "adminGetAllConfigV1",
	Short: "Admin get all config V1",
	Long:  `Admin get all config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &lobby.ConfigService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &config.AdminGetAllConfigV1Params{}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := configService.AdminGetAllConfigV1(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
}
