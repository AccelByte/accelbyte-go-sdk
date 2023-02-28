// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAppCmd represents the GetApp command
var GetAppCmd = &cobra.Command{
	Use:   "getApp",
	Short: "Get app",
	Long:  `Get app`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetAppParams{
			ItemID:     itemId,
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			StoreID:    &storeId,
		}
		ok, errOK := itemService.GetAppShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAppCmd.Flags().String("itemId", "", "Item id")
	_ = GetAppCmd.MarkFlagRequired("itemId")
	GetAppCmd.Flags().String("namespace", "", "Namespace")
	_ = GetAppCmd.MarkFlagRequired("namespace")
	GetAppCmd.Flags().Bool("activeOnly", false, "Active only")
	GetAppCmd.Flags().String("storeId", "", "Store id")
}
