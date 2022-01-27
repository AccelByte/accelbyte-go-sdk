// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package item

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicQueryItemsCmd represents the publicQueryItems command
var publicQueryItemsCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicQueryItemsCmd)
	publicQueryItemsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicQueryItemsCmd.MarkFlagRequired("namespace")
	publicQueryItemsCmd.Flags().StringP("appType", "ae", " ", "App type")
	publicQueryItemsCmd.Flags().StringP("baseAppId", "bd", " ", "Base app id")
	publicQueryItemsCmd.Flags().StringP("categoryPath", "ch", " ", "Category path")
	publicQueryItemsCmd.Flags().StringP("features", "fs", " ", "Features")
	publicQueryItemsCmd.Flags().StringP("itemType", "ie", " ", "Item type")
	publicQueryItemsCmd.Flags().StringP("language", "le", " ", "Language")
	publicQueryItemsCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	publicQueryItemsCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	publicQueryItemsCmd.Flags().StringP("region", "rn", " ", "Region")
	publicQueryItemsCmd.Flags().StringP("sortBy", "sy", " ", "Sort by")
	publicQueryItemsCmd.Flags().StringP("storeId", "sd", " ", "Store id")
	publicQueryItemsCmd.Flags().StringP("tags", "ts", " ", "Tags")
}
