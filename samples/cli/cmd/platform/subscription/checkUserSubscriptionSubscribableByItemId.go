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

// checkUserSubscriptionSubscribableByItemIdCmd represents the checkUserSubscriptionSubscribableByItemId command
var checkUserSubscriptionSubscribableByItemIdCmd = &cobra.Command{
	Use:   "checkUserSubscriptionSubscribableByItemId",
	Short: "Check user subscription subscribable by item id",
	Long:  `Check user subscription subscribable by item id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		itemId, _ := cmd.Flags().GetString("itemId")
		input := &subscription.CheckUserSubscriptionSubscribableByItemIDParams{
			Namespace: namespace,
			UserID:    userId,
			ItemID:    itemId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.CheckUserSubscriptionSubscribableByItemID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(checkUserSubscriptionSubscribableByItemIdCmd)
	checkUserSubscriptionSubscribableByItemIdCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = checkUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("namespace")
	checkUserSubscriptionSubscribableByItemIdCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = checkUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("userId")
	checkUserSubscriptionSubscribableByItemIdCmd.Flags().StringP("itemId", "i", " ", "Item id")
	_ = checkUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("itemId")
}
