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

// PublicGetMutedTopicsCmd represents the PublicGetMutedTopics command
var PublicGetMutedTopicsCmd = &cobra.Command{
	Use:   "publicGetMutedTopics",
	Short: "Public get muted topics",
	Long:  `Public get muted topics`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &topic.PublicGetMutedTopicsParams{
			Namespace: namespace,
		}
		ok, errOK := topicService.PublicGetMutedTopicsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetMutedTopicsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetMutedTopicsCmd.MarkFlagRequired("namespace")
}
