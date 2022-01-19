// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetChildCategoriesCmd represents the publicGetChildCategories command
var publicGetChildCategoriesCmd = &cobra.Command{
	Use:   "publicGetChildCategories",
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
	cmd.RootCmd.AddCommand(publicGetChildCategoriesCmd)
	publicGetChildCategoriesCmd.Flags().StringP("categoryPath", "c", " ", "Category path")
	_ = publicGetChildCategoriesCmd.MarkFlagRequired("categoryPath")
	publicGetChildCategoriesCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetChildCategoriesCmd.MarkFlagRequired("namespace")
	publicGetChildCategoriesCmd.Flags().StringP("language", "l", " ", "Language")
	publicGetChildCategoriesCmd.Flags().StringP("storeId", "s", " ", "Store id")
}
