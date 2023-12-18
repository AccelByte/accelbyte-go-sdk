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

// SelectAllRecordsByCriteriaCmd represents the SelectAllRecordsByCriteria command
var SelectAllRecordsByCriteriaCmd = &cobra.Command{
	Use:   "selectAllRecordsByCriteria",
	Short: "Select all records by criteria",
	Long:  `Select all records by criteria`,
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
		selected, _ := cmd.Flags().GetBool("selected")
		type_, _ := cmd.Flags().GetString("type")
		updatedAtEnd, _ := cmd.Flags().GetString("updatedAtEnd")
		updatedAtStart, _ := cmd.Flags().GetString("updatedAtStart")
		input := &catalog_changes.SelectAllRecordsByCriteriaParams{
			Namespace:      namespace,
			StoreID:        storeId,
			Action:         &action,
			ItemSku:        &itemSku,
			ItemType:       &itemType,
			Selected:       &selected,
			Type:           &type_,
			UpdatedAtEnd:   &updatedAtEnd,
			UpdatedAtStart: &updatedAtStart,
		}
		errNoContent := catalogChangesService.SelectAllRecordsByCriteriaShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SelectAllRecordsByCriteriaCmd.Flags().String("namespace", "", "Namespace")
	_ = SelectAllRecordsByCriteriaCmd.MarkFlagRequired("namespace")
	SelectAllRecordsByCriteriaCmd.Flags().String("storeId", "", "Store id")
	_ = SelectAllRecordsByCriteriaCmd.MarkFlagRequired("storeId")
	SelectAllRecordsByCriteriaCmd.Flags().String("action", "-1", "Action")
	SelectAllRecordsByCriteriaCmd.Flags().String("itemSku", "", "Item sku")
	SelectAllRecordsByCriteriaCmd.Flags().String("itemType", "", "Item type")
	SelectAllRecordsByCriteriaCmd.Flags().Bool("selected", false, "Selected")
	SelectAllRecordsByCriteriaCmd.Flags().String("type", "", "Type")
	SelectAllRecordsByCriteriaCmd.Flags().String("updatedAtEnd", "", "Updated at end")
	SelectAllRecordsByCriteriaCmd.Flags().String("updatedAtStart", "", "Updated at start")
}
