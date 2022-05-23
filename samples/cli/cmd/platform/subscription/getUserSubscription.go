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

// GetUserSubscriptionCmd represents the GetUserSubscription command
var GetUserSubscriptionCmd = &cobra.Command{
	Use:   "getUserSubscription",
	Short: "Get user subscription",
	Long:  `Get user subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &subscription.GetUserSubscriptionParams{
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
		}
		ok, err := subscriptionService.GetUserSubscriptionShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetUserSubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserSubscriptionCmd.MarkFlagRequired("namespace")
	GetUserSubscriptionCmd.Flags().String("subscriptionId", "", "Subscription id")
	_ = GetUserSubscriptionCmd.MarkFlagRequired("subscriptionId")
	GetUserSubscriptionCmd.Flags().String("userId", "", "User id")
	_ = GetUserSubscriptionCmd.MarkFlagRequired("userId")
}
