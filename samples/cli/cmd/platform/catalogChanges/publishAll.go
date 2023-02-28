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

// PublishAllCmd represents the PublishAll command
var PublishAllCmd = &cobra.Command{
	Use:   "publishAll",
	Short: "Publish all",
	Long:  `Publish all`,
	RunE: func(cmd *cobra.Command, args []string) error {
		catalogChangesService := &platform.CatalogChangesService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &catalog_changes.PublishAllParams{
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, errOK := catalogChangesService.PublishAllShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublishAllCmd.Flags().String("namespace", "", "Namespace")
	_ = PublishAllCmd.MarkFlagRequired("namespace")
	PublishAllCmd.Flags().String("storeId", "", "Store id")
	_ = PublishAllCmd.MarkFlagRequired("storeId")
}
