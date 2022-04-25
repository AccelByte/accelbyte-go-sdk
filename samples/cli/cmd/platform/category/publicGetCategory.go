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

// PublicGetCategoryCmd represents the PublicGetCategory command
var PublicGetCategoryCmd = &cobra.Command{
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
		ok, err := categoryService.PublicGetCategoryShort(input)
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
	PublicGetCategoryCmd.Flags().StringP("categoryPath", "", "", "Category path")
	_ = PublicGetCategoryCmd.MarkFlagRequired("categoryPath")
	PublicGetCategoryCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetCategoryCmd.MarkFlagRequired("namespace")
	PublicGetCategoryCmd.Flags().StringP("language", "", "", "Language")
	PublicGetCategoryCmd.Flags().StringP("storeId", "", "", "Store id")
}
