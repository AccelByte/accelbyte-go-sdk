// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"encoding/json"

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
		sortByString := cmd.Flag("sortBy").Value.String()
		var sortBy []string
		errSortBy := json.Unmarshal([]byte(sortByString), &sortBy)
		if errSortBy != nil {
			return errSortBy
		}
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
			SortBy:       sortBy,
			StoreID:      &storeId,
			Tags:         &tags,
		}
		ok, err := itemService.PublicQueryItemsShort(input)
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
	PublicQueryItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryItemsCmd.MarkFlagRequired("namespace")
	PublicQueryItemsCmd.Flags().String("appType", "", "App type")
	PublicQueryItemsCmd.Flags().String("baseAppId", "", "Base app id")
	PublicQueryItemsCmd.Flags().String("categoryPath", "", "Category path")
	PublicQueryItemsCmd.Flags().String("features", "", "Features")
	PublicQueryItemsCmd.Flags().String("itemType", "", "Item type")
	PublicQueryItemsCmd.Flags().String("language", "", "Language")
	PublicQueryItemsCmd.Flags().Int32("limit", 20, "Limit")
	PublicQueryItemsCmd.Flags().Int32("offset", 0, "Offset")
	PublicQueryItemsCmd.Flags().String("region", "", "Region")
	PublicQueryItemsCmd.Flags().String("sortBy", "", "Sort by")
	PublicQueryItemsCmd.Flags().String("storeId", "", "Store id")
	PublicQueryItemsCmd.Flags().String("tags", "", "Tags")
}
