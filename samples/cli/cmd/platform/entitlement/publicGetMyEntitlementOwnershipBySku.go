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

// PublicGetMyEntitlementOwnershipBySkuCmd represents the PublicGetMyEntitlementOwnershipBySku command
var PublicGetMyEntitlementOwnershipBySkuCmd = &cobra.Command{
	Use:   "PublicGetMyEntitlementOwnershipBySku",
	Short: "Public get my entitlement ownership by sku",
	Long:  `Public get my entitlement ownership by sku`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sku, _ := cmd.Flags().GetString("sku")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		input := &entitlement.PublicGetMyEntitlementOwnershipBySkuParams{
			Namespace:        namespace,
			EntitlementClazz: &entitlementClazz,
			Sku:              sku,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicGetMyEntitlementOwnershipBySku(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicGetMyEntitlementOwnershipBySkuCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicGetMyEntitlementOwnershipBySkuCmd.MarkFlagRequired("namespace")
	PublicGetMyEntitlementOwnershipBySkuCmd.Flags().StringP("entitlementClazz", "ez", " ", "Entitlement clazz")
	PublicGetMyEntitlementOwnershipBySkuCmd.Flags().StringP("sku", "su", " ", "Sku")
	_ = PublicGetMyEntitlementOwnershipBySkuCmd.MarkFlagRequired("sku")
}
