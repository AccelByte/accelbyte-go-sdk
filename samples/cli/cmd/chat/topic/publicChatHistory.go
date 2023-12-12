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

// PublicChatHistoryCmd represents the PublicChatHistory command
var PublicChatHistoryCmd = &cobra.Command{
	Use:   "publicChatHistory",
	Short: "Public chat history",
	Long:  `Public chat history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		limit, _ := cmd.Flags().GetInt64("limit")
		order, _ := cmd.Flags().GetString("order")
		startCreatedAt, _ := cmd.Flags().GetInt64("startCreatedAt")
		input := &topic_.PublicChatHistoryParams{
			Namespace:      namespace,
			Topic:          topic,
			Limit:          &limit,
			Order:          &order,
			StartCreatedAt: &startCreatedAt,
		}
		ok, errOK := topicService.PublicChatHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicChatHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicChatHistoryCmd.MarkFlagRequired("namespace")
	PublicChatHistoryCmd.Flags().String("topic", "", "Topic")
	_ = PublicChatHistoryCmd.MarkFlagRequired("topic")
	PublicChatHistoryCmd.Flags().Int64("limit", 20, "Limit")
	PublicChatHistoryCmd.Flags().String("order", "", "Order")
	PublicChatHistoryCmd.Flags().Int64("startCreatedAt", 0, "Start created at")
}
