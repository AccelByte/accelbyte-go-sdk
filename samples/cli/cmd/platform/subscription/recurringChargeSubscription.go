// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package subscription

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RecurringChargeSubscriptionCmd represents the RecurringChargeSubscription command
var RecurringChargeSubscriptionCmd = &cobra.Command{
	Use:   "recurringChargeSubscription",
	Short: "Recurring charge subscription",
	Long:  `Recurring charge subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		input := &subscription.RecurringChargeSubscriptionParams{
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
		}
		ok, errOK := subscriptionService.RecurringChargeSubscriptionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RecurringChargeSubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = RecurringChargeSubscriptionCmd.MarkFlagRequired("namespace")
	RecurringChargeSubscriptionCmd.Flags().String("subscriptionId", "", "Subscription id")
	_ = RecurringChargeSubscriptionCmd.MarkFlagRequired("subscriptionId")
}
