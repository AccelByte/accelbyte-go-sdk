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

// PublicQueryUserSubscriptionsCmd represents the PublicQueryUserSubscriptions command
var PublicQueryUserSubscriptionsCmd = &cobra.Command{
	Use:   "publicQueryUserSubscriptions",
	Short: "Public query user subscriptions",
	Long:  `Public query user subscriptions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		chargeStatus, _ := cmd.Flags().GetString("chargeStatus")
		itemId, _ := cmd.Flags().GetString("itemId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sku, _ := cmd.Flags().GetString("sku")
		status, _ := cmd.Flags().GetString("status")
		subscribedBy, _ := cmd.Flags().GetString("subscribedBy")
		input := &subscription.PublicQueryUserSubscriptionsParams{
			Namespace:    namespace,
			UserID:       userId,
			ChargeStatus: &chargeStatus,
			ItemID:       &itemId,
			Limit:        &limit,
			Offset:       &offset,
			Sku:          &sku,
			Status:       &status,
			SubscribedBy: &subscribedBy,
		}
		ok, errOK := subscriptionService.PublicQueryUserSubscriptionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicQueryUserSubscriptionsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryUserSubscriptionsCmd.MarkFlagRequired("namespace")
	PublicQueryUserSubscriptionsCmd.Flags().String("userId", "", "User id")
	_ = PublicQueryUserSubscriptionsCmd.MarkFlagRequired("userId")
	PublicQueryUserSubscriptionsCmd.Flags().String("chargeStatus", "", "Charge status")
	PublicQueryUserSubscriptionsCmd.Flags().String("itemId", "", "Item id")
	PublicQueryUserSubscriptionsCmd.Flags().Int32("limit", 20, "Limit")
	PublicQueryUserSubscriptionsCmd.Flags().Int32("offset", 0, "Offset")
	PublicQueryUserSubscriptionsCmd.Flags().String("sku", "", "Sku")
	PublicQueryUserSubscriptionsCmd.Flags().String("status", "", "Status")
	PublicQueryUserSubscriptionsCmd.Flags().String("subscribedBy", "", "Subscribed by")
}
