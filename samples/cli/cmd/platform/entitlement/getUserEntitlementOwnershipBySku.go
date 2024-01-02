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

// GetUserEntitlementOwnershipBySkuCmd represents the GetUserEntitlementOwnershipBySku command
var GetUserEntitlementOwnershipBySkuCmd = &cobra.Command{
	Use:   "getUserEntitlementOwnershipBySku",
	Short: "Get user entitlement ownership by sku",
	Long:  `Get user entitlement ownership by sku`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		sku, _ := cmd.Flags().GetString("sku")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		platform, _ := cmd.Flags().GetString("platform")
		input := &entitlement.GetUserEntitlementOwnershipBySkuParams{
			Namespace:        namespace,
			UserID:           userId,
			EntitlementClazz: &entitlementClazz,
			Platform:         &platform,
			Sku:              sku,
		}
		ok, errOK := entitlementService.GetUserEntitlementOwnershipBySkuShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserEntitlementOwnershipBySkuCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("namespace")
	GetUserEntitlementOwnershipBySkuCmd.Flags().String("userId", "", "User id")
	_ = GetUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("userId")
	GetUserEntitlementOwnershipBySkuCmd.Flags().String("entitlementClazz", "", "Entitlement clazz")
	GetUserEntitlementOwnershipBySkuCmd.Flags().String("platform", "", "Platform")
	GetUserEntitlementOwnershipBySkuCmd.Flags().String("sku", "", "Sku")
	_ = GetUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("sku")
}
