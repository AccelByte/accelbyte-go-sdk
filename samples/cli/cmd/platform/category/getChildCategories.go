// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package category

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getChildCategoriesCmd represents the getChildCategories command
var getChildCategoriesCmd = &cobra.Command{
	Use:   "getChildCategories",
	Short: "Get child categories",
	Long:  `Get child categories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.GetChildCategoriesParams{
			CategoryPath: categoryPath,
			Namespace:    namespace,
			StoreID:      &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := categoryService.GetChildCategories(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getChildCategoriesCmd)
	getChildCategoriesCmd.Flags().StringP("categoryPath", "ch", " ", "Category path")
	_ = getChildCategoriesCmd.MarkFlagRequired("categoryPath")
	getChildCategoriesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getChildCategoriesCmd.MarkFlagRequired("namespace")
	getChildCategoriesCmd.Flags().StringP("storeId", "sd", " ", "Store id")
}
