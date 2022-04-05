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

// GetRootCategoriesCmd represents the GetRootCategories command
var GetRootCategoriesCmd = &cobra.Command{
	Use:   "getRootCategories",
	Short: "Get root categories",
	Long:  `Get root categories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.GetRootCategoriesParams{
			Namespace: namespace,
			StoreID:   &storeId,
		}
		ok, err := categoryService.GetRootCategoriesShort(input)
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
	GetRootCategoriesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetRootCategoriesCmd.MarkFlagRequired("namespace")
	GetRootCategoriesCmd.Flags().StringP("storeId", "", "", "Store id")
}
