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
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.SearchItemsParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			Limit:      &limit,
			Offset:     &offset,
			StoreID:    &storeId,
			Keyword:    keyword,
			Language:   language,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.SearchItems(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	SearchItemsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SearchItemsCmd.MarkFlagRequired("namespace")
	SearchItemsCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	SearchItemsCmd.Flags().Int32P("limit", "", 20, "Limit")
	SearchItemsCmd.Flags().Int32P("offset", "", 0, "Offset")
	SearchItemsCmd.Flags().StringP("storeId", "", "", "Store id")
	SearchItemsCmd.Flags().StringP("keyword", "", "", "Keyword")
	_ = SearchItemsCmd.MarkFlagRequired("keyword")
	SearchItemsCmd.Flags().StringP("language", "", "", "Language")
	_ = SearchItemsCmd.MarkFlagRequired("language")
}
