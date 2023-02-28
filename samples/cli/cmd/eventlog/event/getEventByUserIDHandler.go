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

// GetEventByUserIDHandlerCmd represents the GetEventByUserIDHandler command
var GetEventByUserIDHandlerCmd = &cobra.Command{
	Use:   "getEventByUserIDHandler",
	Short: "Get event by user ID handler",
	Long:  `Get event by user ID handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventService := &eventlog.EventService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		endDate, _ := cmd.Flags().GetString("endDate")
		pageSize, _ := cmd.Flags().GetInt64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &event.GetEventByUserIDHandlerParams{
			Namespace: namespace,
			UserID:    userId,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		ok, errOK := eventService.GetEventByUserIDHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetEventByUserIDHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEventByUserIDHandlerCmd.MarkFlagRequired("namespace")
	GetEventByUserIDHandlerCmd.Flags().String("userId", "", "User id")
	_ = GetEventByUserIDHandlerCmd.MarkFlagRequired("userId")
	GetEventByUserIDHandlerCmd.Flags().Int64("offset", 0, "Offset")
	GetEventByUserIDHandlerCmd.Flags().String("endDate", "", "End date")
	_ = GetEventByUserIDHandlerCmd.MarkFlagRequired("endDate")
	GetEventByUserIDHandlerCmd.Flags().Int64("pageSize", 1, "Page size")
	_ = GetEventByUserIDHandlerCmd.MarkFlagRequired("pageSize")
	GetEventByUserIDHandlerCmd.Flags().String("startDate", "", "Start date")
	_ = GetEventByUserIDHandlerCmd.MarkFlagRequired("startDate")
}
