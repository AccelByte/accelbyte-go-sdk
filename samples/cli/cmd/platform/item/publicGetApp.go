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

// PublicGetAppCmd represents the PublicGetApp command
var PublicGetAppCmd = &cobra.Command{
	Use:   "publicGetApp",
	Short: "Public get app",
	Long:  `Public get app`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.PublicGetAppParams{
			ItemID:    itemId,
			Namespace: namespace,
			Language:  &language,
			Region:    &region,
			StoreID:   &storeId,
		}
		ok, err := itemService.PublicGetAppShort(input)
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
	PublicGetAppCmd.Flags().String("itemId", "", "Item id")
	_ = PublicGetAppCmd.MarkFlagRequired("itemId")
	PublicGetAppCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetAppCmd.MarkFlagRequired("namespace")
	PublicGetAppCmd.Flags().String("language", "", "Language")
	PublicGetAppCmd.Flags().String("region", "", "Region")
	PublicGetAppCmd.Flags().String("storeId", "", "Store id")
}
