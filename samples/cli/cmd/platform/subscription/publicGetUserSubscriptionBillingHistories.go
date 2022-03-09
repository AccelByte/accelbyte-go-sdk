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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.PublicGetUserSubscriptionBillingHistories(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("namespace")
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().StringP("subscriptionId", "", "", "Subscription id")
	_ = PublicGetUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("subscriptionId")
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("userId")
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().BoolP("excludeFree", "", false, "Exclude free")
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().Int32P("limit", "", 20, "Limit")
	PublicGetUserSubscriptionBillingHistoriesCmd.Flags().Int32P("offset", "", 0, "Offset")
}
