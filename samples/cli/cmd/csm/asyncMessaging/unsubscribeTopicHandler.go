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

// UnsubscribeTopicHandlerCmd represents the UnsubscribeTopicHandler command
var UnsubscribeTopicHandlerCmd = &cobra.Command{
	Use:   "unsubscribeTopicHandler",
	Short: "Unsubscribe topic handler",
	Long:  `Unsubscribe topic handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		asyncMessagingService := &csm.AsyncMessagingService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		topicName, _ := cmd.Flags().GetString("topicName")
		input := &async_messaging.UnsubscribeTopicHandlerParams{
			App:       app,
			Namespace: namespace,
			TopicName: topicName,
		}
		ok, errOK := asyncMessagingService.UnsubscribeTopicHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UnsubscribeTopicHandlerCmd.Flags().String("app", "", "App")
	_ = UnsubscribeTopicHandlerCmd.MarkFlagRequired("app")
	UnsubscribeTopicHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = UnsubscribeTopicHandlerCmd.MarkFlagRequired("namespace")
	UnsubscribeTopicHandlerCmd.Flags().String("topicName", "", "Topic name")
	_ = UnsubscribeTopicHandlerCmd.MarkFlagRequired("topicName")
}
