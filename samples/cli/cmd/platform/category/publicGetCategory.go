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

// publicGetCategoryCmd represents the publicGetCategory command
var publicGetCategoryCmd = &cobra.Command{
	Use:   "publicGetCategory",
	Short: "Public get category",
	Long:  `Public get category`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.PublicGetCategoryParams{
			CategoryPath: categoryPath,
			Namespace:    namespace,
			Language:     &language,
			StoreID:      &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := categoryService.PublicGetCategory(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetCategoryCmd)
	publicGetCategoryCmd.Flags().StringP("categoryPath", "ch", " ", "Category path")
	_ = publicGetCategoryCmd.MarkFlagRequired("categoryPath")
	publicGetCategoryCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetCategoryCmd.MarkFlagRequired("namespace")
	publicGetCategoryCmd.Flags().StringP("language", "le", " ", "Language")
	publicGetCategoryCmd.Flags().StringP("storeId", "sd", " ", "Store id")
}
