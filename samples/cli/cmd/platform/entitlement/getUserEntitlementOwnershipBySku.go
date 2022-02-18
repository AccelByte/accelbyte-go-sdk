// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package entitlement

import (
	"encoding/json"
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
		input := &entitlement.GetUserEntitlementOwnershipBySkuParams{
			Namespace:        namespace,
			UserID:           userId,
			EntitlementClazz: &entitlementClazz,
			Sku:              sku,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.GetUserEntitlementOwnershipBySku(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetUserEntitlementOwnershipBySkuCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("namespace")
	GetUserEntitlementOwnershipBySkuCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("userId")
	GetUserEntitlementOwnershipBySkuCmd.Flags().StringP("entitlementClazz", "", "", "Entitlement clazz")
	GetUserEntitlementOwnershipBySkuCmd.Flags().StringP("sku", "", "", "Sku")
	_ = GetUserEntitlementOwnershipBySkuCmd.MarkFlagRequired("sku")
}
