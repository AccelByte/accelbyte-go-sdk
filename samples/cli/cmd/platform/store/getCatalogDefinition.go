// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCatalogDefinitionCmd represents the GetCatalogDefinition command
var GetCatalogDefinitionCmd = &cobra.Command{
	Use:   "getCatalogDefinition",
	Short: "Get catalog definition",
	Long:  `Get catalog definition`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		catalogType, _ := cmd.Flags().GetString("catalogType")
		input := &store.GetCatalogDefinitionParams{
			Namespace:   namespace,
			CatalogType: catalogType,
		}
		ok, errOK := storeService.GetCatalogDefinitionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetCatalogDefinitionCmd.Flags().String("namespace", "", "Namespace")
	_ = GetCatalogDefinitionCmd.MarkFlagRequired("namespace")
	GetCatalogDefinitionCmd.Flags().String("catalogType", "", "Catalog type")
	_ = GetCatalogDefinitionCmd.MarkFlagRequired("catalogType")
}
