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

// PublicGetMyEntitlementOwnershipByItemIdCmd represents the PublicGetMyEntitlementOwnershipByItemId command
var PublicGetMyEntitlementOwnershipByItemIdCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	PublicGetMyEntitlementOwnershipByItemIdCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetMyEntitlementOwnershipByItemIdCmd.MarkFlagRequired("namespace")
	PublicGetMyEntitlementOwnershipByItemIdCmd.Flags().StringP("entitlementClazz", "", "", "Entitlement clazz")
	PublicGetMyEntitlementOwnershipByItemIdCmd.Flags().StringP("itemId", "", "", "Item id")
	_ = PublicGetMyEntitlementOwnershipByItemIdCmd.MarkFlagRequired("itemId")
}
