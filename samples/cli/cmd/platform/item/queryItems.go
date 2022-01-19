// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryItemsCmd represents the queryItems command
var queryItemsCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryItemsCmd)
	queryItemsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryItemsCmd.MarkFlagRequired("namespace")
	queryItemsCmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	queryItemsCmd.Flags().StringP("appType", "a", " ", "App type")
	queryItemsCmd.Flags().StringP("availableDate", "a", " ", "Available date")
	queryItemsCmd.Flags().StringP("baseAppId", "b", " ", "Base app id")
	queryItemsCmd.Flags().StringP("categoryPath", "c", " ", "Category path")
	queryItemsCmd.Flags().StringP("features", "f", " ", "Features")
	queryItemsCmd.Flags().StringP("itemType", "i", " ", "Item type")
	queryItemsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryItemsCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryItemsCmd.Flags().StringP("region", "r", " ", "Region")
	queryItemsCmd.Flags().StringP("sortBy", "s", " ", "Sort by")
	queryItemsCmd.Flags().StringP("storeId", "s", " ", "Store id")
	queryItemsCmd.Flags().StringP("tags", "t", " ", "Tags")
	queryItemsCmd.Flags().StringP("targetNamespace", "t", " ", "Target namespace")
}
