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
		ok, err := itemService.PublicSearchItemsShort(input)
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
	PublicSearchItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicSearchItemsCmd.MarkFlagRequired("namespace")
	PublicSearchItemsCmd.Flags().Int32("limit", 20, "Limit")
	PublicSearchItemsCmd.Flags().Int32("offset", 0, "Offset")
	PublicSearchItemsCmd.Flags().String("region", "", "Region")
	PublicSearchItemsCmd.Flags().String("storeId", "", "Store id")
	PublicSearchItemsCmd.Flags().String("keyword", "", "Keyword")
	_ = PublicSearchItemsCmd.MarkFlagRequired("keyword")
	PublicSearchItemsCmd.Flags().String("language", "", "Language")
	_ = PublicSearchItemsCmd.MarkFlagRequired("language")
}
