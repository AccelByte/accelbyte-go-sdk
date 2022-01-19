// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserEntitlementOwnershipBySkuCmd represents the getUserEntitlementOwnershipBySku command
var getUserEntitlementOwnershipBySkuCmd = &cobra.Command{
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
		input := &entitlement.GetUserEntitlementOwnershipBySkuParams{
			Namespace:        namespace,
			UserID:           userId,
			EntitlementClazz: &entitlementClazz,
			Sku:              sku,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.GetUserEntitlementOwnershipBySku(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserEntitlementOwnershipBySkuCmd)
	getUserEntitlementOwnershipBySkuCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("namespace")
	getUserEntitlementOwnershipBySkuCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("userId")
	getUserEntitlementOwnershipBySkuCmd.Flags().StringP("entitlementClazz", "e", " ", "Entitlement clazz")
	getUserEntitlementOwnershipBySkuCmd.Flags().StringP("sku", "s", " ", "Sku")
	_ = getUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("sku")
}
