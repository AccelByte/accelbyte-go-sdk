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

// publicBulkGetItemsCmd represents the publicBulkGetItems command
var publicBulkGetItemsCmd = &cobra.Command{
	Use:   "publicBulkGetItems",
	Short: "Public bulk get items",
	Long:  `Public bulk get items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		itemIds, _ := cmd.Flags().GetString("itemIds")
		language, _ := cmd.Flags().GetString("language")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.PublicBulkGetItemsParams{
			Namespace: namespace,
			Language:  &language,
			Region:    &region,
			StoreID:   &storeId,
			ItemIds:   itemIds,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.PublicBulkGetItems(input)
		if err != nil {
			logrus.Error(err)
			return err
		}
		okJson, err := json.MarshalIndent(ok, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", string(okJson))
		return nil
	},
}

func init() {
	RootCmd.AddCommand(publicBulkGetItemsCmd)
	publicBulkGetItemsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicBulkGetItemsCmd.MarkFlagRequired("namespace")
	publicBulkGetItemsCmd.Flags().StringP("language", "l", " ", "Language")
	publicBulkGetItemsCmd.Flags().StringP("region", "r", " ", "Region")
	publicBulkGetItemsCmd.Flags().StringP("storeId", "s", " ", "Store id")
	publicBulkGetItemsCmd.Flags().StringP("itemIds", "i", " ", "Item ids")
	_ = publicBulkGetItemsCmd.MarkFlagRequired("itemIds")
}
