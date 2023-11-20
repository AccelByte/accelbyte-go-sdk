// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package telemetry

import (
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/telemetry"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gametelemetry"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd represents the GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet command
var GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd = &cobra.Command{
	Use:   "getEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet",
	Short: "Get events game telemetry v1 admin namespaces namespace events get",
	Long:  `Get events game telemetry v1 admin namespaces namespace events get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		telemetryService := &gametelemetry.TelemetryService{
			Client:          factory.NewGametelemetryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endTime, _ := cmd.Flags().GetString("endTime")
		eventId, _ := cmd.Flags().GetString("eventId")
		eventName, _ := cmd.Flags().GetString("eventName")
		eventPayload, _ := cmd.Flags().GetString("eventPayload")
		flightId, _ := cmd.Flags().GetString("flightId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		startTime, _ := cmd.Flags().GetString("startTime")
		userId, _ := cmd.Flags().GetString("userId")
		input := &telemetry.GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams{
			Namespace:    namespace,
			EndTime:      &endTime,
			EventID:      &eventId,
			EventName:    &eventName,
			EventPayload: &eventPayload,
			FlightID:     &flightId,
			Limit:        &limit,
			Offset:       &offset,
			StartTime:    &startTime,
			UserID:       &userId,
		}
		errOK := telemetryService.GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.MarkFlagRequired("namespace")
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().String("endTime", "", "End time")
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().String("eventId", "0", "Event id")
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().String("eventName", "", "Event name")
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().String("eventPayload", "", "Event payload")
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().String("flightId", "", "Flight id")
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().Int64("limit", 20, "Limit")
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().Int64("offset", 0, "Offset")
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().String("startTime", "", "Start time")
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().String("userId", "", "User id")
}
