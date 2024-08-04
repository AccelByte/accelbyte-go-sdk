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

// AdminTopicChatHistoryCmd represents the AdminTopicChatHistory command
var AdminTopicChatHistoryCmd = &cobra.Command{
	Use:   "adminTopicChatHistory",
	Short: "Admin topic chat history",
	Long:  `Admin topic chat history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		endCreatedAt, _ := cmd.Flags().GetInt64("endCreatedAt")
		keyword, _ := cmd.Flags().GetString("keyword")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		senderUserId, _ := cmd.Flags().GetString("senderUserId")
		shardId, _ := cmd.Flags().GetString("shardId")
		startCreatedAt, _ := cmd.Flags().GetInt64("startCreatedAt")
		unfiltered, _ := cmd.Flags().GetBool("unfiltered")
		input := &topic_.AdminTopicChatHistoryParams{
			Namespace:      namespace,
			Topic:          topic,
			EndCreatedAt:   &endCreatedAt,
			Keyword:        &keyword,
			Limit:          &limit,
			Offset:         &offset,
			Order:          &order,
			SenderUserID:   &senderUserId,
			ShardID:        &shardId,
			StartCreatedAt: &startCreatedAt,
			Unfiltered:     &unfiltered,
		}
		ok, errOK := topicService.AdminTopicChatHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminTopicChatHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminTopicChatHistoryCmd.MarkFlagRequired("namespace")
	AdminTopicChatHistoryCmd.Flags().String("topic", "", "Topic")
	_ = AdminTopicChatHistoryCmd.MarkFlagRequired("topic")
	AdminTopicChatHistoryCmd.Flags().Int64("endCreatedAt", 1, "End created at")
	AdminTopicChatHistoryCmd.Flags().String("keyword", "", "Keyword")
	AdminTopicChatHistoryCmd.Flags().Int64("limit", 20, "Limit")
	AdminTopicChatHistoryCmd.Flags().Int64("offset", 0, "Offset")
	AdminTopicChatHistoryCmd.Flags().String("order", "", "Order")
	AdminTopicChatHistoryCmd.Flags().String("senderUserId", "", "Sender user id")
	AdminTopicChatHistoryCmd.Flags().String("shardId", "", "Shard id")
	AdminTopicChatHistoryCmd.Flags().Int64("startCreatedAt", 0, "Start created at")
	AdminTopicChatHistoryCmd.Flags().Bool("unfiltered", false, "Unfiltered")
}
