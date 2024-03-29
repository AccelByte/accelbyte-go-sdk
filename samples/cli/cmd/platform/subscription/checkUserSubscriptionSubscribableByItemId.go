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

// CheckUserSubscriptionSubscribableByItemIdCmd represents the CheckUserSubscriptionSubscribableByItemId command
var CheckUserSubscriptionSubscribableByItemIdCmd = &cobra.Command{
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
		ok, errOK := subscriptionService.CheckUserSubscriptionSubscribableByItemIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CheckUserSubscriptionSubscribableByItemIdCmd.Flags().String("namespace", "", "Namespace")
	_ = CheckUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("namespace")
	CheckUserSubscriptionSubscribableByItemIdCmd.Flags().String("userId", "", "User id")
	_ = CheckUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("userId")
	CheckUserSubscriptionSubscribableByItemIdCmd.Flags().String("itemId", "", "Item id")
	_ = CheckUserSubscriptionSubscribableByItemIdCmd.MarkFlagRequired("itemId")
}
