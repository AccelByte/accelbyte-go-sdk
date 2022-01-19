// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getNotificationTopicV1AdminCmd represents the getNotificationTopicV1Admin command
var getNotificationTopicV1AdminCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := notificationService.GetNotificationTopicV1Admin(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getNotificationTopicV1AdminCmd)
	getNotificationTopicV1AdminCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getNotificationTopicV1AdminCmd.MarkFlagRequired("namespace")
	getNotificationTopicV1AdminCmd.Flags().StringP("topicName", "t", " ", "Topic name")
	_ = getNotificationTopicV1AdminCmd.MarkFlagRequired("topicName")
}
