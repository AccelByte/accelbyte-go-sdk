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

// getEventByNamespaceHandlerCmd represents the getEventByNamespaceHandler command
var getEventByNamespaceHandlerCmd = &cobra.Command{
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
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		offset, _ := cmd.Flags().GetFloat64("offset")
		input := &event.GetEventByNamespaceHandlerParams{
			Namespace: namespace,
			Offset:    &offset,
			EndDate:   endDate,
			PageSize:  pageSize,
			StartDate: startDate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventService.GetEventByNamespaceHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getEventByNamespaceHandlerCmd)
	getEventByNamespaceHandlerCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getEventByNamespaceHandlerCmd.MarkFlagRequired("namespace")
	getEventByNamespaceHandlerCmd.Flags().Float64P("offset", "o", 0, "Offset")
	getEventByNamespaceHandlerCmd.Flags().StringP("endDate", "e", " ", "End date")
	_ = getEventByNamespaceHandlerCmd.MarkFlagRequired("endDate")
	getEventByNamespaceHandlerCmd.Flags().Float64P("pageSize", "p", 1, "Page size")
	_ = getEventByNamespaceHandlerCmd.MarkFlagRequired("pageSize")
	getEventByNamespaceHandlerCmd.Flags().StringP("startDate", "s", " ", "Start date")
	_ = getEventByNamespaceHandlerCmd.MarkFlagRequired("startDate")
}