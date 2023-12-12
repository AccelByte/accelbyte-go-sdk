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

// AdminTopicShardsCmd represents the AdminTopicShards command
var AdminTopicShardsCmd = &cobra.Command{
	Use:   "adminTopicShards",
	Short: "Admin topic shards",
	Long:  `Admin topic shards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.AdminTopicShardsParams{
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := topicService.AdminTopicShardsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminTopicShardsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminTopicShardsCmd.MarkFlagRequired("namespace")
	AdminTopicShardsCmd.Flags().String("topic", "", "Topic")
	_ = AdminTopicShardsCmd.MarkFlagRequired("topic")
}
