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

// PublicGetRootCategoriesCmd represents the PublicGetRootCategories command
var PublicGetRootCategoriesCmd = &cobra.Command{
	Use:   "publicGetRootCategories",
	Short: "Public get root categories",
	Long:  `Public get root categories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.PublicGetRootCategoriesParams{
			Namespace: namespace,
			Language:  &language,
			StoreID:   &storeId,
		}
		ok, err := categoryService.PublicGetRootCategoriesShort(input)
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
	PublicGetRootCategoriesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetRootCategoriesCmd.MarkFlagRequired("namespace")
	PublicGetRootCategoriesCmd.Flags().StringP("language", "", "", "Language")
	PublicGetRootCategoriesCmd.Flags().StringP("storeId", "", "", "Store id")
}
