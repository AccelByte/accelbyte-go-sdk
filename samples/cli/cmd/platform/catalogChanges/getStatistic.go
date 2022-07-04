// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package catalogChanges

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/catalog_changes"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetStatisticCmd represents the GetStatistic command
var GetStatisticCmd = &cobra.Command{
	Use:   "getStatistic",
	Short: "Get statistic",
	Long:  `Get statistic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		catalogChangesService := &platform.CatalogChangesService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		action, _ := cmd.Flags().GetString("action")
		itemSku, _ := cmd.Flags().GetString("itemSku")
		itemType, _ := cmd.Flags().GetString("itemType")
		type_, _ := cmd.Flags().GetString("type")
		updatedAtEnd, _ := cmd.Flags().GetString("updatedAtEnd")
		updatedAtStart, _ := cmd.Flags().GetString("updatedAtStart")
		input := &catalog_changes.GetStatisticParams{
			Namespace:      namespace,
			StoreID:        storeId,
			Action:         &action,
			ItemSku:        &itemSku,
			ItemType:       &itemType,
			Type:           &type_,
			UpdatedAtEnd:   &updatedAtEnd,
			UpdatedAtStart: &updatedAtStart,
		}
		ok, err := catalogChangesService.GetStatisticShort(input)
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
	GetStatisticCmd.Flags().String("namespace", "", "Namespace")
	_ = GetStatisticCmd.MarkFlagRequired("namespace")
	GetStatisticCmd.Flags().String("storeId", "", "Store id")
	_ = GetStatisticCmd.MarkFlagRequired("storeId")
	GetStatisticCmd.Flags().String("action", "-1", "Action")
	GetStatisticCmd.Flags().String("itemSku", "", "Item sku")
	GetStatisticCmd.Flags().String("itemType", "", "Item type")
	GetStatisticCmd.Flags().String("type", "", "Type")
	GetStatisticCmd.Flags().String("updatedAtEnd", "", "Updated at end")
	GetStatisticCmd.Flags().String("updatedAtStart", "", "Updated at start")
}
