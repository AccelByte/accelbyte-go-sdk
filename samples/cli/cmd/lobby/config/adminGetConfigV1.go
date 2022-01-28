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

// AdminGetConfigV1Cmd represents the AdminGetConfigV1 command
var AdminGetConfigV1Cmd = &cobra.Command{
	Use:   "adminGetConfigV1",
	Short: "Admin get config V1",
	Long:  `Admin get config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &lobby.ConfigService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.AdminGetConfigV1Params{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := configService.AdminGetConfigV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetConfigV1Cmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = AdminGetConfigV1Cmd.MarkFlagRequired("namespace")
}
