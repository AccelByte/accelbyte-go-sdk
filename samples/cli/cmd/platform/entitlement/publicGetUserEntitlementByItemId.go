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

// PublicGetUserEntitlementByItemIdCmd represents the PublicGetUserEntitlementByItemId command
var PublicGetUserEntitlementByItemIdCmd = &cobra.Command{
	Use:   "publicGetUserEntitlementByItemId",
	Short: "Public get user entitlement by item id",
	Long:  `Public get user entitlement by item id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		itemId, _ := cmd.Flags().GetString("itemId")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		input := &entitlement.PublicGetUserEntitlementByItemIDParams{
			Namespace:        namespace,
			UserID:           userId,
			EntitlementClazz: &entitlementClazz,
			ItemID:           itemId,
		}
		ok, errOK := entitlementService.PublicGetUserEntitlementByItemIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserEntitlementByItemIdCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserEntitlementByItemIdCmd.MarkFlagRequired("namespace")
	PublicGetUserEntitlementByItemIdCmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserEntitlementByItemIdCmd.MarkFlagRequired("userId")
	PublicGetUserEntitlementByItemIdCmd.Flags().String("entitlementClazz", "", "Entitlement clazz")
	PublicGetUserEntitlementByItemIdCmd.Flags().String("itemId", "", "Item id")
	_ = PublicGetUserEntitlementByItemIdCmd.MarkFlagRequired("itemId")
}
