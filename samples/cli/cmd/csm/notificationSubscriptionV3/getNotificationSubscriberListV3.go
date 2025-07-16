// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notificationSubscriptionV3

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/notification_subscription_v3"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetNotificationSubscriberListV3Cmd represents the GetNotificationSubscriberListV3 command
var GetNotificationSubscriberListV3Cmd = &cobra.Command{
	Use:   "getNotificationSubscriberListV3",
	Short: "Get notification subscriber list V3",
	Long:  `Get notification subscriber list V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationSubscriptionV3Service := &csm.NotificationSubscriptionV3Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		notificationType, _ := cmd.Flags().GetString("notificationType")
		input := &notification_subscription_v3.GetNotificationSubscriberListV3Params{
			App:              app,
			Namespace:        namespace,
			NotificationType: notificationType,
		}
		ok, errOK := notificationSubscriptionV3Service.GetNotificationSubscriberListV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetNotificationSubscriberListV3Cmd.Flags().String("app", "", "App")
	_ = GetNotificationSubscriberListV3Cmd.MarkFlagRequired("app")
	GetNotificationSubscriberListV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetNotificationSubscriberListV3Cmd.MarkFlagRequired("namespace")
	GetNotificationSubscriberListV3Cmd.Flags().String("notificationType", "", "Notification type")
	_ = GetNotificationSubscriberListV3Cmd.MarkFlagRequired("notificationType")
}
