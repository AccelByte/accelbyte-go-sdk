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

// ListTopicsHandlerCmd represents the ListTopicsHandler command
var ListTopicsHandlerCmd = &cobra.Command{
	Use:   "listTopicsHandler",
	Short: "List topics handler",
	Long:  `List topics handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		asyncMessagingService := &csm.AsyncMessagingService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		fuzzyTopicName, _ := cmd.Flags().GetString("fuzzyTopicName")
		isSubscribedByAppName, _ := cmd.Flags().GetString("isSubscribedByAppName")
		isUnsubscribedByAppName, _ := cmd.Flags().GetString("isUnsubscribedByAppName")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &async_messaging.ListTopicsHandlerParams{
			Namespace:               namespace,
			FuzzyTopicName:          &fuzzyTopicName,
			IsSubscribedByAppName:   &isSubscribedByAppName,
			IsUnsubscribedByAppName: &isUnsubscribedByAppName,
			Limit:                   &limit,
			Offset:                  &offset,
		}
		ok, errOK := asyncMessagingService.ListTopicsHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListTopicsHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = ListTopicsHandlerCmd.MarkFlagRequired("namespace")
	ListTopicsHandlerCmd.Flags().String("fuzzyTopicName", "", "Fuzzy topic name")
	ListTopicsHandlerCmd.Flags().String("isSubscribedByAppName", "", "Is subscribed by app name")
	ListTopicsHandlerCmd.Flags().String("isUnsubscribedByAppName", "", "Is unsubscribed by app name")
	ListTopicsHandlerCmd.Flags().Int64("limit", 20, "Limit")
	ListTopicsHandlerCmd.Flags().Int64("offset", 0, "Offset")
}
