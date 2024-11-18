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

// DeleteSubscriptionAppNotificationV2Cmd represents the DeleteSubscriptionAppNotificationV2 command
var DeleteSubscriptionAppNotificationV2Cmd = &cobra.Command{
	Use:   "deleteSubscriptionAppNotificationV2",
	Short: "Delete subscription app notification V2",
	Long:  `Delete subscription app notification V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationSubscriptionService := &csm.NotificationSubscriptionService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		input := &notification_subscription.DeleteSubscriptionAppNotificationV2Params{
			App:            app,
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
		}
		errOK := notificationSubscriptionService.DeleteSubscriptionAppNotificationV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteSubscriptionAppNotificationV2Cmd.Flags().String("app", "", "App")
	_ = DeleteSubscriptionAppNotificationV2Cmd.MarkFlagRequired("app")
	DeleteSubscriptionAppNotificationV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSubscriptionAppNotificationV2Cmd.MarkFlagRequired("namespace")
	DeleteSubscriptionAppNotificationV2Cmd.Flags().String("subscriptionId", "", "Subscription id")
	_ = DeleteSubscriptionAppNotificationV2Cmd.MarkFlagRequired("subscriptionId")
}
