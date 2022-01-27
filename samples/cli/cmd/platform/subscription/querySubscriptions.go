// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package subscription

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// querySubscriptionsCmd represents the querySubscriptions command
var querySubscriptionsCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.QuerySubscriptions(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(querySubscriptionsCmd)
	querySubscriptionsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = querySubscriptionsCmd.MarkFlagRequired("namespace")
	querySubscriptionsCmd.Flags().StringP("chargeStatus", "cs", " ", "Charge status")
	querySubscriptionsCmd.Flags().StringP("itemId", "id", " ", "Item id")
	querySubscriptionsCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	querySubscriptionsCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	querySubscriptionsCmd.Flags().StringP("sku", "su", " ", "Sku")
	querySubscriptionsCmd.Flags().StringP("status", "ss", " ", "Status")
	querySubscriptionsCmd.Flags().StringP("subscribedBy", "sy", " ", "Subscribed by")
	querySubscriptionsCmd.Flags().StringP("userId", "ud", " ", "User id")
}
