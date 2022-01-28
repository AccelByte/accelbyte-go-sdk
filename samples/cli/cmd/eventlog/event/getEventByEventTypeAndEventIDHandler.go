// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package event

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetEventByEventTypeAndEventIDHandlerCmd represents the GetEventByEventTypeAndEventIDHandler command
var GetEventByEventTypeAndEventIDHandlerCmd = &cobra.Command{
	Use:   "getEventByEventTypeAndEventIDHandler",
	Short: "Get event by event type and event ID handler",
	Long:  `Get event by event type and event ID handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventService := &eventlog.EventService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventId, _ := cmd.Flags().GetFloat64("eventId")
		eventType, _ := cmd.Flags().GetFloat64("eventType")
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetFloat64("offset")
		input := &event.GetEventByEventTypeAndEventIDHandlerParams{
			EventID:   eventId,
			EventType: eventType,
			Namespace: namespace,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventService.GetEventByEventTypeAndEventIDHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetEventByEventTypeAndEventIDHandlerCmd.Flags().Float64P("eventId", "", 0, "Event id")
	_ = GetEventByEventTypeAndEventIDHandlerCmd.MarkFlagRequired("eventId")
	GetEventByEventTypeAndEventIDHandlerCmd.Flags().Float64P("eventType", "", 0, "Event type")
	_ = GetEventByEventTypeAndEventIDHandlerCmd.MarkFlagRequired("eventType")
	GetEventByEventTypeAndEventIDHandlerCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = GetEventByEventTypeAndEventIDHandlerCmd.MarkFlagRequired("namespace")
	GetEventByEventTypeAndEventIDHandlerCmd.Flags().Float64P("offset", "", 0, "Offset")
	GetEventByEventTypeAndEventIDHandlerCmd.Flags().StringP("endDate", "", " ", "End date")
	_ = GetEventByEventTypeAndEventIDHandlerCmd.MarkFlagRequired("endDate")
	GetEventByEventTypeAndEventIDHandlerCmd.Flags().Float64P("pageSize", "", 1, "Page size")
	_ = GetEventByEventTypeAndEventIDHandlerCmd.MarkFlagRequired("pageSize")
	GetEventByEventTypeAndEventIDHandlerCmd.Flags().StringP("startDate", "", " ", "Start date")
	_ = GetEventByEventTypeAndEventIDHandlerCmd.MarkFlagRequired("startDate")
}
