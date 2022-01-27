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
	Use:   "SearchItems",
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	SearchItemsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = SearchItemsCmd.MarkFlagRequired("namespace")
	SearchItemsCmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	SearchItemsCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	SearchItemsCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	SearchItemsCmd.Flags().StringP("storeId", "sd", " ", "Store id")
	SearchItemsCmd.Flags().StringP("keyword", "kd", " ", "Keyword")
	_ = SearchItemsCmd.MarkFlagRequired("keyword")
	SearchItemsCmd.Flags().StringP("language", "le", " ", "Language")
	_ = SearchItemsCmd.MarkFlagRequired("language")
}
