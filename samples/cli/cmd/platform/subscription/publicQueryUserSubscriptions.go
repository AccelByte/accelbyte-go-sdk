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

// publicQueryUserSubscriptionsCmd represents the publicQueryUserSubscriptions command
var publicQueryUserSubscriptionsCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.PublicQueryUserSubscriptions(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicQueryUserSubscriptionsCmd)
	publicQueryUserSubscriptionsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicQueryUserSubscriptionsCmd.MarkFlagRequired("namespace")
	publicQueryUserSubscriptionsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicQueryUserSubscriptionsCmd.MarkFlagRequired("userId")
	publicQueryUserSubscriptionsCmd.Flags().StringP("chargeStatus", "cs", " ", "Charge status")
	publicQueryUserSubscriptionsCmd.Flags().StringP("itemId", "id", " ", "Item id")
	publicQueryUserSubscriptionsCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	publicQueryUserSubscriptionsCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	publicQueryUserSubscriptionsCmd.Flags().StringP("sku", "su", " ", "Sku")
	publicQueryUserSubscriptionsCmd.Flags().StringP("status", "ss", " ", "Status")
	publicQueryUserSubscriptionsCmd.Flags().StringP("subscribedBy", "sy", " ", "Subscribed by")
}
