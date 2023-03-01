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

// QuerySubscriptionsCmd represents the QuerySubscriptions command
var QuerySubscriptionsCmd = &cobra.Command{
	Use:   "querySubscriptions",
	Short: "Query subscriptions",
	Long:  `Query subscriptions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		chargeStatus, _ := cmd.Flags().GetString("chargeStatus")
		itemId, _ := cmd.Flags().GetString("itemId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sku, _ := cmd.Flags().GetString("sku")
		status, _ := cmd.Flags().GetString("status")
		subscribedBy, _ := cmd.Flags().GetString("subscribedBy")
		userId, _ := cmd.Flags().GetString("userId")
		input := &subscription.QuerySubscriptionsParams{
			Namespace:    namespace,
			ChargeStatus: &chargeStatus,
			ItemID:       &itemId,
			Limit:        &limit,
			Offset:       &offset,
			Sku:          &sku,
			Status:       &status,
			SubscribedBy: &subscribedBy,
			UserID:       &userId,
		}
		ok, errOK := subscriptionService.QuerySubscriptionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QuerySubscriptionsCmd.Flags().String("namespace", "", "Namespace")
	_ = QuerySubscriptionsCmd.MarkFlagRequired("namespace")
	QuerySubscriptionsCmd.Flags().String("chargeStatus", "", "Charge status")
	QuerySubscriptionsCmd.Flags().String("itemId", "", "Item id")
	QuerySubscriptionsCmd.Flags().Int32("limit", 20, "Limit")
	QuerySubscriptionsCmd.Flags().Int32("offset", 0, "Offset")
	QuerySubscriptionsCmd.Flags().String("sku", "", "Sku")
	QuerySubscriptionsCmd.Flags().String("status", "", "Status")
	QuerySubscriptionsCmd.Flags().String("subscribedBy", "", "Subscribed by")
	QuerySubscriptionsCmd.Flags().String("userId", "", "User id")
}
