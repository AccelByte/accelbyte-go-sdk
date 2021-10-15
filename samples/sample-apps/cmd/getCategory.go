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

// getCategoryCmd represents the getCategoryByPath command
var getCategoryCmd = &cobra.Command{
	Use:   "getCategory",
	Short: "Get category by category path.",
	Long:  `Get category by category path`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		categoryPath := cmd.Flag("categoryPath").Value.String()
		storeId := cmd.Flag("storeId").Value.String()
		input := &category.GetCategoryParams{
			CategoryPath: categoryPath,
			Namespace:    namespace,
			StoreID:      &storeId,
		}
		categoryInfo, err := categoryService.GetCategory(input)
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
	rootCmd.AddCommand(getCategoryCmd)
	getCategoryCmd.Flags().StringP("namespace", "n", "", "Category namespace.")
	getCategoryCmd.MarkFlagRequired("namespace")
	getCategoryCmd.Flags().StringP("categoryPath", "p", "", "Category path.")
	getCategoryCmd.MarkFlagRequired("categoryPath")
	getCategoryCmd.Flags().StringP("storeId", "", "", "Store ID.")
}
