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

// AdminChannelTopicSummaryCmd represents the AdminChannelTopicSummary command
var AdminChannelTopicSummaryCmd = &cobra.Command{
	Use:   "adminChannelTopicSummary",
	Short: "Admin channel topic summary",
	Long:  `Admin channel topic summary`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &topic.AdminChannelTopicSummaryParams{
			Namespace: namespace,
		}
		ok, errOK := topicService.AdminChannelTopicSummaryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminChannelTopicSummaryCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminChannelTopicSummaryCmd.MarkFlagRequired("namespace")
}
