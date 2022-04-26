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

// GetAllNotificationTopicsV1AdminCmd represents the GetAllNotificationTopicsV1Admin command
var GetAllNotificationTopicsV1AdminCmd = &cobra.Command{
	Use:   "getAllNotificationTopicsV1Admin",
	Short: "Get all notification topics V1 admin",
	Long:  `Get all notification topics V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &notification.GetAllNotificationTopicsV1AdminParams{
			Namespace: namespace,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		ok, err := notificationService.GetAllNotificationTopicsV1AdminShort(input)
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
	GetAllNotificationTopicsV1AdminCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetAllNotificationTopicsV1AdminCmd.MarkFlagRequired("namespace")
	GetAllNotificationTopicsV1AdminCmd.Flags().StringP("after", "", "0", "After")
	GetAllNotificationTopicsV1AdminCmd.Flags().StringP("before", "", "0", "Before")
	GetAllNotificationTopicsV1AdminCmd.Flags().Int64P("limit", "", 20, "Limit")
}
