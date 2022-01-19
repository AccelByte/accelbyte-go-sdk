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

// searchItemsCmd represents the searchItems command
var searchItemsCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(searchItemsCmd)
	searchItemsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = searchItemsCmd.MarkFlagRequired("namespace")
	searchItemsCmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	searchItemsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	searchItemsCmd.Flags().Int32P("offset", "o", 0, "Offset")
	searchItemsCmd.Flags().StringP("storeId", "s", " ", "Store id")
	searchItemsCmd.Flags().StringP("keyword", "k", " ", "Keyword")
	_ = searchItemsCmd.MarkFlagRequired("keyword")
	searchItemsCmd.Flags().StringP("language", "l", " ", "Language")
	_ = searchItemsCmd.MarkFlagRequired("language")
}
