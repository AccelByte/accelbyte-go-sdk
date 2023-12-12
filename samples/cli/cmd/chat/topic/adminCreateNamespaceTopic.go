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

// AdminCreateNamespaceTopicCmd represents the AdminCreateNamespaceTopic command
var AdminCreateNamespaceTopicCmd = &cobra.Command{
	Use:   "adminCreateNamespaceTopic",
	Short: "Admin create namespace topic",
	Long:  `Admin create namespace topic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.APICreateNamespaceTopicParams
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &topic.AdminCreateNamespaceTopicParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := topicService.AdminCreateNamespaceTopicShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminCreateNamespaceTopicCmd.Flags().String("body", "", "Body")
	_ = AdminCreateNamespaceTopicCmd.MarkFlagRequired("body")
	AdminCreateNamespaceTopicCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateNamespaceTopicCmd.MarkFlagRequired("namespace")
}
