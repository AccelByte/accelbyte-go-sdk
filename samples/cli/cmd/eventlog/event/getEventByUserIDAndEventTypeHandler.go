// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package event

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getEventByUserIDAndEventTypeHandlerCmd represents the getEventByUserIDAndEventTypeHandler command
var getEventByUserIDAndEventTypeHandlerCmd = &cobra.Command{
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
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetFloat64("offset")
		input := &event.GetEventByUserIDAndEventTypeHandlerParams{
			EventType: eventType,
			Namespace: namespace,
			UserID:    userId,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventService.GetEventByUserIDAndEventTypeHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getEventByUserIDAndEventTypeHandlerCmd)
	getEventByUserIDAndEventTypeHandlerCmd.Flags().Float64P("eventType", "ee", 0, "Event type")
	_ = getEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("eventType")
	getEventByUserIDAndEventTypeHandlerCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("namespace")
	getEventByUserIDAndEventTypeHandlerCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = getEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("userId")
	getEventByUserIDAndEventTypeHandlerCmd.Flags().Float64P("offset", "ot", 0, "Offset")
	getEventByUserIDAndEventTypeHandlerCmd.Flags().StringP("endDate", "ee", " ", "End date")
	_ = getEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("endDate")
	getEventByUserIDAndEventTypeHandlerCmd.Flags().Float64P("pageSize", "pe", 1, "Page size")
	_ = getEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("pageSize")
	getEventByUserIDAndEventTypeHandlerCmd.Flags().StringP("startDate", "se", " ", "Start date")
	_ = getEventByUserIDAndEventTypeHandlerCmd.MarkFlagRequired("startDate")
}
