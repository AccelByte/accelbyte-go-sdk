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

// getUserSubscriptionCmd represents the getUserSubscription command
var getUserSubscriptionCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.GetUserSubscription(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserSubscriptionCmd)
	getUserSubscriptionCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserSubscriptionCmd.MarkFlagRequired("namespace")
	getUserSubscriptionCmd.Flags().StringP("subscriptionId", "s", " ", "Subscription id")
	_ = getUserSubscriptionCmd.MarkFlagRequired("subscriptionId")
	getUserSubscriptionCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserSubscriptionCmd.MarkFlagRequired("userId")
}