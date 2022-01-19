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

// getUserEntitlementBySkuCmd represents the getUserEntitlementBySku command
var getUserEntitlementBySkuCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserEntitlementBySkuCmd)
	getUserEntitlementBySkuCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserEntitlementBySkuCmd.MarkFlagRequired("namespace")
	getUserEntitlementBySkuCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserEntitlementBySkuCmd.MarkFlagRequired("userId")
	getUserEntitlementBySkuCmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	getUserEntitlementBySkuCmd.Flags().StringP("entitlementClazz", "e", " ", "Entitlement clazz")
	getUserEntitlementBySkuCmd.Flags().StringP("sku", "s", " ", "Sku")
	_ = getUserEntitlementBySkuCmd.MarkFlagRequired("sku")
}
