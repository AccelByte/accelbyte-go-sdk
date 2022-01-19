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

// getTopicByTopicNameCmd represents the getTopicByTopicName command
var getTopicByTopicNameCmd = &cobra.Command{
	Use:   "getTopicByTopicName",
	Short: "Get topic by topic name",
	Long:  `Get topic by topic name`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &notification.GetTopicByTopicNameParams{
			Namespace: namespace,
			Topic:     topic,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := notificationService.GetTopicByTopicName(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getTopicByTopicNameCmd)
	getTopicByTopicNameCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getTopicByTopicNameCmd.MarkFlagRequired("namespace")
	getTopicByTopicNameCmd.Flags().StringP("topic", "t", " ", "Topic")
	_ = getTopicByTopicNameCmd.MarkFlagRequired("topic")
}
