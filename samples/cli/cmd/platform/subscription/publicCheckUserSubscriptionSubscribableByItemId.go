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

// publicCheckUserSubscriptionSubscribableByItemIdCmd represents the publicCheckUserSubscriptionSubscribableByItemId command
var publicCheckUserSubscriptionSubscribableByItemIdCmd = &cobra.Command{
	Use:   "publicCheckUserSubscriptionSubscribableByItemId",
	Short: "Public check user subscription subscribable by item id",
	Long:  `Public check user subscription subscribable by item id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		itemId, _ := cmd.Flags().GetString("itemId")
		input := &subscription.PublicCheckUserSubscriptionSubscribableByItemIDParams{
			Namespace: namespace,
			UserID:    userId,
			ItemID:    itemId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.PublicCheckUserSubscriptionSubscribableByItemID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicCheckUserSubscriptionSubscribableByItemIdCmd)
	publicCheckUserSubscriptionSubscribableByItemIdCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicCheckUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("namespace")
	publicCheckUserSubscriptionSubscribableByItemIdCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicCheckUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("userId")
	publicCheckUserSubscriptionSubscribableByItemIdCmd.Flags().StringP("itemId", "i", " ", "Item id")
	_ = publicCheckUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("itemId")
}
