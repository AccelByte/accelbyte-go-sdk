// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package category

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetDescendantCategoriesCmd represents the PublicGetDescendantCategories command
var PublicGetDescendantCategoriesCmd = &cobra.Command{
	Use:   "publicGetDescendantCategories",
	Short: "Public get descendant categories",
	Long:  `Public get descendant categories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.PublicGetDescendantCategoriesParams{
			CategoryPath: categoryPath,
			Namespace:    namespace,
			Language:     &language,
			StoreID:      &storeId,
		}
		ok, errOK := categoryService.PublicGetDescendantCategoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetDescendantCategoriesCmd.Flags().String("categoryPath", "", "Category path")
	_ = PublicGetDescendantCategoriesCmd.MarkFlagRequired("categoryPath")
	PublicGetDescendantCategoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetDescendantCategoriesCmd.MarkFlagRequired("namespace")
	PublicGetDescendantCategoriesCmd.Flags().String("language", "", "Language")
	PublicGetDescendantCategoriesCmd.Flags().String("storeId", "", "Store id")
}
