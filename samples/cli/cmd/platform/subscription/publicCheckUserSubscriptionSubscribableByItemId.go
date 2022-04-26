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

// PublicCheckUserSubscriptionSubscribableByItemIdCmd represents the PublicCheckUserSubscriptionSubscribableByItemId command
var PublicCheckUserSubscriptionSubscribableByItemIdCmd = &cobra.Command{
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
		ok, err := subscriptionService.PublicCheckUserSubscriptionSubscribableByItemIDShort(input)
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
	PublicCheckUserSubscriptionSubscribableByItemIdCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicCheckUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("namespace")
	PublicCheckUserSubscriptionSubscribableByItemIdCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicCheckUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("userId")
	PublicCheckUserSubscriptionSubscribableByItemIdCmd.Flags().StringP("itemId", "", "", "Item id")
	_ = PublicCheckUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("itemId")
}
