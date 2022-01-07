// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteCategoryCmd represents the deleteCategory command
var deleteCategoryCmd = &cobra.Command{
	Use:   "deleteCategory",
	Short: "Delete category by path.",
	Long:  `Delete category by path.`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		storeId := cmd.Flag("storeId").Value.String()
		categoryPath := cmd.Flag("categoryPath").Value.String()
		input := &category.DeleteCategoryParams{
			CategoryPath: categoryPath,
			Namespace:    namespace,
			StoreID:      storeId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		categoryInfo, err := categoryService.DeleteCategory(input)
		if err != nil {
			return err
		}
		marshal, err := json.Marshal(categoryInfo)
		if err != nil {
			return err
		}
		logrus.Infof("Response %s", marshal)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteCategoryCmd)
	deleteCategoryCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	_ = deleteCategoryCmd.MarkFlagRequired("namespace")
	deleteCategoryCmd.Flags().StringP("storeId", "", "", "Store ID")
	_ = deleteCategoryCmd.MarkFlagRequired("storeId")
	deleteCategoryCmd.Flags().StringP("categoryPath", "p", "", "Category path")
	_ = deleteCategoryCmd.MarkFlagRequired("categoryPath")
}
