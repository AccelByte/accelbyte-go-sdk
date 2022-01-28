// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package category

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateCategoryCmd represents the UpdateCategory command
var UpdateCategoryCmd = &cobra.Command{
	Use:   "updateCategory",
	Short: "Update category",
	Long:  `Update category`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		categoryPath, _ := cmd.Flags().GetString("categoryPath")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CategoryUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &category.UpdateCategoryParams{
			Body:         body,
			CategoryPath: categoryPath,
			Namespace:    namespace,
			StoreID:      storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := categoryService.UpdateCategory(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	UpdateCategoryCmd.Flags().StringP("body", "", " ", "Body")
	UpdateCategoryCmd.Flags().StringP("categoryPath", "", " ", "Category path")
	_ = UpdateCategoryCmd.MarkFlagRequired("categoryPath")
	UpdateCategoryCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = UpdateCategoryCmd.MarkFlagRequired("namespace")
	UpdateCategoryCmd.Flags().StringP("storeId", "", " ", "Store id")
	_ = UpdateCategoryCmd.MarkFlagRequired("storeId")
}
