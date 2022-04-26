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

// QueryUserSubscriptionsCmd represents the QueryUserSubscriptions command
var QueryUserSubscriptionsCmd = &cobra.Command{
	Use:   "queryUserSubscriptions",
	Short: "Query user subscriptions",
	Long:  `Query user subscriptions`,
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
		input := &subscription.QueryUserSubscriptionsParams{
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
		ok, err := subscriptionService.QueryUserSubscriptionsShort(input)
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
	QueryUserSubscriptionsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QueryUserSubscriptionsCmd.MarkFlagRequired("namespace")
	QueryUserSubscriptionsCmd.Flags().StringP("userId", "", "", "User id")
	_ = QueryUserSubscriptionsCmd.MarkFlagRequired("userId")
	QueryUserSubscriptionsCmd.Flags().StringP("chargeStatus", "", "", "Charge status")
	QueryUserSubscriptionsCmd.Flags().StringP("itemId", "", "", "Item id")
	QueryUserSubscriptionsCmd.Flags().Int32P("limit", "", 20, "Limit")
	QueryUserSubscriptionsCmd.Flags().Int32P("offset", "", 0, "Offset")
	QueryUserSubscriptionsCmd.Flags().StringP("sku", "", "", "Sku")
	QueryUserSubscriptionsCmd.Flags().StringP("status", "", "", "Status")
	QueryUserSubscriptionsCmd.Flags().StringP("subscribedBy", "", "", "Subscribed by")
}
