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

// GetEventByNamespaceHandlerCmd represents the GetEventByNamespaceHandler command
var GetEventByNamespaceHandlerCmd = &cobra.Command{
	Use:   "getEventByNamespaceHandler",
	Short: "Get event by namespace handler",
	Long:  `Get event by namespace handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventService := &eventlog.EventService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		pageSize, _ := cmd.Flags().GetInt64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &event.GetEventByNamespaceHandlerParams{
			Namespace: namespace,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		ok, errOK := eventService.GetEventByNamespaceHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetEventByNamespaceHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEventByNamespaceHandlerCmd.MarkFlagRequired("namespace")
	GetEventByNamespaceHandlerCmd.Flags().Int64("offset", 0, "Offset")
	GetEventByNamespaceHandlerCmd.Flags().String("endDate", "", "End date")
	_ = GetEventByNamespaceHandlerCmd.MarkFlagRequired("endDate")
	GetEventByNamespaceHandlerCmd.Flags().Int64("pageSize", 1, "Page size")
	_ = GetEventByNamespaceHandlerCmd.MarkFlagRequired("pageSize")
	GetEventByNamespaceHandlerCmd.Flags().String("startDate", "", "Start date")
	_ = GetEventByNamespaceHandlerCmd.MarkFlagRequired("startDate")
}
