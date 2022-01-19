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

// publicGetUserSubscriptionBillingHistoriesCmd represents the publicGetUserSubscriptionBillingHistories command
var publicGetUserSubscriptionBillingHistoriesCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserSubscriptionBillingHistoriesCmd)
	publicGetUserSubscriptionBillingHistoriesCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("namespace")
	publicGetUserSubscriptionBillingHistoriesCmd.Flags().StringP("subscriptionId", "s", " ", "Subscription id")
	_ = publicGetUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("subscriptionId")
	publicGetUserSubscriptionBillingHistoriesCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicGetUserSubscriptionBillingHistoriesCmd.MarkFlagRequired("userId")
	publicGetUserSubscriptionBillingHistoriesCmd.Flags().BoolP("excludeFree", "e", false, "Exclude free")
	publicGetUserSubscriptionBillingHistoriesCmd.Flags().Int32P("limit", "l", 20, "Limit")
	publicGetUserSubscriptionBillingHistoriesCmd.Flags().Int32P("offset", "o", 0, "Offset")
}
