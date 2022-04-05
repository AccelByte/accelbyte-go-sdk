// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package notification

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteNotificationTopicV1AdminCmd represents the DeleteNotificationTopicV1Admin command
var DeleteNotificationTopicV1AdminCmd = &cobra.Command{
	Use:   "deleteNotificationTopicV1Admin",
	Short: "Delete notification topic V1 admin",
	Long:  `Delete notification topic V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topicName, _ := cmd.Flags().GetString("topicName")
		input := &notification.DeleteNotificationTopicV1AdminParams{
			Namespace: namespace,
			TopicName: topicName,
		}
		errInput := notificationService.DeleteNotificationTopicV1AdminShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteNotificationTopicV1AdminCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteNotificationTopicV1AdminCmd.MarkFlagRequired("namespace")
	DeleteNotificationTopicV1AdminCmd.Flags().StringP("topicName", "", "", "Topic name")
	_ = DeleteNotificationTopicV1AdminCmd.MarkFlagRequired("topicName")
}
