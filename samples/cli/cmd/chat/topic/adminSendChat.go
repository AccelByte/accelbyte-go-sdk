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

// AdminSendChatCmd represents the AdminSendChat command
var AdminSendChatCmd = &cobra.Command{
	Use:   "adminSendChat",
	Short: "Admin send chat",
	Long:  `Admin send chat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.APISendChatParams
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.AdminSendChatParams{
			Body:      body,
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := topicService.AdminSendChatShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminSendChatCmd.Flags().String("body", "", "Body")
	_ = AdminSendChatCmd.MarkFlagRequired("body")
	AdminSendChatCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSendChatCmd.MarkFlagRequired("namespace")
	AdminSendChatCmd.Flags().String("topic", "", "Topic")
	_ = AdminSendChatCmd.MarkFlagRequired("topic")
}
