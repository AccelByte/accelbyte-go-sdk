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

// GetUserEntitlementBySkuCmd represents the GetUserEntitlementBySku command
var GetUserEntitlementBySkuCmd = &cobra.Command{
	Use:   "getUserEntitlementBySku",
	Short: "Get user entitlement by sku",
	Long:  `Get user entitlement by sku`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		sku, _ := cmd.Flags().GetString("sku")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		input := &entitlement.GetUserEntitlementBySkuParams{
			Namespace:        namespace,
			UserID:           userId,
			ActiveOnly:       &activeOnly,
			EntitlementClazz: &entitlementClazz,
			Sku:              sku,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.GetUserEntitlementBySku(input)
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
	GetUserEntitlementBySkuCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserEntitlementBySkuCmd.MarkFlagRequired("namespace")
	GetUserEntitlementBySkuCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserEntitlementBySkuCmd.MarkFlagRequired("userId")
	GetUserEntitlementBySkuCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	GetUserEntitlementBySkuCmd.Flags().StringP("entitlementClazz", "", "", "Entitlement clazz")
	GetUserEntitlementBySkuCmd.Flags().StringP("sku", "", "", "Sku")
	_ = GetUserEntitlementBySkuCmd.MarkFlagRequired("sku")
}
