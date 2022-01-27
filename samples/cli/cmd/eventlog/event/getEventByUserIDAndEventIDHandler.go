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

// GetEventByUserIDAndEventIDHandlerCmd represents the GetEventByUserIDAndEventIDHandler command
var GetEventByUserIDAndEventIDHandlerCmd = &cobra.Command{
	Use:   "GetEventByUserIDAndEventIDHandler",
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
	GetEventByUserIDAndEventIDHandlerCmd.Flags().Float64P("eventId", "ed", 0, "Event id")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("eventId")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("namespace")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("userId")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().Float64P("offset", "ot", 0, "Offset")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().StringP("endDate", "ee", " ", "End date")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("endDate")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().Float64P("pageSize", "pe", 1, "Page size")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("pageSize")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().StringP("startDate", "se", " ", "Start date")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("startDate")
}
