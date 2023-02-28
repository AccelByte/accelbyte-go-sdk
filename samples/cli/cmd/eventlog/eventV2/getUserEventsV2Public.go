// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eventV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserEventsV2PublicCmd represents the GetUserEventsV2Public command
var GetUserEventsV2PublicCmd = &cobra.Command{
	Use:   "getUserEventsV2Public",
	Short: "Get user events V2 public",
	Long:  `Get user events V2 public`,
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
		input := &event_v2.GetUserEventsV2PublicParams{
			Namespace: namespace,
			UserID:    userId,
			EndDate:   &endDate,
			EventName: &eventName,
			Offset:    &offset,
			PageSize:  &pageSize,
			StartDate: &startDate,
		}
		ok, errOK := eventV2Service.GetUserEventsV2PublicShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserEventsV2PublicCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserEventsV2PublicCmd.MarkFlagRequired("namespace")
	GetUserEventsV2PublicCmd.Flags().String("userId", "", "User id")
	_ = GetUserEventsV2PublicCmd.MarkFlagRequired("userId")
	GetUserEventsV2PublicCmd.Flags().String("endDate", "", "End date")
	GetUserEventsV2PublicCmd.Flags().String("eventName", "", "Event name")
	GetUserEventsV2PublicCmd.Flags().Int64("offset", 0, "Offset")
	GetUserEventsV2PublicCmd.Flags().Int64("pageSize", 1, "Page size")
	GetUserEventsV2PublicCmd.Flags().String("startDate", "", "Start date")
}
