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

// DeleteOculusSubscriptionTierCmd represents the DeleteOculusSubscriptionTier command
var DeleteOculusSubscriptionTierCmd = &cobra.Command{
	Use:   "deleteOculusSubscriptionTier",
	Short: "Delete oculus subscription tier",
	Long:  `Delete oculus subscription tier`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sku, _ := cmd.Flags().GetString("sku")
		input := &iap_subscription.DeleteOculusSubscriptionTierParams{
			Namespace: namespace,
			Sku:       sku,
		}
		errNoContent := iapSubscriptionService.DeleteOculusSubscriptionTierShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteOculusSubscriptionTierCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteOculusSubscriptionTierCmd.MarkFlagRequired("namespace")
	DeleteOculusSubscriptionTierCmd.Flags().String("sku", "", "Sku")
	_ = DeleteOculusSubscriptionTierCmd.MarkFlagRequired("sku")
}
