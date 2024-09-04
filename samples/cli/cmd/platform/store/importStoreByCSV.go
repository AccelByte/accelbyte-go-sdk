// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImportStoreByCSVCmd represents the ImportStoreByCSV command
var ImportStoreByCSVCmd = &cobra.Command{
	Use:   "importStoreByCSV",
	Short: "Import store by CSV",
	Long:  `Import store by CSV`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		outputCategory := cmd.Flag("category").Value.String()
		logrus.Infof("category %v", outputCategory)
		category, err := os.Open(outputCategory)
		if err != nil {
			return err
		}
		outputDisplay := cmd.Flag("display").Value.String()
		logrus.Infof("display %v", outputDisplay)
		display, err := os.Open(outputDisplay)
		if err != nil {
			return err
		}
		outputItem := cmd.Flag("item").Value.String()
		logrus.Infof("item %v", outputItem)
		item, err := os.Open(outputItem)
		if err != nil {
			return err
		}
		notes, _ := cmd.Flags().GetString("notes")
		outputSection := cmd.Flag("section").Value.String()
		logrus.Infof("section %v", outputSection)
		section, err := os.Open(outputSection)
		if err != nil {
			return err
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &store.ImportStoreByCSVParams{
			Category:  category,
			Display:   display,
			Item:      item,
			Notes:     notes,
			Section:   section,
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, errOK := storeService.ImportStoreByCSVShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ImportStoreByCSVCmd.Flags().String("category", "", "Category")
	_ = ImportStoreByCSVCmd.MarkFlagRequired("category")
	ImportStoreByCSVCmd.Flags().String("display", "", "Display")
	_ = ImportStoreByCSVCmd.MarkFlagRequired("display")
	ImportStoreByCSVCmd.Flags().String("item", "", "Item")
	_ = ImportStoreByCSVCmd.MarkFlagRequired("item")
	ImportStoreByCSVCmd.Flags().String("notes", "", "Notes")
	_ = ImportStoreByCSVCmd.MarkFlagRequired("notes")
	ImportStoreByCSVCmd.Flags().String("section", "", "Section")
	_ = ImportStoreByCSVCmd.MarkFlagRequired("section")
	ImportStoreByCSVCmd.Flags().String("namespace", "", "Namespace")
	_ = ImportStoreByCSVCmd.MarkFlagRequired("namespace")
	ImportStoreByCSVCmd.Flags().String("storeId", "", "Store id")
	_ = ImportStoreByCSVCmd.MarkFlagRequired("storeId")
}
