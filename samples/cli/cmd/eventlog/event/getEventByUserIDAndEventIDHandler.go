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

// GetEventByUserIDAndEventIDHandlerCmd represents the GetEventByUserIDAndEventIDHandler command
var GetEventByUserIDAndEventIDHandlerCmd = &cobra.Command{
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
		pageSize, _ := cmd.Flags().GetInt64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &event.GetEventByUserIDAndEventIDHandlerParams{
			EventID:   eventId,
			Namespace: namespace,
			UserID:    userId,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		ok, err := eventService.GetEventByUserIDAndEventIDHandlerShort(input)
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
	GetEventByUserIDAndEventIDHandlerCmd.Flags().Float64("eventId", 0, "Event id")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("eventId")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("namespace")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().String("userId", "", "User id")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("userId")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().Int64("offset", 0, "Offset")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().String("endDate", "", "End date")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("endDate")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().Int64("pageSize", 1, "Page size")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("pageSize")
	GetEventByUserIDAndEventIDHandlerCmd.Flags().String("startDate", "", "Start date")
	_ = GetEventByUserIDAndEventIDHandlerCmd.MarkFlagRequired("startDate")
}
