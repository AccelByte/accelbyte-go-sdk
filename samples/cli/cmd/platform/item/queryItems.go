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

// QueryItemsCmd represents the QueryItems command
var QueryItemsCmd = &cobra.Command{
	Use:   "queryItems",
	Short: "Query items",
	Long:  `Query items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		appType, _ := cmd.Flags().GetString("appType")
		availableDate, _ := cmd.Flags().GetString("availableDate")
		baseAppId, _ := cmd.Flags().GetString("baseAppId")
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		features, _ := cmd.Flags().GetString("features")
		includeSubCategoryItem, _ := cmd.Flags().GetBool("includeSubCategoryItem")
		itemType, _ := cmd.Flags().GetString("itemType")
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
		targetNamespace, _ := cmd.Flags().GetString("targetNamespace")
		input := &item.QueryItemsParams{
			Namespace:              namespace,
			ActiveOnly:             &activeOnly,
			AppType:                &appType,
			AvailableDate:          &availableDate,
			BaseAppID:              &baseAppId,
			CategoryPath:           &categoryPath,
			Features:               &features,
			IncludeSubCategoryItem: &includeSubCategoryItem,
			ItemType:               &itemType,
			Limit:                  &limit,
			Offset:                 &offset,
			Region:                 &region,
			SortBy:                 sortBy,
			StoreID:                &storeId,
			Tags:                   &tags,
			TargetNamespace:        &targetNamespace,
		}
		ok, err := itemService.QueryItemsShort(input)
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
	QueryItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryItemsCmd.MarkFlagRequired("namespace")
	QueryItemsCmd.Flags().Bool("activeOnly", false, "Active only")
	QueryItemsCmd.Flags().String("appType", "", "App type")
	QueryItemsCmd.Flags().String("availableDate", "", "Available date")
	QueryItemsCmd.Flags().String("baseAppId", "", "Base app id")
	QueryItemsCmd.Flags().String("categoryPath", "", "Category path")
	QueryItemsCmd.Flags().String("features", "", "Features")
	QueryItemsCmd.Flags().Bool("includeSubCategoryItem", false, "Include sub category item")
	QueryItemsCmd.Flags().String("itemType", "", "Item type")
	QueryItemsCmd.Flags().Int32("limit", 20, "Limit")
	QueryItemsCmd.Flags().Int32("offset", 0, "Offset")
	QueryItemsCmd.Flags().String("region", "", "Region")
	QueryItemsCmd.Flags().String("sortBy", "", "Sort by")
	QueryItemsCmd.Flags().String("storeId", "", "Store id")
	QueryItemsCmd.Flags().String("tags", "", "Tags")
	QueryItemsCmd.Flags().String("targetNamespace", "", "Target namespace")
}
