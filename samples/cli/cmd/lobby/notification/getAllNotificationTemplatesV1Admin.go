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

// GetAllNotificationTemplatesV1AdminCmd represents the GetAllNotificationTemplatesV1Admin command
var GetAllNotificationTemplatesV1AdminCmd = &cobra.Command{
	Use:   "getAllNotificationTemplatesV1Admin",
	Short: "Get all notification templates V1 admin",
	Long:  `Get all notification templates V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification.GetAllNotificationTemplatesV1AdminParams{
			Namespace: namespace,
		}
		ok, errOK := notificationService.GetAllNotificationTemplatesV1AdminShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAllNotificationTemplatesV1AdminCmd.Flags().String("namespace", "", "Namespace")
	_ = GetAllNotificationTemplatesV1AdminCmd.MarkFlagRequired("namespace")
}
