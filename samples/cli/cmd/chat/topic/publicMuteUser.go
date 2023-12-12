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

// PublicMuteUserCmd represents the PublicMuteUser command
var PublicMuteUserCmd = &cobra.Command{
	Use:   "publicMuteUser",
	Short: "Public mute user",
	Long:  `Public mute user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.APIMuteUserRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.PublicMuteUserParams{
			Body:      body,
			Namespace: namespace,
			Topic:     topic,
		}
		errNoContent := topicService.PublicMuteUserShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicMuteUserCmd.Flags().String("body", "", "Body")
	_ = PublicMuteUserCmd.MarkFlagRequired("body")
	PublicMuteUserCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicMuteUserCmd.MarkFlagRequired("namespace")
	PublicMuteUserCmd.Flags().String("topic", "", "Topic")
	_ = PublicMuteUserCmd.MarkFlagRequired("topic")
}
