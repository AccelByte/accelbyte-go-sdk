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

// GetNotificationTopicV1AdminCmd represents the GetNotificationTopicV1Admin command
var GetNotificationTopicV1AdminCmd = &cobra.Command{
	Use:   "getNotificationTopicV1Admin",
	Short: "Get notification topic V1 admin",
	Long:  `Get notification topic V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topicName, _ := cmd.Flags().GetString("topicName")
		input := &notification.GetNotificationTopicV1AdminParams{
			Namespace: namespace,
			TopicName: topicName,
		}
		ok, err := notificationService.GetNotificationTopicV1AdminShort(input)
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
	GetNotificationTopicV1AdminCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetNotificationTopicV1AdminCmd.MarkFlagRequired("namespace")
	GetNotificationTopicV1AdminCmd.Flags().StringP("topicName", "", "", "Topic name")
	_ = GetNotificationTopicV1AdminCmd.MarkFlagRequired("topicName")
}
