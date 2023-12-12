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

// PublicTopicListCmd represents the PublicTopicList command
var PublicTopicListCmd = &cobra.Command{
	Use:   "publicTopicList",
	Short: "Public topic list",
	Long:  `Public topic list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		topicType, _ := cmd.Flags().GetString("topicType")
		input := &topic.PublicTopicListParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			TopicType: &topicType,
		}
		ok, errOK := topicService.PublicTopicListShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicTopicListCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicTopicListCmd.MarkFlagRequired("namespace")
	PublicTopicListCmd.Flags().Int64("limit", 20, "Limit")
	PublicTopicListCmd.Flags().Int64("offset", 0, "Offset")
	PublicTopicListCmd.Flags().String("topicType", "", "Topic type")
}
