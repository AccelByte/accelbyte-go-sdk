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

// AdminAddTopicMemberCmd represents the AdminAddTopicMember command
var AdminAddTopicMemberCmd = &cobra.Command{
	Use:   "adminAddTopicMember",
	Short: "Admin add topic member",
	Long:  `Admin add topic member`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.APIAddMemberParams
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		userId, _ := cmd.Flags().GetString("userId")
		input := &topic_.AdminAddTopicMemberParams{
			Body:      body,
			Namespace: namespace,
			Topic:     topic,
			UserID:    userId,
		}
		ok, errOK := topicService.AdminAddTopicMemberShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminAddTopicMemberCmd.Flags().String("body", "", "Body")
	_ = AdminAddTopicMemberCmd.MarkFlagRequired("body")
	AdminAddTopicMemberCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAddTopicMemberCmd.MarkFlagRequired("namespace")
	AdminAddTopicMemberCmd.Flags().String("topic", "", "Topic")
	_ = AdminAddTopicMemberCmd.MarkFlagRequired("topic")
	AdminAddTopicMemberCmd.Flags().String("userId", "", "User id")
	_ = AdminAddTopicMemberCmd.MarkFlagRequired("userId")
}
