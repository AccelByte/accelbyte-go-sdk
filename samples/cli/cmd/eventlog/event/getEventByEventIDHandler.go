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

// GetEventByEventIDHandlerCmd represents the GetEventByEventIDHandler command
var GetEventByEventIDHandlerCmd = &cobra.Command{
	Use:   "getEventByEventIDHandler",
	Short: "Get event by event ID handler",
	Long:  `Get event by event ID handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventService := &eventlog.EventService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventId, _ := cmd.Flags().GetFloat64("eventId")
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		pageSize, _ := cmd.Flags().GetInt64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &event.GetEventByEventIDHandlerParams{
			EventID:   eventId,
			Namespace: namespace,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventService.GetEventByEventIDHandler(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	GetEventByEventIDHandlerCmd.Flags().Float64P("eventId", "", 0, "Event id")
	_ = GetEventByEventIDHandlerCmd.MarkFlagRequired("eventId")
	GetEventByEventIDHandlerCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetEventByEventIDHandlerCmd.MarkFlagRequired("namespace")
	GetEventByEventIDHandlerCmd.Flags().Int64P("offset", "", 0, "Offset")
	GetEventByEventIDHandlerCmd.Flags().StringP("endDate", "", "", "End date")
	_ = GetEventByEventIDHandlerCmd.MarkFlagRequired("endDate")
	GetEventByEventIDHandlerCmd.Flags().Int64P("pageSize", "", 1, "Page size")
	_ = GetEventByEventIDHandlerCmd.MarkFlagRequired("pageSize")
	GetEventByEventIDHandlerCmd.Flags().StringP("startDate", "", "", "Start date")
	_ = GetEventByEventIDHandlerCmd.MarkFlagRequired("startDate")
}
