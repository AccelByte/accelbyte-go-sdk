// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

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

// updateCategoryCmd represents the updateCategory command
var updateCategoryCmd = &cobra.Command{
	Use:   "updateCategory",
	Short: "Update category.",
	Long: `Update category. The category update data is a category object, example:
{
	"storeId": "store-id",
	"localizationDisplayNames": {"en" : "Games"}
}`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		storeId := cmd.Flag("storeId").Value.String()
		categoryPath := cmd.Flag("categoryPath").Value.String()
		localizationDisplayNamesString := cmd.Flag("localizationDisplayNames").Value.String()
		var localizationDisplayNames map[string]string
		err := json.Unmarshal([]byte(localizationDisplayNamesString), &localizationDisplayNames)
		if err != nil {
			logrus.Error("Failed unmarshal localization display name map")
			return err
		}
		input := &category.UpdateCategoryParams{
			Body: &platformclientmodels.CategoryUpdate{
				LocalizationDisplayNames: localizationDisplayNames,
			},
			CategoryPath: categoryPath,
			Namespace:    namespace,
			StoreID:      storeId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		categoryInfo, err := categoryService.UpdateCategory(input)
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
	RootCmd.AddCommand(updateCategoryCmd)
	updateCategoryCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	_ = updateCategoryCmd.MarkFlagRequired("namespace")
	updateCategoryCmd.Flags().StringP("storeId", "", "", "Store ID")
	_ = updateCategoryCmd.MarkFlagRequired("storeId")
	updateCategoryCmd.Flags().StringP("categoryPath", "p", "", "Category path")
	_ = updateCategoryCmd.MarkFlagRequired("categoryPath")
	updateCategoryCmd.Flags().StringP("localizationDisplayNames", "d", "", "Localization display names must contains default language default names. Value is json string of map. Example: {\"en-US\": \"/Games\"}")
	_ = updateCategoryCmd.MarkFlagRequired("localizationDisplayNames")

}
