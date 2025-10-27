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

// ListOculusSubscriptionGroupTierCmd represents the ListOculusSubscriptionGroupTier command
var ListOculusSubscriptionGroupTierCmd = &cobra.Command{
	Use:   "listOculusSubscriptionGroupTier",
	Short: "List oculus subscription group tier",
	Long:  `List oculus subscription group tier`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sku, _ := cmd.Flags().GetString("sku")
		input := &iap_subscription.ListOculusSubscriptionGroupTierParams{
			Namespace: namespace,
			Sku:       sku,
		}
		ok, errOK := iapSubscriptionService.ListOculusSubscriptionGroupTierShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListOculusSubscriptionGroupTierCmd.Flags().String("namespace", "", "Namespace")
	_ = ListOculusSubscriptionGroupTierCmd.MarkFlagRequired("namespace")
	ListOculusSubscriptionGroupTierCmd.Flags().String("sku", "", "Sku")
	_ = ListOculusSubscriptionGroupTierCmd.MarkFlagRequired("sku")
}
