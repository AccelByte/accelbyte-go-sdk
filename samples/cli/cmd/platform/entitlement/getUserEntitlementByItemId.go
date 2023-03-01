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

// GetUserEntitlementByItemIdCmd represents the GetUserEntitlementByItemId command
var GetUserEntitlementByItemIdCmd = &cobra.Command{
	Use:   "getUserEntitlementByItemId",
	Short: "Get user entitlement by item id",
	Long:  `Get user entitlement by item id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		itemId, _ := cmd.Flags().GetString("itemId")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		input := &entitlement.GetUserEntitlementByItemIDParams{
			Namespace:        namespace,
			UserID:           userId,
			ActiveOnly:       &activeOnly,
			EntitlementClazz: &entitlementClazz,
			ItemID:           itemId,
		}
		ok, errOK := entitlementService.GetUserEntitlementByItemIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserEntitlementByItemIdCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserEntitlementByItemIdCmd.MarkFlagRequired("namespace")
	GetUserEntitlementByItemIdCmd.Flags().String("userId", "", "User id")
	_ = GetUserEntitlementByItemIdCmd.MarkFlagRequired("userId")
	GetUserEntitlementByItemIdCmd.Flags().Bool("activeOnly", false, "Active only")
	GetUserEntitlementByItemIdCmd.Flags().String("entitlementClazz", "", "Entitlement clazz")
	GetUserEntitlementByItemIdCmd.Flags().String("itemId", "", "Item id")
	_ = GetUserEntitlementByItemIdCmd.MarkFlagRequired("itemId")
}
