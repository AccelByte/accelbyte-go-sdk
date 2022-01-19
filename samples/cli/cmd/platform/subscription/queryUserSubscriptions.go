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

// queryUserSubscriptionsCmd represents the queryUserSubscriptions command
var queryUserSubscriptionsCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(queryUserSubscriptionsCmd)
	queryUserSubscriptionsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryUserSubscriptionsCmd.MarkFlagRequired("namespace")
	queryUserSubscriptionsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = queryUserSubscriptionsCmd.MarkFlagRequired("userId")
	queryUserSubscriptionsCmd.Flags().StringP("chargeStatus", "c", " ", "Charge status")
	queryUserSubscriptionsCmd.Flags().StringP("itemId", "i", " ", "Item id")
	queryUserSubscriptionsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryUserSubscriptionsCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryUserSubscriptionsCmd.Flags().StringP("sku", "s", " ", "Sku")
	queryUserSubscriptionsCmd.Flags().StringP("status", "s", " ", "Status")
	queryUserSubscriptionsCmd.Flags().StringP("subscribedBy", "s", " ", "Subscribed by")
}
