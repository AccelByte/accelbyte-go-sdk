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

// getEventByUserIDAndEventIDHandlerCmd represents the getEventByUserIDAndEventIDHandler command
var getEventByUserIDAndEventIDHandlerCmd = &cobra.Command{
	Use:   "getEventByUserIDAndEventIDHandler",
	Short: "Get event by user ID and event ID handler",
	Long:  `Get event by user ID and event ID handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventService := &eventlog.EventService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventId, _ := cmd.Flags().GetFloat64("eventId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		endDate, _ := cmd.Flags().GetString("endDate")
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetFloat64("offset")
		input := &event.GetEventByUserIDAndEventIDHandlerParams{
			EventID:   eventId,
			Namespace: namespace,
			UserID:    userId,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventService.GetEventByUserIDAndEventIDHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getEventByUserIDAndEventIDHandlerCmd)
	getEventByUserIDAndEventIDHandlerCmd.Flags().Float64P("eventId", "e", 0, "Event id")
	_ = getEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("eventId")
	getEventByUserIDAndEventIDHandlerCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("namespace")
	getEventByUserIDAndEventIDHandlerCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("userId")
	getEventByUserIDAndEventIDHandlerCmd.Flags().Float64P("offset", "o", 0, "Offset")
	getEventByUserIDAndEventIDHandlerCmd.Flags().StringP("endDate", "e", " ", "End date")
	_ = getEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("endDate")
	getEventByUserIDAndEventIDHandlerCmd.Flags().Float64P("pageSize", "p", 1, "Page size")
	_ = getEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("pageSize")
	getEventByUserIDAndEventIDHandlerCmd.Flags().StringP("startDate", "s", " ", "Start date")
	_ = getEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("startDate")
}
