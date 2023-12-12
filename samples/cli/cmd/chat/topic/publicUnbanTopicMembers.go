// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"encoding/json"

	topic_ "github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUnbanTopicMembersCmd represents the PublicUnbanTopicMembers command
var PublicUnbanTopicMembersCmd = &cobra.Command{
	Use:   "publicUnbanTopicMembers",
	Short: "Public unban topic members",
	Long:  `Public unban topic members`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsPublicUnbanTopicMembersRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.PublicUnbanTopicMembersParams{
			Body:      body,
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := topicService.PublicUnbanTopicMembersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicUnbanTopicMembersCmd.Flags().String("body", "", "Body")
	_ = PublicUnbanTopicMembersCmd.MarkFlagRequired("body")
	PublicUnbanTopicMembersCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUnbanTopicMembersCmd.MarkFlagRequired("namespace")
	PublicUnbanTopicMembersCmd.Flags().String("topic", "", "Topic")
	_ = PublicUnbanTopicMembersCmd.MarkFlagRequired("topic")
}
