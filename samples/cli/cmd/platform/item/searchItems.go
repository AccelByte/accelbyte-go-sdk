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

// SearchItemsCmd represents the SearchItems command
var SearchItemsCmd = &cobra.Command{
	Use:   "searchItems",
	Short: "Search items",
	Long:  `Search items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		keyword, _ := cmd.Flags().GetString("keyword")
		language, _ := cmd.Flags().GetString("language")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		itemType, _ := cmd.Flags().GetString("itemType")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.SearchItemsParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			ItemType:   &itemType,
			Limit:      &limit,
			Offset:     &offset,
			SortBy:     &sortBy,
			StoreID:    &storeId,
			Keyword:    keyword,
			Language:   language,
		}
		ok, errOK := itemService.SearchItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SearchItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = SearchItemsCmd.MarkFlagRequired("namespace")
	SearchItemsCmd.Flags().Bool("activeOnly", false, "Active only")
	SearchItemsCmd.Flags().String("itemType", "", "Item type")
	SearchItemsCmd.Flags().Int32("limit", 20, "Limit")
	SearchItemsCmd.Flags().Int32("offset", 0, "Offset")
	SearchItemsCmd.Flags().String("sortBy", "", "Sort by")
	SearchItemsCmd.Flags().String("storeId", "", "Store id")
	SearchItemsCmd.Flags().String("keyword", "", "Keyword")
	_ = SearchItemsCmd.MarkFlagRequired("keyword")
	SearchItemsCmd.Flags().String("language", "", "Language")
	_ = SearchItemsCmd.MarkFlagRequired("language")
}
