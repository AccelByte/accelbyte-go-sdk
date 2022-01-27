// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package category

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetChildCategoriesCmd represents the PublicGetChildCategories command
var PublicGetChildCategoriesCmd = &cobra.Command{
	Use:   "PublicGetChildCategories",
	Short: "Public get child categories",
	Long:  `Public get child categories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.PublicGetChildCategoriesParams{
			CategoryPath: categoryPath,
			Namespace:    namespace,
			Language:     &language,
			StoreID:      &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := categoryService.PublicGetChildCategories(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicGetChildCategoriesCmd.Flags().StringP("categoryPath", "ch", " ", "Category path")
	_ = PublicGetChildCategoriesCmd.MarkFlagRequired("categoryPath")
	PublicGetChildCategoriesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicGetChildCategoriesCmd.MarkFlagRequired("namespace")
	PublicGetChildCategoriesCmd.Flags().StringP("language", "le", " ", "Language")
	PublicGetChildCategoriesCmd.Flags().StringP("storeId", "sd", " ", "Store id")
}
