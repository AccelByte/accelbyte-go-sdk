// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package entitlement

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetUserEntitlementOwnershipBySkuCmd represents the publicGetUserEntitlementOwnershipBySku command
var publicGetUserEntitlementOwnershipBySkuCmd = &cobra.Command{
	Use:   "publicGetUserEntitlementOwnershipBySku",
	Short: "Public get user entitlement ownership by sku",
	Long:  `Public get user entitlement ownership by sku`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		sku, _ := cmd.Flags().GetString("sku")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		input := &entitlement.PublicGetUserEntitlementOwnershipBySkuParams{
			Namespace:        namespace,
			UserID:           userId,
			EntitlementClazz: &entitlementClazz,
			Sku:              sku,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicGetUserEntitlementOwnershipBySku(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserEntitlementOwnershipBySkuCmd)
	publicGetUserEntitlementOwnershipBySkuCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("namespace")
	publicGetUserEntitlementOwnershipBySkuCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicGetUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("userId")
	publicGetUserEntitlementOwnershipBySkuCmd.Flags().StringP("entitlementClazz", "ez", " ", "Entitlement clazz")
	publicGetUserEntitlementOwnershipBySkuCmd.Flags().StringP("sku", "su", " ", "Sku")
	_ = publicGetUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("sku")
}
