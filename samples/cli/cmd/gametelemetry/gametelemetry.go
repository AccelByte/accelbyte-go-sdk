// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gametelemetry

import (
	"github.com/AccelByte/sample-apps/cmd/gametelemetry/operations"
	"github.com/spf13/cobra"
)

// GametelemetryCmd represents the service's child command
var GametelemetryCmd = &cobra.Command{
	Use:   "Gametelemetry",
	Short: "Gametelemetry to get all the commands",
}

func init() {
	GametelemetryCmd.AddCommand(operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd)
	GametelemetryCmd.AddCommand(operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetCmd)
	GametelemetryCmd.AddCommand(operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutCmd)
}
