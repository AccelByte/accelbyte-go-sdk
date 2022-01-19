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

// getEventByEventIDHandlerCmd represents the getEventByEventIDHandler command
var getEventByEventIDHandlerCmd = &cobra.Command{
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
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetFloat64("offset")
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getEventByEventIDHandlerCmd)
	getEventByEventIDHandlerCmd.Flags().Float64P("eventId", "e", 0, "Event id")
	_ = getEventByEventIDHandlerCmd.MarkFlagRequired("eventId")
	getEventByEventIDHandlerCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getEventByEventIDHandlerCmd.MarkFlagRequired("namespace")
	getEventByEventIDHandlerCmd.Flags().Float64P("offset", "o", 0, "Offset")
	getEventByEventIDHandlerCmd.Flags().StringP("endDate", "e", " ", "End date")
	_ = getEventByEventIDHandlerCmd.MarkFlagRequired("endDate")
	getEventByEventIDHandlerCmd.Flags().Float64P("pageSize", "p", 1, "Page size")
	_ = getEventByEventIDHandlerCmd.MarkFlagRequired("pageSize")
	getEventByEventIDHandlerCmd.Flags().StringP("startDate", "s", " ", "Start date")
	_ = getEventByEventIDHandlerCmd.MarkFlagRequired("startDate")
}
