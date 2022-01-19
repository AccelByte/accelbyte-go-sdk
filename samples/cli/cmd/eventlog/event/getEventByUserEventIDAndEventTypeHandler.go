// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getEventByUserEventIDAndEventTypeHandlerCmd represents the getEventByUserEventIDAndEventTypeHandler command
var getEventByUserEventIDAndEventTypeHandlerCmd = &cobra.Command{
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
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetFloat64("offset")
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventService.GetEventByUserEventIDAndEventTypeHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getEventByUserEventIDAndEventTypeHandlerCmd)
	getEventByUserEventIDAndEventTypeHandlerCmd.Flags().Float64P("eventId", "e", 0, "Event id")
	_ = getEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("eventId")
	getEventByUserEventIDAndEventTypeHandlerCmd.Flags().Float64P("eventType", "e", 0, "Event type")
	_ = getEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("eventType")
	getEventByUserEventIDAndEventTypeHandlerCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("namespace")
	getEventByUserEventIDAndEventTypeHandlerCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("userId")
	getEventByUserEventIDAndEventTypeHandlerCmd.Flags().Float64P("offset", "o", 0, "Offset")
	getEventByUserEventIDAndEventTypeHandlerCmd.Flags().StringP("endDate", "e", " ", "End date")
	_ = getEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("endDate")
	getEventByUserEventIDAndEventTypeHandlerCmd.Flags().Float64P("pageSize", "p", 1, "Page size")
	_ = getEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("pageSize")
	getEventByUserEventIDAndEventTypeHandlerCmd.Flags().StringP("startDate", "s", " ", "Start date")
	_ = getEventByUserEventIDAndEventTypeHandlerCmd.MarkFlagRequired("startDate")
}
