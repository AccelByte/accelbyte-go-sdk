// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminFilterChatMessageCmd represents the AdminFilterChatMessage command
var AdminFilterChatMessageCmd = &cobra.Command{
	Use:   "adminFilterChatMessage",
	Short: "Admin filter chat message",
	Long:  `Admin filter chat message`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsMessageRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		detail, _ := cmd.Flags().GetBool("detail")
		input := &topic.AdminFilterChatMessageParams{
			Body:      body,
			Namespace: namespace,
			Detail:    &detail,
		}
		ok, errOK := topicService.AdminFilterChatMessageShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminFilterChatMessageCmd.Flags().String("body", "", "Body")
	_ = AdminFilterChatMessageCmd.MarkFlagRequired("body")
	AdminFilterChatMessageCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminFilterChatMessageCmd.MarkFlagRequired("namespace")
	AdminFilterChatMessageCmd.Flags().Bool("detail", false, "Detail")
}
