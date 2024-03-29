// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateNotificationTopicV1AdminCmd represents the UpdateNotificationTopicV1Admin command
var UpdateNotificationTopicV1AdminCmd = &cobra.Command{
	Use:   "updateNotificationTopicV1Admin",
	Short: "Update notification topic V1 admin",
	Long:  `Update notification topic V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelUpdateTopicRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topicName, _ := cmd.Flags().GetString("topicName")
		input := &notification.UpdateNotificationTopicV1AdminParams{
			Body:      body,
			Namespace: namespace,
			TopicName: topicName,
		}
		errNoContent := notificationService.UpdateNotificationTopicV1AdminShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UpdateNotificationTopicV1AdminCmd.Flags().String("body", "", "Body")
	_ = UpdateNotificationTopicV1AdminCmd.MarkFlagRequired("body")
	UpdateNotificationTopicV1AdminCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateNotificationTopicV1AdminCmd.MarkFlagRequired("namespace")
	UpdateNotificationTopicV1AdminCmd.Flags().String("topicName", "", "Topic name")
	_ = UpdateNotificationTopicV1AdminCmd.MarkFlagRequired("topicName")
}
