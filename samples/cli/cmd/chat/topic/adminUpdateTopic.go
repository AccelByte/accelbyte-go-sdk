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

// AdminUpdateTopicCmd represents the AdminUpdateTopic command
var AdminUpdateTopicCmd = &cobra.Command{
	Use:   "adminUpdateTopic",
	Short: "Admin update topic",
	Long:  `Admin update topic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.APIUpdateTopicParams
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.AdminUpdateTopicParams{
			Body:      body,
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := topicService.AdminUpdateTopicShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateTopicCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateTopicCmd.MarkFlagRequired("body")
	AdminUpdateTopicCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateTopicCmd.MarkFlagRequired("namespace")
	AdminUpdateTopicCmd.Flags().String("topic", "", "Topic")
	_ = AdminUpdateTopicCmd.MarkFlagRequired("topic")
}
