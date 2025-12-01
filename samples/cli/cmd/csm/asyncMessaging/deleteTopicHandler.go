// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package asyncMessaging

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/async_messaging"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteTopicHandlerCmd represents the DeleteTopicHandler command
var DeleteTopicHandlerCmd = &cobra.Command{
	Use:   "deleteTopicHandler",
	Short: "Delete topic handler",
	Long:  `Delete topic handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		asyncMessagingService := &csm.AsyncMessagingService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topicName, _ := cmd.Flags().GetString("topicName")
		input := &async_messaging.DeleteTopicHandlerParams{
			Namespace: namespace,
			TopicName: topicName,
		}
		ok, errOK := asyncMessagingService.DeleteTopicHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DeleteTopicHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteTopicHandlerCmd.MarkFlagRequired("namespace")
	DeleteTopicHandlerCmd.Flags().String("topicName", "", "Topic name")
	_ = DeleteTopicHandlerCmd.MarkFlagRequired("topicName")
}
