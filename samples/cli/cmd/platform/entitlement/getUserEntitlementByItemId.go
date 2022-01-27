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

// GetUserEntitlementByItemIdCmd represents the GetUserEntitlementByItemId command
var GetUserEntitlementByItemIdCmd = &cobra.Command{
	Use:   "GetUserEntitlementByItemId",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.GetUserEntitlementByItemID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetUserEntitlementByItemIdCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetUserEntitlementByItemIdCmd.MarkFlagRequired("namespace")
	GetUserEntitlementByItemIdCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = GetUserEntitlementByItemIdCmd.MarkFlagRequired("userId")
	GetUserEntitlementByItemIdCmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	GetUserEntitlementByItemIdCmd.Flags().StringP("entitlementClazz", "ez", " ", "Entitlement clazz")
	GetUserEntitlementByItemIdCmd.Flags().StringP("itemId", "id", " ", "Item id")
	_ = GetUserEntitlementByItemIdCmd.MarkFlagRequired("itemId")
}
