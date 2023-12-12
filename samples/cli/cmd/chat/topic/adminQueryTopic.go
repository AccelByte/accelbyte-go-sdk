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

// AdminQueryTopicCmd represents the AdminQueryTopic command
var AdminQueryTopicCmd = &cobra.Command{
	Use:   "adminQueryTopic",
	Short: "Admin query topic",
	Long:  `Admin query topic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		includeMembers, _ := cmd.Flags().GetBool("includeMembers")
		includePastMembers, _ := cmd.Flags().GetBool("includePastMembers")
		includePastTopics, _ := cmd.Flags().GetBool("includePastTopics")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		topicString := cmd.Flag("topic").Value.String()
		var topic []string
		errTopic := json.Unmarshal([]byte(topicString), &topic)
		if errTopic != nil {
			return errTopic
		}
		topicSubType, _ := cmd.Flags().GetString("topicSubType")
		topicType, _ := cmd.Flags().GetString("topicType")
		userId, _ := cmd.Flags().GetString("userId")
		input := &topic_.AdminQueryTopicParams{
			Namespace:          namespace,
			IncludeMembers:     &includeMembers,
			IncludePastMembers: &includePastMembers,
			IncludePastTopics:  &includePastTopics,
			Limit:              &limit,
			Offset:             &offset,
			Topic:              topic,
			TopicSubType:       &topicSubType,
			TopicType:          &topicType,
			UserID:             &userId,
		}
		ok, errOK := topicService.AdminQueryTopicShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQueryTopicCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryTopicCmd.MarkFlagRequired("namespace")
	AdminQueryTopicCmd.Flags().Bool("includeMembers", false, "Include members")
	AdminQueryTopicCmd.Flags().Bool("includePastMembers", false, "Include past members")
	AdminQueryTopicCmd.Flags().Bool("includePastTopics", false, "Include past topics")
	AdminQueryTopicCmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryTopicCmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryTopicCmd.Flags().String("topic", "", "Topic")
	AdminQueryTopicCmd.Flags().String("topicSubType", "", "Topic sub type")
	AdminQueryTopicCmd.Flags().String("topicType", "", "Topic type")
	AdminQueryTopicCmd.Flags().String("userId", "", "User id")
}
