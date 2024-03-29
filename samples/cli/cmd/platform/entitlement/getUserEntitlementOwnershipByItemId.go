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

// GetUserEntitlementOwnershipByItemIdCmd represents the GetUserEntitlementOwnershipByItemId command
var GetUserEntitlementOwnershipByItemIdCmd = &cobra.Command{
	Use:   "getUserEntitlementOwnershipByItemId",
	Short: "Get user entitlement ownership by item id",
	Long:  `Get user entitlement ownership by item id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		itemId, _ := cmd.Flags().GetString("itemId")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		platform, _ := cmd.Flags().GetString("platform")
		input := &entitlement.GetUserEntitlementOwnershipByItemIDParams{
			Namespace:        namespace,
			UserID:           userId,
			EntitlementClazz: &entitlementClazz,
			Platform:         &platform,
			ItemID:           itemId,
		}
		ok, errOK := entitlementService.GetUserEntitlementOwnershipByItemIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserEntitlementOwnershipByItemIdCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("namespace")
	GetUserEntitlementOwnershipByItemIdCmd.Flags().String("userId", "", "User id")
	_ = GetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("userId")
	GetUserEntitlementOwnershipByItemIdCmd.Flags().String("entitlementClazz", "", "Entitlement clazz")
	GetUserEntitlementOwnershipByItemIdCmd.Flags().String("platform", "", "Platform")
	GetUserEntitlementOwnershipByItemIdCmd.Flags().String("itemId", "", "Item id")
	_ = GetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("itemId")
}
