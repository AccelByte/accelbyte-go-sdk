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

// PublishSelectedCmd represents the PublishSelected command
var PublishSelectedCmd = &cobra.Command{
	Use:   "publishSelected",
	Short: "Publish selected",
	Long:  `Publish selected`,
	RunE: func(cmd *cobra.Command, args []string) error {
		catalogChangesService := &platform.CatalogChangesService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &catalog_changes.PublishSelectedParams{
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, err := catalogChangesService.PublishSelectedShort(input)
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
	PublishSelectedCmd.Flags().String("namespace", "", "Namespace")
	_ = PublishSelectedCmd.MarkFlagRequired("namespace")
	PublishSelectedCmd.Flags().String("storeId", "", "Store id")
	_ = PublishSelectedCmd.MarkFlagRequired("storeId")
}
