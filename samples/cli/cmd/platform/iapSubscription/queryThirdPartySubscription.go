// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iapSubscription

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap_subscription"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryThirdPartySubscriptionCmd represents the QueryThirdPartySubscription command
var QueryThirdPartySubscriptionCmd = &cobra.Command{
	Use:   "queryThirdPartySubscription",
	Short: "Query third party subscription",
	Long:  `Query third party subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		groupId, _ := cmd.Flags().GetString("groupId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		platform, _ := cmd.Flags().GetString("platform")
		productId, _ := cmd.Flags().GetString("productId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap_subscription.QueryThirdPartySubscriptionParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			GroupID:    &groupId,
			Limit:      &limit,
			Offset:     &offset,
			Platform:   &platform,
			ProductID:  &productId,
			UserID:     &userId,
		}
		ok, errOK := iapSubscriptionService.QueryThirdPartySubscriptionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryThirdPartySubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryThirdPartySubscriptionCmd.MarkFlagRequired("namespace")
	QueryThirdPartySubscriptionCmd.Flags().Bool("activeOnly", false, "Active only")
	QueryThirdPartySubscriptionCmd.Flags().String("groupId", "", "Group id")
	QueryThirdPartySubscriptionCmd.Flags().Int32("limit", 20, "Limit")
	QueryThirdPartySubscriptionCmd.Flags().Int32("offset", 0, "Offset")
	QueryThirdPartySubscriptionCmd.Flags().String("platform", "", "Platform")
	QueryThirdPartySubscriptionCmd.Flags().String("productId", "", "Product id")
	QueryThirdPartySubscriptionCmd.Flags().String("userId", "", "User id")
}
