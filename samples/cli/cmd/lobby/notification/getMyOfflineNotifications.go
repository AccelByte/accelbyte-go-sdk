// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetMyOfflineNotificationsCmd represents the GetMyOfflineNotifications command
var GetMyOfflineNotificationsCmd = &cobra.Command{
	Use:   "getMyOfflineNotifications",
	Short: "Get my offline notifications",
	Long:  `Get my offline notifications`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endTime, _ := cmd.Flags().GetInt64("endTime")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		startTime, _ := cmd.Flags().GetInt64("startTime")
		input := &notification.GetMyOfflineNotificationsParams{
			Namespace: namespace,
			EndTime:   &endTime,
			Limit:     &limit,
			Offset:    &offset,
			StartTime: &startTime,
		}
		ok, errOK := notificationService.GetMyOfflineNotificationsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetMyOfflineNotificationsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetMyOfflineNotificationsCmd.MarkFlagRequired("namespace")
	GetMyOfflineNotificationsCmd.Flags().Int64("endTime", 0, "End time")
	GetMyOfflineNotificationsCmd.Flags().Int64("limit", 20, "Limit")
	GetMyOfflineNotificationsCmd.Flags().Int64("offset", 0, "Offset")
	GetMyOfflineNotificationsCmd.Flags().Int64("startTime", 0, "Start time")
}
