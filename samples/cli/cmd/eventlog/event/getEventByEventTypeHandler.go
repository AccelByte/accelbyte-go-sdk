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

// getEventByEventTypeHandlerCmd represents the getEventByEventTypeHandler command
var getEventByEventTypeHandlerCmd = &cobra.Command{
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
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetFloat64("offset")
		input := &event.GetEventByEventTypeHandlerParams{
			EventType: eventType,
			Namespace: namespace,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventService.GetEventByEventTypeHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getEventByEventTypeHandlerCmd)
	getEventByEventTypeHandlerCmd.Flags().Float64P("eventType", "e", 0, "Event type")
	_ = getEventByEventTypeHandlerCmd.MarkFlagRequired("eventType")
	getEventByEventTypeHandlerCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getEventByEventTypeHandlerCmd.MarkFlagRequired("namespace")
	getEventByEventTypeHandlerCmd.Flags().Float64P("offset", "o", 0, "Offset")
	getEventByEventTypeHandlerCmd.Flags().StringP("endDate", "e", " ", "End date")
	_ = getEventByEventTypeHandlerCmd.MarkFlagRequired("endDate")
	getEventByEventTypeHandlerCmd.Flags().Float64P("pageSize", "p", 1, "Page size")
	_ = getEventByEventTypeHandlerCmd.MarkFlagRequired("pageSize")
	getEventByEventTypeHandlerCmd.Flags().StringP("startDate", "s", " ", "Start date")
	_ = getEventByEventTypeHandlerCmd.MarkFlagRequired("startDate")
}
