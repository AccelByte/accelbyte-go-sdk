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

// QueryUserThirdPartySubscriptionCmd represents the QueryUserThirdPartySubscription command
var QueryUserThirdPartySubscriptionCmd = &cobra.Command{
	Use:   "queryUserThirdPartySubscription",
	Short: "Query user third party subscription",
	Long:  `Query user third party subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		groupId, _ := cmd.Flags().GetString("groupId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		platform, _ := cmd.Flags().GetString("platform")
		productId, _ := cmd.Flags().GetString("productId")
		input := &iap_subscription.QueryUserThirdPartySubscriptionParams{
			Namespace:  namespace,
			UserID:     userId,
			ActiveOnly: &activeOnly,
			GroupID:    &groupId,
			Limit:      &limit,
			Offset:     &offset,
			Platform:   &platform,
			ProductID:  &productId,
		}
		ok, errOK := iapSubscriptionService.QueryUserThirdPartySubscriptionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryUserThirdPartySubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryUserThirdPartySubscriptionCmd.MarkFlagRequired("namespace")
	QueryUserThirdPartySubscriptionCmd.Flags().String("userId", "", "User id")
	_ = QueryUserThirdPartySubscriptionCmd.MarkFlagRequired("userId")
	QueryUserThirdPartySubscriptionCmd.Flags().Bool("activeOnly", false, "Active only")
	QueryUserThirdPartySubscriptionCmd.Flags().String("groupId", "", "Group id")
	QueryUserThirdPartySubscriptionCmd.Flags().Int32("limit", 20, "Limit")
	QueryUserThirdPartySubscriptionCmd.Flags().Int32("offset", 0, "Offset")
	QueryUserThirdPartySubscriptionCmd.Flags().String("platform", "", "Platform")
	QueryUserThirdPartySubscriptionCmd.Flags().String("productId", "", "Product id")
}
