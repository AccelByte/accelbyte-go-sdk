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

// GetSubscriptionV2HandlerCmd represents the GetSubscriptionV2Handler command
var GetSubscriptionV2HandlerCmd = &cobra.Command{
	Use:   "getSubscriptionV2Handler",
	Short: "Get subscription V2 handler",
	Long:  `Get subscription V2 handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationSubscriptionService := &csm.NotificationSubscriptionService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification_subscription.GetSubscriptionV2HandlerParams{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := notificationSubscriptionService.GetSubscriptionV2HandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetSubscriptionV2HandlerCmd.Flags().String("app", "", "App")
	_ = GetSubscriptionV2HandlerCmd.MarkFlagRequired("app")
	GetSubscriptionV2HandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = GetSubscriptionV2HandlerCmd.MarkFlagRequired("namespace")
}
