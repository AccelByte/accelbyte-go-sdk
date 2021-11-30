// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// grantEntitlementCmd represents the grantEntitlement command
var grantEntitlementCmd = &cobra.Command{
	Use:   "grantEntitlement",
	Short: "Grant user entitlement of item",
	Long:  `Grant user entitlement of item. Grant entitlement executed by admin user.`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userId, err := cmd.Flags().GetString("userId")
		if err != nil {
			return err
		}
		namespace, err := cmd.Flags().GetString("namespace")
		if err != nil {
			return err
		}
		itemNamespace, err := cmd.Flags().GetString("itemNamespace")
		if err != nil {
			return err
		}
		itemId, err := cmd.Flags().GetString("itemId")
		if err != nil {
			return err
		}
		quantity, err := cmd.Flags().GetInt32("quantity")
		if err != nil {
			return err
		}

		var entitlementGrants []*platformclientmodels.EntitlementGrant
		entitlementGrant := &platformclientmodels.EntitlementGrant{
			ItemID:        &itemId,
			ItemNamespace: &itemNamespace,
			Quantity:      &quantity,
		}
		entitlementGrants = append(entitlementGrants, entitlementGrant)
		input := &entitlement.GrantUserEntitlementParams{
			Body:      entitlementGrants,
			Namespace: namespace,
			UserID:    userId,
		}
		grantEntitlement, err := entitlementService.GrantUserEntitlement(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(grantEntitlement)
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", response)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(grantEntitlementCmd)
	grantEntitlementCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = grantEntitlementCmd.MarkFlagRequired("userId")
	grantEntitlementCmd.Flags().StringP("itemId", "i", "", "Item ID")
	_ = grantEntitlementCmd.MarkFlagRequired("itemId")
	grantEntitlementCmd.Flags().Int32P("quantity", "q", 1, "item quantity")
	_ = grantEntitlementCmd.MarkFlagRequired("quantity")
	grantEntitlementCmd.Flags().StringP("namespace", "", "", "User namespace")
	_ = grantEntitlementCmd.MarkFlagRequired("namespace")
	grantEntitlementCmd.Flags().StringP("itemNamespace", "", "", "User namespace")
	_ = grantEntitlementCmd.MarkFlagRequired("itemNamespace")
}
