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

// PublicQueryItemsCmd represents the PublicQueryItems command
var PublicQueryItemsCmd = &cobra.Command{
	Use:   "publicQueryItems",
	Short: "Public query items",
	Long:  `Public query items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		appType, _ := cmd.Flags().GetString("appType")
		baseAppId, _ := cmd.Flags().GetString("baseAppId")
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		features, _ := cmd.Flags().GetString("features")
		itemType, _ := cmd.Flags().GetString("itemType")
		language, _ := cmd.Flags().GetString("language")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		region, _ := cmd.Flags().GetString("region")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		storeId, _ := cmd.Flags().GetString("storeId")
		tags, _ := cmd.Flags().GetString("tags")
		input := &item.PublicQueryItemsParams{
			Namespace:    namespace,
			AppType:      &appType,
			BaseAppID:    &baseAppId,
			CategoryPath: &categoryPath,
			Features:     &features,
			ItemType:     &itemType,
			Language:     &language,
			Limit:        &limit,
			Offset:       &offset,
			Region:       &region,
			SortBy:       &sortBy,
			StoreID:      &storeId,
			Tags:         &tags,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.PublicQueryItems(input)
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
	PublicQueryItemsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicQueryItemsCmd.MarkFlagRequired("namespace")
	PublicQueryItemsCmd.Flags().StringP("appType", "", "", "App type")
	PublicQueryItemsCmd.Flags().StringP("baseAppId", "", "", "Base app id")
	PublicQueryItemsCmd.Flags().StringP("categoryPath", "", "", "Category path")
	PublicQueryItemsCmd.Flags().StringP("features", "", "", "Features")
	PublicQueryItemsCmd.Flags().StringP("itemType", "", "", "Item type")
	PublicQueryItemsCmd.Flags().StringP("language", "", "", "Language")
	PublicQueryItemsCmd.Flags().Int32P("limit", "", 20, "Limit")
	PublicQueryItemsCmd.Flags().Int32P("offset", "", 0, "Offset")
	PublicQueryItemsCmd.Flags().StringP("region", "", "", "Region")
	PublicQueryItemsCmd.Flags().StringP("sortBy", "", "", "Sort by")
	PublicQueryItemsCmd.Flags().StringP("storeId", "", "", "Store id")
	PublicQueryItemsCmd.Flags().StringP("tags", "", "", "Tags")
}
