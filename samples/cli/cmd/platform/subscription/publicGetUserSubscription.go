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

// PublicGetUserSubscriptionCmd represents the PublicGetUserSubscription command
var PublicGetUserSubscriptionCmd = &cobra.Command{
	Use:   "publicGetUserSubscription",
	Short: "Public get user subscription",
	Long:  `Public get user subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &subscription.PublicGetUserSubscriptionParams{
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.PublicGetUserSubscription(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicGetUserSubscriptionCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = PublicGetUserSubscriptionCmd.MarkFlagRequired("namespace")
	PublicGetUserSubscriptionCmd.Flags().StringP("subscriptionId", "", " ", "Subscription id")
	_ = PublicGetUserSubscriptionCmd.MarkFlagRequired("subscriptionId")
	PublicGetUserSubscriptionCmd.Flags().StringP("userId", "", " ", "User id")
	_ = PublicGetUserSubscriptionCmd.MarkFlagRequired("userId")
}
