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

// QueryItemsV2Cmd represents the QueryItemsV2 command
var QueryItemsV2Cmd = &cobra.Command{
	Use:   "queryItemsV2",
	Short: "Query items V2",
	Long:  `Query items V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		appType, _ := cmd.Flags().GetString("appType")
		availableDate, _ := cmd.Flags().GetString("availableDate")
		baseAppId, _ := cmd.Flags().GetString("baseAppId")
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		features, _ := cmd.Flags().GetString("features")
		includeSubCategoryItem, _ := cmd.Flags().GetBool("includeSubCategoryItem")
		itemName, _ := cmd.Flags().GetString("itemName")
		itemStatus, _ := cmd.Flags().GetString("itemStatus")
		itemTypeString := cmd.Flag("itemType").Value.String()
		var itemType []string
		errItemType := json.Unmarshal([]byte(itemTypeString), &itemType)
		if errItemType != nil {
			return errItemType
		}
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		region, _ := cmd.Flags().GetString("region")
		sectionExclusive, _ := cmd.Flags().GetBool("sectionExclusive")
		sortByString := cmd.Flag("sortBy").Value.String()
		var sortBy []string
		errSortBy := json.Unmarshal([]byte(sortByString), &sortBy)
		if errSortBy != nil {
			return errSortBy
		}
		storeId, _ := cmd.Flags().GetString("storeId")
		tags, _ := cmd.Flags().GetString("tags")
		targetNamespace, _ := cmd.Flags().GetString("targetNamespace")
		withTotal, _ := cmd.Flags().GetBool("withTotal")
		input := &item.QueryItemsV2Params{
			Namespace:              namespace,
			AppType:                &appType,
			AvailableDate:          &availableDate,
			BaseAppID:              &baseAppId,
			CategoryPath:           &categoryPath,
			Features:               &features,
			IncludeSubCategoryItem: &includeSubCategoryItem,
			ItemName:               &itemName,
			ItemStatus:             &itemStatus,
			ItemType:               itemType,
			Limit:                  &limit,
			Offset:                 &offset,
			Region:                 &region,
			SectionExclusive:       &sectionExclusive,
			SortBy:                 sortBy,
			StoreID:                &storeId,
			Tags:                   &tags,
			TargetNamespace:        &targetNamespace,
			WithTotal:              &withTotal,
		}
		ok, errOK := itemService.QueryItemsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryItemsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = QueryItemsV2Cmd.MarkFlagRequired("namespace")
	QueryItemsV2Cmd.Flags().String("appType", "", "App type")
	QueryItemsV2Cmd.Flags().String("availableDate", "", "Available date")
	QueryItemsV2Cmd.Flags().String("baseAppId", "", "Base app id")
	QueryItemsV2Cmd.Flags().String("categoryPath", "", "Category path")
	QueryItemsV2Cmd.Flags().String("features", "", "Features")
	QueryItemsV2Cmd.Flags().Bool("includeSubCategoryItem", false, "Include sub category item")
	QueryItemsV2Cmd.Flags().String("itemName", "", "Item name")
	QueryItemsV2Cmd.Flags().String("itemStatus", "", "Item status")
	QueryItemsV2Cmd.Flags().String("itemType", "", "Item type")
	QueryItemsV2Cmd.Flags().Int32("limit", 20, "Limit")
	QueryItemsV2Cmd.Flags().Int32("offset", 0, "Offset")
	QueryItemsV2Cmd.Flags().String("region", "", "Region")
	QueryItemsV2Cmd.Flags().Bool("sectionExclusive", false, "Section exclusive")
	QueryItemsV2Cmd.Flags().String("sortBy", "", "Sort by")
	QueryItemsV2Cmd.Flags().String("storeId", "", "Store id")
	QueryItemsV2Cmd.Flags().String("tags", "", "Tags")
	QueryItemsV2Cmd.Flags().String("targetNamespace", "", "Target namespace")
	QueryItemsV2Cmd.Flags().Bool("withTotal", false, "With total")
}
