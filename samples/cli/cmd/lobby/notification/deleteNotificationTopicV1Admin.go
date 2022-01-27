// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package notification

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteNotificationTopicV1AdminCmd represents the deleteNotificationTopicV1Admin command
var deleteNotificationTopicV1AdminCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.DeleteNotificationTopicV1Admin(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteNotificationTopicV1AdminCmd)
	deleteNotificationTopicV1AdminCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteNotificationTopicV1AdminCmd.MarkFlagRequired("namespace")
	deleteNotificationTopicV1AdminCmd.Flags().StringP("topicName", "te", " ", "Topic name")
	_ = deleteNotificationTopicV1AdminCmd.MarkFlagRequired("topicName")
}
