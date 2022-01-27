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

// getUserSubscriptionBillingHistoriesCmd represents the getUserSubscriptionBillingHistories command
var getUserSubscriptionBillingHistoriesCmd = &cobra.Command{
	Use:   "getUserSubscriptionBillingHistories",
	Short: "Get user subscription billing histories",
	Long:  `Get user subscription billing histories`,
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
		input := &subscription.GetUserSubscriptionBillingHistoriesParams{
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
			ExcludeFree:    &excludeFree,
			Limit:          &limit,
			Offset:         &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.GetUserSubscriptionBillingHistories(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserSubscriptionBillingHistoriesCmd)
	getUserSubscriptionBillingHistoriesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("namespace")
	getUserSubscriptionBillingHistoriesCmd.Flags().StringP("subscriptionId", "sd", " ", "Subscription id")
	_ = getUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("subscriptionId")
	getUserSubscriptionBillingHistoriesCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = getUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("userId")
	getUserSubscriptionBillingHistoriesCmd.Flags().BoolP("excludeFree", "ee", false, "Exclude free")
	getUserSubscriptionBillingHistoriesCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	getUserSubscriptionBillingHistoriesCmd.Flags().Int32P("offset", "ot", 0, "Offset")
}
