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

// GetMyNotificationsCmd represents the GetMyNotifications command
var GetMyNotificationsCmd = &cobra.Command{
	Use:   "getMyNotifications",
	Short: "Get my notifications",
	Long:  `Get my notifications`,
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
		input := &notification.GetMyNotificationsParams{
			Namespace: namespace,
			EndTime:   &endTime,
			Limit:     &limit,
			Offset:    &offset,
			StartTime: &startTime,
		}
		ok, errOK := notificationService.GetMyNotificationsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetMyNotificationsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetMyNotificationsCmd.MarkFlagRequired("namespace")
	GetMyNotificationsCmd.Flags().Int64("endTime", 0, "End time")
	GetMyNotificationsCmd.Flags().Int64("limit", 20, "Limit")
	GetMyNotificationsCmd.Flags().Int64("offset", 0, "Offset")
	GetMyNotificationsCmd.Flags().Int64("startTime", 0, "Start time")
}
