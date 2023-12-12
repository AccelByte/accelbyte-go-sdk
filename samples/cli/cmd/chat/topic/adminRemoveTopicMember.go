// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	topic_ "github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminRemoveTopicMemberCmd represents the AdminRemoveTopicMember command
var AdminRemoveTopicMemberCmd = &cobra.Command{
	Use:   "adminRemoveTopicMember",
	Short: "Admin remove topic member",
	Long:  `Admin remove topic member`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		userId, _ := cmd.Flags().GetString("userId")
		input := &topic_.AdminRemoveTopicMemberParams{
			Namespace: namespace,
			Topic:     topic,
			UserID:    userId,
		}
		ok, errOK := topicService.AdminRemoveTopicMemberShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminRemoveTopicMemberCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminRemoveTopicMemberCmd.MarkFlagRequired("namespace")
	AdminRemoveTopicMemberCmd.Flags().String("topic", "", "Topic")
	_ = AdminRemoveTopicMemberCmd.MarkFlagRequired("topic")
	AdminRemoveTopicMemberCmd.Flags().String("userId", "", "User id")
	_ = AdminRemoveTopicMemberCmd.MarkFlagRequired("userId")
}
