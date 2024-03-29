// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package event

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetEventByUserEventIDAndEventTypeHandlerCmd represents the GetEventByUserEventIDAndEventTypeHandler command
var GetEventByUserEventIDAndEventTypeHandlerCmd = &cobra.Command{
	Use:   "getEventByUserEventIDAndEventTypeHandler",
	Short: "Get event by user event ID and event type handler",
	Long:  `Get event by user event ID and event type handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventService := &eventlog.EventService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventId, _ := cmd.Flags().GetFloat64("eventId")
		eventType, _ := cmd.Flags().GetFloat64("eventType")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		endDate, _ := cmd.Flags().GetString("endDate")
		pageSize, _ := cmd.Flags().GetInt64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &event.GetEventByUserEventIDAndEventTypeHandlerParams{
			EventID:   eventId,
			EventType: eventType,
			Namespace: namespace,
			UserID:    userId,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		ok, errOK := eventService.GetEventByUserEventIDAndEventTypeHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetEventByUserEventIDAndEventTypeHandlerCmd.Flags().Float64("eventId", 0, "Event id")
	_ = GetEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("eventId")
	GetEventByUserEventIDAndEventTypeHandlerCmd.Flags().Float64("eventType", 0, "Event type")
	_ = GetEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("eventType")
	GetEventByUserEventIDAndEventTypeHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("namespace")
	GetEventByUserEventIDAndEventTypeHandlerCmd.Flags().String("userId", "", "User id")
	_ = GetEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("userId")
	GetEventByUserEventIDAndEventTypeHandlerCmd.Flags().Int64("offset", 0, "Offset")
	GetEventByUserEventIDAndEventTypeHandlerCmd.Flags().String("endDate", "", "End date")
	_ = GetEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("endDate")
	GetEventByUserEventIDAndEventTypeHandlerCmd.Flags().Int64("pageSize", 1, "Page size")
	_ = GetEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("pageSize")
	GetEventByUserEventIDAndEventTypeHandlerCmd.Flags().String("startDate", "", "Start date")
	_ = GetEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("startDate")
}
