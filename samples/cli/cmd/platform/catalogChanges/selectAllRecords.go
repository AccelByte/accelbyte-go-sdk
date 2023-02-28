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

// SelectAllRecordsCmd represents the SelectAllRecords command
var SelectAllRecordsCmd = &cobra.Command{
	Use:   "selectAllRecords",
	Short: "Select all records",
	Long:  `Select all records`,
	RunE: func(cmd *cobra.Command, args []string) error {
		catalogChangesService := &platform.CatalogChangesService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &catalog_changes.SelectAllRecordsParams{
			Namespace: namespace,
			StoreID:   storeId,
		}
		errNoContent := catalogChangesService.SelectAllRecordsShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SelectAllRecordsCmd.Flags().String("namespace", "", "Namespace")
	_ = SelectAllRecordsCmd.MarkFlagRequired("namespace")
	SelectAllRecordsCmd.Flags().String("storeId", "", "Store id")
	_ = SelectAllRecordsCmd.MarkFlagRequired("storeId")
}
