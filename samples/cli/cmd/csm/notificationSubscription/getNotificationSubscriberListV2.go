// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notificationSubscription

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/notification_subscription"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetNotificationSubscriberListV2Cmd represents the GetNotificationSubscriberListV2 command
var GetNotificationSubscriberListV2Cmd = &cobra.Command{
	Use:   "getNotificationSubscriberListV2",
	Short: "Get notification subscriber list V2",
	Long:  `Get notification subscriber list V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationSubscriptionService := &csm.NotificationSubscriptionService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		notificationType, _ := cmd.Flags().GetString("notificationType")
		input := &notification_subscription.GetNotificationSubscriberListV2Params{
			App:              app,
			Namespace:        namespace,
			NotificationType: notificationType,
		}
		ok, errOK := notificationSubscriptionService.GetNotificationSubscriberListV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetNotificationSubscriberListV2Cmd.Flags().String("app", "", "App")
	_ = GetNotificationSubscriberListV2Cmd.MarkFlagRequired("app")
	GetNotificationSubscriberListV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetNotificationSubscriberListV2Cmd.MarkFlagRequired("namespace")
	GetNotificationSubscriberListV2Cmd.Flags().String("notificationType", "", "Notification type")
	_ = GetNotificationSubscriberListV2Cmd.MarkFlagRequired("notificationType")
}
