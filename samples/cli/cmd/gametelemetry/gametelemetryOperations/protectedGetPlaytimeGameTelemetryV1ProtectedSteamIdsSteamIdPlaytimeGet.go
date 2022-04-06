// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gametelemetryOperations

import (
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gametelemetry"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetCmd represents the ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet command
var ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetCmd = &cobra.Command{
	Use:   "protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet",
	Short: "Protected get playtime game telemetry v1 protected steam ids steam id playtime get",
	Long:  `Protected get playtime game telemetry v1 protected steam ids steam id playtime get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gametelemetryOperationsService := &gametelemetry.GametelemetryOperationsService{
			Client:          factory.NewGametelemetryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		steamId, _ := cmd.Flags().GetString("steamId")
		input := &gametelemetry_operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams{
			SteamID: steamId,
		}
		ok, err := gametelemetryOperationsService.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetCmd.Flags().StringP("steamId", "", "", "Steam id")
	_ = ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetCmd.MarkFlagRequired("steamId")
}
