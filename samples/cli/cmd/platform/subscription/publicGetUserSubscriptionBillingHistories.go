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

// PublicGetUserSubscriptionBillingHistoriesCmd represents the PublicGetUserSubscriptionBillingHistories command
var PublicGetUserSubscriptionBillingHistoriesCmd = &cobra.Command{
	Use:   "publicGetUserSubscriptionBillingHistories",
	Short: "Public get user subscription billing histories",
	Long:  `Public get user subscription billing histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		userId, _ := cmd.Flags().GetString("userId")
		excludeFree, _ := cmd.Flags().GetBool("excludeFree")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &subscription.PublicGetUserSubscriptionBillingHistoriesParams{
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
			ExcludeFree:    &excludeFree,
			Limit:          &limit,
			Offset:         &offset,
		}
		ok, errOK := subscriptionService.PublicGetUserSubscriptionBillingHistoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("namespace")
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().String("subscriptionId", "", "Subscription id")
	_ = PublicGetUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("subscriptionId")
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("userId")
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().Bool("excludeFree", false, "Exclude free")
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().Int32("limit", 20, "Limit")
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().Int32("offset", 0, "Offset")
}
