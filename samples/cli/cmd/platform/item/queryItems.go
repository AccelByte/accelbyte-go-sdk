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
		itemType, _ := cmd.Flags().GetString("itemType")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		region, _ := cmd.Flags().GetString("region")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		storeId, _ := cmd.Flags().GetString("storeId")
		tags, _ := cmd.Flags().GetString("tags")
		targetNamespace, _ := cmd.Flags().GetString("targetNamespace")
		input := &item.QueryItemsParams{
			Namespace:       namespace,
			ActiveOnly:      &activeOnly,
			AppType:         &appType,
			AvailableDate:   &availableDate,
			BaseAppID:       &baseAppId,
			CategoryPath:    &categoryPath,
			Features:        &features,
			ItemType:        &itemType,
			Limit:           &limit,
			Offset:          &offset,
			Region:          &region,
			SortBy:          &sortBy,
			StoreID:         &storeId,
			Tags:            &tags,
			TargetNamespace: &targetNamespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.QueryItems(input)
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
	QueryItemsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QueryItemsCmd.MarkFlagRequired("namespace")
	QueryItemsCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	QueryItemsCmd.Flags().StringP("appType", "", "", "App type")
	QueryItemsCmd.Flags().StringP("availableDate", "", "", "Available date")
	QueryItemsCmd.Flags().StringP("baseAppId", "", "", "Base app id")
	QueryItemsCmd.Flags().StringP("categoryPath", "", "", "Category path")
	QueryItemsCmd.Flags().StringP("features", "", "", "Features")
	QueryItemsCmd.Flags().StringP("itemType", "", "", "Item type")
	QueryItemsCmd.Flags().Int32P("limit", "", 20, "Limit")
	QueryItemsCmd.Flags().Int32P("offset", "", 0, "Offset")
	QueryItemsCmd.Flags().StringP("region", "", "", "Region")
	QueryItemsCmd.Flags().StringP("sortBy", "", "", "Sort by")
	QueryItemsCmd.Flags().StringP("storeId", "", "", "Store id")
	QueryItemsCmd.Flags().StringP("tags", "", "", "Tags")
	QueryItemsCmd.Flags().StringP("targetNamespace", "", "", "Target namespace")
}
