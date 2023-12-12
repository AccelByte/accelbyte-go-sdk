// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminQueryTopicLogCmd represents the AdminQueryTopicLog command
var AdminQueryTopicLogCmd = &cobra.Command{
	Use:   "adminQueryTopicLog",
	Short: "Admin query topic log",
	Long:  `Admin query topic log`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endCreatedAt, _ := cmd.Flags().GetInt64("endCreatedAt")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		senderUserId, _ := cmd.Flags().GetString("senderUserId")
		startCreatedAt, _ := cmd.Flags().GetInt64("startCreatedAt")
		topicId, _ := cmd.Flags().GetString("topicId")
		topicIdsString := cmd.Flag("topicIds").Value.String()
		var topicIds []string
		errTopicIds := json.Unmarshal([]byte(topicIdsString), &topicIds)
		if errTopicIds != nil {
			return errTopicIds
		}
		userId, _ := cmd.Flags().GetString("userId")
		input := &topic.AdminQueryTopicLogParams{
			Namespace:      namespace,
			EndCreatedAt:   &endCreatedAt,
			Limit:          &limit,
			Offset:         &offset,
			SenderUserID:   &senderUserId,
			StartCreatedAt: &startCreatedAt,
			TopicID:        &topicId,
			TopicIds:       topicIds,
			UserID:         &userId,
		}
		ok, errOK := topicService.AdminQueryTopicLogShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQueryTopicLogCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryTopicLogCmd.MarkFlagRequired("namespace")
	AdminQueryTopicLogCmd.Flags().Int64("endCreatedAt", 1, "End created at")
	AdminQueryTopicLogCmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryTopicLogCmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryTopicLogCmd.Flags().String("senderUserId", "", "Sender user id")
	AdminQueryTopicLogCmd.Flags().Int64("startCreatedAt", 0, "Start created at")
	AdminQueryTopicLogCmd.Flags().String("topicId", "", "Topic id")
	AdminQueryTopicLogCmd.Flags().String("topicIds", "", "Topic ids")
	AdminQueryTopicLogCmd.Flags().String("userId", "", "User id")
}
