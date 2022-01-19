// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getEventSpecificUserV2HandlerCmd represents the getEventSpecificUserV2Handler command
var getEventSpecificUserV2HandlerCmd = &cobra.Command{
	Use:   "getEventSpecificUserV2Handler",
	Short: "Get event specific user V2 handler",
	Long:  `Get event specific user V2 handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventV2Service := &eventlog.EventV2Service{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		endDate, _ := cmd.Flags().GetString("endDate")
		eventName, _ := cmd.Flags().GetString("eventName")
		offset, _ := cmd.Flags().GetFloat64("offset")
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		input := &event_v2.GetEventSpecificUserV2HandlerParams{
			Namespace: namespace,
			UserID:    userId,
			EndDate:   &endDate,
			EventName: &eventName,
			Offset:    &offset,
			PageSize:  &pageSize,
			StartDate: &startDate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventV2Service.GetEventSpecificUserV2Handler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getEventSpecificUserV2HandlerCmd)
	getEventSpecificUserV2HandlerCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getEventSpecificUserV2HandlerCmd.MarkFlagRequired("namespace")
	getEventSpecificUserV2HandlerCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getEventSpecificUserV2HandlerCmd.MarkFlagRequired("userId")
	getEventSpecificUserV2HandlerCmd.Flags().StringP("endDate", "e", " ", "End date")
	getEventSpecificUserV2HandlerCmd.Flags().StringP("eventName", "e", " ", "Event name")
	getEventSpecificUserV2HandlerCmd.Flags().Float64P("offset", "o", 0, "Offset")
	getEventSpecificUserV2HandlerCmd.Flags().Float64P("pageSize", "p", 1, "Page size")
	getEventSpecificUserV2HandlerCmd.Flags().StringP("startDate", "s", " ", "Start date")
}
