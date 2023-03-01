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

// GetEventByUserIDAndEventTypeHandlerCmd represents the GetEventByUserIDAndEventTypeHandler command
var GetEventByUserIDAndEventTypeHandlerCmd = &cobra.Command{
	Use:   "getEventByUserIDAndEventTypeHandler",
	Short: "Get event by user ID and event type handler",
	Long:  `Get event by user ID and event type handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventService := &eventlog.EventService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventType, _ := cmd.Flags().GetFloat64("eventType")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		endDate, _ := cmd.Flags().GetString("endDate")
		pageSize, _ := cmd.Flags().GetInt64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &event.GetEventByUserIDAndEventTypeHandlerParams{
			EventType: eventType,
			Namespace: namespace,
			UserID:    userId,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		ok, errOK := eventService.GetEventByUserIDAndEventTypeHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetEventByUserIDAndEventTypeHandlerCmd.Flags().Float64("eventType", 0, "Event type")
	_ = GetEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("eventType")
	GetEventByUserIDAndEventTypeHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("namespace")
	GetEventByUserIDAndEventTypeHandlerCmd.Flags().String("userId", "", "User id")
	_ = GetEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("userId")
	GetEventByUserIDAndEventTypeHandlerCmd.Flags().Int64("offset", 0, "Offset")
	GetEventByUserIDAndEventTypeHandlerCmd.Flags().String("endDate", "", "End date")
	_ = GetEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("endDate")
	GetEventByUserIDAndEventTypeHandlerCmd.Flags().Int64("pageSize", 1, "Page size")
	_ = GetEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("pageSize")
	GetEventByUserIDAndEventTypeHandlerCmd.Flags().String("startDate", "", "Start date")
	_ = GetEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("startDate")
}
