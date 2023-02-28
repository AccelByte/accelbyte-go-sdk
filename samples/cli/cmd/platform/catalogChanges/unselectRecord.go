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

// UnselectRecordCmd represents the UnselectRecord command
var UnselectRecordCmd = &cobra.Command{
	Use:   "unselectRecord",
	Short: "Unselect record",
	Long:  `Unselect record`,
	RunE: func(cmd *cobra.Command, args []string) error {
		catalogChangesService := &platform.CatalogChangesService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		changeId, _ := cmd.Flags().GetString("changeId")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &catalog_changes.UnselectRecordParams{
			ChangeID:  changeId,
			Namespace: namespace,
			StoreID:   storeId,
		}
		errNoContent := catalogChangesService.UnselectRecordShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UnselectRecordCmd.Flags().String("changeId", "", "Change id")
	_ = UnselectRecordCmd.MarkFlagRequired("changeId")
	UnselectRecordCmd.Flags().String("namespace", "", "Namespace")
	_ = UnselectRecordCmd.MarkFlagRequired("namespace")
	UnselectRecordCmd.Flags().String("storeId", "", "Store id")
	_ = UnselectRecordCmd.MarkFlagRequired("storeId")
}
