// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.PublicGetItem(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicGetItemCmd.Flags().StringP("itemId", "", "", "Item id")
	_ = PublicGetItemCmd.MarkFlagRequired("itemId")
	PublicGetItemCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetItemCmd.MarkFlagRequired("namespace")
	PublicGetItemCmd.Flags().StringP("language", "", "", "Language")
	PublicGetItemCmd.Flags().BoolP("populateBundle", "", false, "Populate bundle")
	PublicGetItemCmd.Flags().StringP("region", "", "", "Region")
	PublicGetItemCmd.Flags().StringP("storeId", "", "", "Store id")
}
