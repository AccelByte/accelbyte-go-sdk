// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"encoding/json"

	topic_ "github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminChatHistoryCmd represents the AdminChatHistory command
var AdminChatHistoryCmd = &cobra.Command{
	Use:   "adminChatHistory",
	Short: "Admin chat history",
	Long:  `Admin chat history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		chatIdString := cmd.Flag("chatId").Value.String()
		var chatId []string
		errChatId := json.Unmarshal([]byte(chatIdString), &chatId)
		if errChatId != nil {
			return errChatId
		}
		endCreatedAt, _ := cmd.Flags().GetInt64("endCreatedAt")
		keyword, _ := cmd.Flags().GetString("keyword")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		senderUserId, _ := cmd.Flags().GetString("senderUserId")
		shardId, _ := cmd.Flags().GetString("shardId")
		startCreatedAt, _ := cmd.Flags().GetInt64("startCreatedAt")
		topicString := cmd.Flag("topic").Value.String()
		var topic []string
		errTopic := json.Unmarshal([]byte(topicString), &topic)
		if errTopic != nil {
			return errTopic
		}
		input := &topic_.AdminChatHistoryParams{
			Namespace:      namespace,
			ChatID:         chatId,
			EndCreatedAt:   &endCreatedAt,
			Keyword:        &keyword,
			Limit:          &limit,
			Offset:         &offset,
			Order:          &order,
			SenderUserID:   &senderUserId,
			ShardID:        &shardId,
			StartCreatedAt: &startCreatedAt,
			Topic:          topic,
		}
		ok, errOK := topicService.AdminChatHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminChatHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminChatHistoryCmd.MarkFlagRequired("namespace")
	AdminChatHistoryCmd.Flags().String("chatId", "", "Chat id")
	AdminChatHistoryCmd.Flags().Int64("endCreatedAt", 1, "End created at")
	AdminChatHistoryCmd.Flags().String("keyword", "", "Keyword")
	AdminChatHistoryCmd.Flags().Int64("limit", 20, "Limit")
	AdminChatHistoryCmd.Flags().Int64("offset", 0, "Offset")
	AdminChatHistoryCmd.Flags().String("order", "", "Order")
	AdminChatHistoryCmd.Flags().String("senderUserId", "", "Sender user id")
	AdminChatHistoryCmd.Flags().String("shardId", "", "Shard id")
	AdminChatHistoryCmd.Flags().Int64("startCreatedAt", 0, "Start created at")
	AdminChatHistoryCmd.Flags().String("topic", "", "Topic")
}
