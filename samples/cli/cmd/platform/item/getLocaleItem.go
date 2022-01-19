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

// getLocaleItemCmd represents the getLocaleItem command
var getLocaleItemCmd = &cobra.Command{
	Use:   "getLocaleItem",
	Short: "Get locale item",
	Long:  `Get locale item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		language, _ := cmd.Flags().GetString("language")
		populateBundle, _ := cmd.Flags().GetBool("populateBundle")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetLocaleItemParams{
			ItemID:         itemId,
			Namespace:      namespace,
			ActiveOnly:     &activeOnly,
			Language:       &language,
			PopulateBundle: &populateBundle,
			Region:         &region,
			StoreID:        &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.GetLocaleItem(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getLocaleItemCmd)
	getLocaleItemCmd.Flags().StringP("itemId", "i", " ", "Item id")
	_ = getLocaleItemCmd.MarkFlagRequired("itemId")
	getLocaleItemCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getLocaleItemCmd.MarkFlagRequired("namespace")
	getLocaleItemCmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	getLocaleItemCmd.Flags().StringP("language", "l", " ", "Language")
	getLocaleItemCmd.Flags().BoolP("populateBundle", "p", false, "Populate bundle")
	getLocaleItemCmd.Flags().StringP("region", "r", " ", "Region")
	getLocaleItemCmd.Flags().StringP("storeId", "s", " ", "Store id")
}
