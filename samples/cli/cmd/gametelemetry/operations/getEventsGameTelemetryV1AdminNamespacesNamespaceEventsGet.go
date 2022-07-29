// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

import (
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/operations"
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
		operationsService := &gametelemetry.OperationsService{
			Client:          factory.NewGametelemetryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endTime, _ := cmd.Flags().GetString("endTime")
		eventId, _ := cmd.Flags().GetString("eventId")
		eventName, _ := cmd.Flags().GetString("eventName")
		eventPayload, _ := cmd.Flags().GetString("eventPayload")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		startTime, _ := cmd.Flags().GetString("startTime")
		input := &operations.GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams{
			Namespace:    namespace,
			EndTime:      &endTime,
			EventID:      &eventId,
			EventName:    &eventName,
			EventPayload: &eventPayload,
			Limit:        &limit,
			Offset:       &offset,
			StartTime:    &startTime,
		}
		errInput := operationsService.GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

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
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().Int64("limit", 20, "Limit")
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().Int64("offset", 0, "Offset")
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetCmd.Flags().String("startTime", "", "Start time")
}
