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

// UnsubscribeV2HandlerCmd represents the UnsubscribeV2Handler command
var UnsubscribeV2HandlerCmd = &cobra.Command{
	Use:   "unsubscribeV2Handler",
	Short: "Unsubscribe V2 handler",
	Long:  `Unsubscribe V2 handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationSubscriptionService := &csm.NotificationSubscriptionService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification_subscription.UnsubscribeV2HandlerParams{
			App:       app,
			Namespace: namespace,
		}
		errOK := notificationSubscriptionService.UnsubscribeV2HandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UnsubscribeV2HandlerCmd.Flags().String("app", "", "App")
	_ = UnsubscribeV2HandlerCmd.MarkFlagRequired("app")
	UnsubscribeV2HandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = UnsubscribeV2HandlerCmd.MarkFlagRequired("namespace")
}
