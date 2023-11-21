// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gametelemetry

import (
	"github.com/AccelByte/sample-apps/cmd/gametelemetry/gametelemetryOperations"
	"github.com/AccelByte/sample-apps/cmd/gametelemetry/telemetry"
	"github.com/spf13/cobra"
)

// GametelemetryCmd represents the service's child command
var GametelemetryCmd = &cobra.Command{
	Use:   "Gametelemetry",
	Short: "Gametelemetry to get all the commands",
}

func init() {
	GametelemetryCmd.AddCommand(telemetry.GetNamespacesGameTelemetryV1AdminNamespacesGetCmd)
	GametelemetryCmd.AddCommand(telemetry.GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd)
	GametelemetryCmd.AddCommand(gametelemetryOperations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd)
	GametelemetryCmd.AddCommand(gametelemetryOperations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetCmd)
	GametelemetryCmd.AddCommand(gametelemetryOperations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutCmd)
}
