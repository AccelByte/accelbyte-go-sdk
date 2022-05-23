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

// PublicGetItemCmd represents the PublicGetItem command
var PublicGetItemCmd = &cobra.Command{
	Use:   "publicGetItem",
	Short: "Public get item",
	Long:  `Public get item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		populateBundle, _ := cmd.Flags().GetBool("populateBundle")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.PublicGetItemParams{
			ItemID:         itemId,
			Namespace:      namespace,
			Language:       &language,
			PopulateBundle: &populateBundle,
			Region:         &region,
			StoreID:        &storeId,
		}
		ok, err := itemService.PublicGetItemShort(input)
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
	PublicGetItemCmd.Flags().String("itemId", "", "Item id")
	_ = PublicGetItemCmd.MarkFlagRequired("itemId")
	PublicGetItemCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetItemCmd.MarkFlagRequired("namespace")
	PublicGetItemCmd.Flags().String("language", "", "Language")
	PublicGetItemCmd.Flags().Bool("populateBundle", false, "Populate bundle")
	PublicGetItemCmd.Flags().String("region", "", "Region")
	PublicGetItemCmd.Flags().String("storeId", "", "Store id")
}
