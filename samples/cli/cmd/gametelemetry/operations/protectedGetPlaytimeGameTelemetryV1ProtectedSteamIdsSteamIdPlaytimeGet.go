// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gametelemetry"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetCmd represents the protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet command
var protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetCmd = &cobra.Command{
	Use:   "protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet",
	Short: "Protected get playtime game telemetry v1 protected steam ids steam id playtime get",
	Long:  `Protected get playtime game telemetry v1 protected steam ids steam id playtime get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &gametelemetry.OperationsService{
			Client:          factory.NewGametelemetryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		steamId, _ := cmd.Flags().GetString("steamId")
		input := &operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams{
			SteamID: steamId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := operationsService.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetCmd)
	protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetCmd.Flags().StringP("steamId", "s", " ", "Steam id")
	_ = protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetCmd.MarkFlagRequired("steamId")
}
