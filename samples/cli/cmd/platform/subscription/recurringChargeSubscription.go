// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// recurringChargeSubscriptionCmd represents the recurringChargeSubscription command
var recurringChargeSubscriptionCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(recurringChargeSubscriptionCmd)
	recurringChargeSubscriptionCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = recurringChargeSubscriptionCmd.MarkFlagRequired("namespace")
	recurringChargeSubscriptionCmd.Flags().StringP("subscriptionId", "s", " ", "Subscription id")
	_ = recurringChargeSubscriptionCmd.MarkFlagRequired("subscriptionId")
}
