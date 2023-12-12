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

// AdminTopicListCmd represents the AdminTopicList command
var AdminTopicListCmd = &cobra.Command{
	Use:   "adminTopicList",
	Short: "Admin topic list",
	Long:  `Admin topic list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		topicType, _ := cmd.Flags().GetString("topicType")
		input := &topic.AdminTopicListParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			TopicType: &topicType,
		}
		ok, errOK := topicService.AdminTopicListShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminTopicListCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminTopicListCmd.MarkFlagRequired("namespace")
	AdminTopicListCmd.Flags().Int64("limit", 20, "Limit")
	AdminTopicListCmd.Flags().Int64("offset", 0, "Offset")
	AdminTopicListCmd.Flags().String("topicType", "", "Topic type")
}
