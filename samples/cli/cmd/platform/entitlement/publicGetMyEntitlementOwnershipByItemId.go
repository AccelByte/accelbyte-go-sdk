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

// publicGetMyEntitlementOwnershipByItemIdCmd represents the publicGetMyEntitlementOwnershipByItemId command
var publicGetMyEntitlementOwnershipByItemIdCmd = &cobra.Command{
	Use:   "publicGetMyEntitlementOwnershipByItemId",
	Short: "Public get my entitlement ownership by item id",
	Long:  `Public get my entitlement ownership by item id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		itemId, _ := cmd.Flags().GetString("itemId")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		input := &entitlement.PublicGetMyEntitlementOwnershipByItemIDParams{
			Namespace:        namespace,
			EntitlementClazz: &entitlementClazz,
			ItemID:           itemId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicGetMyEntitlementOwnershipByItemID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetMyEntitlementOwnershipByItemIdCmd)
	publicGetMyEntitlementOwnershipByItemIdCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetMyEntitlementOwnershipByItemIdCmd.MarkFlagRequired("namespace")
	publicGetMyEntitlementOwnershipByItemIdCmd.Flags().StringP("entitlementClazz", "e", " ", "Entitlement clazz")
	publicGetMyEntitlementOwnershipByItemIdCmd.Flags().StringP("itemId", "i", " ", "Item id")
	_ = publicGetMyEntitlementOwnershipByItemIdCmd.MarkFlagRequired("itemId")
}
