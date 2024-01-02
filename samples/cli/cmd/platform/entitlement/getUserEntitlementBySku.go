// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
		platform, _ := cmd.Flags().GetString("platform")
		input := &entitlement.GetUserEntitlementBySkuParams{
			Namespace:        namespace,
			UserID:           userId,
			ActiveOnly:       &activeOnly,
			EntitlementClazz: &entitlementClazz,
			Platform:         &platform,
			Sku:              sku,
		}
		ok, errOK := entitlementService.GetUserEntitlementBySkuShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserEntitlementBySkuCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserEntitlementBySkuCmd.MarkFlagRequired("namespace")
	GetUserEntitlementBySkuCmd.Flags().String("userId", "", "User id")
	_ = GetUserEntitlementBySkuCmd.MarkFlagRequired("userId")
	GetUserEntitlementBySkuCmd.Flags().Bool("activeOnly", false, "Active only")
	GetUserEntitlementBySkuCmd.Flags().String("entitlementClazz", "", "Entitlement clazz")
	GetUserEntitlementBySkuCmd.Flags().String("platform", "", "Platform")
	GetUserEntitlementBySkuCmd.Flags().String("sku", "", "Sku")
	_ = GetUserEntitlementBySkuCmd.MarkFlagRequired("sku")
}
