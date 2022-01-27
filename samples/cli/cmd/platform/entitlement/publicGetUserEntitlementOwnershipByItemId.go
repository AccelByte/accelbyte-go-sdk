// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package entitlement

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetUserEntitlementOwnershipByItemIdCmd represents the publicGetUserEntitlementOwnershipByItemId command
var publicGetUserEntitlementOwnershipByItemIdCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserEntitlementOwnershipByItemIdCmd)
	publicGetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("namespace")
	publicGetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicGetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("userId")
	publicGetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("entitlementClazz", "ez", " ", "Entitlement clazz")
	publicGetUserEntitlementOwnershipByItemIdCmd.Flags().StringP("itemId", "id", " ", "Item id")
	_ = publicGetUserEntitlementOwnershipByItemIdCmd.MarkFlagRequired("itemId")
}
