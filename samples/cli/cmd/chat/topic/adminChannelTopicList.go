// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminChannelTopicListCmd represents the AdminChannelTopicList command
var AdminChannelTopicListCmd = &cobra.Command{
	Use:   "adminChannelTopicList",
	Short: "Admin channel topic list",
	Long:  `Admin channel topic list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		topicName, _ := cmd.Flags().GetString("topicName")
		input := &topic.AdminChannelTopicListParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			TopicName: &topicName,
		}
		ok, errOK := topicService.AdminChannelTopicListShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminChannelTopicListCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminChannelTopicListCmd.MarkFlagRequired("namespace")
	AdminChannelTopicListCmd.Flags().Int64("limit", 20, "Limit")
	AdminChannelTopicListCmd.Flags().Int64("offset", 0, "Offset")
	AdminChannelTopicListCmd.Flags().String("topicName", "", "Topic name")
}
