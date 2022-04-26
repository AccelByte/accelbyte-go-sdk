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

// QueryUncategorizedItemsCmd represents the QueryUncategorizedItems command
var QueryUncategorizedItemsCmd = &cobra.Command{
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
		ok, err := itemService.QueryUncategorizedItemsShort(input)
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
	QueryUncategorizedItemsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QueryUncategorizedItemsCmd.MarkFlagRequired("namespace")
	QueryUncategorizedItemsCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	QueryUncategorizedItemsCmd.Flags().Int32P("limit", "", 20, "Limit")
	QueryUncategorizedItemsCmd.Flags().Int32P("offset", "", 0, "Offset")
	QueryUncategorizedItemsCmd.Flags().StringP("sortBy", "", "", "Sort by")
	QueryUncategorizedItemsCmd.Flags().StringP("storeId", "", "", "Store id")
}
