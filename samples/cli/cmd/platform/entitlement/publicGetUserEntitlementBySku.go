// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package entitlement

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserEntitlementBySkuCmd represents the PublicGetUserEntitlementBySku command
var PublicGetUserEntitlementBySkuCmd = &cobra.Command{
	Use:   "publicGetUserEntitlementBySku",
	Short: "Public get user entitlement by sku",
	Long:  `Public get user entitlement by sku`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		sku, _ := cmd.Flags().GetString("sku")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		input := &entitlement.PublicGetUserEntitlementBySkuParams{
			Namespace:        namespace,
			UserID:           userId,
			EntitlementClazz: &entitlementClazz,
			Sku:              sku,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicGetUserEntitlementBySku(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	PublicGetUserEntitlementBySkuCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetUserEntitlementBySkuCmd.MarkFlagRequired("namespace")
	PublicGetUserEntitlementBySkuCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetUserEntitlementBySkuCmd.MarkFlagRequired("userId")
	PublicGetUserEntitlementBySkuCmd.Flags().StringP("entitlementClazz", "", "", "Entitlement clazz")
	PublicGetUserEntitlementBySkuCmd.Flags().StringP("sku", "", "", "Sku")
	_ = PublicGetUserEntitlementBySkuCmd.MarkFlagRequired("sku")
}
