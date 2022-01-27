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

// QueryUserSubscriptionsCmd represents the QueryUserSubscriptions command
var QueryUserSubscriptionsCmd = &cobra.Command{
	Use:   "QueryUserSubscriptions",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.QueryUserSubscriptions(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	QueryUserSubscriptionsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = QueryUserSubscriptionsCmd.MarkFlagRequired("namespace")
	QueryUserSubscriptionsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = QueryUserSubscriptionsCmd.MarkFlagRequired("userId")
	QueryUserSubscriptionsCmd.Flags().StringP("chargeStatus", "cs", " ", "Charge status")
	QueryUserSubscriptionsCmd.Flags().StringP("itemId", "id", " ", "Item id")
	QueryUserSubscriptionsCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	QueryUserSubscriptionsCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	QueryUserSubscriptionsCmd.Flags().StringP("sku", "su", " ", "Sku")
	QueryUserSubscriptionsCmd.Flags().StringP("status", "ss", " ", "Status")
	QueryUserSubscriptionsCmd.Flags().StringP("subscribedBy", "sy", " ", "Subscribed by")
}
