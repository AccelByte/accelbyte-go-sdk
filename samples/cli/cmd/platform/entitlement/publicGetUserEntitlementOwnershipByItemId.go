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

// PublicGetUserEntitlementOwnershipByItemIdCmd represents the PublicGetUserEntitlementOwnershipByItemId command
var PublicGetUserEntitlementOwnershipByItemIdCmd = &cobra.Command{
	Use:   "publicGetUserEntitlementOwnershipByItemId",
	Short: "Public get user entitlement ownership by item id",
	Long:  `Public get user entitlement ownership by item id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		itemId, _ := cmd.Flags().GetString("itemId")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		input := &entitlement.PublicGetUserEntitlementOwnershipByItemIDParams{
			Namespace:        namespace,
			UserID:           userId,
			EntitlementClazz: &entitlementClazz,
			ItemID:           itemId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicGetUserEntitlementOwnershipByItemID(input)
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
	PublicGetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("namespace")
	PublicGetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("userId")
	PublicGetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("entitlementClazz", "", "", "Entitlement clazz")
	PublicGetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("itemId", "", "", "Item id")
	_ = PublicGetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("itemId")
}
