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

// DeleteCategoryCmd represents the DeleteCategory command
var DeleteCategoryCmd = &cobra.Command{
	Use:   "deleteCategory",
	Short: "Delete category",
	Long:  `Delete category`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.DeleteCategoryParams{
			CategoryPath: categoryPath,
			Namespace:    namespace,
			StoreID:      storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := categoryService.DeleteCategory(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	DeleteCategoryCmd.Flags().StringP("categoryPath", "", "", "Category path")
	_ = DeleteCategoryCmd.MarkFlagRequired("categoryPath")
	DeleteCategoryCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteCategoryCmd.MarkFlagRequired("namespace")
	DeleteCategoryCmd.Flags().StringP("storeId", "", "", "Store id")
	_ = DeleteCategoryCmd.MarkFlagRequired("storeId")
}
