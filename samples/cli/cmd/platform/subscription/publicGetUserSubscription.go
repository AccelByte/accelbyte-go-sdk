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

// publicGetUserSubscriptionCmd represents the publicGetUserSubscription command
var publicGetUserSubscriptionCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(publicGetUserSubscriptionCmd)
	publicGetUserSubscriptionCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetUserSubscriptionCmd.MarkFlagRequired("namespace")
	publicGetUserSubscriptionCmd.Flags().StringP("subscriptionId", "s", " ", "Subscription id")
	_ = publicGetUserSubscriptionCmd.MarkFlagRequired("subscriptionId")
	publicGetUserSubscriptionCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicGetUserSubscriptionCmd.MarkFlagRequired("userId")
}
