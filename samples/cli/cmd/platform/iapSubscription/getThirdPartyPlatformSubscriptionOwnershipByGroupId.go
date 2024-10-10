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

// GetThirdPartyPlatformSubscriptionOwnershipByGroupIdCmd represents the GetThirdPartyPlatformSubscriptionOwnershipByGroupId command
var GetThirdPartyPlatformSubscriptionOwnershipByGroupIdCmd = &cobra.Command{
	Use:   "getThirdPartyPlatformSubscriptionOwnershipByGroupId",
	Short: "Get third party platform subscription ownership by group id",
	Long:  `Get third party platform subscription ownership by group id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		userId, _ := cmd.Flags().GetString("userId")
		groupId, _ := cmd.Flags().GetString("groupId")
		input := &iap_subscription.GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams{
			Namespace: namespace,
			Platform:  platform,
			UserID:    userId,
			GroupID:   groupId,
		}
		ok, errOK := iapSubscriptionService.GetThirdPartyPlatformSubscriptionOwnershipByGroupIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIdCmd.Flags().String("namespace", "", "Namespace")
	_ = GetThirdPartyPlatformSubscriptionOwnershipByGroupIdCmd.MarkFlagRequired("namespace")
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIdCmd.Flags().String("platform", "", "Platform")
	_ = GetThirdPartyPlatformSubscriptionOwnershipByGroupIdCmd.MarkFlagRequired("platform")
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIdCmd.Flags().String("userId", "", "User id")
	_ = GetThirdPartyPlatformSubscriptionOwnershipByGroupIdCmd.MarkFlagRequired("userId")
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIdCmd.Flags().String("groupId", "", "Group id")
	_ = GetThirdPartyPlatformSubscriptionOwnershipByGroupIdCmd.MarkFlagRequired("groupId")
}
