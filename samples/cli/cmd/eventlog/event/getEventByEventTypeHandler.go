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

// GetEventByEventTypeHandlerCmd represents the GetEventByEventTypeHandler command
var GetEventByEventTypeHandlerCmd = &cobra.Command{
	Use:   "getEventByEventTypeHandler",
	Short: "Get event by event type handler",
	Long:  `Get event by event type handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventService := &eventlog.EventService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventType, _ := cmd.Flags().GetFloat64("eventType")
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		pageSize, _ := cmd.Flags().GetInt64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &event.GetEventByEventTypeHandlerParams{
			EventType: eventType,
			Namespace: namespace,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		ok, errOK := eventService.GetEventByEventTypeHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetEventByEventTypeHandlerCmd.Flags().Float64("eventType", 0, "Event type")
	_ = GetEventByEventTypeHandlerCmd.MarkFlagRequired("eventType")
	GetEventByEventTypeHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEventByEventTypeHandlerCmd.MarkFlagRequired("namespace")
	GetEventByEventTypeHandlerCmd.Flags().Int64("offset", 0, "Offset")
	GetEventByEventTypeHandlerCmd.Flags().String("endDate", "", "End date")
	_ = GetEventByEventTypeHandlerCmd.MarkFlagRequired("endDate")
	GetEventByEventTypeHandlerCmd.Flags().Int64("pageSize", 1, "Page size")
	_ = GetEventByEventTypeHandlerCmd.MarkFlagRequired("pageSize")
	GetEventByEventTypeHandlerCmd.Flags().String("startDate", "", "Start date")
	_ = GetEventByEventTypeHandlerCmd.MarkFlagRequired("startDate")
}
