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

// GetCategoryCmd represents the GetCategory command
var GetCategoryCmd = &cobra.Command{
	Use:   "getCategory",
	Short: "Get category",
	Long:  `Get category`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.GetCategoryParams{
			CategoryPath: categoryPath,
			Namespace:    namespace,
			StoreID:      &storeId,
		}
		ok, err := categoryService.GetCategoryShort(input)
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
	GetCategoryCmd.Flags().StringP("categoryPath", "", "", "Category path")
	_ = GetCategoryCmd.MarkFlagRequired("categoryPath")
	GetCategoryCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetCategoryCmd.MarkFlagRequired("namespace")
	GetCategoryCmd.Flags().StringP("storeId", "", "", "Store id")
}
