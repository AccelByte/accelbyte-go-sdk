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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateCategoryCmd represents the updateCategory command
var updateCategoryCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(updateCategoryCmd)
	updateCategoryCmd.Flags().StringP("body", "by", " ", "Body")
	updateCategoryCmd.Flags().StringP("categoryPath", "ch", " ", "Category path")
	_ = updateCategoryCmd.MarkFlagRequired("categoryPath")
	updateCategoryCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateCategoryCmd.MarkFlagRequired("namespace")
	updateCategoryCmd.Flags().StringP("storeId", "sd", " ", "Store id")
	_ = updateCategoryCmd.MarkFlagRequired("storeId")
}
