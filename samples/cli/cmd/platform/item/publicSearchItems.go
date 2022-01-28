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

// PublicSearchItemsCmd represents the PublicSearchItems command
var PublicSearchItemsCmd = &cobra.Command{
	Use:   "publicSearchItems",
	Short: "Public search items",
	Long:  `Public search items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		keyword, _ := cmd.Flags().GetString("keyword")
		language, _ := cmd.Flags().GetString("language")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.PublicSearchItemsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Region:    &region,
			StoreID:   &storeId,
			Keyword:   keyword,
			Language:  language,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.PublicSearchItems(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicSearchItemsCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = PublicSearchItemsCmd.MarkFlagRequired("namespace")
	PublicSearchItemsCmd.Flags().Int32P("limit", "", 20, "Limit")
	PublicSearchItemsCmd.Flags().Int32P("offset", "", 0, "Offset")
	PublicSearchItemsCmd.Flags().StringP("region", "", " ", "Region")
	PublicSearchItemsCmd.Flags().StringP("storeId", "", " ", "Store id")
	PublicSearchItemsCmd.Flags().StringP("keyword", "", " ", "Keyword")
	_ = PublicSearchItemsCmd.MarkFlagRequired("keyword")
	PublicSearchItemsCmd.Flags().StringP("language", "", " ", "Language")
	_ = PublicSearchItemsCmd.MarkFlagRequired("language")
}
