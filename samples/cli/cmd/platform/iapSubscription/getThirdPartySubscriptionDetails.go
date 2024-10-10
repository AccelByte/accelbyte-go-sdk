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

// GetThirdPartySubscriptionDetailsCmd represents the GetThirdPartySubscriptionDetails command
var GetThirdPartySubscriptionDetailsCmd = &cobra.Command{
	Use:   "getThirdPartySubscriptionDetails",
	Short: "Get third party subscription details",
	Long:  `Get third party subscription details`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap_subscription.GetThirdPartySubscriptionDetailsParams{
			ID:        id_,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapSubscriptionService.GetThirdPartySubscriptionDetailsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetThirdPartySubscriptionDetailsCmd.Flags().String("id", "", "Id")
	_ = GetThirdPartySubscriptionDetailsCmd.MarkFlagRequired("id")
	GetThirdPartySubscriptionDetailsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetThirdPartySubscriptionDetailsCmd.MarkFlagRequired("namespace")
	GetThirdPartySubscriptionDetailsCmd.Flags().String("userId", "", "User id")
	_ = GetThirdPartySubscriptionDetailsCmd.MarkFlagRequired("userId")
}
