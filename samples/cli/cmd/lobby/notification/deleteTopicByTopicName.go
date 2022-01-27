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

// deleteTopicByTopicNameCmd represents the deleteTopicByTopicName command
var deleteTopicByTopicNameCmd = &cobra.Command{
	Use:   "deleteTopicByTopicName",
	Short: "Delete topic by topic name",
	Long:  `Delete topic by topic name`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &notification.DeleteTopicByTopicNameParams{
			Namespace: namespace,
			Topic:     topic,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.DeleteTopicByTopicName(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteTopicByTopicNameCmd)
	deleteTopicByTopicNameCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteTopicByTopicNameCmd.MarkFlagRequired("namespace")
	deleteTopicByTopicNameCmd.Flags().StringP("topic", "tc", " ", "Topic")
	_ = deleteTopicByTopicNameCmd.MarkFlagRequired("topic")
}
