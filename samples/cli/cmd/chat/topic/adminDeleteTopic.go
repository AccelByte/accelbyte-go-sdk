// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	topic_ "github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteTopicCmd represents the AdminDeleteTopic command
var AdminDeleteTopicCmd = &cobra.Command{
	Use:   "adminDeleteTopic",
	Short: "Admin delete topic",
	Long:  `Admin delete topic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.AdminDeleteTopicParams{
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := topicService.AdminDeleteTopicShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminDeleteTopicCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteTopicCmd.MarkFlagRequired("namespace")
	AdminDeleteTopicCmd.Flags().String("topic", "", "Topic")
	_ = AdminDeleteTopicCmd.MarkFlagRequired("topic")
}
