// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
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
		categoryService := &service.CategoryService{
			OauthService: &service.OauthService{
				IamService:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
				ConfigRepository: &repository.ConfigRepositoryImpl{},
				TokenRepository:  &repository.TokenRepositoryImpl{},
			},
			PlatformService: factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
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
		categoryCreate := &platformclientmodels.CategoryCreate{
			CategoryPath:             &categoryPath,
			LocalizationDisplayNames: localizationDisplayNames,
		}
		categoryInfo, err := categoryService.CreateCategory(namespace, storeId, *categoryCreate)
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
	createCategoryCmd.MarkFlagRequired("namespace")
	createCategoryCmd.Flags().StringP("storeId", "", "", "Store ID")
	createCategoryCmd.MarkFlagRequired("storeId")
	createCategoryCmd.Flags().StringP("categoryPath", "", "", "Category path")
	createCategoryCmd.MarkFlagRequired("categoryPath")
	createCategoryCmd.Flags().StringP("localizationDisplayNames", "d", "", "Localization display names must contains default language default names. Value is json string of map. Example: {\"en-US\": \"/Games\"}")
	createCategoryCmd.MarkFlagRequired("localizationDisplayNames")
}
