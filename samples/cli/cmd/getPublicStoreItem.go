// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"

	"github.com/spf13/cobra"
)

// getPublicStoreItemCmd represents the getPublicStoreItem command
var getPublicStoreItemCmd = &cobra.Command{
	Use:   "getPublicStoreItem",
	Short: "Get public store items",
	Long:  `Get public store items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		appType := cmd.Flag("appType").Value.String()
		baseAppId := cmd.Flag("baseAppId").Value.String()
		categoryPath := cmd.Flag("categoryPath").Value.String()
		features := cmd.Flag("features").Value.String()
		itemType := cmd.Flag("itemType").Value.String()
		language := cmd.Flag("language").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		region := cmd.Flag("region").Value.String()
		sortBy := cmd.Flag("sortBy").Value.String()
		storeId := cmd.Flag("storeId").Value.String()
		tags := cmd.Flag("tags").Value.String()
		offset, err := cmd.Flags().GetInt32("offset")
		if err != nil {
			return err
		}
		limit, err := cmd.Flags().GetInt32("limit")
		if err != nil {
			return err
		}
		input := &item.PublicQueryItemsParams{
			AppType:      &appType,
			BaseAppID:    &baseAppId,
			CategoryPath: &categoryPath,
			Features:     &features,
			ItemType:     &itemType,
			Language:     &language,
			Limit:        &limit,
			Namespace:    namespace,
			Offset:       &offset,
			Region:       &region,
			SortBy:       &sortBy,
			StoreID:      &storeId,
			Tags:         &tags,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		items, err := itemService.PublicQueryItems(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(items)
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", response)
		return nil
	},
}

func init() {
	RootCmd.AddCommand(getPublicStoreItemCmd)

	getPublicStoreItemCmd.Flags().StringP("appType", "", "", "Sub type of APP item")
	getPublicStoreItemCmd.Flags().StringP("baseAppId", "", "", "Base APP ID")
	getPublicStoreItemCmd.Flags().StringP("categoryPath", "", "", "Category Path")
	getPublicStoreItemCmd.Flags().StringP("features", "", "", "Item features")
	getPublicStoreItemCmd.Flags().StringP("itemType", "", "", "Item type")
	getPublicStoreItemCmd.Flags().StringP("language", "", "", "Item language")
	getPublicStoreItemCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = getPublicStoreItemCmd.MarkFlagRequired("namespace")
	getPublicStoreItemCmd.Flags().StringP("region", "", "", "Region")
	getPublicStoreItemCmd.Flags().StringP("sortBy", "", "", "Sort by")
	getPublicStoreItemCmd.Flags().StringP("storeId", "", "", "Store ID")
	getPublicStoreItemCmd.Flags().StringP("tags", "", "", "Tags")
	getPublicStoreItemCmd.Flags().Int32P("offset", "", 0, "Pagination offset")
	getPublicStoreItemCmd.Flags().Int32P("limit", "", 20, "Pagination limit")
}
