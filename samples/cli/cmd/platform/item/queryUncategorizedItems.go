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

// queryUncategorizedItemsCmd represents the queryUncategorizedItems command
var queryUncategorizedItemsCmd = &cobra.Command{
	Use:   "queryUncategorizedItems",
	Short: "Query uncategorized items",
	Long:  `Query uncategorized items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.QueryUncategorizedItemsParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			Limit:      &limit,
			Offset:     &offset,
			SortBy:     &sortBy,
			StoreID:    &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.QueryUncategorizedItems(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryUncategorizedItemsCmd)
	queryUncategorizedItemsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryUncategorizedItemsCmd.MarkFlagRequired("namespace")
	queryUncategorizedItemsCmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	queryUncategorizedItemsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryUncategorizedItemsCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryUncategorizedItemsCmd.Flags().StringP("sortBy", "s", " ", "Sort by")
	queryUncategorizedItemsCmd.Flags().StringP("storeId", "s", " ", "Store id")
}
