// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.RecurringChargeSubscription(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	RecurringChargeSubscriptionCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RecurringChargeSubscriptionCmd.MarkFlagRequired("namespace")
	RecurringChargeSubscriptionCmd.Flags().StringP("subscriptionId", "", "", "Subscription id")
	_ = RecurringChargeSubscriptionCmd.MarkFlagRequired("subscriptionId")
}
