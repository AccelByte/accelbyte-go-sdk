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

// getEventByUserIDHandlerCmd represents the getEventByUserIDHandler command
var getEventByUserIDHandlerCmd = &cobra.Command{
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
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetFloat64("offset")
		input := &event.GetEventByUserIDHandlerParams{
			Namespace: namespace,
			UserID:    userId,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventService.GetEventByUserIDHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getEventByUserIDHandlerCmd)
	getEventByUserIDHandlerCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getEventByUserIDHandlerCmd.MarkFlagRequired("namespace")
	getEventByUserIDHandlerCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = getEventByUserIDHandlerCmd.MarkFlagRequired("userId")
	getEventByUserIDHandlerCmd.Flags().Float64P("offset", "ot", 0, "Offset")
	getEventByUserIDHandlerCmd.Flags().StringP("endDate", "ee", " ", "End date")
	_ = getEventByUserIDHandlerCmd.MarkFlagRequired("endDate")
	getEventByUserIDHandlerCmd.Flags().Float64P("pageSize", "pe", 1, "Page size")
	_ = getEventByUserIDHandlerCmd.MarkFlagRequired("pageSize")
	getEventByUserIDHandlerCmd.Flags().StringP("startDate", "se", " ", "Start date")
	_ = getEventByUserIDHandlerCmd.MarkFlagRequired("startDate")
}
