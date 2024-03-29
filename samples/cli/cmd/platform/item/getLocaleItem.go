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

// GetLocaleItemCmd represents the GetLocaleItem command
var GetLocaleItemCmd = &cobra.Command{
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
		ok, errOK := itemService.GetLocaleItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetLocaleItemCmd.Flags().String("itemId", "", "Item id")
	_ = GetLocaleItemCmd.MarkFlagRequired("itemId")
	GetLocaleItemCmd.Flags().String("namespace", "", "Namespace")
	_ = GetLocaleItemCmd.MarkFlagRequired("namespace")
	GetLocaleItemCmd.Flags().Bool("activeOnly", false, "Active only")
	GetLocaleItemCmd.Flags().String("language", "", "Language")
	GetLocaleItemCmd.Flags().Bool("populateBundle", false, "Populate bundle")
	GetLocaleItemCmd.Flags().String("region", "", "Region")
	GetLocaleItemCmd.Flags().String("storeId", "", "Store id")
}
