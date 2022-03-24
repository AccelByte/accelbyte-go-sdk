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
		ok, err := categoryService.PublicGetDescendantCategoriesShort(input)
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
	PublicGetDescendantCategoriesCmd.Flags().StringP("categoryPath", "", "", "Category path")
	_ = PublicGetDescendantCategoriesCmd.MarkFlagRequired("categoryPath")
	PublicGetDescendantCategoriesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetDescendantCategoriesCmd.MarkFlagRequired("namespace")
	PublicGetDescendantCategoriesCmd.Flags().StringP("language", "", "", "Language")
	PublicGetDescendantCategoriesCmd.Flags().StringP("storeId", "", "", "Store id")
}
