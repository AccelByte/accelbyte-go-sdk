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

// GetUserEntitlementOwnershipByItemIdCmd represents the GetUserEntitlementOwnershipByItemId command
var GetUserEntitlementOwnershipByItemIdCmd = &cobra.Command{
	Use:   "GetUserEntitlementOwnershipByItemId",
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
		input := &entitlement.GetUserEntitlementOwnershipByItemIDParams{
			Namespace:        namespace,
			UserID:           userId,
			EntitlementClazz: &entitlementClazz,
			ItemID:           itemId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.GetUserEntitlementOwnershipByItemID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("namespace")
	GetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = GetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("userId")
	GetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("entitlementClazz", "ez", " ", "Entitlement clazz")
	GetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("itemId", "id", " ", "Item id")
	_ = GetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("itemId")
}
