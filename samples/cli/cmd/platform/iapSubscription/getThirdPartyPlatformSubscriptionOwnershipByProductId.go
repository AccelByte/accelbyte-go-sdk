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

// GetThirdPartyPlatformSubscriptionOwnershipByProductIdCmd represents the GetThirdPartyPlatformSubscriptionOwnershipByProductId command
var GetThirdPartyPlatformSubscriptionOwnershipByProductIdCmd = &cobra.Command{
	Use:   "getThirdPartyPlatformSubscriptionOwnershipByProductId",
	Short: "Get third party platform subscription ownership by product id",
	Long:  `Get third party platform subscription ownership by product id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		userId, _ := cmd.Flags().GetString("userId")
		productId, _ := cmd.Flags().GetString("productId")
		input := &iap_subscription.GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams{
			Namespace: namespace,
			Platform:  platform,
			UserID:    userId,
			ProductID: productId,
		}
		ok, errOK := iapSubscriptionService.GetThirdPartyPlatformSubscriptionOwnershipByProductIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetThirdPartyPlatformSubscriptionOwnershipByProductIdCmd.Flags().String("namespace", "", "Namespace")
	_ = GetThirdPartyPlatformSubscriptionOwnershipByProductIdCmd.MarkFlagRequired("namespace")
	GetThirdPartyPlatformSubscriptionOwnershipByProductIdCmd.Flags().String("platform", "", "Platform")
	_ = GetThirdPartyPlatformSubscriptionOwnershipByProductIdCmd.MarkFlagRequired("platform")
	GetThirdPartyPlatformSubscriptionOwnershipByProductIdCmd.Flags().String("userId", "", "User id")
	_ = GetThirdPartyPlatformSubscriptionOwnershipByProductIdCmd.MarkFlagRequired("userId")
	GetThirdPartyPlatformSubscriptionOwnershipByProductIdCmd.Flags().String("productId", "", "Product id")
	_ = GetThirdPartyPlatformSubscriptionOwnershipByProductIdCmd.MarkFlagRequired("productId")
}
