// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetEventSpecificUserV2HandlerCmd represents the GetEventSpecificUserV2Handler command
var GetEventSpecificUserV2HandlerCmd = &cobra.Command{
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
		offset, _ := cmd.Flags().GetInt64("offset")
		pageSize, _ := cmd.Flags().GetInt64("pageSize")
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
	GetEventSpecificUserV2HandlerCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetEventSpecificUserV2HandlerCmd.MarkFlagRequired("namespace")
	GetEventSpecificUserV2HandlerCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetEventSpecificUserV2HandlerCmd.MarkFlagRequired("userId")
	GetEventSpecificUserV2HandlerCmd.Flags().StringP("endDate", "", "", "End date")
	GetEventSpecificUserV2HandlerCmd.Flags().StringP("eventName", "", "", "Event name")
	GetEventSpecificUserV2HandlerCmd.Flags().Int64P("offset", "", 0, "Offset")
	GetEventSpecificUserV2HandlerCmd.Flags().Int64P("pageSize", "", 1, "Page size")
	GetEventSpecificUserV2HandlerCmd.Flags().StringP("startDate", "", "", "Start date")
}
