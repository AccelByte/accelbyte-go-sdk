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

// PublicQueryUserThirdPartySubscriptionCmd represents the PublicQueryUserThirdPartySubscription command
var PublicQueryUserThirdPartySubscriptionCmd = &cobra.Command{
	Use:   "publicQueryUserThirdPartySubscription",
	Short: "Public query user third party subscription",
	Long:  `Public query user third party subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		userId, _ := cmd.Flags().GetString("userId")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		groupId, _ := cmd.Flags().GetString("groupId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		productId, _ := cmd.Flags().GetString("productId")
		input := &iap_subscription.PublicQueryUserThirdPartySubscriptionParams{
			Namespace:  namespace,
			Platform:   platform,
			UserID:     userId,
			ActiveOnly: &activeOnly,
			GroupID:    &groupId,
			Limit:      &limit,
			Offset:     &offset,
			ProductID:  &productId,
		}
		ok, errOK := iapSubscriptionService.PublicQueryUserThirdPartySubscriptionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicQueryUserThirdPartySubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryUserThirdPartySubscriptionCmd.MarkFlagRequired("namespace")
	PublicQueryUserThirdPartySubscriptionCmd.Flags().String("platform", "", "Platform")
	_ = PublicQueryUserThirdPartySubscriptionCmd.MarkFlagRequired("platform")
	PublicQueryUserThirdPartySubscriptionCmd.Flags().String("userId", "", "User id")
	_ = PublicQueryUserThirdPartySubscriptionCmd.MarkFlagRequired("userId")
	PublicQueryUserThirdPartySubscriptionCmd.Flags().Bool("activeOnly", false, "Active only")
	PublicQueryUserThirdPartySubscriptionCmd.Flags().String("groupId", "", "Group id")
	PublicQueryUserThirdPartySubscriptionCmd.Flags().Int32("limit", 20, "Limit")
	PublicQueryUserThirdPartySubscriptionCmd.Flags().Int32("offset", 0, "Offset")
	PublicQueryUserThirdPartySubscriptionCmd.Flags().String("productId", "", "Product id")
}
