// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminItems

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_items"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminSyncUserEntitlementsCmd represents the AdminSyncUserEntitlements command
var AdminSyncUserEntitlementsCmd = &cobra.Command{
	Use:   "adminSyncUserEntitlements",
	Short: "Admin sync user entitlements",
	Long:  `Admin sync user entitlements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemsService := &inventory.AdminItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_items.AdminSyncUserEntitlementsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := adminItemsService.AdminSyncUserEntitlementsShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminSyncUserEntitlementsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSyncUserEntitlementsCmd.MarkFlagRequired("namespace")
	AdminSyncUserEntitlementsCmd.Flags().String("userId", "", "User id")
	_ = AdminSyncUserEntitlementsCmd.MarkFlagRequired("userId")
}
