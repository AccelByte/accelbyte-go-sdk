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

// PublicBanTopicMembersCmd represents the PublicBanTopicMembers command
var PublicBanTopicMembersCmd = &cobra.Command{
	Use:   "publicBanTopicMembers",
	Short: "Public ban topic members",
	Long:  `Public ban topic members`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsPublicBanTopicMembersRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.PublicBanTopicMembersParams{
			Body:      body,
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := topicService.PublicBanTopicMembersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicBanTopicMembersCmd.Flags().String("body", "", "Body")
	_ = PublicBanTopicMembersCmd.MarkFlagRequired("body")
	PublicBanTopicMembersCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicBanTopicMembersCmd.MarkFlagRequired("namespace")
	PublicBanTopicMembersCmd.Flags().String("topic", "", "Topic")
	_ = PublicBanTopicMembersCmd.MarkFlagRequired("topic")
}
