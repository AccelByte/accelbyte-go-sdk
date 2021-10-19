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

// createStoreCategoryCmd represents the createStoreCategory command
var createCategoryCmd = &cobra.Command{
	Use:   "createCategory",
	Short: "Create category.",
	Long: `Create category. A category is a path separated by "/". A category also has localized display names. Example:
{
	"categoryPath": "/games",
	"localizationDisplayNames": {"en": "/Games"}
}`,
	RunE: func(cmd *cobra.Command, args []string) error {
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
		input := &category.CreateCategoryParams{
			Body: &platformclientmodels.CategoryCreate{
				CategoryPath:             &categoryPath,
				LocalizationDisplayNames: localizationDisplayNames,
			},
			Namespace: namespace,
			StoreID:   storeId,
		}
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		categoryInfo, err := categoryService.CreateCategory(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(categoryInfo)
		if err != nil {
			return err
		}
		logrus.Infof("Response %s", response)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(createCategoryCmd)
	createCategoryCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	_ = createCategoryCmd.MarkFlagRequired("namespace")
	createCategoryCmd.Flags().StringP("storeId", "", "", "Store ID")
	_ = createCategoryCmd.MarkFlagRequired("storeId")
	createCategoryCmd.Flags().StringP("categoryPath", "", "", "Category path")
	_ = createCategoryCmd.MarkFlagRequired("categoryPath")
	createCategoryCmd.Flags().StringP("localizationDisplayNames", "d", "", "Localization display names must contains default language default names. Value is json string of map. Example: {\"en-US\": \"/Games\"}")
	_ = createCategoryCmd.MarkFlagRequired("localizationDisplayNames")
}
